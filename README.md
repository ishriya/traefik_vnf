# Traefik VNF - Localhost implementation

Traefik is a reverse proxy and load balancer. Given below is a scenario that uses traefik to balance the load between two http servers.

## Scenario

Four containers are created as follows.

1. Traefik
 - It is the load balancer and it is configured to listen on port 80 and 443.
 - It also has a web dashboard available of port 8080.
2. http server 1
3. http server 2
- Both the servers return the hostname of the container processing the request.
- Labels are used to define the rules and metadata of the docker containers.
4. Client

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
` docker exec -it traefik_client cat traefik_test2.txt`   
