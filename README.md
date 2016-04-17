# Introduction

Dockerfile to build a [Jenkins](https://jenkins-ci.org)-slave container image to be used with [Jenkins Docker Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin)

# How to use this image

This image will be used by Jenkins Docker Plugin. It provides access via SSH for user "jenkins".

There is no need to start this image by your self. If you want to do so, use:

    docker run --name my-jenkins-slave pcvolkmer/jenkins-slave-jdk8

# Packages installed

Based on official [OpenJDK 8 Docker image](https://registry.hub.docker.com/_/java/), this image contains Git and OpenSSH packages
and a user named "jenkins" with password "jenkins".
