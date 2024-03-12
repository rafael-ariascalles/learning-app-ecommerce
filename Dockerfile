# docker image for php installing a mysql dependency
FROM php:7.4-apache
RUN docker-php-ext-install mysqli
COPY . /var/www/html/
