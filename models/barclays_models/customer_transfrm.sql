{{
  config(materialized='table',
  schema='TRANSFORM_AREA',
  alias='customer_transfrm'
  )
}}

select
cust_id,substr(name,1,11 ) as short_description,city,postcode
from {{ ref('customer_stage') }}