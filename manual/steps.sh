#!/bin/bash
:' Run below lines manually first -- this will build the docker image from dockerFile and start the container

cd $HOME
mkdir -p dockerstore
cd dockerstore/
git clone https://github.com/msreedata/hello-Dotnet.git
cd $HOME/dockerstore/hello-Dotnet

'

cd $HOME/dockerstore/hello-Dotnet
sudo yum -y install docker
ls
read -rsp $'Press any key to continue...\n' -n1 key

systemctl status docker
systemctl start docker
systemctl status docker
systemctl enable docker
systemctl status docker
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker build . -t hellodotnet:v1
sudo docker image ls
read -rsp $'Press any key to continue...\n' -n1 key

sudo docker run --rm -d -p 80:8080 --name hdot1 hellonode:v1
sudo docker ps -a
#
