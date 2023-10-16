# SML DEBEZium Server

# TLDR; [How To Setup](Setup.md)

**Create Docker Network**
```
docker network create sml_service_network
```

**Run PostgreSQL Server**

docker compose -f debezium_postgresql.yaml up -d 

docker compose -f tomcat.yaml up -d 

docker compose -f sml-product-dealer-sync.yaml up -d 

docker compose -f sml-sale-sync.yaml up -d

### Kafka UI

docker compose -f kafka-ui.yaml up -d 


### Drop Replication

```
select pg_drop_replication_slot('debezium')  
```

### Remove Server (Windows)

```

docker compose -f .\sml-sale-sync.yaml down

docker compose -f .\sml-product-dealer-sync.yaml down 

docker compose -f .\debezium_postgresql.yml down

docker compose -f .\tomcat.yaml down
```


### Remove Server (Linux)

```

docker compose -f sml-sale-sync.yaml down

docker compose -f sml-product-dealer-sync.yaml down 

docker compose -f .\debezium_postgresql.yml down

docker compose -f .\tomcat.yaml down
```