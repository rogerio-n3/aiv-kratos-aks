docker build -f Dockerfile-kratos-migrate -t acrtimdemo.azurecr.io/kratos-migrate:latest .
docker build -f Dockerfile-kratos -t acrtimdemo.azurecr.io/kratos:latest .
docker push acrtimdemo.azurecr.io/kratos-migrate:latest
docker push acrtimdemo.azurecr.io/kratos:latest
kubectl apply -f .
