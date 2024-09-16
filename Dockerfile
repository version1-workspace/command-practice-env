FROM ubuntu:20.04

USER root

RUN apt-get update && \
    apt-get install -y build-essential curl git

RUN adduser --disabled-password --gecos "" ken
RUN adduser  --disabled-password --gecos "" takashi

CMD ["bash"]
