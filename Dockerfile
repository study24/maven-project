FROM openjdk
MAINTAINER akash
VOLUME /tmp
WORKDIR /var/lib/jenkins/Demo_Job1/target/webapp/
COPY ..
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
CMD [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
