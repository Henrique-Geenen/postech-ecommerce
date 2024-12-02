
docker-build:
	docker compose build

docker-start: docker-build
	docker compose up -d

docker-stop:
	docker compose down
