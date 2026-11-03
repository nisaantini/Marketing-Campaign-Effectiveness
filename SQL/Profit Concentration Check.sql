WITH ranked AS (
    SELECT profit, NTILE(10) OVER (ORDER BY profit DESC) AS decile
    FROM marketing_base
)
SELECT 100.0 * SUM(CASE WHEN decile = 1 THEN profit END) / SUM(profit) AS top10pct_profit_share   -- about 71.4
FROM ranked;