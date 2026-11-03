CREATE VIEW marketing_base AS
SELECT
    campaign_id, company, campaign_type, target_audience, duration, channel_used,
    location, customer_segment, campaign_date, engagement_score, roi_pct, conversion_pct,
    CAST(acquisition_cost AS DECIMAL(18,2))                    AS spend,
    CAST(clicks AS BIGINT)                                     AS clicks,
    CAST(impressions AS BIGINT)                                AS impressions,
    clicks * conversion_pct / 100.0                            AS conversions,   -- matches Total Conversions
    CAST(acquisition_cost AS DECIMAL(18,2)) * roi_pct / 100.0  AS profit         -- matches Total Profit
FROM marketing_campaign;


