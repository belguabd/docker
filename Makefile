up:
	@sudo mkdir -p /home/belguabd/data/db /home/belguabd/data/wp
	@docker compose up 
down:
	@docker compose down --volumes --remove-orphans
build:
	@docker compose build
clean:
	./clean.sh