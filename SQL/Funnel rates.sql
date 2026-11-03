SELECT
    ROUND(100.0 * SUM(clicks) / SUM(impressions),2)       AS impression_to_click_pct,       
    ROUND(100.0 * SUM(conversions) / SUM(clicks),2)       AS click_to_conversion_pct,       
    ROUND(100.0 * SUM(conversions) / SUM(impressions),2)  AS impression_to_conversion_pct   
FROM marketing_base;