FROM php:5.6-apache

RUN apt-get update
RUN apt-get install sqlite3 libsqlite3-dev --yes
RUN docker-php-ext-install mbstring pdo_mysql pdo_sqlite

RUN curl -L -o tpyecho.tar.gz https://github.com/happyhaha1/typecho/archive/1.tar.gz
RUN tar zxf tpyecho.tar.gz
RUN cp -a build/* /var/www/html/
RUN rm -r build tpyecho.tar.gz