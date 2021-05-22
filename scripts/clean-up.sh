#!/bin/bash
cd /
if [ -d /new_chatapp/fundoo ];
then
    sudo rm -rf /new_chatapp/fundoo
fi
if [ -f /new_chatapp/requirements.txt ];
then
    sudo rm -rf /new_chatapp/requirements.txt
fi
