FROM jenkins/jenkins:lts
MAINTAINER Stephano Zanzin

# Download and install the latest kubectl version
USER root

RUN curl --url https://storage.googleapis.com/kubernetes-release/release/\
$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)\
/bin/linux/amd64/kubectl --output /usr/bin/kubectl

RUN chmod +x /usr/bin/kubectl

USER jenkins
