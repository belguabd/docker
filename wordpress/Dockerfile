FROM  debian:bullseye

RUN apt-get update && apt-get install -y \
    php7.4 \
    php7.4-fpm\
    php-mysql\
    mariadb-client\
    curl \
    sendmail
COPY tools/setup_wp.sh /usr/bin/setup_wp.sh
RUN chmod +x /usr/bin/setup_wp.sh
EXPOSE 9000
CMD ["setup_wp.sh"]