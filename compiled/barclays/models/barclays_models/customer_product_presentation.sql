

select t1.cust_id as cust_id,t1.prod_id as prod_id, t1.transaction_date as transaction_date,t1.units_sold as units_sold, t1.units_sold*t2.unit_price as revenue,
current_timestamp() as date_time, hash(t1.prod_id, current_timestamp()) as hash_id
from BARCLAYS_TEST.TRANSFORM_AREA.customer_product_transfrm t1,
     BARCLAYS_TEST.TRANSFORM_AREA.product_transfrm t2
where t1.prod_id = t2.prod_id