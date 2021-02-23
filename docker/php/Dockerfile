FROM php:8.0.2-fpm-buster

COPY php.ini /usr/local/etc/php/

RUN apt-get update \
    && apt-get -y install libmcrypt-dev zip unzip vim zsh autoconf libtool g++ git make \
    && pecl install redis \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable redis \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && useradd -m -s /bin/sh -u 1000 nginx

USER nginx

COPY ./www.conf /usr/local/etc/php-fpm.d/

WORKDIR /var/www/

EXPOSE 9000