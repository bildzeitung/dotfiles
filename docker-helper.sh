#!/bin/bash

host=default
docker_running=$(docker-machine ls | grep $host)
if [[ "$docker_running" == *"Stopped"* ]]
then
    echo "fyi - docker not running"
    echo "run docker-machine start default"
elif [[ "$docker_running" == *"Running"* ]]
then
    eval "$(docker-machine env $host)"
fi
