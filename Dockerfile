FROM openjdk:19-alpine
EXPOSE 80
RUN mvnw package
ADD target/spring-boot-docker.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
