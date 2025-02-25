#!/bin/bash
chmod 777 database
sudo docker network create --attachable mynet
sudo docker-compose -f efk.compose.yml -p rbmdkrfinalefk up -d --build
sudo docker-compose -f app.compose.yml -p rbmdkrfinalapp up -d --build
