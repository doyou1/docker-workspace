# use JDK11 image
FROM openjdk:11-jdk

VOLUME /tmp

# set jar_file
ARG JAR_FILE=./build/libs/AwsStudyProject-0.0.1-SNAPSHOT-plain.jar

# When running a container with what is stored in the variable, the name is app.jar
COPY ${JAR_FILE} app.jar

# Commands to run when the built image runs
ENTRYPOINT ["java", "-jar", "app-jar"]