select
    sls_ord_num,
    sls_prd_key,
    sls_cust_id,

    case
        when sls_order_dt = 0 or length(to_varchar(sls_order_dt)) != 8 then null
        else to_date(to_varchar(sls_order_dt), 'YYYYMMDD')
    end as sls_order_dt,

    case
        when sls_ship_dt = 0 or length(to_varchar(sls_ship_dt)) != 8 then null
        else to_date(to_varchar(sls_ship_dt), 'YYYYMMDD')
    end as sls_ship_dt,

    case
        when sls_due_dt = 0 or length(to_varchar(sls_due_dt)) != 8 then null
        else to_date(to_varchar(sls_due_dt), 'YYYYMMDD')
    end as sls_due_dt,

    case
        when sls_sales is null
            or sls_sales <= 0
            or sls_sales != sls_quantity * abs(sls_price)
        then sls_quantity * abs(sls_price)
        else sls_sales
    end as sls_sales,

    sls_quantity,

    case
        when sls_price is null or sls_price <= 0
        then sls_sales / nullif(sls_quantity, 0)
        else sls_price
    end as sls_price

from {{ source('raw_lidl', 'crm_sales_details') }}