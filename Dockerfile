FROM php:8.3-apache

RUN a2enmod rewrite
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pgsql pdo pdo_pgsql

COPY index.php /var/www/html/index.php

EXPOSE 80/tcp
