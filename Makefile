up-detach:
	docker compose up --build --remove-orphans --force-recreate --detach
up:
	docker compose up --build --remove-orphans --force-recreate
shell:
	docker compose exec nginx bash
reload:
	docker compose exec nginx nginx -s reload
