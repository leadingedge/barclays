COPY INTO BARCLAYS_TEST.STAGING_AREA.customer_stg
        FROM (
            
  

  select t.$1 as cust_id , t.$2 as name, t.$3 as city, t.$4 as postcode
  FROM 
    @barclays_stage/c1
 t
        ) ;
    