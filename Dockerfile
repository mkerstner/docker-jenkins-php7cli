FROM jenkins/jenkins:lts

USER root

RUN add-apt-repository ppa:ondrej/php
RUN apt-get update 
RUN apt-get install -y php5.6 php7.0-cli curl

USER jenkins
