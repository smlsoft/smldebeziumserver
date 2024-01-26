# SML DEBEZIUM SERVER


## 1. Clone
```shell
sudo mkdir /data
cd /data
git clone https://github.com/smlsoft/smldebeziumserver
cd smldebeziumserver

```

## 2. Setup Docker
```shell
bash dockerinstall.sh
```

## 3. Create Docker Network
```shell
sudo docker network create sml_service_network
```

## 3. Setup SML Web Service
```shell
bash setupwebservice.sh
```

## 4. Setup Dataase

```shell

cd /data/smldebeziumserver/

# change kafka ip
# sudo sed -i -e "s/EDIT_KAFKA_HOST/192.168.2.xx/g" test-replace.yml
sudo bash replace_cluster_ip.sh

# change database name
#sudo sed -i -e "s/EDIT_DATABASE_NAME/data1/g" test-replace.yml
sudo bash replace_databasename.bash

# change dealer api key
#sudo sed -i -e "s/EDIT_DEALER_API_KEY/0000000000/g" test-replace.yml
sudo bash replace_dealer_code.bash

# start database
cd /data/smldebeziumserver/postgresql_debezium

sudo docker compose up -d sml_debezium_postgresql
```

## 5. Create Database in SML Account

+ Login In SML Account

+ Create Database: data1


## 6. Start Sync System

```shell
sudo docker compose up -d zookeeper kafka

sudo docker compose up -d sml_debezium_connect

sudo docker compose up -d initial_consumer smlpgconsumer

```

## 7. Setup Kafka UI

```shell
cd /data/smldebeziumserver/kafkaui
sudo docker compose up -d
```

## 8. Setup PostgreSQL Auto Backup

```shell
cd /data/smldebeziumserver/backups
sudo docker compose up -d
```

## 9. Setup pgAdmin4

```shell
cd /data/smldebeziumserver/pgadmin4
sudo docker compose up -d
```

