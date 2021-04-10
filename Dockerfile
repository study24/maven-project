FROM openjdk
MAINTAINER prakash
VOLUME /tmp
ARG JAR_FILE_NAME
COPY $JAR_FILE_NAME app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
CMD [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
