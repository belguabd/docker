FROM debian:bullseye

RUN apt update && apt install -y nginx 
COPY tools/app /var/www/html
# RUN chown -R www-data:www-data /var/www/html
COPY tools/conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]