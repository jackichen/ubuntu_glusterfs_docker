FROM ubuntu

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libibverbs-dev libssl-dev libxml2-dev libncurses-dev libreadline-dev \
    python-ctypeslib pkg-config libibverbs-dev libacl1-dev liburcu-dev \
    gcc g++ automake autoconf flex bison libtool \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
