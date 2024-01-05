{{
  config(materialized='table',
  schema='PRESENTATION_AREA',
  alias='dim_customer'
  )
}}

select t1.cust_id as cust_id, 
       t1.short_description as short_description,
       t1.city as city, 
       t1.postcode as postcode, 
       current_timestamp() as date_time, 
       hash(t1.cust_id, current_timestamp()) as hash_id
from {{ ref('customer_transfrm') }} t1
