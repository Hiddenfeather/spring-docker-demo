# spring-docker-demo
A simple demo for building Docker image for a springboot application




/**
Creating Dockerfile
**/
FROM openjdk:18
EXPOSE 8080
ADD target/spring-docker-app.jar spring-docker-app.jar
ENTRYPOINT ["java","-jar","/spring-docker-app.jar"]

/**
Building Docker image "docker build -t <tagname>"
**/
docker build -t spring-docker-app .


/**
Sign-in in your installed docker and use this  via cmd to login.
**/
docker login

/**
Tagging before pushing to Dockerhub.
"docker tag <imagename> repositorytagname:tagname"
**/
docker tag spring-docker-app geraldjayilagan/dockerdemoapps2022:spring-docker-app
/**
Pushing image to docker hub. Not providing any tags will use the default tag latest

"docker push repositorytagname:tagname"
**/
docker push geraldjayilagan/dockerdemoapps2022
