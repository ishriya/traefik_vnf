#!/bin/bash
curl -H Host:machine-echo.example.com http://172.20.0.4/ &&
ab -n 5000 -c 10 -H Host:machine-echo.example.com http://172.20.0.4/ > traefik_test1.txt &&
curl -H Host:echo-echo.example.com http://172.20.0.4/  &&
ab -n 5000 -c 15 -H Host:echo-echo.example.com http://172.20.0.4/ > traefik_test2.txt
exec "$@";
         
