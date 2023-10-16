
## 1. Create .env File 

```
SERVER_IP=0.0.0.0
PG_PASSWORD=sml
PG_SML_DATABASE_NAME=data1
DEALER_API_KEY=<dealer-api-key-here>
```

## 2. Apply SML Server App

```
docker compose -f tomcat.yaml up -d
docker compose -f debezium_postgresql up -d
```

## 3. Create Database `data1` in smlsoft

## 4.  Apply Sync App

```

docker compose -f sml-product-dealer-sync.yaml up -d
docker compose -f sml-sale-sync.yaml up -d

```