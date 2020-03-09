#!/bin/bash
# 
# using the set command is the best way to update the image version of an existing container
# usually you want to use the declarative approach but there seems not to be a simple way so imperative is best
#


#kubctl set image <object_type> / <object_name> <container name> = <new image to use>

# example kubctl set image deployment/client-deployment client=mconnors/multi-client:v1
# $1 / $2 $3 = $4
# example kubctl set image deployment/client-deployment client=mconnors/multi-client:v1
# ./set_command_imperative.sh deployment client-deployment client mconnors/multi-client:v1
kubectl set image $1/$2 $3=$4