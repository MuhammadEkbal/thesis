FROM ubuntu:19.04
LABEL Name=dokumentation Version=0.0.3
RUN export DEBIAN_FRONTEND=noninteractive && apt -y update && apt install -y texlive-full openjdk-11-jre
