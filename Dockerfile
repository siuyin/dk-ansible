FROM debian:stable-slim
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

