-- Schema for global-ads-case-study

CREATE TABLE ads_data (
    date TEXT NULL,
    platform TEXT NULL,
    campaign_type TEXT NULL,
    industry TEXT NULL,
    country TEXT NULL,
    impressions INT NULL,
    clicks INT NULL,
    CTR DOUBLE NULL,
    CPC DOUBLE NULL,
    ad_spend DOUBLE NULL,
    conversions INT NULL,
    CPA DOUBLE NULL,
    revenue DOUBLE NULL,
    ROAS DOUBLE NULL
);
