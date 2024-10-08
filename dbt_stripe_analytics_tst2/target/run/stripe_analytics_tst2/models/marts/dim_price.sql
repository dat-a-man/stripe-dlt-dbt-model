
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_price`
      
    
    

    OPTIONS()
    as (
      /* Table: price */

SELECT
    t.id,
    t.object,
    t.active,
    t.billing_scheme,
    t.created,
    t.currency,
    t.livemode,
    t.product,
    t.recurring__interval,
    t.recurring__interval_count,
    t.recurring__usage_type,
    t.tax_behavior,
    t.type,
    t.unit_amount,
    t.unit_amount_decimal,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_price` as t
    );
  