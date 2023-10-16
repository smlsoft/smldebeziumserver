
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
docker compose -f debezium_postgresql up -d
```

## 4. Create Database `data1` in smlsoft

## 5.  Apply Sync App

```

docker compose -f sml-product-dealer-sync.yaml up -d
docker compose -f sml-sale-sync.yaml up -d

```