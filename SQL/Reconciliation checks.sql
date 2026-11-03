-- (a) Shares add to 100
SELECT ROUND(SUM(spend_share),0) AS spend_total, ROUND(SUM(profit_share),0) AS profit_total FROM (
    SELECT ROUND(100.0 * SUM(spend)  / SUM(SUM(spend))  OVER (),0) AS spend_share,
           ROUND(100.0 * SUM(profit) / SUM(SUM(profit)) OVER (),0) AS profit_share
    FROM marketing_base GROUP BY channel_used) s;

-- (b) CPA identity: CPA = CPC / CVR (expect both columns about 52.22)
SELECT ROUND(SUM(spend) / SUM(conversions),2)                                         AS cpa_direct,
       ROUND((SUM(spend) / SUM(clicks)) / (SUM(conversions) / SUM(clicks)),2)         AS cpa_from_cpc_cvr
FROM marketing_base;

-- (c) Weighted vs simple average
SELECT ROUND(100.0 * SUM(profit) / SUM(spend),2)        AS roi_weighted,        
       ROUND(AVG(roi_pct),2)                            AS roi_simple_average,  
       ROUND(100.0 * SUM(conversions) / SUM(clicks),2)  AS cvr_weighted,
       ROUND(AVG(conversion_pct),2)                     AS cvr_simple_average
FROM marketing_base;