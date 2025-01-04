up:
	@docker compose up
down:
	@docker compose down --volumes 
build:
	@docker compose build
clean:
	./clean.sh