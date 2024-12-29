#!/bin/bash

# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp-cli.phar
# wp-cli.phar core download --path=/var/www/html --allow-root
# wp-cli.phar config create \
    # --dbname=$DB_NAME \
    # --dbuser=$DB_USER \
    # --dbpass=$DB_PASS \
    # --dbhost=mariadb:3306 \
    # --path=/var/www/html \
    # --allow-root
mkdir -p /run/php/
php-fpm7.4 -F -R

tail -f /dev/null