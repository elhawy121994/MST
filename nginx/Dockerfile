FROM php:8.1-fpm-alpine

RUN apk update \
    && apk add libpq-dev \
        libzip-dev \
        libonig-dev \
        libxml2-dev \
    && docker-php-ext-install \
        pdo_mysql \
        zip \
        mysqli \
        pdo_pgsql \
    && rm -rf /var/lib/apt/lists/*

RUN apk add mysql-client
RUN apk add sqlite php8.0-sqlite3
RUN apk add install php-xml
RUN apk add php-gd
RUN apk php-mbstring php-zip
RUN aok php8.0-mbstring php8.0-zip
RUN apk add php8.0-mysql

# allow super user - set this if you use Composer as a
# super user at all times like in docker containers
ENV COMPOSER_ALLOW_SUPERUSER=1

# obtain composer using multi-stage build
# https://docs.docker.com/build/building/multi-stage/
COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer

#Here, we are copying only composer.json and composer.lock (instead of copying the entire source)
# right before doing composer install.
# This is enough to take advantage of docker cache and composer install will
# be executed only when composer.json or composer.lock have indeed changed!-
# https://medium.com/@softius/faster-docker-builds-with-composer-install-b4d2b15d0fff
COPY ./app/composer.* ./

# install
RUN composer install --prefer-dist --no-dev --no-scripts --no-progress --no-interaction

# copy application files to the working directory
COPY ./app .

# run composer dump-autoload --optimize
RUN composer dump-autoload --optimize