COPY INTO BARCLAYS_TEST.STAGING_AREA.customer_product_stg
        FROM (
            
  

  select t.$1 as cust_id,t.$2 as prod_id,t.$3 as transaction_date, t.$4 as units_sold
  FROM 
    @barclays_stage/cp
 t
        ) ;
    