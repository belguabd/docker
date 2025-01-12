FROM debian:bullseye
RUN apt update && apt install -y wget curl
RUN wget https://github.com/portainer/portainer/releases/download/2.25.1/portainer-2.25.1-linux-amd64.tar.gz -P /opt/ >> /dev/null 2>&1 
RUN tar -xvf /opt/portainer-2.25.1-linux-amd64.tar.gz -C /opt/ >> /dev/null 2>&1 
RUN rm -rf /opt/portainer-2.25.1-linux-amd64.tar.gz
COPY tools/portainer.sh /usr/bin/portainer.sh
EXPOSE 9443
RUN chmod +x /usr/bin/portainer.sh
CMD ["portainer.sh"]
