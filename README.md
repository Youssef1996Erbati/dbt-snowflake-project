# 🚀 dbt Snowflake Data Pipeline

## 📌 Project Overview

This project demonstrates the implementation of a modern data pipeline using **dbt** and **Snowflake**, following a layered architecture approach.

The goal is to transform raw data into clean, structured, and business-ready datasets using best practices in data engineering.

---

## 🏗️ Architecture

The project follows a **multi-layered architecture**:

```
RAW → STAGING → MARTS
```

* **RAW**

  * Source data stored in Snowflake
  * No transformation applied

* **STAGING (Views)**

  * Data cleaning and standardization
  * Lightweight transformations
  * Implemented as **views**

* **MARTS (Tables)**

  * Business logic and aggregations
  * Fact and dimension models
  * Implemented as **tables**

---

## ⚙️ Tech Stack

* **dbt** (data transformation)
* **Snowflake** (cloud data warehouse)
* **Git & GitHub** (version control)

---

## 📂 Project Structure

```
models/
  staging/
    stg_crm_cust_info.sql
    stg_crm_prd_info.sql
    stg_crm_sales_details.sql
    stg_erp_cust_az12.sql
    stg_erp_loc_a101.sql
    stg_erp_px_cat_g1v2.sql

  marts/
    dim_customers.sql
    dim_products.sql
    fact_sales.sql

macros/
  generate_schema_name.sql

tests/
seeds/
snapshots/
```

---

## 📊 Data Models

### 🔹 Staging Layer

* `stg_crm_cust_info`
* `stg_crm_prd_info`
* `stg_crm_sales_details`
* `stg_erp_cust_az12`
* `stg_erp_loc_a101`
* `stg_erp_px_cat_g1v2`

👉 Purpose:

* Clean and standardize raw data
* Prepare data for downstream transformations

---

### 🔹 Marts Layer

#### 📌 Dimension Tables

* `dim_customers`
* `dim_products`

#### 📌 Fact Table

* `fact_sales`

👉 Purpose:

* Provide business-ready datasets
* Enable analytics and reporting
* Star schema modeling

---

## 🔄 Data Flow

```
Snowflake RAW Tables
        ↓
STAGING (dbt views)
        ↓
MARTS (dbt tables)
```

---

## 🚀 How to Run the Project

### 1. Install dependencies

```bash
pip install dbt-snowflake
```

### 2. Configure dbt profile

Update your `profiles.yml` with your Snowflake credentials.

### 3. Run models

```bash
dbt run
```

### 4. Run tests

```bash
dbt test
```

---

## 📖 Documentation

Generate and visualize the data lineage:

```bash
dbt docs generate
dbt docs serve
```

---

## ✅ Key Features

* Modular SQL transformations using dbt
* Layered data architecture (staging → marts)
* Use of `ref()` for dependency management
* Schema separation:

  * `STAGING`
  * `ANALYTICS`
* Scalable and maintainable design

---

## 🔮 Future Improvements

* Add more dbt tests (data quality checks)
* Implement CI/CD with GitHub Actions
* Add dashboards (Power BI / Tableau)
* Introduce incremental models
* Add data freshness monitoring

---

## 👤 Author

**Youssef Erbati**
