FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y php7.0-cli curl

USER jenkins
