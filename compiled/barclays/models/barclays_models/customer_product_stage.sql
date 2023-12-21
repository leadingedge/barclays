
  

  select t.$1 as cust_id,t.$2 as prod_id,t.$3 as transaction_date, t.$4 as units_sold
  FROM 
    @__STAGE_TOKEN__
 t