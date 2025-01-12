FROM debian:bullseye
RUN apt update && apt install -y  redis-server
COPY tools/redis.sh /usr/bin/redis.sh
RUN chmod +x /usr/bin/redis.sh
EXPOSE 6379
CMD ["redis.sh"]
