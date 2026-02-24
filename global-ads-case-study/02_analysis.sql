-- =====================================================
-- 1. Which platform has the highest ROAS?
-- Answer: TikTok Ads
-- =====================================================

SELECT 
    platform,
    MAX(ROAS) AS max_roas
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY max_roas DESC;


-- =====================================================
-- 2. Which platform has the lowest CPA?
-- Answer: TikTok
-- =====================================================

SELECT 
    platform,
    MIN(CPA) AS low_CPA
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY low_CPA ASC;


-- =====================================================
-- 3. Are some platforms driving volume but not revenue?
-- Answer: No platform is wasting volume. TikTok Ads outperforms Google and Meta in revenue per click.
-- =====================================================

SELECT
    platform,
    SUM(clicks) AS total_clicks,
    ROUND(SUM(revenue), 1) AS total_revenue,
    ROUND(SUM(revenue) / NULLIF(SUM(clicks), 0), 1) AS revenue_per_click
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY revenue_per_click DESC;


-- =====================================================
-- 4. Are we spending more money on lower-performing platforms?
-- Answer: Google Ads drives more conversions but at a higher cost. TikTok achieves near-comparable conversions with far less spend.
-- =====================================================

SELECT
    platform,
    ROUND(SUM(ad_spend), 1) AS total_ad_spend,
    SUM(conversions) AS total_conversions,
    ROUND(AVG(ROAS), 1) AS avg_roas
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY avg_roas DESC;


-- =====================================================
-- 5. Which campaign should be scaled or reduced?
-- Scale: TikTok Ads (especially Search and Display)
-- Reduce: Google Ads (lower efficiency relative to spend)
-- =====================================================

SELECT
    platform,
    campaign_type,
    ROUND(AVG(ROAS), 1) AS avg_roas,
    ROUND(SUM(ad_spend), 1) AS total_ad_spend,
    SUM(conversions) AS total_conversions
FROM global_ads_performance_dataset
GROUP BY platform, campaign_type
ORDER BY platform, avg_roas DESC;


-- =====================================================
-- 6. How does performance change over time?
-- Answer: Performance fluctuates monthly across platforms. TikTok consistently recovers and delivers high-return periods.
-- =====================================================

SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,
    platform,
    campaign_type,
    ROUND(AVG(ROAS), 1) AS avg_roas,
    ROUND(SUM(ad_spend), 1) AS total_ad_spend,
    SUM(conversions) AS total_conversions
FROM global_ads_performance_dataset
GROUP BY month, platform, campaign_type
ORDER BY month;


-- =====================================================
-- 7. Top 5 Campaigns by ROAS
-- =====================================================

SELECT
    platform,
    campaign_type,
    avg_roas
FROM (
    SELECT
        platform,
        campaign_type,
        ROUND(AVG(ROAS), 1) AS avg_roas
    FROM global_ads_performance_dataset
    GROUP BY platform, campaign_type
) t
ORDER BY avg_roas DESC
LIMIT 5;


-- =====================================================
-- 8. Bottom 5 Campaigns by CPA
-- =====================================================

SELECT 
    platform,
    campaign_type,
    avg_cpa
FROM (
    SELECT 
        platform, 
        campaign_type,
        ROUND(AVG(CPA), 1) AS avg_cpa
    FROM global_ads_performance_dataset
    GROUP BY platform, campaign_type
) t
ORDER BY avg_cpa DESC
LIMIT 5;
