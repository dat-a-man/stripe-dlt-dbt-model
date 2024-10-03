/* Table: event */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('stripe_analytics_tst1_dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'event' */
    "id",
    "object",
    "api_version",
    "created",
    "data__object__object",
    "data__object__livemode",
    "livemode",
    "pending_webhooks",
    "type",
    "_dlt_load_id",
    "_dlt_id",
    "data__object__id",
    "data__object__account_country",
    "data__object__amount_due",
    "data__object__amount_paid",
    "data__object__amount_remaining",
    "data__object__amount_shipping",
    "data__object__attempt_count",
    "data__object__attempted",
    "data__object__auto_advance",
    "data__object__automatic_tax__enabled",
    "data__object__billing_reason",
    "data__object__charge",
    "data__object__collection_method",
    "data__object__created",
    "data__object__currency",
    "data__object__customer",
    "data__object__customer_email",
    "data__object__customer_name",
    "data__object__customer_tax_exempt",
    "data__object__discount__id",
    "data__object__discount__object",
    "data__object__discount__coupon__id",
    "data__object__discount__coupon__object",
    "data__object__discount__coupon__created",
    "data__object__discount__coupon__duration",
    "data__object__discount__coupon__livemode",
    "data__object__discount__coupon__percent_off",
    "data__object__discount__coupon__times_redeemed",
    "data__object__discount__coupon__valid",
    "data__object__discount__customer",
    "data__object__discount__start",
    "data__object__discount__subscription",
    "data__object__effective_at",
    "data__object__ending_balance",
    "data__object__hosted_invoice_url",
    "data__object__invoice_pdf",
    "data__object__issuer__type",
    "data__object__lines__object",
    "data__object__lines__has_more",
    "data__object__lines__total_count",
    "data__object__lines__url",
    "data__object__number",
    "data__object__paid",
    "data__object__paid_out_of_band",
    "data__object__payment_intent",
    "data__object__period_end",
    "data__object__period_start",
    "data__object__post_payment_credit_notes_amount",
    "data__object__pre_payment_credit_notes_amount",
    "data__object__starting_balance",
    "data__object__status",
    "data__object__status_transitions__finalized_at",
    "data__object__status_transitions__paid_at",
    "data__object__subscription",
    "data__object__subtotal",
    "data__object__subtotal_excluding_tax",
    "data__object__total",
    "data__object__total_excluding_tax",
    "data__object__webhooks_delivered_at",
    "data__previous_attributes__amount_paid",
    "data__previous_attributes__amount_remaining",
    "data__previous_attributes__attempt_count",
    "data__previous_attributes__attempted",
    "data__previous_attributes__auto_advance",
    "data__previous_attributes__automatically_finalizes_at",
    "data__previous_attributes__next_payment_attempt",
    "data__previous_attributes__paid",
    "data__previous_attributes__status",
    "data__object__amount",
    "data__object__amount_capturable",
    "data__object__amount_received",
    "data__object__capture_method",
    "data__object__client_secret",
    "data__object__confirmation_method",
    "data__object__description",
    "data__object__invoice",
    "data__object__payment_method_options__card__request_three_d_secure",
    "data__object__latest_charge",
    "data__object__payment_method",
    "request__idempotency_key",
    "data__object__amount_captured",
    "data__object__amount_refunded",
    "data__object__balance_transaction",
    "data__object__calculated_statement_descriptor",
    "data__object__captured",
    "data__object__disputed",
    "data__object__outcome__network_status",
    "data__object__outcome__risk_level",
    "data__object__outcome__risk_score",
    "data__object__outcome__seller_message",
    "data__object__outcome__type",
    "data__object__payment_method_details__card__amount_authorized",
    "data__object__payment_method_details__card__brand",
    "data__object__payment_method_details__card__country",
    "data__object__payment_method_details__card__exp_month",
    "data__object__payment_method_details__card__exp_year",
    "data__object__payment_method_details__card__extended_authorization__status",
    "data__object__payment_method_details__card__fingerprint",
    "data__object__payment_method_details__card__funding",
    "data__object__payment_method_details__card__incremental_authorization__status",
    "data__object__payment_method_details__card__last4",
    "data__object__payment_method_details__card__multicapture__status",
    "data__object__payment_method_details__card__network",
    "data__object__payment_method_details__card__network_token__used",
    "data__object__payment_method_details__card__overcapture__maximum_amount_capturable",
    "data__object__payment_method_details__card__overcapture__status",
    "data__object__payment_method_details__type",
    "data__object__receipt_url",
    "data__object__refunded",
    "data__object__billing_cycle_anchor",
    "data__object__cancel_at_period_end",
    "data__object__current_period_end",
    "data__object__current_period_start",
    "data__object__invoice_settings__issuer__type",
    "data__object__items__object",
    "data__object__items__has_more",
    "data__object__items__total_count",
    "data__object__items__url",
    "data__object__latest_invoice",
    "data__object__payment_settings__save_default_payment_method",
    "data__object__plan__id",
    "data__object__plan__object",
    "data__object__plan__active",
    "data__object__plan__amount",
    "data__object__plan__amount_decimal",
    "data__object__plan__billing_scheme",
    "data__object__plan__created",
    "data__object__plan__currency",
    "data__object__plan__interval",
    "data__object__plan__interval_count",
    "data__object__plan__livemode",
    "data__object__plan__product",
    "data__object__plan__usage_type",
    "data__object__quantity",
    "data__object__start_date",
    "data__object__trial_settings__end_behavior__missing_payment_method",
    "data__previous_attributes__current_period_end",
    "data__previous_attributes__current_period_start",
    "data__previous_attributes__latest_invoice",
    "data__object__automatically_finalizes_at",
    "data__object__next_payment_attempt",
FROM {{ source('raw_data', 'event') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE "_dlt_load_id" IN ( SELECT "load_id" FROM  {{ ref('stripe_analytics_tst1_dlt_active_load_ids') }} )