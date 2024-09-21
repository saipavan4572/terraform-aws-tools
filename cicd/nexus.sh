#!/bin/bash

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo docker run hello-world

docker run -d -p 8081:8081 sonatype/nexus3:latest
## here we are using docker version of nexus image to install into the AWS instance becuase the nexus AMI instance subscription which was discussed in the session was not allowing to create the instance and failing with payment failed error message.
## I have created this file to install nexus into the AWS instance while creating the instance by passing the commands to user data.