select
    id,
    cat,
    subcat,
    maintenance

from {{ source('raw_lidl', 'erp_px_cat_g1v2') }}