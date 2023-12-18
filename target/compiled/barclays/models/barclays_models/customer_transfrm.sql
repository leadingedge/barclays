

select
cust_id,substr(name,1,11 ) as short_description,city,postcode
from BARCLAYS_TEST.STAGING_AREA.customer_stg