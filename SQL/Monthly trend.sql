SELECT
    EXTRACT(MONTH FROM campaign_date)                                     AS month_no,   
    ROUND(SUM(spend),2)                                                   AS total_cost,
    ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0),2)                  AS roi_pct,
    ROUND(100.0 * SUM(conversions) / NULLIF(SUM(clicks), 0),2)            AS cvr_pct,
    ROUND(SUM(spend) / NULLIF(SUM(clicks), 0),2)                          AS cpc
FROM marketing_base
GROUP BY EXTRACT(MONTH FROM campaign_date)
ORDER BY month_no;