FROM debian:bullseye
RUN apt update && apt install -y nginx 
COPY tools/app /var/www/html
COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"]