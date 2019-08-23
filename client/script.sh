#!/bin/bash
curl -H Host:whoami.docker.localhost http://172.20.0.7/ &&
ab -n 5000 -c 10 -H Host:whoami.docker.localhost http://172.20.0.7/ > traefik_test1.txt 
exec "$@";
