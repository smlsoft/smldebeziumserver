# SML DEBEZium Server

**Create Docker Network**
```
docker create sml_service_network
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