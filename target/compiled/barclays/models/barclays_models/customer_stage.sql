
  

  select t.$1 as cust_id , t.$2 as name, t.$3 as city, t.$4 as postcode
  FROM 
    @__STAGE_TOKEN__
 t