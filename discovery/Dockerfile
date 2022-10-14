FROM adoptopenjdk:11-jre-hotspot 
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} /usr/src/app.jar
WORKDIR /usr/src 
EXPOSE 8761
ENTRYPOINT ["java","-jar","/usr/src/app.jar"]
