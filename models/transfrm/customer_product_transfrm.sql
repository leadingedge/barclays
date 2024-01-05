{{
  config(materialized='table',
  schema='TRANSFORM_AREA',
  alias='customer_product_transfrm'
  )
}}

select
substr(cust_id,2,2)::NUMBER as cust_id, 
substr(prod_id,2,2)::NUMBER as prod_id, 
transaction_date,
units_sold
from {{ ref('customer_product_stage') }}