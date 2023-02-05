FROM openjdk:11
ADD target/SpringBootSecurity-0.0.1-SNAPSHOT.jar SpringBootSecurity.jar
EXPOSE 7879
ENTRYPOINT ["java", "-jar", "SpringBootSecurity.jar"]