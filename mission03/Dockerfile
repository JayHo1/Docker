FROM		ubuntu:latest

ENV		USER cho
ENV		HOSTNAME 42born2code
MAINTAINER	Chau Nguyen HO <cho@student.42.fr>

RUN 		apt-get update && apt-get install -y openssh-server
RUN		sed -i 's/Port 22/Port 42/g' /etc/ssh/sshd_config && \
		sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
		useradd -s "/bin/bash" $USER && \
		mkdir -p /home/$USER/.ssh
		
ADD		id_rsa.pub /home/$USER/.ssh/authorized_keys

EXPOSE		42

CMD		service ssh start & /bin/bash