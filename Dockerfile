FROM openjdk:18
EXPOSE 8080
ADD target/spring-docker-app.jar spring-docker-app.jar
ENTRYPOINT ["java","-jar","/spring-docker-app.jar"]