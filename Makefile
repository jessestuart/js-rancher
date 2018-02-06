.PHONY: all clean destroy test start

all: start

clean: destroy

destroy:
	docker-compose down
	docker network rm nginx-net
	yes | docker system prune
	yes | docker volume prune

start:
	docker network create nginx-net
	docker-compose up -d
