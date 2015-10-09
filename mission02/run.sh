cp ~/.ssh/id_rsa.pub .
docker build -t ssh/ssh:v42 .
rm id_rsa.pub
docker run -d -t -p 42:42 --name Jay-Ho-Inc ssh/ssh:v42