SELECT
    COUNT(*)                          AS rows_total,
    COUNT(DISTINCT campaign_id)       AS unique_ids,       
    MIN(campaign_date)                AS first_date,       
    MAX(campaign_date)                AS last_date,        
    SUM(CASE WHEN spend IS NULL OR clicks IS NULL OR impressions IS NULL
              OR conversion_pct IS NULL OR roi_pct IS NULL THEN 1 ELSE 0 END) AS rows_with_nulls,
    MIN(roi_pct) AS min_roi, MAX(roi_pct) AS max_roi,
    MIN(conversion_pct) AS min_cvr, MAX(conversion_pct) AS max_cvr
FROM marketing_base;
