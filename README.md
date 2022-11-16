# kafka-starter

## Docker
### Docker compose
> `docker-compose up -d` 명령어를 통한 실행

### Zookeeper
> Docker 의 Zookeeper 공식 이미지 사용  
> 포트 2181 사용 설정  

### Kafka
> Docker 의 공식 이미지가 없기 때문에 Ubuntu 이미지에 설치  
> server.properties 의 수정 내용  
> ```properties
> ...
> listeners=PLAINTEXT://localhost:9092
> ...
> advertised.listeners=PLAINTEXT://localhost:9092
> ...
> log.dirs=/home/kafka/kafka-logs
> ...
> zookeeper.connect=kafka-starter-zookeeper:2181
> ...
> ```  

