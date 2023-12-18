
  
    

        create or replace transient table BARCLAYS_TEST.TRANSFORM_AREA.customer_product_transfrm
         as
        (

select
cust_id,prod_id,transaction_date,units_sold
from BARCLAYS_TEST.STAGING_AREA.customer_product_stg
        );
      
  