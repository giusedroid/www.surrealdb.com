export SURREALDB_ENDPOINT=$(kubectl get ingress surrealdb-tikv -o json | jq .status.loadBalancer.ingress[0].hostname | xargs)
echo $SURREALDB_ENDPOINT

# sample output
> ingress-27v2-902764750.eu-west-1.elb.amazonaws.com