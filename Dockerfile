FROM adoptopenjdk/openjdk11:ppc64le-ubuntu-jre-11.0.16.1_1
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY resources.jar resources.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar resources.jar

# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar resources.jar
