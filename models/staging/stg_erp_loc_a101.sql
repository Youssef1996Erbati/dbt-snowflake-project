select
    replace(cid, '-', '') as cid,

    case
        when trim(cntry) = 'DE' then 'Germany'
        when trim(cntry) in ('US', 'USA') then 'United States'
        when trim(cntry) = '' or cntry is null then 'n/a'
        else trim(cntry)
    end as cntry

from {{ source('raw_lidl', 'erp_loc_a101') }}