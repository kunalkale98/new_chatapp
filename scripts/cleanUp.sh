#!/bin/bash
cd /
sudo rm -rf /new_chatapp/.github
sudo rm -rf /new_chatapp/.idea
sudo rm -rf /new_chatapp/appspec.yml
sudo rm -rf /new_chatapp/scripts
if [ -d /new_chatapp/fundoo ];
then
    sudo rm -rf /new_chatapp/fundoo
fi
if [ -f /new_chatapp/requirements.txt ];
then
    sudo rm -rf /new_chatapp/requirements.txt
fi
