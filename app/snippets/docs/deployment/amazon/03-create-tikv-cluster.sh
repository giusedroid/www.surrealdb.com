kubectl create namespace tidb-cluster

curl -O https://raw.githubusercontent.com/pingcap/tidb-operator/v1.5.0/examples/aws/tidb-cluster.yaml && \
curl -O https://raw.githubusercontent.com/pingcap/tidb-operator/v1.5.0/examples/aws/tidb-monitor.yaml && \
curl -O https://raw.githubusercontent.com/pingcap/tidb-operator/v1.5.0/examples/aws/tidb-dashboard.yaml

kubectl apply -f tidb-cluster.yaml -n tidb-cluster && \
kubectl apply -f tidb-monitor.yaml -n tidb-cluster