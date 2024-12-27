#!/bin/bash
service mariadb start;
sleep 2;


mysql -u root  -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
tail -f /dev/null
# mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO '${SQL_USER}'@'%';"
# mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "ALTER USER 'root'@'%' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# mysql -u root -p"${SQL_ROOT_PASSWORD}" -e "FLUSH PRIVILEGES;"

# mysql -e "CREATE DATABASE IF NOT EXISTS \'${SQL_DATABASE}\'"
# mysql -e "CREATE USER IF NOT EXISTS \'${SQL_USER}\'@'localhost' IDENTIFIED BY \'${SQL_PASSWORD}\'"
# mysql -e "GRANT ALL PRIVILEGES ON \'${SQL_DATABASE}'\ TO \'${SQL_USER}\'@'%'";
# mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY \'${SQL_ROOT_PASSWORD}\'";
# mysql -e "FLUSH PRIVILEGES" -uroot -p${SQL_ROOT_PASSWORD};

# service stop start;
# exec mysqld_safe
