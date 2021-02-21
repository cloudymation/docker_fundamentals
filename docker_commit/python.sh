docker run -it ubuntu_bionic_with_git /bin/bash

# apt update && apt upgrade -y && apt install -y python3
# python3 --version
# exit

docker container ls -a

# Get last exited container ID
docker logs <CONTAINER_ID>
docker diff <CONTAINER_ID>
docker commit -m "Added JRE & JDK 11." <CONTAINER_ID> ubuntu_bionic_with_git_and_python

docker login -u <REGISTRY_USERNAME>
docker tag ubuntu_bionic_with_git_and_python <REGISTRY_USERNAME>/ubuntu_bionic_with_git_and_python
docker push <REGISTRY_USERNAME>/ubuntu_bionic_with_git_and_python
docker logout
