#!/bin/bash
sudo systemctl restart containerd.service

sudo systemctl restart docker

docker-compose -f efk.compose.yml -p rbmdkrfinalefk down
docker-compose -f app.compose.yml -p rbmdkrfinalapp down
