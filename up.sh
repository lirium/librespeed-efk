#!/bin/bash
docker-compose -f efk.yml up -d --build
docker-compose -f docker-compose.yml up -d --build
