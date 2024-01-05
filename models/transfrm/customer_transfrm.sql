{{
  config(materialized='table',
  schema='TRANSFORM_AREA',
  alias='customer_transfrm'
  )
}}

select
substr(cust_id,2,2)::NUMBER as cust_id ,
substr(name,1,11 ) as short_description,
city,
postcode
from {{ ref('customer_stage') }}