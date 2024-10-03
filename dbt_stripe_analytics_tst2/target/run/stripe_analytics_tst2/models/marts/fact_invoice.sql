
  
    

    create or replace table `dlt-dev-external`.`stripe_tst_2_transformed`.`fact_invoice`
      
    
    

    OPTIONS()
    as (
      /* Fact Table: invoice */


SELECT
    ---- main table invoice
    invoice.id,
    invoice.object,
    invoice.account_country,
    invoice.amount_due,
    invoice.amount_paid,
    invoice.amount_remaining,
    invoice.amount_shipping,
    invoice.attempt_count,
    invoice.attempted,
    invoice.auto_advance,
    invoice.automatic_tax__enabled,
    invoice.billing_reason,
    invoice.charge,
    invoice.collection_method,
    invoice.created,
    invoice.currency,
    invoice.customer,
    invoice.customer_email,
    invoice.customer_name,
    invoice.customer_tax_exempt,
    invoice.discount__id,
    invoice.discount__object,
    invoice.discount__coupon__id,
    invoice.discount__coupon__object,
    invoice.discount__coupon__created,
    invoice.discount__coupon__duration,
    invoice.discount__coupon__livemode,
    invoice.discount__coupon__percent_off,
    invoice.discount__coupon__times_redeemed,
    invoice.discount__coupon__valid,
    invoice.discount__customer,
    invoice.discount__start,
    invoice.discount__subscription,
    invoice.effective_at,
    invoice.ending_balance,
    invoice.hosted_invoice_url,
    invoice.invoice_pdf,
    invoice.issuer__type,
    invoice.lines__object,
    invoice.lines__has_more,
    invoice.lines__total_count,
    invoice.lines__url,
    invoice.livemode,
    invoice.number,
    invoice.paid,
    invoice.paid_out_of_band,
    invoice.payment_intent,
    invoice.period_end,
    invoice.period_start,
    invoice.post_payment_credit_notes_amount,
    invoice.pre_payment_credit_notes_amount,
    invoice.starting_balance,
    invoice.status,
    invoice.status_transitions__finalized_at,
    invoice.status_transitions__paid_at,
    invoice.subscription,
    invoice.subtotal,
    invoice.subtotal_excluding_tax,
    invoice.total,
    invoice.total_excluding_tax,
    invoice.webhooks_delivered_at,

    

FROM  `dlt-dev-external`.`stripe_tst_2_transformed`.`stg_invoice` as invoice
    );
  