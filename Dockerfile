FROM redhat/ubi8

RUN yum install -y openssh-server openssh-clients python3 

RUN mkdir /var/run/sshd

RUN  echo "root:ansible" | chpasswd

EXPOSE 22

RUN /usr/bin/ssh-keygen -A 

CMD ["/usr/sbin/sshd", "-D"]