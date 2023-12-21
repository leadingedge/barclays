
  

  select t.$1 as prod_id , t.$2 as name, t.$3 as unit_price
  FROM 
    @__STAGE_TOKEN__
 t