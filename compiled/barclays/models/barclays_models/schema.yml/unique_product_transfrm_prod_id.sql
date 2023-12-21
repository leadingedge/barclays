
    
    

select
    prod_id as unique_field,
    count(*) as n_records

from BARCLAYS_TEST.TRANSFORM_AREA.product_transfrm
where prod_id is not null
group by prod_id
having count(*) > 1


