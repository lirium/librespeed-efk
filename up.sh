#!/bin/bash
mkdir database
chmod 777 database
docker network create --attachable mynet
docker-compose -f efk.compose.yml -p rbmdkrfinalefk up -d --build
sleep 10
docker-compose -f app.compose.yml -p rbmdkrfinalapp up -d --build
