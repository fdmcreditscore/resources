# FROM adoptopenjdk/openjdk11:ppc64le-ubuntu-jre-11.0.16.1_1

FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} /usr/src/app.jar
WORKDIR /usr/src 
EXPOSE 9020
ENTRYPOINT ["java","-jar","/usr/src/app.jar"]
