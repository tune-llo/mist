FROM php:7.3-apache

MAINTAINER tune <tunello@gmail.com>

#COPY start-apache /usr/local/bin
COPY index.php /var/www/html

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install vim -y --no-install-recommends apt-utils

EXPOSE ["80"]

CMD ["apache2-foreground"]