FROM  debian:bullseye

RUN apt update && apt install -y \
    php7.4 \
    php7.4-fpm\
    php-mysql\
    mariadb-client\
    curl \
    sendmail
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY tools/setup_wp.sh /usr/bin/setup_wp.sh
RUN chmod +x /usr/bin/setup_wp.sh
WORKDIR /var/www/html
CMD ["setup_wp.sh"]