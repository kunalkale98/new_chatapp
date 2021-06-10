#!/bin/bash
cd /
sudo systemctl daemon-reload
sudo systemctl start chatapp
sudo systemctl restart chatapp
