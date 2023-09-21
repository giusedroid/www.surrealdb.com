helm repo add surrealdb https://helm.surrealdb.com
helm repo update

TIKV_URL=tikv://basic-pd.tidb-cluster:2379

helm install \
    --set surrealdb.path=$TIKV_URL \
    --set surrealdb.auth=false \
    --set service.type="NodePort" \
    --set ingress.enabled=true \
    --set ingress.className="alb" \
    --set ingress.annotations."alb\.ingress\.kubernetes\.io/healthcheck-path"=/health \
    --set ingress.annotations."alb\.ingress\.kubernetes\.io/load-balancer-name"="ingress-${CLUSTER_NAME}" \
    --set ingress.annotations."alb\.ingress\.kubernetes\.io/scheme"="internet-facing" \
    --set ingress.annotations."alb\.ingress\.kubernetes\.io/terget-type"="ip" \
    --set ingress.annotations."meta\.helm\.sh/release-name"="surrealdb-tikv" \
    --set ingress.annotations."meta\.helm\.sh/release-namespace"="default" \
    surrealdb-tikv surrealdb/surrealdb