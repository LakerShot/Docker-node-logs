run:
	docker run -d -p 80:8989 -v logs:/app/data --rm --name logs-container logs-app-image
	#docker run -d -p 80:8989 --env-file ./config/.env --rm --name docker-logs-container docker-logs-app

stop:
	docker stop logs-container

run-dev:
	docker run -d -p 80:8989 -v "/Users/mordev4130/Documents/test apps/docker-started-app/logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name logs-container logs-app-image
