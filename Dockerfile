FROM php:5.6-apache

RUN apt-get update
RUN apt-get install sqlite3 libsqlite3-dev --yes
RUN docker-php-ext-install mbstring pdo_mysql pdo_sqlite

RUN curl -L -o tpyecho.tar.gz https://codeload.github.com/happyhaha1/typecho/tar.gz/1
RUN tar zxf tpyecho.tar.gz
RUN cp -a typecho-1/* /var/www/html/
RUN rm -r typecho-1 tpyecho.tar.gz

