# Traefik VNF - Local host implementation

Traefik is a reverse proxy and load balancer. This scenario explains how to use traefik to balance the load between two http servers.

## Scenario

We create four containers as follows.
1. Traefik
 - It is the load balancer and it is configured to listen on port 80 and 443.
 - It also has a web dashboard available of port 8080.
2. http server 1
3. http server 2
- Both the servers return the hostname of the container processing the request.
- Labels are used to define the rules and metadata of the docker containers.
4. Client
- sends the request

## Installation instructions

##### Note: Traefik has its own official docker image. Since it is an alpine based image, we use customized ubuntu based docker image built using binary.

## 1. Clone the repository

` git clone https://github.com/ishu06/traefik_vnf.git`

## 2. Navigate to the folder

` cd traefik_vnf`

## 3. Build the containers 

` docker-compose up --build -d`

## Testing and access logs

Execute the following commands.

1. To test traefik

`docker exec -it traefik_client ./script.sh`

2. To get the access logs of the traefik.

` docker exec -it traefik_test tail -f /path/to/access.log`

3. To get the benchmarked data (uses Apache ab)

` docker exec -it traefik_client cat traefik_test1.txt`   
` docker exec -it traefik_client cat traefik_test2.txt`   
