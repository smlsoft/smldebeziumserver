# SML DEBEZium Server

**Create Docker Network**
```
docker create sml_service_network
```

**Run PostgreSQL Server**

docker compose -f sml-dealer-sync.yaml up -d 


docker compose -f kafka-ui.yaml up -d 

### Drop Replication

```
select pg_drop_replication_slot('debezium')  
```