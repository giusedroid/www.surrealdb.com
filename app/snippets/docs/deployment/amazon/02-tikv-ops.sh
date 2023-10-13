kubectl create -f https://raw.githubusercontent.com/pingcap/tidb-operator/v1.5.0/manifests/crd.yaml

helm repo add pingcap https://charts.pingcap.org/

kubectl create namespace tidb-admin
helm install --namespace tidb-admin tidb-operator pingcap/tidb-operator --version v1.5.0

echo "waiting for tikv pods to come online (20 seconds)"
sleep 20
kubectl get pods --namespace tidb-admin -l app.kubernetes.io/instance=tidb-operator