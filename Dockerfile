FROM ubuntu:22.04

RUN apt update;

RUN apt install -y python3
RUN apt install -y git-core;
RUN apt install -y git-svn;
RUN apt install -y svn2git;
RUN apt install -y subversion;

#ADD store-plaintext-password.py /root/.subversion/store-plaintext-password.py
#RUN chmod +x /root/.subversion/store-plaintext-password.py

WORKDIR /root
