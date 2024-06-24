FROM openjdk:11 

LABEL org.opencontainers.image.authors="Goutami"

COPY target/spring-boot-docker-app.jar /usr/app/ 

WORKDIR /usr/app/

EXPOSE 8080

ENTRYPOINT [ "java","-jar","spring-boot-docker-app.jar"]
