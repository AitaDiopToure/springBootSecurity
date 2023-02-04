FROM openjdk:11
ADD target/evalsecurrity-0.0.1-SNAPSHOT.jar opsecurrity.jar
EXPOSE 7879
ENTRYPOINT ["java", "-jar", "opsecurrity.jar"]