select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    cust_id as unique_field,
    count(*) as n_records

from BARCLAYS_TEST.STAGING_AREA.customer_stg
where cust_id is not null
group by cust_id
having count(*) > 1



      
    ) dbt_internal_test