# Traefik VNF - Localhost implementation

Traefik is a very simple reverse proxy and load balancer. It configures itself automatically and dynamically. 
Here, we will consider a simple scenario where traefik configures itself automatically to balance the load. However, it is also possible to configure routes manually.

## Scenario

-  A webservice called whoami is started - a simple web service that outputs information about the machine it is deployed on (its IP address, host, and so on).

- In this scenario, two webservice are started as containers (see docker-compose file)

- If two containers are assigned the same domain, then Traefik will automatically load balance traffic between them.

## Installation instructions

##### Note: Traefik has its own official docker image. Since it is of alpine base image, we use our own docker image that is of ubutnu base (built using binary).

## 1. Clone the repository

` git clone https://github.com/ishriya/traefik_vnf.git`

## 2. Navigate to the folder

` cd traefik_vnf`

## 3. Build the containers 

` docker-compose up --build -d`
 
##### You can access the web dashboard on localhost:8080/ to see the running services.

## Testing and access logs

Execute the following commands.

1. To test traefik

`docker exec -it traefik_client ./script.sh`

2. To get the access logs of traefik.

` docker exec -it traefik_test tail -f /path/to/access.log`

3. To get the benchmarked data (using Apache ab as the load generator) 

` docker exec -it traefik_client cat traefik_test1.txt`     
