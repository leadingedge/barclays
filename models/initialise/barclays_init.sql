{{
  config(
    materialized='bar_init',
    file_format = 'barclays_csv_format',
    stage_name = 'barclays_stage',
    alias='barclays_init'
    
  )
}}

select 1 as id
  

 