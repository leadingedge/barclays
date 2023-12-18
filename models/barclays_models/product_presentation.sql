{{
  config(materialized='table',
  schema='PRESENTATION_AREA',
  alias='dim_product'
  )
}}

select t1.prod_id as prod_id, t1.short_description as short_description,t1.unit_price as unit_price, current_timestamp() as date_time, hash(t1.prod_id, current_timestamp()) as hash_id
from {{ ref('product_transfrm') }} t1

