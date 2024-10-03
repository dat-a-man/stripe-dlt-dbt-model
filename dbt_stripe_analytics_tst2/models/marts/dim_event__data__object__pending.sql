/* Table: event__data__object__pending */
/* Parent: event */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.amount,
    t.currency,
    t.source_types__card,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_event__data__object__pending') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_event') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)