FROM maven:3-openjdk-17
VOLUME /tmp
COPY target/*.jar UserVault.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","UserVault.jar"]
