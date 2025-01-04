up:
	@docker compose up
down:
	@docker compose down --volumes --remove-orphans
build:
	@docker compose build
clean:
	./clean.sh