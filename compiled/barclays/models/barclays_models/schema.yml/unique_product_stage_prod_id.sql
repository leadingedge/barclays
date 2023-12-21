
    
    

select
    prod_id as unique_field,
    count(*) as n_records

from BARCLAYS_TEST.STAGING_AREA.product_stg
where prod_id is not null
group by prod_id
having count(*) > 1


