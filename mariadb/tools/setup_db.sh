#!/bin/bash
service mariadb start
sleep 1;
mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE} ;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "FLUSH PRIVILEGES;"
service mariadb stop
mysqld_safe --port=3306 --bind-address=0.0.0.0 