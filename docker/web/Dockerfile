FROM php:5.6-apache

RUN docker-php-ext-install mysql pdo_mysql

COPY docker/web/php.ini /usr/local/etc/php/conf.d/app.ini
COPY --chown=www-data:www-data php/ /var/www/html/
