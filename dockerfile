FROM nvcr.io/nvidia/doca/doca:2.2.0-base-rt

RUN apt update && \
    apt install openssh-server -y && \
    apt install iproute2 -y && \
    apt install vim -y && \
    service ssh restart

RUN echo 'root:password' | chpasswd

RUN sed -i '$ a\PermitRootLogin yes' /etc/ssh/sshd_config
    
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
