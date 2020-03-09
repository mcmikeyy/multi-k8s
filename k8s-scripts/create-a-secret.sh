#!/bin/bash
# example kubectl create secret generic <secret_name> --from-literal key=value
# generic or docker-registry or tls
kubectl create secret $1 $2 --from-literal $3=$4