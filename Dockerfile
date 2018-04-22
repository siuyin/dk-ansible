FROM debian:stretch-slim
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt update && apt-get install -y ansible openssh-client \
  sudo tmux iputils-ping vim curl wget git
RUN adduser siuyin
RUN addgroup --gid 117 docker
RUN adduser siuyin docker
RUN echo 'siuyin   ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen
ENV LANG C.UTF-8
USER siuyin
WORKDIR /home/siuyin
CMD ["bash"]

