# kafka-manager-docker
docker for kafka-manager

CMAK (Cluster Manager for Apache Kafka, previously known as Kafka Manager)
=============

CMAK (previously known as Kafka Manager) is a tool for managing [Apache Kafka](http://kafka.apache.org) clusters.
_See below for details about the name change._

CMAK supports the following:

 - Manage multiple clusters
 - Easy inspection of cluster state (topics, consumers, offsets, brokers, replica distribution, partition distribution)
 - Run preferred replica election
 - Generate partition assignments with option to select brokers to use
 - Run reassignment of partition (based on generated assignments)
 - Create a topic with optional topic configs (0.8.1.1 has different configs than 0.8.2+)
 - Delete topic (only supported on 0.8.2+ and remember set delete.topic.enable=true in broker config)
 - Topic list now indicates topics marked for deletion (only supported on 0.8.2+)
 - Batch generate partition assignments for multiple topics with option to select brokers to use
 - Batch run reassignment of partition for multiple topics
 - Add partitions to existing topic
 - Update config for existing topic
 - Optionally enable JMX polling for broker level and topic level metrics.
 - Optionally filter out consumers that do not have ids/ owners/ & offsets/ directories in zookeeper.

 