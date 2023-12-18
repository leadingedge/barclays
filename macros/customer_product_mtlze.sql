{% macro cust_prod_internal_stage(path='') %}
    @__STAGE_TOKEN__{{path}}
{% endmacro %}



{% materialization cust_prod_from_internal_stage, adapter='snowflake' -%}

  {%- set stage_name = (config.get('stage_name')) -%}
  {%- set stage_name_loc1 = (config.get('stage_name_loc1')) -%}
  {%- set file_format = (config.get('file_format')) -%}
  {%- set identifier = model['alias'] -%}

    {{ print("stage_name: " ~stage_name ) }}




    {%- set target_relation = api.Relation.create(database=database,schema=schema, identifier=identifier, type='table') -%}
    {%- call statement('main1') -%}
        create table if not exists {{ target_relation }}
        (cust_id varchar,prod_id varchar,transaction_date date ,units_sold number);  
    {% endcall %}       

    

    {%- set target_relation = api.Relation.create(database=database,schema=schema, identifier=identifier, type='table') -%}
    {# Perform the main load operation using COPY INTO #}
    {%- call statement('main') -%}
        COPY INTO {{ target_relation }}
        FROM (
            {{ sql | replace('__STAGE_TOKEN__', stage_name_loc1)}}
        ) ;
    {% endcall %}    
  


  -- Return the relations created in this materialization
  {{ return({'relations': [target_relation]}) }}

{%- endmaterialization %}

