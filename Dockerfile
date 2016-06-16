FROM java:7

MAINTAINER René Schönfelder <schoenfelder2211@gmail.com>

COPY . /usr/src/myapp

WORKDIR /usr/src/myapp

RUN javac Main.java

CMD ["java", "Main"]