kubectl delete -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')
kompose convert -o kubernetes
kubectl apply -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')
