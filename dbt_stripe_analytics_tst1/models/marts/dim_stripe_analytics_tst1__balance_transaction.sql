/* Table: balance_transaction */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t."id",
    t."object",
    t."amount",
    t."available_on",
    t."created",
    t."currency",
    t."description",
    t."fee",
    t."net",
    t."reporting_category",
    t."status",
    t."type",
    t."_dlt_load_id",
    t."_dlt_id",
    t."exchange_rate",
    t."source",
FROM  {{ ref('stg_stripe_analytics_tst1__balance_transaction') }} as t