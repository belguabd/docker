docker stop $(docker ps  -a -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)