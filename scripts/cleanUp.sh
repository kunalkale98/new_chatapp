#!/bin/bash
cd /
sudo rm -rf /home/ubuntu/new_chatapp/.github
sudo rm -rf /home/ubuntu/new_chatapp/.idea
sudo rm -rf /home/ubuntu/new_chatapp/appspec.yml
sudo rm -rf /home/ubuntu/new_chatapp/scripts
sudo rm -rf /home/ubuntu/new_chatapp/Database
sudo rm -rf /home/ubuntu/new_chatapp/backend
sudo rm -rf /home/ubuntu/new_chatapp/frontend
sudo rm -rf /home/ubuntu/new_chatapp/Dockerfile
sudo rm -rf /home/ubuntu/new_chatapp/docker-compose.yaml
sudo rm -rf /home/ubuntu/new_chatapp/jenkinsFile.groovy
if [ -d /home/ubuntu/new_chatapp/fundoo ];
then
    sudo rm -rf /home/ubuntu/new_chatapp/fundoo
fi
if [ -f /home/ubuntu/new_chatapp/requirements.txt ];
then
    sudo rm -rf /home/ubuntu/new_chatapp/requirements.txt
fi
