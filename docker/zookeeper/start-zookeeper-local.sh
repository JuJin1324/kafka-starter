docker build --tag starter/zookeeper:local .
docker run -d \
-p 2181:2181 \
--name kafka-starter-zookeeper \
starter/zookeeper:local
