FROM maven:3-jdk-8-alpine

RUN --mount=type=cache,target=/root/.m2 mvn -f /usr/src/app/pom.xml clean package

WORKDIR /usr/src/app

COPY . /usr/src/app
RUN mvn package

ENV PORT 80
EXPOSE $PORT
CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
