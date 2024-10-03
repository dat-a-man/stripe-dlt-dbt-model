/* Table: invoice__discounts */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice`

SELECT
/* select which columns will be available for table 'invoice__discounts' */
    value,
    _dlt_id,
    _dlt_parent_id,
    _dlt_list_idx,
FROM `dlt-dev-external`.`stripe_tst_2`.`invoice__discounts`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` )