
  
    

        create or replace transient table BARCLAYS_TEST.PRESENTATION_AREA.dim_product
         as
        (

select t1.prod_id as prod_id, t1.short_description as short_description,t1.unit_price as unit_price, current_timestamp() as date_time, hash(t1.prod_id, current_timestamp()) as hash_id
from BARCLAYS_TEST.TRANSFORM_AREA.product_transfrm t1
        );
      
  