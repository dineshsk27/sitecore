# docker_es
If we run shell script "docker.sh", It will check  docker is there or not in current working vm, If there it will deploy the Dockerfile with docker-compose. else, It will install docker-cmpose, then deploy the docker-compose file.

docker-compose.yml have a Elasticsearch installation Dockerfile, It is a simple customized dockerfile.

once the shell script run successfully, We will get ES docker container with ES container health check as output.
