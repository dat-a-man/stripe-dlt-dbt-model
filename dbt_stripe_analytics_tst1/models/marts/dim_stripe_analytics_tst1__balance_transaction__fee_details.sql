/* Table: balance_transaction__fee_details */
/* Parent: balance_transaction */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."amount",
    t."currency",
    t."description",
    t."type",
    t."_dlt_parent_id",
    t."_dlt_list_idx",
    t."_dlt_id",
FROM  {{ ref('stg_stripe_analytics_tst1__balance_transaction__fee_details') }} as t
/* this join to the parent table is not necesarily needed for this template to work */
JOIN {{ ref('stg_stripe_analytics_tst1__balance_transaction') }} as pt
ON (t."_dlt_parent_id" = pt."_dlt_id")