build:
	mvn package

build-image: build
	mkdir -p docker/app
	cp target/firstSpringMvc*war docker/app/app.war
	cd docker
	docker build -t first-spring-mvc

docker: build-image
	docker rm first-spring-mvc
	docker run -P --name first-spring-mvc -t first-spring-mvc

