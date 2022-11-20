ARG BASE_IMAGE_TAG=null
FROM mcr.microsoft.com/devcontainers/python:${BASE_IMAGE_TAG}

ARG CRUFT_VERSION=null
ARG YQ_VERSION=null

RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin/

RUN sudo apt -y update && sudo apt -y upgrade

RUN wget https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq

RUN pip3 install cruft

COPY *.cache .cache