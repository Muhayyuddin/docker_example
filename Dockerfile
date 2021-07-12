FROM ubuntu:bionic

RUN apt-get -y update && \
    apt-get install -y \
    libeigen3-dev \
    cmake

COPY . /docker_example

WORKDIR /docker_example

RUN pwd && ls -la; \ 
    mkdir build; \
    pwd && ls -la; \
    cd build;    \
    cmake ..;    \
    pwd && ls -la; \
    make; 
    
WORKDIR /docker_example/build
CMD "./docker_example"

