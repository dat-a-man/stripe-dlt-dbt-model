
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__lines__data__discount_amounts`
      
    
    

    OPTIONS()
    as (
      /* Table: invoice__lines__data__discount_amounts */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__lines__data`

SELECT
/* select which columns will be available for table 'invoice__lines__data__discount_amounts' */
    amount,
    discount,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`stripe_tst_2`.`invoice__lines__data__discount_amounts`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__lines__data` )
    );
  