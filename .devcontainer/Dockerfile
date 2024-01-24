FROM ubuntu:22.04

WORKDIR /home/

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
  curl \
  wget \
  git \
  gnupg2 \
  sudo \
  vim \
  build-essential \
  openssl \
  clang \
  python3 \
  python3-pip \
  python3-setuptools \
  ca-certificates \
  gpg \
  libboost-dev \
  doxygen

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ jammy main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null
RUN apt-get update

RUN apt-get install -y --no-install-recommends \
  cmake \
  ninja-build
