
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`dim_event__data__object__lines__data`
      
    
    

    OPTIONS()
    as (
      /* Table: event__data__object__lines__data */
/* Parent: event */

SELECT
    t.id,
    t.object,
    t.amount,
    t.amount_excluding_tax,
    t.currency,
    t.description,
    t.discountable,
    t.livemode,
    t.period__end,
    t.period__start,
    t.plan__id,
    t.plan__object,
    t.plan__active,
    t.plan__amount,
    t.plan__amount_decimal,
    t.plan__billing_scheme,
    t.plan__created,
    t.plan__currency,
    t.plan__interval,
    t.plan__interval_count,
    t.plan__livemode,
    t.plan__product,
    t.plan__usage_type,
    t.price__id,
    t.price__object,
    t.price__active,
    t.price__billing_scheme,
    t.price__created,
    t.price__currency,
    t.price__livemode,
    t.price__product,
    t.price__recurring__interval,
    t.price__recurring__interval_count,
    t.price__recurring__usage_type,
    t.price__tax_behavior,
    t.price__type,
    t.price__unit_amount,
    t.price__unit_amount_decimal,
    t.proration,
    t.quantity,
    t.subscription,
    t.subscription_item,
    t.type,
    t.unit_amount_excluding_tax,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
    t.invoice,
FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event__data__object__lines__data` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_event` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  