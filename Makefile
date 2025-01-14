up:
	@docker compose -f srcs/docker-compose.yml up 
down:
	@docker compose -f srcs/docker-compose.yml down --volumes --remove-orphans
build:
	@mkdir -p /home/belguabd/data/wp
	@mkdir -p /home/belguabd/data/db
	@docker compose -f srcs/docker-compose.yml build