# kafka-starter

## macOS
### Homebrew
> kafka 설치  
> `brew install kafka`  

## Docker
### Docker compose
> `docker-compose up -d` 명령어를 통한 실행

### Zookeeper
> Docker 의 Zookeeper 공식 이미지 사용  
> 포트 2181 사용 설정  

## Kafka
> Docker 의 공식 이미지가 없기 때문에 설치본으로 실행    
> 앞으로 나오는 IP 주소인 `192.168.0.99` 는 내 Kafka Broker 의 주소를 뜻한다. 본인의 Kafka Broker 서버의 주소로 변경해서 사용한다.   

### server.properties 의 수정 내용  
> ```properties
> ...
> listeners=PLAINTEXT://192.168.0.99:9092
> ...
> advertised.listeners=PLAINTEXT://192.168.0.99:9092
> ...
> log.dirs=/tmp/kafka/kafka-logs
> ...
> zookeeper.connect=192.168.0.99:2181
> ...
> ```  
> 
> `listeners=PLAINTEXT://192.168.0.99:9092`: Kafka 가 설치된 서버의 주소 설정을 통해서 외부 클라이언트에서 브로커 접속을 허용  
> `advertised.listeners=PLAINTEXT://192.168.0.99:9092`: Kafka 프로듀서 및 컨슈머에서 접속할 브로커 접속 정보 설정  
> `log.dirs=/tmp/kafka/kafka-logs`: 브로커가 남길 로그 저장 디렉터리 지정   
> `zookeeper.connect=192.168.0.99:2181`: 브로커에 연결할 zookeeper 의 ip:port 지정    

### Kafka Broker 실행
> 현재 프로젝트로 이동 후   
> $ `kafka-server-start ./kafka/server.properties` 실행

## 확인
### Topic list
> macOS 의 터미널에서 확인: `kafka-topics --bootstrap-server 192.168.0.99:9092 --list`    

## 에러
### java.lang.UnsatisfiedLinkError: Can't load library 에러
> Apple Silicon(ARM) Processor 사용시 발생. ARM 용 JDK 사용 시 발생하는 에러로 2023.01.10 현재로선 x86 버전의 JDK 에서 실행해야만 함.  
