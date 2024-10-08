
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__total_discount_amounts`
      
    
    

    OPTIONS()
    as (
      /* Table: event__data__object__total_discount_amounts */
/* Parent: event */

SELECT
    t.amount,
    t.discount,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__total_discount_amounts` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  