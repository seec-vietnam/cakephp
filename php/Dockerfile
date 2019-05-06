FROM php:7.2-apache

RUN apt-get update  \
	&& pecl install xdebug \
	&& docker-php-ext-enable xdebug \
    && apt-get install -y libicu-dev \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install intl


RUN cd /etc/apache2/mods-enabled/ && \
    ln -s ../mods-available/rewrite.load rewrite.load


ENV APACHE_DOCUMENT_ROOT=/var/www/html/app/webroot

COPY files/apache2.conf /etc/apache2/apache2.conf
COPY files/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/sites-available/*.conf
RUN sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/conf-available/*.conf
