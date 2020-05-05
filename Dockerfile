FROM ubuntu:20.04

RUN apt-get -qq update && apt-get -qq install -y sudo

# Environment variables
ARG GITHUB_ACCESS_TOKEN
ENV GITHUB_ACCESS_TOKEN $GITHUB_ACCESS_TOKEN
ARG CF_HOSTNAME
ENV CF_HOSTNAME $CF_HOSTNAME

# Work in home dir
WORKDIR /root

# Obtain bootstrap script and run it twice to make sure it's safe to run again
ENV script cf-bootstrap
COPY $script $script
RUN bash $script
RUN bash $script
