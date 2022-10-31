{{ config(
    materialized ='incremental',
    post_hook="{{ create_stream() }}"
) }}


select 
'{{ target_model }}' x_model,
'{{ target.type }}' x_type,
'{{ target.schema }}' x_schema,
'{{ target.name }}' x_name,
'{{ target.database }}' x_database,
'{{ target.profile_name }}' x_profile_name,
'{{ target.warehouse }}' x_warehouse,
'{{ target.user }}' x_user,
'{{ target.role }}' x_role,
'{{ target.account }}' x_account,
'{{ this }}' x_this,
'{{ this.schema }}' as x_test_get_schema_name

from dual
