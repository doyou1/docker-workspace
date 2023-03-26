# stop and delete to running awsstudy docker
sudo docker ps -a -q --filter "name=awsstudy" | grep -q . && docker stop awsstudy && docker rm awsstudy | true

# delete exist image
sudo docker rmi tla149/awsstudy:1.0

# pull image from docker hub
sudo docker pull tla149/awsstudy:1.0

# run docker
docker run -d -p 8080:8080 --name awsstudy tla149/awsstudy:1.0

# Delete unused and unnecessary images -> Images currently being bitten by containers will not be deleted.
docker rmi -f $(docker images -f "dangling=true" -q) || true