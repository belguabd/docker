FROM debian:bullseye
RUN apt update && apt install -y wget php php7.4 php7.4-fpm php-mysql 
RUN mkdir -p /var/www/adminer/
RUN wget https://www.adminer.org/latest.php -O /var/www/adminer/adminer.php
EXPOSE 8080
COPY tools/adminer.sh /usr/local/adminer.sh
RUN chmod +x /usr/local/adminer.sh

CMD ["/usr/local/adminer.sh"]