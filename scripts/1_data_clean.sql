-- ============================================================================
-- PHASE 2: CREATE CLEAN TABLE
-- ============================================================================

CREATE TABLE survey_clean AS
SELECT 
    序号 AS response_id,
    CASE WHEN "1、您的性别：" = 0 THEN 'Male' WHEN "1、您的性别：" = 1 THEN 'Female' END AS gender,
    CASE "2、您的年龄段：" WHEN 1 THEN '18-20' WHEN 2 THEN '21-25' WHEN 3 THEN '26-30' WHEN 4 THEN '31-35' WHEN 5 THEN '36-40' WHEN 6 THEN '41-45' WHEN 7 THEN '45-50' WHEN 8 THEN '51+' END AS age_group,
    "2、您的年龄段：" AS age_code,
    "3、请选择您所在的省份和城市:" AS city_tier,
    CASE "4、请选择您喜欢的酒精度数区间：" WHEN 1 THEN '2-5%' WHEN 2 THEN '5-10%' WHEN 3 THEN '10-20%' WHEN 4 THEN '20-40%' WHEN 5 THEN '40%+' WHEN 6 THEN 'None' END AS preferred_abv,
    CASE "6、您有没有尝试过低酒精饮料：" WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END AS tried_hard_seltzer,
    CASE "7、您是否愿意尝试低酒精饮料：" WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END AS willing_to_try,
    CASE "8、请选择最接近您购买低酒精饮料的频率：" WHEN 1 THEN 'Daily' WHEN 2 THEN 'Weekly' WHEN 3 THEN 'Monthly' WHEN 4 THEN 'Yearly' END AS purchase_frequency,
    "8、请选择最接近您购买低酒精饮料的频率：" AS frequency_code,
    "17、(玻璃瓶)" AS glass_bottle,
    "17、(易拉罐等金属饮料容器)" AS metal_can,
    "17、(塑料瓶)" AS plastic_bottle,
    CASE "16、请选择您可接受的低酒精饮料价格区间（以250ml为单位）：" WHEN 1 THEN '0-5 RMB' WHEN 2 THEN '5-10 RMB' WHEN 3 THEN '10-15 RMB' WHEN 4 THEN '15-20 RMB' WHEN 5 THEN '20+ RMB' END AS price_range,
    "16、请选择您可接受的低酒精饮料价格区间（以250ml为单位）：" AS price_code,
    "21、(便利店)" AS channel_convenience,
    "21、(超市)" AS channel_supermarket,
    "21、(生鲜购物平台（如：盒马生鲜）)" AS channel_fresh_platform,
    "21、(电商平台（如：淘宝，京东等）)" AS channel_ecommerce,
    "21、(品牌官网)" AS channel_brand_website,
    "21、(其他)" AS channel_other,
    "9、(锐澳 RIO（百润公司）)" AS brand_rio,
    "9、(和乐怡 Horoyoi（三得利公司）)" AS brand_horoyoi,
    "9、(轻尔 Chill（熊猫精酿公司）)" AS brand_chill,
    "9、(其他)" AS brand_other,
    "10、(苹果，梨，桃味)" AS flavor_apple_pear_peach,
    "10、(葡萄，樱桃，蓝莓味)" AS flavor_grape_cherry_blueberry,
    "10、(芒果，菠萝，百香果味)" AS flavor_mango_pineapple_passion,
    "10、(柠檬，西柚，橙子味)" AS flavor_lemon_grapefruit_orange,
    "10、(其他水果味)" AS flavor_other_fruit,
    "10、(茶味)" AS flavor_tea
FROM survey_raw;
-- Add demographic fields
ALTER TABLE survey_clean ADD COLUMN age_category TEXT;
UPDATE survey_clean SET age_category = CASE WHEN age_code IN (2, 3) THEN 'Target Age (21-30)' WHEN age_code IN (1, 4) THEN 'Adjacent Age' ELSE 'Other Age' END;

ALTER TABLE survey_clean ADD COLUMN is_target_age INTEGER;
UPDATE survey_clean SET is_target_age = CASE WHEN age_code IN (2, 3) THEN 1 ELSE 0 END;

ALTER TABLE survey_clean ADD COLUMN city_type TEXT;
UPDATE survey_clean SET city_type = CASE WHEN city_tier = '北上广' THEN 'Beijing/Shanghai/Guangzhou' ELSE 'Other Cities' END;