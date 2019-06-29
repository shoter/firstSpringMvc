TOMCAT_PORT = 31000
APP_NAME = app
CONTAINER_NAME = first-spring-mvc
CONTAINER_FLAGS = --rm

build:
	mvn package

build-image: build
	mkdir -p docker/app
	cp target/firstSpringMvc*war docker/app/$(APP_NAME).war
	docker build -t first-spring-mvc docker/

docker: build-image
	docker run $(CONTAINER_FLAGS) -p $(TOMCAT_PORT):8080 --name $(CONTAINER_NAME) -t first-spring-mvc

