# barclays

# step1 - initialise
# $ dbt run --models barclays_init.sql

# step2 - load data files into stage using snowsql
# $snowsql -c barclays   (look for barclays connection in config)
# >!source c:\barclays\load_data_files.sql

# step3 - load data into stage stage tables
# $ dbt run --select customer_stage product_stage customer_product_stage

# step4 - laod data into transform tables
# $ dbt run --select customer_transfrm product_transfrm customer_product_transfrm

# step5 - load data into presentation_area
# $ dbt run --select customer_presentation product_presentation customer_product_presentation

# step6 - create catalog and model lineage.
# $ dbt docs generate
# $ dbt docs serve