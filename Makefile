run:
	docker build -t phpapp .
	docker run --name phpapp-container --rm --env-file .env -p 8080:80 phpapp

push:
	docker build -t ecom-web .
	docker tag ecom-web:latest rjacdevops/ecom-web:v1
	docker push rjacdevops/ecom-web:v1

docker-login:
	docker login -u rjacdevops -p $(DOCKER_PASSWORD)