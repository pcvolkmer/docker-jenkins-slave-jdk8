# This Dockerfile is used to build an image containing an OpenJDK 8 jenkins slave
FROM java:8-jdk
MAINTAINER Paul-Christian Volkmer <mail@pcvolkmer.de>

# Update packages
RUN apt-get update && apt-get -y upgrade

# Install Git and OpenSSH
apt-get install -y git openssh-server && mkdir /var/run/sshd

# Add user "jenkins" with password "jenkins"
adduser --quiet jenkins && echo "jenkins:jenkins" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
