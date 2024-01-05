{{
  config(materialized='table',
  schema='TRANSFORM_AREA',
  alias='product_transfrm'
  )
}}

select
substr(prod_id,2,2)::NUMBER as prod_id,
substr(name,1,10 ) as short_description,
unit_price
from {{ ref('product_stage') }}