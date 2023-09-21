export CLUSTER_NAME=surrealdb-cluster
export AWS_REGION=eu-west-1

envsubst < surrealdb-cluster.yml | eksctl create cluster -f -
use-cluster $CLUSTER_NAME