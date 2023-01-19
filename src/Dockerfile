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
        gcc \
        git \
        libbz2-dev \
        libffi-dev \
        libgmp-dev \
        liblzma-dev \
        libmpfr-dev \
        libncurses-dev \
        libpq-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        locales \
        make \
        openssl \
        python2-dev \
        python3-dev \
        python3-pip \
        sudo \
        unzip \
        vim \
        wget \
        zip \
        zlib1g \
        zlib1g-dev \
        zsh && \
    rm -rf /var/lib/apt/lists/*

# Set the locale
RUN locale-gen --no-purge en_US.UTF-8
ENV LANG=en_US.UTF-8 \ LANGUAGE=en_US:en \ LC_ALL=en_US.UTF-8

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
ARG PYTHON_VERSIONS="3.10 3.9 3.8 3.7 3.11 3.12 2.7 pypy2.7 pypy3.7 pypy3.8 pypy3.9"
COPY --chown=1000:1000 --chmod=+x ./install-python.sh /tmp/install-python.sh
COPY ./requirements.txt /requirements.txt
RUN /tmp/install-python.sh && \
    rm /tmp/install-python.sh
