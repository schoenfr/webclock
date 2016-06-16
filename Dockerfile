FROM java:7

MAINTAINER René Schönfelder <schoenfelder2211@gmail.com>

RUN sbt assembly

USER daemon

ADD target/scala-2.11/*.jar /app

ENTRYPOINT [ "java", "-jar", "/app/server.jar"]

EXPOSE 8080
