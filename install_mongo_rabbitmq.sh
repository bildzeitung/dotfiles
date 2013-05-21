#!/bin/bash

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list


sudo echo 'deb http://www.rabbitmq.com/debian/ testing main' >> /etc/apt/sources.list
wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
sudo apt-key add rabbitmq-signing-key-public.asc
rm rabbitmq-signing-key-public.asc

sudo apt-get-update

sudo apt-get -y install mongodb-10gen
sudo apt-get -y install rabbitmq-server
