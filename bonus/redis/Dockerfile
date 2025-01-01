FROM debian:bullseye
RUN apt update && apt install -y  redis-server
EXPOSE 6379
CMD ["/bin/sh", "-c", "redis-server --protected-mode no > /dev/null 2>&1"]
