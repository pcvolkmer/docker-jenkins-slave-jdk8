# This Dockerfile is used to build an image containing an OpenJDK 8 jenkins slave

FROM openjdk:8-jdk
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Install packages
RUN apt-get update && apt-get install -y git openssh-server

# Prepare container for ssh
RUN mkdir /var/run/sshd && adduser --quiet jenkins && echo "jenkins:jenkins" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
