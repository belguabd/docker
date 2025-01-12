FROM debian:bullseye

RUN apt update && apt install -y \
    php7.4 \
    php-mysql \
    wget
RUN mkdir -p /var/www/adminer
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/adminer/index.php
EXPOSE 8080
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/adminer"]