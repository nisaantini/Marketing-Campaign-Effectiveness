SELECT
    channel_used,
    COUNT(*)                                                      AS campaigns,
    SUM(spend)                                                    AS spend,
    ROUND(SUM(profit),2)                                          AS profit,
    ROUND(100.0 * SUM(spend)  / SUM(SUM(spend))  OVER (),2)       AS spend_share_pct,
    ROUND(100.0 * SUM(profit) / SUM(SUM(profit)) OVER (),2)       AS profit_share_pct,
    ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0),2)                    AS roi_pct,
    ROUND(100.0 * SUM(conversions) / NULLIF(SUM(clicks), 0),2)              AS cvr_pct,
    ROUND(100.0 * SUM(clicks) / NULLIF(SUM(impressions), 0),2)              AS ctr_pct,
    ROUND(SUM(spend) / NULLIF(SUM(conversions), 0),2)                       AS cpa,
    ROUND(100.0 * SUM(CASE WHEN roi_pct < 0 THEN 1 ELSE 0 END) / COUNT(*),2)  AS loss_making_pct,
    ROUND(AVG(engagement_score * 1.0),2)                           AS avg_engagement
FROM marketing_base
GROUP BY channel_used
ORDER BY roi_pct DESC;