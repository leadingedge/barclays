{{
  config(
    materialized='prod_from_internal_stage',
    file_format = 'barclays_csv_format',
    stage_name = 'barclays_stage',
    stage_name_loc1 = 'barclays_stage/p1',
    alias='product_stg'  
  )
}}
  

  select t.$1 as prod_id , t.$2 as name, t.$3 as unit_price
  FROM {{prod_internal_stage() }} t