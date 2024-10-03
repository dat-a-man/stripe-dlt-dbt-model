/* Table: subscription__discounts */
/* Parent: subscription */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."value",
    t."_dlt_id",
    t."_dlt_parent_id",
    t."_dlt_list_idx",
FROM  {{ ref('stg_stripe_analytics_tst1__subscription__discounts') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_stripe_analytics_tst1__subscription') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")