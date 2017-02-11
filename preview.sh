#!/bin/bash
docker-compose run buster
docker-compose up -d preview
sleep 5
open http://localhost:2369
