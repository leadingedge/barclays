

select
prod_id,substr(name,1,10 ) as short_description,unit_price
from BARCLAYS_TEST.STAGING_AREA.product_stg