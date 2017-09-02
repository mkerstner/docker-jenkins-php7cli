FROM jenkins/jenkins:lts

USER root

RUN apt-get update 
RUN apt-get install -y software-properties-common php7.0-cli curl
RUN apt-get update
RUN add-apt-repository ppa:ondrej/php
RUN apt-get install -y php5.6 

# if it fails you need to install python-software-properties too
# especially on older Ubuntu versions :
# sudo apt-get install python-software-properties

USER jenkins
