FROM openjdk:17

ADD target/universitymanagement-0.0.1-SNAPSHOT.jar universitymanagement-0.0.1-SNAPSHOT.jar

EXPOSE 8082

ENTRYPOINT ["java","-jar","universitymanagement-0.0.1-SNAPSHOT.jar"]