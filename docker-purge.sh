sudo chmod 666 /var/run/docker.sock
docker kill $(docker ps -q); docker rm $(docker ps -a -q); docker rmi $(docker images -q); docker volume ls -qf dangling=true | xargs -r docker volume rm; docker system prune -a
