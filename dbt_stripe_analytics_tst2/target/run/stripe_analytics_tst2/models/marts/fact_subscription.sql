
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_subscription`
      
    
    

    OPTIONS()
    as (
      /* Fact Table: subscription */


SELECT
    ---- main table subscription
    subscription.id,
    subscription.object,
    subscription.automatic_tax__enabled,
    subscription.billing_cycle_anchor,
    subscription.cancel_at_period_end,
    subscription.collection_method,
    subscription.created,
    subscription.currency,
    subscription.current_period_end,
    subscription.current_period_start,
    subscription.customer,
    subscription.discount__id,
    subscription.discount__object,
    subscription.discount__coupon__id,
    subscription.discount__coupon__object,
    subscription.discount__coupon__created,
    subscription.discount__coupon__duration,
    subscription.discount__coupon__livemode,
    subscription.discount__coupon__percent_off,
    subscription.discount__coupon__times_redeemed,
    subscription.discount__coupon__valid,
    subscription.discount__customer,
    subscription.discount__start,
    subscription.discount__subscription,
    subscription.invoice_settings__issuer__type,
    subscription.items__object,
    subscription.items__has_more,
    subscription.items__total_count,
    subscription.items__url,
    subscription.latest_invoice,
    subscription.livemode,
    subscription.payment_settings__save_default_payment_method,
    subscription.plan__id,
    subscription.plan__object,
    subscription.plan__active,
    subscription.plan__amount,
    subscription.plan__amount_decimal,
    subscription.plan__billing_scheme,
    subscription.plan__created,
    subscription.plan__currency,
    subscription.plan__interval,
    subscription.plan__interval_count,
    subscription.plan__livemode,
    subscription.plan__product,
    subscription.plan__usage_type,
    subscription.quantity,
    subscription.start_date,
    subscription.status,
    subscription.trial_settings__end_behavior__missing_payment_method,

    

FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_subscription` as subscription
    );
  