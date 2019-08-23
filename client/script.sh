#!/bin/bash
curl -H Host:whoami.docker.localhost http://172.20.0.7/ &&
ab -n 20 -c 2 -H Host:whoami.docker.localhost http://172.20.0.7/ > traefik_test1.txt 
exec "$@";
