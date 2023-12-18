{% macro bar_init_internal_stage(path='') %}
    @__STAGE_TOKEN__{{path}}
{% endmacro %}


{% macro bar_init_stage(in_stage_name, in_file_format) %}
    create stage if not exists {{ in_stage_name }} 
        file_format = {{ in_file_format }};
{% endmacro %}


{% macro bar_init_file_format(path='') %}
    create file format if not exists staging_area.barclays_csv_format
      type = 'CSV'
      field_delimiter = ','
      skip_header = 1;
{% endmacro %}




{% materialization bar_init, adapter='snowflake' -%}

  {%- set stage_name = (config.get('stage_name')) -%}
  {%- set file_format = (config.get('file_format')) -%}
  {%- set identifier = model['alias'] -%}
 
    {%- set identifier = model['alias'] -%}

    {{ print("stage_name: " ~file_format ) }}

    {%- call statement('main') -%}
        {{ bar_init_file_format() }}
    {%- endcall -%}

    {%- call statement('main1') -%}
        {{ bar_init_stage(stage_name, file_format) }}
    {%- endcall -%}

     

    
  {%- set target_relation = api.Relation.create(database=database,schema=schema, identifier=identifier, type='table') -%}


 -- Return the relations created in this materialization
  {{ return({'relations': [target_relation]}) }}

{%- endmaterialization %}

