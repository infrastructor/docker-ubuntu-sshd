FROM ubuntu:16.04
MAINTAINER infrastructor.io

RUN apt update && apt install sudo openssh-server -y
RUN mkdir /var/run/sshd
RUN useradd -ms /bin/bash devops

RUN echo 'devops:devops' | chpasswd
RUN echo 'root:infra' | chpasswd
RUN echo 'devops    ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ADD authorized_keys /root/.ssh/authorized_keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
