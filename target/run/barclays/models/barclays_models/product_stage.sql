COPY INTO BARCLAYS_TEST.STAGING_AREA.product_stg
        FROM (
            
  

  select t.$1 as prod_id , t.$2 as name, t.$3 as unit_price
  FROM 
    @barclays_stage/p1
 t
        ) ;
    