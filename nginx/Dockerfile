FROM debian:bullseye
RUN apt update && apt install -y nginx  openssl vim

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/tls/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/tls/nginx.key -out /etc/nginx/tls/nginx.crt -subj "/C=MR/ST=Eljadida/L=Eljadida/O=1337/OU=belguabd/CN=localhost"
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
