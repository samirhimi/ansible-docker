FROM redhat/ubi8

RUN yum install -y openssh-server openssh-clients python3 

RUN  echo "root:ansible" | chpasswd

USER root

RUN /usr/bin/ssh-keygen -A

CMD ["/usr/sbin/sshd"]