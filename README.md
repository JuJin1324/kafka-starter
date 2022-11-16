# kafka-starter

## macOS
### Homebrew
> client 용도로 kafka 설치  
> `brew install kafka`  

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
> listeners=PLAINTEXT://0.0.0.0:9092
> ...
> advertised.listeners=PLAINTEXT://localhost:9092
> ...
> log.dirs=/home/kafka/kafka-logs
> ...
> zookeeper.connect=kafka-starter-zookeeper:2181
> ...
> ```  
> 
> `listeners=PLAINTEXT://0.0.0.0:9092`: 0.0.0.0 설정을 통해서 외부 클라이언트에서 브로커 접속을 허용  
> `advertised.listeners=PLAINTEXT://localhost:9092`: 외부에서 접속 허용할 도메인명 지정, local 에서 테스트 용도기 때문에 localhost 로 지정하였음.  
> `log.dirs=/home/kafka/kafka-logs`: 브로커가 남길 로그 저장 디렉터리 지정  
> `zookeeper.connect=kafka-starter-zookeeper:2181`: 브로커에 연결할 zookeeper 의 ip:port 지정, docker-compose 로 실행하기 때문에 zookeeper 컨테이너의 이름으로 지정하였음.  

## 확인
### Topic list
> macOS 의 터미널에서 확인: `kafka-topics --bootstrap-server localhost:9092 --list`    
