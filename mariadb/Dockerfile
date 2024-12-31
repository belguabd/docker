FROM debian:bullseye
RUN apt-get update && apt-get install -y mariadb-server
COPY tools/setup_db.sh /usr/bin/setup_db.sh
RUN chmod +x /usr/bin/setup_db.sh
EXPOSE 3306
CMD ["setup_db.sh"]