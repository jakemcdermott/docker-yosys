FROM ubuntu:16.04

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    bison \
    flex \
    libreadline-dev \
    gawk \
    tcl-dev \
    libffi-dev \
    git \
    mercurial \
    graphviz \
    xdot \
    pkg-config \
    python3 \
    python-setuptools \
    python-dev

RUN easy_install pip

RUN git clone https://github.com/cliffordwolf/yosys.git

WORKDIR yosys

RUN make

ENTRYPOINT ["./yosys"]
