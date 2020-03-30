FROM ubuntu

RUN apt-get -qq update && apt-get -qq install -y sudo

# Environment variables
ARG GITHUB_ACCESS_TOKEN
ENV GITHUB_ACCESS_TOKEN $GITHUB_ACCESS_TOKEN
ARG CF_HOSTNAME
ENV CF_HOSTNAME $CF_HOSTNAME

# Work in home dir
WORKDIR /root

# Obtain bootstrap script
ENV script cf-bootstrap
ENV hostbin ./$script
ENV bin ./$script
COPY $hostbin $bin

# Run bootstrap script (twice to make sure it's safe to run again)
RUN bash $bin
RUN bash $bin
