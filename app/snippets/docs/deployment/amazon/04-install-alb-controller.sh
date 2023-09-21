export ACCOUNT_NUMBER=$(aws sts get-caller-identity | jq .Account | xargs)

eksctl create iamserviceaccount \
  --cluster=$CLUSTER_NAME \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --role-name AmazonEKSLoadBalancerControllerRole_${CLUSTER_NAME} \
  --attach-policy-arn=arn:aws:iam::$ACCOUNT_NUMBER:policy/AWSLoadBalancerControllerIAMPolicy \
  --approve
  
helm repo add eks https://aws.github.io/eks-charts
helm repo update eks

helm install aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=$CLUSTER_NAME \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller 