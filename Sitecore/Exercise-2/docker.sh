#!/bin/bash

#check if docker is running
if pgrep docker >/dev/null 2>&1
  then
     echo docker is running
  else
     echo "docker is not running"
     echo "docker installation Started"
     sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
     sudo chmod +x /usr/local/bin/docker-compose
     sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
     docker-compose --version
fi
# Up the Elastic Search through docker-compose
docker-compose  -f docker-compose.yml up -d
#health-check
sleep 30s
curl http://127.0.0.1:9200/_cat/health
