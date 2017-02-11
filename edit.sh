#!/bin/bash
docker-compose up -d ghost
sleep 5
open http://localhost:2368/ghost
