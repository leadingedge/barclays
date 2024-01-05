{{
  config(
    materialized='cust_prod_from_internal_stage',
    file_format = 'barclays_csv_format',
    stage_name = 'barclays_stage',
    stage_name_loc1 = 'barclays_stage/cp',
    alias='customer_product_stg'  
  )
}}
  

  select t.$1 as cust_id,
         t.$2 as prod_id,
         t.$3 as transaction_date, 
         t.$4 as units_sold
  FROM {{cust_prod_internal_stage() }} t

  