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
echo "Setting up permalinks..."
wp-cli.phar user create $ADMIN_USERNAME $ADMIN_EMAIL --role=$ADMIN_ROLE --user_pass=$ADMIN_PASSWORD --path=/var/www/html --allow-root 1>/dev/null
wp-cli.phar user create $EDITOR_USERNAME $EDITOR_EMAIL --role=$EDITOR_ROLE --user_pass=$EDITOR_PASSWORD --path=/var/www/html --allow-root 1>/dev/null


mkdir -p /run/php/
sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|' /etc/php/7.4/fpm/pool.d/www.conf
echo "WordPress installation completed successfully!"
php-fpm7.4 -F

