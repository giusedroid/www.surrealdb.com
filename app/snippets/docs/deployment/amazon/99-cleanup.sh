
kubectl delete -f tidb-monitor.yaml -n tidb-cluster
kubectl delete -f tidb-cluster.yaml -n tidb-cluster
helm uninstall surrealdb-tikv
helm -n kube-system uninstall aws-load-balancer-controller
helm -n tidb-admin uninstall tidb-operator

eksctl delete cluster \
    --force \
    --disable-nodegroup-eviction \
    --parallel 10 \
    --name $CLUSTER_NAME