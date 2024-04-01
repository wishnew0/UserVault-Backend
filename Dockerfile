FROM maven:3.9.5-openjdk-21 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:21-jdk-slim
COPY --from=build /target/UserVault-0.0.1-SNAPSHOT.jar UserVault.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","UserVault.jar"]
