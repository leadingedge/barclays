select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select cust_id
from BARCLAYS_TEST.TRANSFORM_AREA.customer_transfrm
where cust_id is null



      
    ) dbt_internal_test