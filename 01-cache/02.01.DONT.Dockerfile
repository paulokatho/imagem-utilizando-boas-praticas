# time podman build -t jc-cache02-dont -f 02.01.DONT.Dockerfile ../quarkus/target

FROM debian/buildd:stable

RUN apt-get update
RUN apt -y install default-jdk ssh vim

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/

CMD ["java", "-jar", "/deployment/quarkus-1.0.0-SNAPSHOT-runner.jar"]
