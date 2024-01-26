# SML DEBEZium Server

# TLDR; [How To Setup](https://github.com/smlsoft/smldebeziumserver/blob/main/Setup.MD)

**Create Docker Network**
```
docker network create sml_service_network
```

## 2. Create .env File 

```
SERVER_IP=0.0.0.0
PG_PASSWORD=sml
PG_SML_DATABASE_NAME=data1
DEALER_API_KEY=0000000
```

## 3. Setup Tomcat

```
docker compose -f tomcat.yaml up -d
```

## 4. Setup Traefik
```
docker compose -f traefik.yaml up -d
```

## 5. Setup PostgreSQL Server
```
docker compose -f debezium_postgresql.yml up -d postgresql_11_debezium
```

## 6. Create Database `data1` in smlsoft

## 7. Setup Connector

```
docker compose -f debezium_postgresql.yml up -d zookeeper kafka debezium_connect
```

## 8. Setup Sync
```
docker compose -f debezium_postgresql.yml up -d product_dealer_sync initial-sync smlpgconsumer
```

## เพิ่มเติม

### Kafka UI

docker compose -f kafka-ui.yaml up -d 


### Drop Replication

```
select pg_drop_replication_slot('debezium')  
```

### Remove Server (Windows)

```
docker compose -f .\debezium_postgresql.yml down

docker compose -f .\tomcat.yaml down
```


### Remove Server (Linux)

```
docker compose -f .\debezium_postgresql.yml down

docker compose -f .\tomcat.yaml down
```