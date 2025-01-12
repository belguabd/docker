FROM debian:bullseye
RUN apt update && apt install -y vsftpd ftp vim 
COPY tools/ftp.sh /usr/bin/ftp.sh
RUN chmod +x /usr/bin/ftp.sh
EXPOSE 10000-10100 
CMD ["ftp.sh"]