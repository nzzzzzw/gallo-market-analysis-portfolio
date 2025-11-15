
-- Price & Frequency
ALTER TABLE survey_clean ADD COLUMN price_midpoint REAL;
UPDATE survey_clean SET price_midpoint = CASE price_code WHEN 1 THEN 2.5 WHEN 2 THEN 7.5 WHEN 3 THEN 12.5 WHEN 4 THEN 17.5 WHEN 5 THEN 22.5 END;

ALTER TABLE survey_clean ADD COLUMN annual_purchases REAL;
UPDATE survey_clean SET annual_purchases = CASE frequency_code WHEN 1 THEN 365 WHEN 2 THEN 52 WHEN 3 THEN 12 WHEN 4 THEN 1 END;

ALTER TABLE survey_clean ADD COLUMN annual_spend REAL;
UPDATE survey_clean SET annual_spend = annual_purchases * price_midpoint;

ALTER TABLE survey_clean ADD COLUMN ltv_3year REAL;
UPDATE survey_clean SET ltv_3year = annual_spend * 3;

-- Verify key metrics
SELECT ROUND(AVG(price_midpoint), 2) as avg_price, ROUND(AVG(annual_purchases), 1) as avg_freq, ROUND(AVG(annual_spend), 0) as avg_spend, ROUND(AVG(ltv_3year), 0) as avg_ltv FROM survey_clean;
-- Expected: ~12.7, ~13.4, ~169, ~507

-- Behavioral Segments
ALTER TABLE survey_clean ADD COLUMN is_premium_segment INTEGER;
UPDATE survey_clean SET is_premium_segment = CASE WHEN price_code >= 3 THEN 1 ELSE 0 END;

ALTER TABLE survey_clean ADD COLUMN is_heavy_user INTEGER;
UPDATE survey_clean SET is_heavy_user = CASE WHEN frequency_code IN (1, 2) THEN 1 ELSE 0 END;

ALTER TABLE survey_clean ADD COLUMN frequency_category TEXT;
UPDATE survey_clean SET frequency_category = CASE frequency_code WHEN 1 THEN 'Heavy User (Daily)' WHEN 2 THEN 'Heavy User (Weekly)' WHEN 3 THEN 'Light User (Monthly)' WHEN 4 THEN 'Light User (Yearly)' ELSE 'Unknown' END;

ALTER TABLE survey_clean ADD COLUMN price_segment TEXT;
UPDATE survey_clean SET price_segment = CASE WHEN price_code IN (1, 2) THEN 'Mass Market (¥0-10)' WHEN price_code = 3 THEN 'Mid-Premium (¥10-15)' WHEN price_code IN (4, 5) THEN 'Premium (¥15+)' ELSE 'Unknown' END;

ALTER TABLE survey_clean ADD COLUMN primary_packaging TEXT;
UPDATE survey_clean SET primary_packaging = CASE WHEN glass_bottle = 1 AND metal_can = 0 THEN 'Glass Only' WHEN glass_bottle = 0 AND metal_can = 1 THEN 'Can Only' WHEN glass_bottle = 1 AND metal_can = 1 THEN 'Both Glass & Can' ELSE 'Other/None' END;

-- Target Segments (Gender-Neutral)
ALTER TABLE survey_clean ADD COLUMN is_primary_target INTEGER;
UPDATE survey_clean SET is_primary_target = CASE WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 1 ELSE 0 END;

ALTER TABLE survey_clean ADD COLUMN is_high_value_segment INTEGER;
UPDATE survey_clean SET is_high_value_segment = CASE WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' AND is_premium_segment = 1 THEN 1 ELSE 0 END;

ALTER TABLE survey_clean ADD COLUMN gender_target_segment TEXT;
UPDATE survey_clean SET gender_target_segment = CASE WHEN gender = 'Female' AND age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Female 21-30 (Wellness)' WHEN gender = 'Male' AND age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Male 21-30 (Social)' WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' THEN 'Other 21-30' ELSE 'Non-target' END;

ALTER TABLE survey_clean ADD COLUMN customer_value_tier TEXT;
UPDATE survey_clean SET customer_value_tier = CASE WHEN annual_spend >= 300 THEN 'Tier 1: High (¥300+)' WHEN annual_spend >= 150 THEN 'Tier 2: Medium (¥150-300)' WHEN annual_spend >= 50 THEN 'Tier 3: Low (¥50-150)' WHEN annual_spend < 50 THEN 'Tier 4: Very Low (<¥50)' ELSE 'Unknown' END;

ALTER TABLE survey_clean ADD COLUMN strategic_segment TEXT;
UPDATE survey_clean SET strategic_segment = CASE WHEN is_high_value_segment = 1 AND is_heavy_user = 1 THEN '1. High-Value Heavy User' WHEN is_high_value_segment = 1 AND is_heavy_user = 0 THEN '2. High-Value Light User' WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'Yes' AND is_premium_segment = 0 THEN '3. Target Age, Price-Sensitive' WHEN age_code IN (2, 3) AND tried_hard_seltzer = 'No' THEN '4. Target Age, Not Tried' ELSE '5. Other Segments' END;