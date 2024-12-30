#!/bin/bash
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli.phar
echo "Downloading WordPress..."
wp-cli.phar core download --path=/var/www/html --allow-root
echo "Setting up wp-config.php..."
wp-cli.phar config create \
    --dbname=$DB_NAME \
    --dbuser=$DB_USER \
    --dbpass=$DB_PASS \
    --dbhost=mariadb:3306 \
    --path=/var/www/html \
    --allow-root
echo "Installing WordPress..."
wp-cli.phar core install --path=/var/www/html \
    --url=$SITE_URL \
    --title=$SITE_TITLE \
    --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASS \
    --admin_email=$ADMIN_EMAIL --allow-root

mkdir -p /run/php/
sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf
echo "WordPress installation completed successfully!"
php-fpm7.4 -F

