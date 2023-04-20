FROM openjdk:8

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package

ENTRYPOINT ["java"]
CMD ["-jar", "./target/docker-example-1.1.3.jar"]