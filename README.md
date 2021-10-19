# redis-cluster-docker-image

Docker project for running a multi-host redis-cluster. 

# Installation

* Clone this repository to each of your redis-cluster hosts
* Start the Docker containers:
```
sudo docker-compose up -d
```
* When the containers have started - You will notice 3x nodes.conf files created (one per node directory)

# Configuration

* When all 9 Nodes are started - Run the following on one of your hosts to create your cluster (Updating with the DNS names of your 3 Hosts):

```
docker exec -it redis-cluster1 /redis-3.2.6/src/redis-trib.rb create --replicas 2 \
[host1]:30001 [host2]:30001 [host3]:30001 \
[host3]:30002 [host1]:30002 [host2]:30002 \
[host2]:30003 [host3]:30003 [host1]:30003
```
