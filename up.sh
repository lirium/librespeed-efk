#!/bin/bash
docker network create --attachable mynet
docker-compose -f efk.compose.yml -p rbmdkrfinalefk up -d --build
docker-compose -f app.compose.yml -p rbmdkrfinalapp up -d --build
