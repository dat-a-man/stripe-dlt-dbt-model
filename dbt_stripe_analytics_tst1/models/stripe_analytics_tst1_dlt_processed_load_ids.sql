{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim_stripe_analytics_tst1___dlt_loads') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__subscription') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__coupon') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__customer') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__product') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__price') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__invoice') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__balance_transaction') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__balance_transaction__fee_details') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__available') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__pending') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__discounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__lines__data') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__lines__data__discount_amounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__total_discount_amounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__payment_method_types') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__event__data__object__items__data') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__invoice__discounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__invoice__lines__data') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__invoice__lines__data__discount_amounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__invoice__total_discount_amounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__subscription__discounts') }}
-- depends_on: {{ ref('dim_stripe_analytics_tst1__subscription__items__data') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('stripe_analytics_tst1_dlt_active_load_ids') }}