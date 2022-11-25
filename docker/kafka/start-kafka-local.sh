docker build --tag starter/kafka:local .
docker run -d \
-p 9092:9092 \
--name kafka-starter-kafka \
starter/kafka:local
