
## 1. clone server

```
git clone https://github.com/smlsoft/smldebeziumserver
cd smldebeziumserver
docker network create sml_service_network

```

## 2. Create .env File 

```
SERVER_IP=0.0.0.0
PG_PASSWORD=sml
PG_SML_DATABASE_NAME=data1
DEALER_API_KEY=<dealer-api-key-here>
```

## 3. Apply SML Server App

```
docker compose -f tomcat.yaml up -d
docker compose -f debezium_postgresql.yml up -d zookeeper kafka postgresql_11_debezium debezium_connect
```

## 4. Create Database `data1` in smlsoft

## 5.  Apply Sync App

```
docker compose -f debezium_postgresql.yml up -d zookeeper kafka postgresql_11_debezium
docker compose -f debezium_postgresql.yml up -d product_dealer_sync initial-sync smlpgconsumer
```