export CLUSTER_NAME=surrealdb-cluster
export AWS_REGION=eu-west-1

envsubst < surrealdb-cluster.yml | eksctl create cluster -f -

aws eks update-kubeconfig --name $CLUSTER_NAME