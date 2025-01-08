up:
	@docker compose up
down:
	@docker compose down --volumes --remove-orphans
build:
	@mkdir -p /home/belguabd/data/wp
	@mkdir -p /home/belguabd/data/db
	
	@docker compose build
clean:
	./clean.sh