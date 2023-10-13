wget -q \
    https://raw.githubusercontent.com/aws-samples/eks-workshop-v2/stable/lab/cfn/eks-workshop-ide-cfn.yaml \
    -O eks-workshop-ide-cfn.yaml

aws cloudformation deploy --stack-name eks-workshop-ide \
    --template-file ./eks-workshop-ide-cfn.yaml \
    --parameter-overrides RepositoryRef=stable \
    --capabilities CAPABILITY_NAMED_IAM
