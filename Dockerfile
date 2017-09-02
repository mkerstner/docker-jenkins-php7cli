FROM jenkins/jenkins:lts

USER root

RUN apt-get update 
RUN apt-get install -y software-properties-common php7.0-cli curl
# add PPA for PHP5.6, use --allow-unauthenticated to force installation of PHP5.6 via PPA
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated php5.6 

# if it fails you need to install python-software-properties too
# especially on older Ubuntu versions :
# sudo apt-get install python-software-properties

USER jenkins
