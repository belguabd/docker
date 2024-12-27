FROM debian:bullseye

# Install mariadb
RUN apt-get update && apt-get install -y mariadb-server 

RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 755 /var/run/mysqld

# Copy the configuration file from the current directory
COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the script to start the service
COPY ./conf/init-db.sh /usr/bin/init-db.sh

# Change the permissions of the script
RUN chmod +x /usr/bin/init-db.sh

# Expose the port
EXPOSE 3306

# Start the service
CMD ["/bin/bash","/usr/bin/init-db.sh"]