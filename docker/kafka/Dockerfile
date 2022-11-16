FROM ubuntu:20.04
LABEL maintainer="jujin1324@daum.net"
LABEL dockerhub="https://hub.docker.com/_/ubuntu"

WORKDIR /home/kafka
EXPOSE 9092

RUN ["apt", "update"]
RUN apt install -y \
    openjdk-11-jdk \
    curl

RUN mkdir /home/Downloads kafka-logs \
    && curl "https://archive.apache.org/dist/kafka/2.5.0/kafka_2.13-2.5.0.tgz" -o /home/Downloads/kafka.tgz \
    && tar -xzf /home/Downloads/kafka.tgz --strip 1

ADD server.properties config/

CMD bin/kafka-server-start.sh config/server.properties
#CMD ["sleep", "infinity"]
