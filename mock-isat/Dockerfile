FROM adoptopenjdk/openjdk11:ppc64le-ubuntu-jre-11.0.16.1_1
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
