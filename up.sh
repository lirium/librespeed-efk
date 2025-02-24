#!/bin/bash
docker network create --attachable mynet
docker-compose -f efk.yml up -d --build
docker-compose -f docker-compose.yml up -d --build
