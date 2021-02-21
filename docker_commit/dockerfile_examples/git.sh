docker run -it ubuntu:bionic

# apt update && apt upgrade -y && apt install -y git
# git --version
# exit

docker container ls -a
docker logs <CONTAINER_ID>
docker diff <CONTAINER_ID>
docker commit -m "Added git tools." <CONTAINER_ID> ubuntu_bionic_with_git

docker login -u <REGISTRY_USERNAME>
docker tag ubuntu_bionic_with_git <REGISTRY_USERNAME>/ubuntu_bionic_with_git
docker push <REGISTRY_USERNAME>/ubuntu_bionic_with_git
docker logout