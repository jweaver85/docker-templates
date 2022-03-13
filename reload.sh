kubectl delete -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')
kubectl apply -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')
