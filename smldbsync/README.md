Reset Sync

```sql
update ap_ar_trans set doc_no = doc_no;
update ap_ar_trans_detail set doc_no = doc_no;
update ar_customer set code = code;
update cb_trans set doc_no = doc_no;
update cb_trans_detail set doc_no = doc_no;
update ic_inventory set code = code;
update ic_inventory_detail set ic_code = ic_code;
update ic_inventory_purchase_price set ic_code = ic_code;
update ic_trans set doc_no = doc_no;
update ic_trans_detail set doc_no = doc_no;

update ar_customer_detail set ar_code = ar_code;
update ar_dealer set ar_code = ar_code;
update coupon_list set number = number;
update ic_inventory_barcode set ic_code = ic_code;
update ic_inventory_price_formula set ic_code = ic_code;
update ic_promotion set promote_code = promote_code;
update ic_promotion_detail set promote_code = promote_code;
update ic_promotion_formula set code = code;
update ic_promotion_formula_action set code = code;
update ic_promotion_formula_group_qty set code = code;
update ic_promotion_formula_price_discount set code = code;
update ic_unit_use set ic_code = ic_code;
```
