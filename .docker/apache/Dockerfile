FROM httpd:2.4.33-alpine

RUN apk update; \
    apk upgrade;

# Copy apache vhost file to proxy php requests to php-fpm container.
COPY php-redirect.apache.conf /usr/local/apache2/conf/php-redirect.apache.conf

# Inclusion of custom conf.
RUN cat /usr/local/apache2/conf/php-redirect.apache.conf \
 >> /usr/local/apache2/conf/httpd.conf