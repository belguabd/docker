#!/bin/bash
sleep 5;
wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb:3306 --allow-root
wp core install --url=$SITE_URL --title=$SITE_TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
wp user create $ADMIN_USERNAME $ADMIN_USER_EMAIL --role=$ADMIN_ROLE --user_pass=$ADMIN_PASSWORD --allow-root 1>/dev/null
wp user create $EDITOR_USERNAME $EDITOR_EMAIL --role=$EDITOR_ROLE --user_pass=$EDITOR_PASSWORD --allow-root 1>/dev/null
wp plugin install redis-cache --activate --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --raw --allow-root
wp redis enable --allow-root
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
mkdir -p /run/php/
sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf
php-fpm7.4 -F