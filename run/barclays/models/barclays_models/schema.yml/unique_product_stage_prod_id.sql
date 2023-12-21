select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    prod_id as unique_field,
    count(*) as n_records

from BARCLAYS_TEST.STAGING_AREA.product_stg
where prod_id is not null
group by prod_id
having count(*) > 1



      
    ) dbt_internal_test