#!/bin/bash

docker-compose --file ./docker-compose.yml up -d

sleep 5

docker exec mongo1 /scripts/init.sh
