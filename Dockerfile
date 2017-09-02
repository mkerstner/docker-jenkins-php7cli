FROM jenkins/jenkins:lts

USER root

RUN apt-get update 
RUN apt-get install -y software-properties-common curl

# add PPA for PHP5.6, use --allow-unauthenticated to force installation of PHP5.6 via PPA
# OR: add via deb for your version
#RUN deb http://ppa.launchpad.net/ondrej/php/ubuntu stretch main 
#RUN deb-src http://ppa.launchpad.net/ondrej/php/ubuntu stretch main 

RUN add-apt-repository ppa:ondrej/php

RUN apt-get update
RUN apt-get install -y --allow-unauthenticated php7.0

# optional PHP extensions you might need
RUN apt-get install -y --allow-unauthenticated php7.0-mbstring php7.0-exif php7.0-gd php7.0-mcrypt php7.0-intl php7.0-fileinfo php7.0-mysql

# if it fails you need to install python-software-properties too
# especially on older Ubuntu versions :
# sudo apt-get install python-software-properties

USER jenkins
