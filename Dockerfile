FROM ubuntu:20.04

USER root

RUN yes | unminimize
RUN apt-get update && \
    apt-get install -y build-essential \
    curl git man-db vim \
    iputils-ping net-tools && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash && \
    . ~/.bashrc && \
    nvm install 20


RUN adduser --disabled-password --gecos "" ken
RUN adduser  --disabled-password --gecos "" takashi

CMD ["bash"]
