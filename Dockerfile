FROM ubuntu:16.04

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    vim \
    build-essential \
    subversion \
    git-core \
    libncurses5-dev \
    gawk \
    quilt \
    libssl-dev \
    xsltproc \
    libxml-parser-perl \
    mercurial \
    bzr \
    ecj \
    cvs \
    unzip \
    lib32z1 \
    lib32z1-dev \
    lib32stdc++6 \
    libstdc++6 \
    make \
    cmake \
    bison \
    flex \
    mtd-utils \
    zlib1g-dev \
    bc \
    zip \
    curl \
    wget \
    git \
    bear \
    locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


ENV LANG zh_CN.UTF-8
ENV LC_ALL zh_CN.UTF-8
RUN locale-gen zh_CN.UTF-8

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

RUN adduser public

USER public
