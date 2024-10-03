# Stripe dlt-dbt Package

### Overview
The Stripe dbt package offers data models to help you transform and analyze Stripe data. It's designed to integrate seamlessly with the dlt Stripe pipeline, which extracts and loads Stripe data into your data warehouse.

### Who is this for?
This package is perfect for dbt users who want to integrate Stripe data into their analytics workflows without building models from scratch.

### Key Features
- **Staging Models:** Clean and prepare raw Stripe data for downstream analysis.
- **Mart Models:** Pre-built dimension and fact tables for key Stripe entities like invoice, price, product, events, and subscription.
- **Incremental Loading:** Supports incremental data processing to optimize performance.
- **Easy Integration:** Designed to work out-of-the-box with the dlt Stripe pipeline.

### Setup Instructions

#### Prerequisites
- dbt Core installed in your environment.
- Access to a supported data warehouse: BigQuery, Snowflake, Redshift, Athena, or PostgreSQL.
- The dlt Stripe pipeline is set up and running.

### Step 1: Set Up the dlt Stripe Pipeline
1. **Install dlt:**
   ``` 
   pip install dlt
   ```
2. **Configure the Pipeline:**
   Follow the dlt [Stripe pipeline documentation](https://dlthub.com/docs/dlt-ecosystem/verified-sources/stripe) to set up your pipeline. Ensure you have your Stripe API key and destination credentials configured.

3. **Run the Pipeline:**
   Extract and load data from Stripe into your data warehouse by running the pipeline.

### Step 2: Install and Configure the dbt Project

1. Install the Stripe dbt package into your dbt environment.
2. Configure your 'dbt_project.yml' file with the appropriate connection details for your data warehouse.
3. Ensure your dlt Stripe pipeline data is available in your warehouse.

This is how the tables in dbt package look like:

```text
dbt_<pipeline-name>/
├── analysis/
├── macros/
├── models/
│   ├── marts/
│   │   ├── dim_<pipeline-name>__dlt_loads.sql
│   │   ├── dim_<pipeline-name>__balance_transaction__fee_details.sql
│   │   ├── dim_<pipeline-name>__coupon.sql
│   │   ├── dim_<pipeline-name>__customer.sql
│   │   ├── dim_<pipeline-name>__event__data__object__available.sql
│   │   ├── dim_<pipeline-name>__event__data__object__discounts.sql
│   │   ├── dim_<pipeline-name>__event__data__object__items__data.sql
│   │   ├── dim_<pipeline-name>__event__data__object__lines__data.sql
│   │   ├── dim_<pipeline-name>__event__data__object__lines__data__discount_amounts.sql
│   │   ├── dim_<pipeline-name>__invoice__discounts.sql
│   │   ├── dim_<pipeline-name>__invoice__lines__data.sql
│   │   ├── dim_<pipeline-name>__price.sql
│   │   ├── dim_<pipeline-name>__product.sql
│   │   ├── dim_<pipeline-name>__subscription__items__data.sql
│   │   └── fact_<pipeline-name>__balance_transaction.sql
│   │   └── fact_<pipeline-name>__event.sql
│   │   └── fact_<pipeline-name>__invoice.sql
│   │   └── fact_<pipeline-name>__subscription.sql
│   ├── staging/
│   │   ├── stg_<pipeline-name>__dlt_loads.sql
│   │   ├── stg_<pipeline-name>__balance_transaction.sql
│   │   ├── stg_<pipeline-name>__coupon.sql
│   │   ├── stg_<pipeline-name>__customer.sql
│   │   ├── stg_<pipeline-name>__event__data__object__available.sql
│   │   ├── stg_<pipeline-name>__event__data__object__discounts.sql
│   │   ├── stg_<pipeline-name>__event__data__object__items__data.sql
│   │   ├── stg_<pipeline-name>__event__data__object__lines__data.sql
│   │   ├── stg_<pipeline-name>__invoice.sql
│   │   ├── stg_<pipeline-name>__price.sql
│   │   ├── stg_<pipeline-name>__product.sql
│   │   ├── stg_<pipeline-name>__subscription.sql
│   └── stg_<pipeline-name>__processed_load_ids.sql
├── tests/
├── dbt_project.yml
├── requirements.txt
```
### Step 3: Run dbt
Execute the dbt models to transform the raw Stripe data into useful tables:

```sh
dbt run
```

>You can use the 'run_stripe_dbt.py' script to execute your dbt transformations and load the results into a 
>new dataset named `<original-dataset>_transformed` and runs the dbt tests.To use, please ensure you configure 
>your dlt pipeline name and destination correctly.

To check for issues, run the dbt tests:

```sh
dbt test
```

### Customization
While this package provides a solid foundation, you can customize it to suit your specific needs:

- Modify the models to align with your business logic.
- Add relationships between tables by modifying your dlt pipeline schema.
> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed.
### Schema diagram
The dbt model above can be further customized according to the requirements. Using this package you'll get a basic template
for data model which can be further modified as required.

1. The schema of data modelled above using dlt-dbt-generator:
    
   ![picture1](https://storage.googleapis.com/dlt-blog-images/stripe-dlt-dbt-package.png)

> Please note that this is a starting template for your data model and is not the final product. It is advised to customize the
> data model as per your needs.

Here's the link to the DB diagram: [link](https://dbdiagram.io/d/stripe-dlt-dbt-package-66fe084dfb079c7ebd2946fd).

#### Optional: Advanced Usage (Generator and Licensing)

This package was created using the dlt-dbt-generator by dlt-plus. For more information about dlt-plus, refer to the 
[dlt-plus documentation.](https://dlt-plus.netlify.app/docs/plus/intro/) To learn more about the dlt-dbt-generator, 
consult the [dlt-dbt-generator](https://dlt-plus.netlify.app/docs/plus/dlt_dbt_generator/#5-running-dbt-package-directly) documentation.

> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed
