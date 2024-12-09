# Domarine Product Dealer Sync

## force sync by date

```
POST /productsync/sync-product/ HTTP/1.1
Host: localhost:8080
Content-Type: application/json
Content-Length: 44

{
    "date": "2024-09-18T05:04:33.899Z"
}
```


## Get product update from marine
```http
GET /marine-man/actions/marine-product-modify-v2?customer_id=100152237&page=1&dtm=2024-12-07 HTTP/1.1
Host: api-public.dohome.technology
Authorization: Basic bWFyaW5lOkQwaDBtMyptYXIxbmU=
```
