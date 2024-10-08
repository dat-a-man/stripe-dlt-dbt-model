/* Table: subscription__discounts */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('stripe_analytics_tst1_dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_stripe_analytics_tst1__subscription') }}

SELECT
/* select which columns will be available for table 'subscription__discounts' */
    "value",
    "_dlt_id",
    "_dlt_parent_id",
    "_dlt_list_idx",
FROM {{ source('raw_data', 'subscription__discounts') }}

/* we only load table items if the parent table has the parent item */
WHERE "_dlt_parent_id" IN ( SELECT "_dlt_id" FROM {{ ref('stg_stripe_analytics_tst1__subscription') }} )
