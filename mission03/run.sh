cp ~/.ssh/id_rsa.pub .
docker build -t ssh/volume:v42 .
rm -rf /Users/Shared/docker_volume/*
rm id_rsa.pub
docker run -d -t -p 42:42 --name Jay-Ho-Inc -v /Users/Shared/docker_volume:/home/docker_volume ssh/volume:v42