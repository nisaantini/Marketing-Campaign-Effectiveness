# Marketing-Campaign-Effectiveness
I built a 4-page Power BI dashboard to measure how well 200K marketing campaigns performed ($4.09B spend, $3.05B profit). It tracks the full funnel, from impressions to clicks to conversions to profit, and breaks results down by channel, audience, segment, location, duration and company. The goal: find out where the budget actually earns money, and where it doesn't.

🔍 𝗪𝗛𝗔𝗧 𝗜 𝗘𝗫𝗣𝗟𝗢𝗥𝗘𝗗
 Business problem: Which campaigns, channels and audiences deliver real returns, and where is budget being wasted?
 
🧹 Data prep: Python
✅ Validation: re-calculated the core KPIs (ROI, CVR, CTR, CPA, spend and profit share) in PostgreSQL and reconciled them with Power BI

Data:
• Overall: ROI 74.5%, CVR 4.4%, CPA $52, CTR 1.9%, and 40% of campaigns lose money
• Channels: Email (244% ROI) and Website (192%) lead. Instagram (-26%) and YouTube (-18%) lose money
• Budget vs profit: Google Ads takes 58% of spend and earns a proportional 57% of profit. Instagram, Facebook and YouTube take about 25% of spend and add almost nothing
• Audience: Women 35-44 returns 133%, while Men 18-24 returns just 2%
• Engagement ≠ profit: Instagram has highest engagement score (6.9) yet lowest ROI
• Timing: November has peak spend but lowest ROI (63%), and December has best (86%)
• Duration: 45-day campaigns perform best (81% ROI)

 🛠️ 𝗧𝗢𝗢𝗟𝗦 & 𝗦𝗞𝗜𝗟𝗟𝗦 𝗨𝗦𝗘𝗗
• Python (pandas) for data cleaning and preparation, (NumPy) statistics, sorting, aggregation, numerical validation, array conversion functions
• PostgreSQL (KPI validation with CTEs, window functions and aggregations)
• Power BI (4-page report, navigation, slicers, conditional formatting)
• DAX (spend-weighted ROI, CPA, CVR, spend and profit share)
• KPI design and data storytelling

💡 𝗞𝗘𝗬 𝗟𝗘𝗔𝗥𝗡𝗜𝗡𝗚𝗦
1. Averaging rates misleads. Weighting ROI by spend and CVR by clicks gives the true picture (74.5% vs 69.9% simple average)
2. Compare spend share with profit share to see who deserves more budget
3. A high CVR doesn't mean high profit. Order value matters
4. Rebuilding KPIs in SQL is a quick way to catch logic and formatting errors before sharing a dashboard

🎯 𝗦𝗨𝗚𝗚𝗘𝗦𝗧𝗜𝗢𝗡𝗦
• Shift budget gradually toward Email, Website and Search, and watch for diminishing returns
• Rework/pause the weakest combinations, such as Display and Instagram, before scaling
• Favor 30-45 day campaigns, and plan for higher costs in November
