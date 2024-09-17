FROM ubuntu:20.04

USER root

RUN yes | unminimize
RUN apt-get update && \
    apt-get install -y build-essential \
    curl git man-db vim \
    iputils-ping net-tools

RUN adduser --disabled-password --gecos "" ken
RUN adduser  --disabled-password --gecos "" takashi

CMD ["bash"]
