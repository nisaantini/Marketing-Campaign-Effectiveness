--Overall KPIs (the Overview cards)
SELECT
    COUNT(*)                                                    AS total_campaigns,
    ROUND(SUM(spend), 2)                                          AS total_cost,
    ROUND(SUM(profit), 2)                                         AS total_profit,
    ROUND(SUM(spend) + SUM(profit), 2)                            AS total_revenue,
    SUM(impressions)                                            AS total_impressions,
    SUM(clicks)                                                 AS total_clicks,
    ROUND(SUM(conversions), 2)                                  AS total_conversions,
    ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0), 2)                  AS roi_pct_weighted,
    ROUND(100.0 * SUM(conversions) / NULLIF(SUM(clicks), 0), 2)            AS cvr_pct,
    ROUND(100.0 * SUM(clicks) / NULLIF(SUM(impressions), 0), 2)            AS ctr_pct,
    ROUND(SUM(spend) / NULLIF(SUM(clicks), 0), 2)                          AS cpc,
    ROUND(SUM(spend) / NULLIF(SUM(conversions), 0), 2)                     AS cpa,
    ROUND((SUM(spend) + SUM(profit)) / NULLIF(SUM(conversions), 0), 2)     AS revenue_per_conversion,
    ROUND(100.0 * SUM(CASE WHEN roi_pct < 0 THEN 1 ELSE 0 END)/ COUNT(*), 2) AS loss_making_pct,
    ROUND(AVG(engagement_score * 1.0), 2)                                  AS avg_engagement
	
FROM marketing_base;