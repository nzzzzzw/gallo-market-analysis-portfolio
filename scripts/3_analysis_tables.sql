CREATE TABLE segment_summary AS
SELECT 
    CASE WHEN gender = 'Female' AND age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Female 21-30, Tried'
         WHEN gender = 'Male' AND age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Male 21-30, Tried'
         WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Other 21-30, Tried'
         WHEN age_code IN (2, 3) THEN 'Age 21-30, Not Tried'
         ELSE 'Other Segments' END AS segment,
    COUNT(*) as respondents,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) as pct_of_sample,
    ROUND(AVG(price_midpoint), 2) as avg_price,
    ROUND(AVG(annual_purchases), 1) as avg_frequency,
    ROUND(AVG(annual_spend), 0) as avg_annual_spend,
    ROUND(AVG(ltv_3year), 0) as avg_ltv
FROM survey_clean
GROUP BY segment
ORDER BY avg_annual_spend DESC;

-- Channel Summary
CREATE TABLE channel_summary AS
SELECT 'Convenience Store' as channel, SUM(channel_convenience) as selections, ROUND(SUM(channel_convenience) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) as penetration_pct FROM survey_clean
UNION ALL SELECT 'Supermarket', SUM(channel_supermarket), ROUND(SUM(channel_supermarket) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'E-commerce', SUM(channel_ecommerce), ROUND(SUM(channel_ecommerce) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'Fresh Platform', SUM(channel_fresh_platform), ROUND(SUM(channel_fresh_platform) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'Brand Website', SUM(channel_brand_website), ROUND(SUM(channel_brand_website) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
ORDER BY selections DESC;

-- Flavor Summary
CREATE TABLE flavor_summary AS
SELECT 'Apple/Pear/Peach' AS flavor, SUM(flavor_apple_pear_peach) as selections, ROUND(SUM(flavor_apple_pear_peach) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) as pct FROM survey_clean
UNION ALL SELECT 'Grape/Cherry/Blueberry', SUM(flavor_grape_cherry_blueberry), ROUND(SUM(flavor_grape_cherry_blueberry) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'Mango/Pineapple/Passion', SUM(flavor_mango_pineapple_passion), ROUND(SUM(flavor_mango_pineapple_passion) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'Lemon/Grapefruit/Orange', SUM(flavor_lemon_grapefruit_orange), ROUND(SUM(flavor_lemon_grapefruit_orange) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
UNION ALL SELECT 'Tea', SUM(flavor_tea), ROUND(SUM(flavor_tea) * 100.0 / (SELECT COUNT(*) FROM survey_clean), 1) FROM survey_clean
ORDER BY selections DESC;

-- Gender Comparison
CREATE TABLE gender_comparison AS
SELECT 
    gender,
    COUNT(*) as respondents,
    ROUND(AVG(annual_purchases), 1) as avg_frequency,
    ROUND(AVG(price_midpoint), 2) as avg_price,
    ROUND(AVG(annual_spend), 0) as avg_annual_spend,
    ROUND(AVG(ltv_3year), 0) as avg_ltv,
    ROUND(SUM(CASE WHEN tried_hard_seltzer = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) as trial_rate_pct,
    ROUND(SUM(is_premium_segment) * 100.0 / COUNT(*), 1) as premium_pct,
    ROUND(SUM(is_heavy_user) * 100.0 / COUNT(*), 1) as heavy_user_pct,
    ROUND(SUM(glass_bottle) * 100.0 / COUNT(*), 1) as glass_pref_pct
FROM survey_clean
GROUP BY gender;