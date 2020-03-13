docker build -t mconnors/multi-client:latest -t mconnors/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t mconnors/multi-server:latest -t mconnors/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t mconnors/multi-worker:latest -t mconnors/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push mconnors/multi-client:latest
docker push mconnors/multi-server:latest
docker push mconnors/multi-worker:latest

docker push mconnors/multi-client:$SHA
docker push mconnors/multi-server:$SHA
docker push mconnors/multi-worker:$SHA

# kubectl apply -f k8s
# kubectl set image deployments/server-deployment server=mconnors/multi-server:$SHA
# kubectl set image deployments/client-deployment client=mconnors/multi-client:$SHA
# kubectl set image deployments/worker-deployment worker=mconnors/multi-worker:$SHA
