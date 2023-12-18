{{
  config(
    materialized='cust_from_internal_stage',
    file_format = 'barclays_csv_format',
    stage_name = 'barclays_stage',
    stage_name_loc1 = 'barclays_stage/c1',
    alias='customer_stg'  
  )
}}
  

  select t.$1 as cust_id , t.$2 as name, t.$3 as city, t.$4 as postcode
  FROM {{cust_internal_stage() }} t