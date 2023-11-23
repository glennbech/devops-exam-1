FROM maven:3.6-jdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

ENV AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY
ENV BUCKET_NAME=YOUR_BUCKET_NAME 

FROM adoptopenjdk/openjdk11:alpine-slim
COPY --from=builder /app/target/*.jar /app/application.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/application.jar"]