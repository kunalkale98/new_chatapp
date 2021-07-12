#!/bin/bash
sudo systemctl daemon-reload
sudo systemctl start chatapp.service
sudo systemctl restart chatapp.service
