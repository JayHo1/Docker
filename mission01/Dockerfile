FROM		ubuntu:latest

ENV		DEBIAN_FRONTEND noninteractive
ENV		USER JayHO
MAINTAINER	Chau Nguyen HO <cho@student.42.fr>

RUN 		apt-get update && apt-get install -y nginx && service nginx configtest
RUN 		echo "<html><h1>Hello World!</h1></html>" > /usr/share/nginx/html/index.html

EXPOSE 		80

CMD 		service nginx start & /bin/bash