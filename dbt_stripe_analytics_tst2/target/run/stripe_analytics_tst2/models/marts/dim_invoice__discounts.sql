
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_invoice__discounts`
      
    
    

    OPTIONS()
    as (
      /* Table: invoice__discounts */
/* Parent: invoice */

SELECT
    t.value,
    t._dlt_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice__discounts` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  