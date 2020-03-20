FROM php:7-apache
MAINTAINER tune <tunello@gmail.com>
COPY index.php /var/www/html

ENV ENV_TEST_VAR_1=CIAO

RUN apt-get update \
    apt-get install vim -y

#CMD whoami
#ENTRYPOINT ["touch", ""]