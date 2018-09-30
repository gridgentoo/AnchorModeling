README https://github.com/Yolean/kubernetes-kafka

https://losst.ru/ustanovka-node-js-ubuntu-16-04

download https://archive.apache.org/dist/kafka/0.10.2.1/kafka_2.11-0.10.2.1.tgz

sdk install java 8.0.181-zulu

sdk install scala 2.11.8

./zookeeper-server-start.sh ../config/zookeeper.properties
./kafka-server-start.sh ../config/server.properties
./kafka-console-producer.sh --broker-list localhost:9092 --topic my_topic
./kafka-console-consumer.sh --zookeeper localhost:2181 --topic my_topic --from_beginning
./kafka-topics.sh --create --topic replicated_topic --zookeeper localhost:2181 --replication-factor 3 --partitions 1
./kafka-topics.sh --describe --topic replicated_topic --zookeeper localhost:2181
