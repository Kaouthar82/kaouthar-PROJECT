FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
    git unzip && \
    docker-php-ext-install pdo_mysql

COPY . /var/www/html

WORKDIR /var/www/html

EXPOSE 8080

CMD ["apache2-foreground"]