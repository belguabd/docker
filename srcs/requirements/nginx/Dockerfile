FROM debian:bullseye
RUN apt update && apt install -y nginx  openssl vim

COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/tls/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/tls/nginx.key \
    -out /etc/nginx/tls/nginx.crt \
    -subj "/C=MA/ST=Casablanca/L=Casablanca/O=MyCompany/OU=MyDivision/CN=belguabd.42.fr"
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]
