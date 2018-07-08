[![Build Status](https://travis-ci.org/infrastructor/docker-ubuntu-sshd.svg?branch=master)](https://travis-ci.org/infrastructor/docker-ubuntu-sshd)

# docker-ubuntu-sshd
Ubuntu Server 16.04 based image with SSHD service preconfigured. Useful for infrastructor integration testing. 
There are 3 users available: 
* root, password: infra, private key: see repository.
* devops, password: devops, private key: see repository, no password needed for sudo actions.
* sudops, password: sudops, private key: see repository, need a password for sudo actions.
