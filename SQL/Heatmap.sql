-- Channel x Campaign Type
SELECT channel_used, campaign_type, ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0),2) AS roi_pct
FROM marketing_base GROUP BY channel_used, campaign_type ORDER BY 1, 2;

-- Channel x Customer Segment
SELECT channel_used, customer_segment, ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0),2) AS roi_pct
FROM marketing_base GROUP BY channel_used, customer_segment ORDER BY 1, 2;

-- Company x Channel
SELECT company, channel_used, ROUND(100.0 * SUM(profit) / NULLIF(SUM(spend), 0),2) AS roi_pct
FROM marketing_base GROUP BY company, channel_used ORDER BY 1, 2;