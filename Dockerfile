FROM eclipse-temurin:21-jdk-alpine
VOLUME /tmp
COPY target/*.jar UserVault.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","UserVault.jar"]
