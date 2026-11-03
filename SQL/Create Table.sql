CREATE TABLE marketing_campaign (
    campaign_id       INTEGER PRIMARY KEY,
    company           VARCHAR(50)    NOT NULL,
    campaign_type     VARCHAR(50)    NOT NULL,
    target_audience   VARCHAR(50)    NOT NULL,
    duration          SMALLINT       NOT NULL,   -- days (15, 30, 45, 60)
    channel_used      VARCHAR(50)    NOT NULL,
    conversion_pct    NUMERIC(5,2)   NOT NULL,   -- 0 to 19.89
    acquisition_cost  INTEGER        NOT NULL,
    roi_pct           NUMERIC(7,2)   NOT NULL,   -- -100 to 1439.9
    location          VARCHAR(50)    NOT NULL,
    clicks            INTEGER        NOT NULL,
    impressions       INTEGER        NOT NULL,
    engagement_score  SMALLINT       NOT NULL,   -- 1 to 10
    customer_segment  VARCHAR(50)    NOT NULL,
    campaign_date     DATE           NOT NULL
);