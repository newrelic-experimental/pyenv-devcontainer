FROM mcr.microsoft.com/vscode/devcontainers/base:jammy

# Install OS packages
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -y \
        bash \
        build-essential \
        curl \
        expat \
        fish \
        fontconfig \
        freetds-common \
        freetds-dev \
        gcc \
        git \
        libbz2-dev \
        libcurl4-openssl-dev \
        libffi-dev \
        libgmp-dev \
        libkrb5-dev \
        liblzma-dev \
        libmpfr-dev \
        libncurses-dev \
        libpq-dev \
        librdkafka-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        locales \
        make \
        odbc-postgresql \
        openssl \
        python2-dev \
        python3-dev \
        python3-pip \
        sudo \
        tzdata \
        unixodbc-dev \
        unzip \
        vim \
        wget \
        zip \
        zlib1g \
        zlib1g-dev \
        zsh && \
    rm -rf /var/lib/apt/lists/*

# Setup ODBC config
RUN sed -i 's|Driver=psqlodbca.so|Driver=/usr/lib/x86_64-linux-gnu/odbc/psqlodbca.so|g' /etc/odbcinst.ini && \
    sed -i 's|Driver=psqlodbcw.so|Driver=/usr/lib/x86_64-linux-gnu/odbc/psqlodbcw.so|g' /etc/odbcinst.ini && \
    sed -i 's|Setup=libodbcpsqlS.so|Setup=/usr/lib/x86_64-linux-gnu/odbc/libodbcpsqlS.so|g' /etc/odbcinst.ini

# Set the locale
RUN locale-gen --no-purge en_US.UTF-8
ENV LANG=en_US.UTF-8 \ LANGUAGE=en_US:en \ LC_ALL=en_US.UTF-8
ENV TZ="Etc/UTC"
RUN ln -fs "/usr/share/zoneinfo/${TZ}" /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# Set user to non-root
USER 1000:1000
ENV HOME /home/vscode

# Install pyenv
ENV PYENV_ROOT="${HOME}/.pyenv"
RUN curl https://pyenv.run/ | /bin/bash
ENV PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:${PATH}"
RUN echo 'eval "$(pyenv init -)"' >>$HOME/.bashrc && \
    pyenv update

# Install Python
ARG PYTHON_VERSIONS="3.10 3.9 3.8 3.7 3.11 3.12 2.7 pypy2.7-7.3.11 pypy3.7 pypy3.8 pypy3.9"
COPY --chown=1000:1000 --chmod=+x ./install-python.sh /tmp/install-python.sh
COPY ./requirements.txt /requirements.txt
RUN /tmp/install-python.sh && \
    rm /tmp/install-python.sh

# Install development dependencies
ARG DEVELOP_DEPENDENCIES="bandit black flake8 isort tox"
RUN /bin/bash -c '\
    DEVELOP_DEPENDENCIES=($DEVELOP_DEPENDENCIES); \
    pyenv exec pip install pipx; \
    for v in "${DEVELOP_DEPENDENCIES[@]}"; do \
        pipx install $v; \
    done'
