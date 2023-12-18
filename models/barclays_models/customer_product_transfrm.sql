{{
  config(materialized='table',
  schema='TRANSFORM_AREA',
  alias='customer_product_transfrm'
  )
}}

select
cust_id,prod_id,transaction_date,units_sold
from {{ ref('customer_product_stage') }}