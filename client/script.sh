#!/bin/bash
curl -H Host:whoami.docker.localhost http://172.20.0.7/ &&
ab -n 100 -c 5 -H Host:whoami.docker.localhost http://172.20.0.7/ > traefik_test1.txt 
exec "$@";
