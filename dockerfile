#FROM openjdk:17
FROM maven:3.8.6-openjdk-18
COPY src /myapp/src
COPY pom.xml /myapp/pom.xml
WORKDIR /myapp
RUN mvn clean package -DskipTests
CMD java -jar /myapp/target/demo-0.0.1-SNAPSHOT.jar