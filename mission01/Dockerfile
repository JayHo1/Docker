FROM		ubuntu:latest

ENV		USER cho
ENV		HOSTNAME 42born2code
MAINTAINER	Chau Nguyen HO <cho@student.42.fr>

RUN 		apt-get update && apt-get install -y nginx && service nginx configtest
RUN 		echo "<html><h1>Hello World!</h1></html>" > /usr/share/nginx/html/index.html
RUN		sed -i "s/root:x:0:0:root/$USER:x:0:0:root/g" /etc/passwd
		
EXPOSE 		80

CMD 		service nginx start & /bin/bash