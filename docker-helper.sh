#!/bin/bash

host=default
docker_running=$(docker-machine ls | grep $host)
if [[ "$docker_running" == *"Stopped"* ]]
then
    echo "fyi - docker not running"
elif [[ "$docker_running" == *"Running"* ]]
then
    eval "$(docker-machine env $host)"
fi
