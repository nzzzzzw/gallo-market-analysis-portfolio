
<div align="center">
  <img src="assets/images/barefoot-logo.svg" alt="Barefoot Wine Logo" width="300"/> 
</div>

## 1. Background and Overview

In Fall 2020, **E. & J. Gallo Winery**—the world's largest family-owned winery with 90+ brands including Barefoot, Apothic, and Dark Horse—faced a strategic challenge: **declining wine consumption among Millennials and Gen Z**, driven by the explosive growth of hard seltzers (200-300% annual growth, $4-5B market size). Gallo had launched **Barefoot Hard Seltzer** (the only wine-based seltzer in market) but needed data-driven insights to compete with category leaders like White Claw (60% market share) and Truly (25% share).

Wake Forest University's MSM program partnered with Gallo for a semester-long consulting project. As a **student analytics team**, our objective was to answer:

**The Challenge:**  
> **"With the increase in spiked seltzer trends, consumers (mainly Millennials and Generation Z) are drinking less wine and/or spirits. How should Gallo handle this shift?"**

Student teams presented in December 2020, proposing both **actionable strategies** for immediate implementation and **innovative concepts** to capture the next generation of consumers.

**Our team's focus:**
> **"Can Barefoot Hard Seltzer successfully enter the Chinese market using premium wine-based positioning? Which consumer segments, channels, and pricing strategies maximize market penetration?"**

**Our Approach:** Designed and executed a 273-response consumer survey across major Chinese cities, applying STEEPG analysis, SWOT framework, competitive benchmarking, and Keller's Brand Equity Pyramid to develop a data-backed market entry strategy.

**Outcome:** **First place 🏆** in the Graduate Consulting Project competition (December 2020)

<details>
<summary><b>🏢 About E. & J. Gallo Winery →</b></summary>

**E. & J. Gallo Winery** is the **world's largest family-owned winery**, founded in 1933 and headquartered in Modesto, California. The business is actively run by fifteen family members spanning three generations, employing 6,500+ people worldwide.

**Portfolio:** 90+ brands including table wines, sparkling wines, beverage products (hard seltzers), dessert wines, and distilled spirits. Notable brands: Barefoot, Apothic, Dark Horse, Mirassou, William Hill.

**Recognition (2017):** Glassdoor Top 50 Best Places to Work, Great Place to Work® Certification.

**Sustainability:** Pioneering land management (1 acre protected per 1 acre planted), water recycling, solar energy adoption, minimized chemical use.

</details>

<details>
<summary><b>🎯 Why China Market? Based on our research →</b></summary>

**North American Context (2020):**
- Hard seltzer market growing 200-300% annually
- Market size: $4-5 billion
- White Claw: 60% share | Truly: 25% share
- Fierce competition with new entrants (Bud Light Seltzer, Bon & Viv, Corona)

**China Opportunity (2020):**
- Emerging hard seltzer market with minimal competition
- 400+ million Millennials and Gen Z consumers
- E-commerce infrastructure enabling rapid launches
- Local brands (RIO, Horoyoi) differently positioned
- **First-mover advantage** in premium segment

**Strategic Bet:** Enter China early with wine-based positioning to establish category leadership before market saturation.

</details>

<details>
<summary><b>👤 My Role in the 2020 Project →</b></summary>

**Research Phase:**
- Co-designed 273-response survey, coordinated distribution via WeChat
- Ensured demographic target alignment and response quality

**Analysis Phase:**
- Conducted Excel data analysis (pivot tables, segmentation)
- Performed descriptive statistics and developed consumer insights
- Created visualizations for presentation (PPT)

**Strategy Phase:**
- Developed target segment profiles
- Contributed to competitive analysis
- Co-authored sections of final report

**Presentation Phase:**
- Delivered consumer insights and competitive analysis sections
- Handled Q&A on research methodology and data sources

</details>

<details>
<summary><b>💼 2025 Portfolio Evolution →</b></summary>

**Why Revisit This Project?**

This portfolio transforms the 2020 Excel-based analysis to demonstrate professional data analytics capabilities:

**Technical Evolution:**
- **2020:** Excel pivot tables, PowerPoint charts
- **2025:** SQL/Python data preparation and analysis, Tableau interactive dashboard, GitHub version control

**Skills Demonstrated:**
- Data cleaning and transformation (Python/SQLite)
- Interactive visualization design (Tableau)
- Consumer insights → business metrics translation
- Statistical analysis and segmentation
- github documentation and version control

**Key Improvements:**
- Revised segmentation strategy based on deeper SQL analysis (gender-neutral targeting)
- Interactive Tableau dashboard with 9 visualizations replacing static charts
- Comprehensive data dictionary and methodology documentation
- Validated business metrics through systematic SQL queries
- Strategic recommendations document translating insights into action

**Deliverables:**
- Interactive Tableau dashboard (9 visualizations across 3 themes)
- SQL/Python queries for data cleaning and segmentation
- Written strategic recommendations report
- Comprehensive markdown documentation

</details>

<details>
<summary><b>📊 Quick Links for Project Resources →</b></summary>

**Interactive Dashboard:**
- [Consumer Insights (Tableau Book) →](/visualizations/barefoot-hard-seltzer-market-analysis.twb)  
  *9 interactive visualizations: Demographics | Preferences | Behavior*

**Technical Documentation:**
- [SQL/Python Data Preparation & Analysis Queries →](/scripts/)  
  *Data cleaning, transformation, calculated fields*
- [Data Dictionary →](#2-data-structure-overview)  
  *Complete variable definitions and data structure*
- [Methodology →](#6-methodology--frameworks)  
  *analytical frameworks*

**Original Project Materials:**
- [2020 Presentation (PDF) →](/archive/20201130_GCP25_Gallo_Presentation.pdf)
- [Original Survey Questionnaire →](/data/raw/低酒精饮料偏好调查.xlsx)

</details>

## 2. Data Structure Overview

### Survey Overview

**Primary Data Collection:**
- **Platform:** Wenjuanxing (WJX) Survey Platform
- **Sample Size:** n = 273 Chinese consumers
- **Target Demographic:** Ages 21-35, urban consumers
- **Distribution:** WeChat, social media, university networks
- **Timeline:** 6 days
- **Geographic Distribution:** 45% Beijing/Shanghai/Guangzhou, 55% other major cities


### Data Architecture

**Original Survey Structure (88 variables across 5 dimensions):**

```
survey_raw (273 rows × 88 columns)
│
├── Demographics (8 variables)
│   ├── Gender (binary: 0=Male, 1=Female)
│   ├── Age Group (8 categories: 18-20, 21-25, 26-30, 31-35, 36-40, 41-45, 45-50, 51+)
│   ├── City/Province (text: 3 columns for location data)
│   └── Preferred ABV (6 categories: 2-5%, 5-10%, 10-20%, 20-40%, 40%+, none)
│
├── Alcohol Type Preferences (12 variables)
│   └── Binary flags (0/1): Fruit wine, Rice wine, Sparkling wine, Cocktail, Beer, 
│       Red wine, Yellow wine, Baijiu, Whiskey, Brandy, Gin, Vodka
│
├── Trial & Purchase Behavior (7 variables)
│   ├── Trial Status (binary: tried hard seltzer yes/no)
│   ├── Willingness to Try (binary)
│   ├── Purchase Frequency (4 categories: daily, weekly, monthly, yearly)
│   └── Brand Awareness (4 binary: RIO, Horoyoi, Chill, other)
│
├── Flavor Preferences (22 variables)
│   ├── Tried Flavors (11 binary flags)
│   └── Willing to Try Flavors (11 binary flags)
│       • Apple/Pear/Peach • Grape/Cherry/Blueberry • Mango/Pineapple/Passion
│       • Lemon/Grapefruit/Orange • Other Fruit • Yogurt • Ginger • Cola
│       • Apple Vinegar • Tea • Other Non-fruit
│
├── Product Perceptions (13 variables)
│   ├── Alcohol Base Concern (binary)
│   ├── Health Perception (binary: low-cal as healthy)
│   ├── Alcohol vs Non-alcohol Appeal (binary)
│   └── Purchase Decision Factors (10 binary): Price, Taste, Calories, Ingredients,
│       Packaging, Origin, Quality, Convenience, Brand Culture, Brand Awareness
│
├── Price & Packaging (10 variables)
│   ├── Acceptable Price Range (5 categories: ¥0-5, ¥5-10, ¥10-15, ¥15-20, ¥20+)
│   ├── Material Preference (3 binary: glass, can, plastic)
│   ├── Package Format (3 binary: single, same-flavor pack, mixed-flavor pack)
│   ├── Color Preference (4 options: Barefoot, Suntory, RIO Can, RIO Glass)
│   └── Limited Edition Interest (binary)
│
├── Purchase Channels (6 variables)
│   └── Binary flags: Convenience store, Supermarket, Fresh platform (Hema),
│       E-commerce, Brand website, Other
│
└── Marketing Influence (8 variables)
    └── Binary flags: Celebrity endorsement, Short video, Website rankings, 
        KOL/influencer, Media placement, Livestream, Friend referral, Other
```


### SQL-Generated Data Tables

After data cleaning and transformation, the following structured datasets were created:

<details>
<summary><b>📊 Primary Table: survey_clean (273 rows, 45 columns)</b></summary>

**Base Columns (translated from survey_raw):**

| Column Name | Type | Description | Example Values |
|------------|------|-------------|----------------|
| `response_id` | Integer | Survey response ID | 1-273 |
| `gender` | Text | Decoded gender | "Male", "Female" |
| `age_group` | Text | Age range description | "21-25", "26-30" |
| `age_code` | Integer | Original age code | 1-8 |
| `city_tier` | Text | Geographic classification | "Bejing-Shanghai-GuangZhou" |
| `preferred_abv` | Text | Preferred alcohol % | "2-5%", "5-10%" |
| `tried_hard_seltzer` | Text | Trial status | "Yes", "No" |
| `willing_to_try` | Text | Purchase intent | "Yes", "No" |
| `purchase_frequency` | Text | Purchase pattern | "Daily", "Weekly", "Monthly", "Yearly" |
| `frequency_code` | Integer | Original frequency code | 1-4 |
| `price_range` | Text | Acceptable price | "0-5 RMB", "5-10 RMB" |
| `price_code` | Integer | Original price code | 1-5 |
| `glass_bottle` | Integer | Glass preference (0/1) | 0, 1 |
| `metal_can` | Integer | Can preference (0/1) | 0, 1 |
| `plastic_bottle` | Integer | Plastic preference (0/1) | 0, 1 |
| `channel_convenience` | Integer | Shops at convenience stores | 0, 1 |
| `channel_supermarket` | Integer | Shops at supermarkets | 0, 1 |
| `channel_fresh_platform` | Integer | Uses fresh platforms (Hema) | 0, 1 |
| `channel_ecommerce` | Integer | Shops online (Taobao, JD) | 0, 1 |
| `channel_brand_website` | Integer | Uses brand website | 0, 1 |
| `channel_other` | Integer | Other channels | 0, 1 |
| `brand_rio` | Integer | Aware of RIO brand | 0, 1 |
| `brand_horoyoi` | Integer | Aware of Horoyoi brand | 0, 1 |
| `brand_chill` | Integer | Aware of Chill brand | 0, 1 |
| `brand_other` | Integer | Aware of other brands | 0, 1 |
| `flavor_apple_pear_peach` | Integer | Likes apple/pear/peach | 0, 1 |
| `flavor_grape_cherry_blueberry` | Integer | Likes grape/cherry/blueberry | 0, 1 |
| `flavor_mango_pineapple_passion` | Integer | Likes tropical fruits | 0, 1 |
| `flavor_lemon_grapefruit_orange` | Integer | Likes citrus fruits | 0, 1 |
| `flavor_other_fruit` | Integer | Likes other fruit flavors | 0, 1 |
| `flavor_tea` | Integer | Likes tea flavor | 0, 1 |

**SQL-Calculated Demographic Fields:**

| Column Name | Type | Formula/Logic | Values |
|------------|------|---------------|--------|
| `age_category` | Text | Groups age_code into strategic segments | "Target Age (21-30)", "Adjacent Age", "Other Age" |
| `is_target_age` | Integer | Flags primary age demographic | 1 if age_code IN (2,3), else 0 |
| `city_type` | Text | Simplifies city tier | "Beijing/Shanghai/Guangzhou", "Other Cities" |

**SQL-Calculated Business Metrics:**

| Column Name | Type | Formula | Description |
|------------|------|---------|-------------|
| `price_midpoint` | Real | Midpoint of price range | ¥2.5 to ¥22.5 |
| `annual_purchases` | Real | Frequency → purchases/year | Daily=365, Weekly=52, Monthly=12, Yearly=1 |
| `annual_spend` | Real | `annual_purchases × price_midpoint` | Estimated yearly spending in RMB |
| `ltv_3year` | Real | `annual_spend × 3` | 3-year customer lifetime value |

**SQL-Calculated Segmentation Fields:**

| Column Name | Type | Logic | Purpose |
|------------|------|-------|---------|
| `frequency_tier` | Text | Based on annual_purchases | "Heavy User (52+)", "Medium User (12-51)", "Light User (<12)" |
| `is_heavy_user` | Integer | 1 if frequency ≥52, else 0 | Flag high-frequency customers |
| `is_light_user` | Integer | 1 if frequency <12, else 0 | Flag low-frequency customers |
| `is_premium_segment` | Integer | 1 if price willing ≥¥10, else 0 | Flag premium price acceptance |
| `is_primary_target` | Integer | Age 21-30 AND tried=Yes | Primary marketing target |
| `is_high_value_segment` | Integer | Primary target AND premium | Most valuable customer segment |
| `gender_target_segment` | Text | Gender + Age + Trial status | "Female 21-30 (Wellness)", "Male 21-30 (Social)", etc. |
| `customer_value_tier` | Text | Based on annual_spend | "Tier 1: High (¥300+)" to "Tier 4: Very Low (<¥50)" |
| `strategic_segment` | Text | Combined targeting logic | "1. High-Value Heavy User", "2. High-Value Light User", etc. |


</details>

<details>
<summary><b>📈 Summary Table: segment_summary (5 rows)</b></summary>

**Purpose:** Compare performance across customer segments

**Columns:**
- `segment` (Text): Segment name
  - "Female 21-30, Tried"
  - "Male 21-30, Tried"
  - "Other 21-30, Tried"
  - "Age 21-30, Not Tried"
  - "Other Segments"
- `respondents` (Integer): Count in each segment
- `pct_of_sample` (Real): % of total sample
- `avg_price` (Real): Average acceptable price point (RMB)
- `avg_frequency` (Real): Average purchases per year
- `avg_annual_spend` (Real): Average yearly spending (RMB)
- `avg_ltv` (Real): Average 3-year lifetime value (RMB)

**Use Case:** Identify which demographic segments have highest value and should be prioritized

</details>

<details>
<summary><b>🏪 Summary Table: channel_summary (5 rows)</b></summary>

**Purpose:** Analyze purchase channel preferences

**Columns:**
- `channel` (Text): Channel name
  - "Convenience Store"
  - "Supermarket"
  - "E-commerce"
  - "Fresh Platform"
  - "Brand Website"
- `selections` (Integer): Number of respondents selecting this channel
- `penetration_pct` (Real): % of total sample using this channel

**Use Case:** Determine which distribution channels to prioritize in go-to-market strategy


</details>

<details>
<summary><b>🍹 Summary Table: flavor_summary (5 rows)</b></summary>

**Purpose:** Rank flavor preferences

**Columns:**
- `flavor` (Text): Flavor category
  - "Apple/Pear/Peach"
  - "Grape/Cherry/Blueberry"
  - "Mango/Pineapple/Passion"
  - "Lemon/Grapefruit/Orange"
  - "Tea"
- `selections` (Integer): Number of respondents who tried/like this flavor
- `pct` (Real): % of sample preferring this flavor

**Use Case:** Guide product development and flavor portfolio decisions for China market


</details>

<details>
<summary><b>⚖️ Summary Table: gender_comparison (2 rows)</b></summary>

**Purpose:** Compare male vs female consumer behavior

**Columns:**
- `gender` (Text): "Male", "Female"
- `respondents` (Integer): Sample size per gender
- `avg_frequency` (Real): Average purchases per year
- `avg_price` (Real): Average price acceptance (RMB)
- `avg_annual_spend` (Real): Average yearly spending (RMB)
- `avg_ltv` (Real): Average 3-year LTV (RMB)
- `trial_rate_pct` (Real): % who have tried hard seltzer
- `premium_pct` (Real): % willing to pay ≥¥10
- `heavy_user_pct` (Real): % purchasing ≥52 times/year
- `glass_pref_pct` (Real): % preferring glass bottles

**Use Case:** Validate/challenge original gender-based targeting assumptions

</details>

## 3. Executive Summary

### Overview of Findings

This analysis of 273 Chinese consumer survey responses reveals **four critical insights** for Barefoot Hard Seltzer's market entry strategy:

**1. High Category Awareness**  
87% of respondents (238/273) have already tried hard seltzers, indicating mature category awareness. Marketing can focus on brand differentiation rather than category education.

**2. Convenience Store Channel Dominance**  
85% of respondents purchase hard seltzers at convenience stores, compared to 76% at supermarkets and 46% through e-commerce. Distribution strategy should prioritize offline retail channels.

**3. Premium Price Acceptance**  
63% of respondents (173/273) accept pricing of ¥10+ per unit, with average acceptable price of ¥12.7. This validates premium positioning above mass-market competitors.

**4. Gender-Differentiated Consumption Patterns**  
Male consumers show 2x higher annual spend (¥276 vs ¥135) driven by higher purchase frequency (18.2 vs 10.5 times/year). Target strategy should include both genders rather than female-only focus.

**Target Market Definition:**  
Primary target segment (ages 21-30, tried hard seltzers) represents 56.4% of sample (154/273 respondents: 92 female + 62 male). Age concentration shows 64% of sample in 21-30 range.

**Important Limitation:**  
Survey did not test wine-base vs malt-base consumer preference. Wine-base positioning (core product differentiation) requires validation through blind taste testing before significant marketing investment.

## 4. Insights Deep Dive

### 4.1 Market Readiness & Category Awareness

**Visualization:** *Demographics - Trial*
<div align="center">
  <img src="assets/images/Demographics-Trial.png"> 
</div>

**Key Finding:** 87% trial rate (238/273 respondents) across all segments.

**Segment Breakdown:**
- Female 21-30: 100% trial rate (92/92)
- Male 21-30: 100% trial rate (62/62)  
- Other Segments: 84.8% trial rate (84/99)
- Age 21-30, Not Tried: 0% by definition (20 respondents)

**Implication:** High existing category awareness means marketing resources can focus on brand switching and competitive differentiation rather than consumer education about the hard seltzer category itself.

### 4.2 Channel Preferences & Distribution

**Visualization:** *Behavior - Channels*
<div align="center">
  <img src="assets/images/Behavior - Channels.png"  width="500"> 
</div>

**Key Finding:** 85% convenience store preference (233/273 respondents), followed by 76% supermarkets (206/273) and 46% e-commerce (126/273).

**Channel Penetration:**
| Channel | Selections | Penetration |
|---------|-----------|-------------|
| Convenience Store | 233 | 85.3% |
| Supermarket | 206 | 75.5% |
| E-commerce | 126 | 46.2% |
| Fresh Platform | 66 | 24.2% |
| Brand Website | 22 | 8.1% |

**Implication:** Convenience stores and supermarkets are primary purchase channels, indicating offline retail should be prioritized over e-commerce for initial market entry. Fresh platforms and brand websites show limited adoption.

### 4.3 Price Sensitivity & Premium Positioning

**Visualization:** *Preferences - Price*
<div align="center">
  <img src="assets/images/Preferences - Price.png"> 
</div>

**Key Finding:** 63% willing to pay ¥10+ per unit (173/273), with average acceptable price of ¥12.7.

**Price Distribution:**
- ¥0-5: 10 respondents (3.7%)
- ¥5-10: 90 respondents (33.0%)
- ¥10-15: 92 respondents (33.7%)
- ¥15-20: 43 respondents (15.8%)
- ¥20+: 38 respondents (13.9%)

**Gender Price Parity:** Female average ¥12.80 vs Male average ¥12.45 (only 2.8% difference), indicating minimal gender-based price differentiation.

**Implication:** Two-thirds of target market accepts premium pricing (¥10-15+), supporting a price point above mass-market competitors while remaining accessible to majority of consumers.


### 4.4 Target Segment Analysis & Gender Economics

**Visualizations:** *Demographics - Gender, Demographics - Age, Behavior - Spend*
<div align="center">
  <img src="assets/images/Demographics - Gender.png"  width="500"> 
</div>
<div align="center">
  <img src="assets/images/Demographics - Age.png"> 
</div>

**Key Finding:** Primary target (ages 21-30, tried seltzers) = 154 respondents (56.4% of sample), with strong age concentration in 21-30 range (64% of total sample).

**Age Distribution:**
- **21-30 age range: 64% of sample** (175/273 respondents)
  - 21-25: 46% (largest single cohort)
  - 26-30: 18%
- 31-35: 12%
- Other ages: 24%
- Sharp drop-off after age 30 validates millennial focus

**Gender Overview:**
| Metric | Female (n=167) | Male (n=106) | Difference |
|--------|---------------|--------------|------------|
| % of Sample | 61.2% | 38.8% | — |
| Avg Annual Spend | ¥135 | ¥276 | **2.0x** |
| Avg Frequency | 10.5/year | 18.2/year | **1.7x** |
| 3-Year LTV | ¥405 | ¥827 | **2.0x** |
| Trial Rate | 88.6% | 84.9% | -3.7pp |

**Target Segment Detail:**
| Segment | Size | % of Sample | Avg Frequency | Avg Spend | 3-Year LTV |
|---------|------|-------------|---------------|-----------|------------|
| Female 21-30, Tried | 92 | 33.7% | 11.8/yr | ¥154 | ¥462 |
| Male 21-30, Tried | 62 | 22.7% | 19.1/yr | ¥308 | ¥925 |
| Other Segments | 99 | 36.3% | 10.9/yr | ¥137 | ¥410 |
| Age 21-30, Not Tried | 20 | 7.3% | — | — | — |

**Segment Value Calculation:**
- Female 21-30 sample value: 92 × ¥154 = ¥14,168
- Male 21-30 sample value: 62 × ¥308 = ¥19,096
- Male segment contributes 57.4% of target segment value despite being only 40.3% of target size

**Implication:** Strong concentration in 21-30 age range (64%) validates this as primary target demographic. Male consumers drive disproportionate value through higher purchase frequency (18.2 vs 11.8 times/year), not higher price tolerance. A gender-neutral dual-target approach maximizes both market reach (56.4% vs 33.7% female-only) and total value capture.

### 4.5 Product Preferences - Packaging

**Visualization:** *Preferences - Packaging*
<div align="center">
  <img src="assets/images/Preferences - Packaging.png"> 
</div>


**Key Finding:** 72% prefer glass bottles (197/273), followed by 62% cans (170/273) and 8% plastic (22/273). Multi-select allowed.

**Packaging Preferences:**
- Glass bottles: 197 selections (72.2%)
- Metal cans: 170 selections (62.3%)
- Plastic bottles: 22 selections (8.1%)

**Gender Comparison:**
- Female glass preference: 73.1%
- Male glass preference: 70.8%
- Minimal gender difference (2.3 percentage points)

**Implication:** Glass packaging shows strong preference across both genders, supporting premium positioning. Cans appeal to majority as complementary format for different occasions.

### 4.6 Product Preferences - Flavors

**Visualization:** *Preferences - Flavors*
<div align="center">
  <img src="assets/images/Preferences - Flavors.png"> 
</div>


**Key Finding:** Apple/Pear/Peach leads at 54.6%, followed by Grape/Cherry/Blueberry (45.4%) and citrus flavors (41.8%).

**Top 5 Flavor Categories:**
1. Apple/Pear/Peach: 54.6%
2. Grape/Cherry/Blueberry: 45.4%
3. Lemon/Grapefruit/Orange: 41.8%
4. Mango/Pineapple/Passion Fruit: 32.2%
5. Tea: 5.5%

**Implication:** Launch portfolio should include 3-4 core flavors covering fruit-forward categories (apple/pear, berry, citrus, tropical) that appeal to 40-55% of target market each.


### 4.7 Purchase Frequency Distribution

**Visualization:** *Behavior - Frequency*
<div align="center">
  <img src="assets/images/Behavior - Frequency.png"  width="500"> 
</div>


**Key Finding:** Purchase frequency splits between monthly (44%) and yearly (44%) buyers, with 12% weekly+ frequency.

**Frequency Breakdown (n=238 who tried):**
- Yearly: 104 respondents (43.7%)
- Monthly: 105 respondents (44.1%)
- Weekly: 28 respondents (11.8%)
- Daily: 1 respondent (0.4%)

**Gender Frequency Gap:**
- Male: 18.2 purchases/year average
- Female: 10.5 purchases/year average
- Male frequency is 1.7x higher

**Implication:** Male consumers' 2x higher annual spend is driven by purchase frequency (18.2 vs 10.5 times/year), not by higher spending per occasion. Frequency-based segmentation may be more relevant than demographic segmentation for retention strategies.

## 5. Strategic Recommendations

Based on 273 consumer survey responses, the following recommendations guide Barefoot Hard Seltzer's China market entry strategy.

### Core Strategy

**Target Segment:** Ages 21-30, all genders (56.4% of sample = 154 respondents)
- Female 21-30: 33.7% of sample, ¥154 annual spend, 11.8 purchases/year
- Male 21-30: 22.7% of sample, ¥308 annual spend, 19.1 purchases/year
- Gender-neutral approach captures both volume (female) and value (male)

**Rationale:** Male consumers contribute 57% of target segment value despite smaller size. Female-only targeting would forfeit this high-value segment.


### Distribution Strategy

**Channel Priority:** Convenience stores first, then supermarkets, then e-commerce

**Survey Findings:**
- Convenience stores: 85% penetration (233/273)
- Supermarkets: 76% penetration (206/273)
- E-commerce: 46% penetration (126/273)
- Fresh platforms: 24% penetration (66/273)

**Recommended Rollout:**
1. Launch in convenience stores (tier-1 cities: Shanghai, Beijing, Shenzhen)
2. Pilot 500 stores to validate velocity before scaling
3. Add supermarkets once convenience model validated
4. E-commerce as complementary channel for discovery and rural reach

**Rationale:** High offline penetration (85% convenience, 76% supermarket) indicates consumers prefer in-person purchases. E-commerce serves as complementary channel, not primary.

### Product Strategy

**Packaging:**
- **Lead:** 330ml glass bottles at ¥15-18 (72% prefer glass, 63% accept ¥10+ pricing)
- **Secondary:** 355ml cans at ¥12-14 for portability occasions (62% also prefer cans)
- **Avoid:** Plastic bottles (only 8% preference)

**Flavors:**
Launch with 3-4 core SKUs covering top preferences:
1. Apple/Pear/Peach (54.6%)
2. Grape/Cherry/Blueberry (45.4%)
3. Lemon/Grapefruit/Orange (41.8%)
4. Mango/Pineapple/Passion Fruit (32.2%)

**ABV:** 5% standard across all products (industry norm)

**Rationale:** Glass preference (72%) supports premium positioning. Top 4 flavors each appeal to 30-55% of target market, providing variety while focusing portfolio.

### Pricing Strategy

**Recommended Price Point:** ¥15-18 per unit (330ml glass)

**Survey Support:**
- 63% accept ¥10+ pricing (173/273)
- Average acceptable price: ¥12.7
- Gender price parity: Female ¥12.80 vs Male ¥12.45 (only 2.8% difference)

**Positioning:** Premium tier above mass-market RIO (~¥7-8), competitive with import Horoyoi (~¥12-15)

**Rationale:** Two-thirds of target market accepts premium pricing, supporting position above mass market while remaining accessible.

### Messaging Strategy

**Core Benefits (Data-Supported):**
- Premium glass packaging (72% preference)
- Natural ingredients, low sugar (health-conscious positioning)
- International quality standards (Gallo brand equity)
- 3-4 diverse flavor options

**Gender-Differentiated Messaging:**
- **Female focus:** Wellness, low-calorie, premium quality, natural ingredients
- **Male focus:** Social occasions, flavor variety, convenience
- **Implementation:** Same product/channels/pricing, different marketing content

**Avoid Claims Requiring Validation:**
- Wine-base as superior taste (not tested in survey)
- Wine heritage appeal (no data on consumer preference)

**Rationale:** Lead with tangible, verifiable benefits. Wine-base positioning requires blind taste testing before marketing investment.

### Marketing Approach

**Primary Channels:**
1. **In-store sampling:** Trial conversion at convenience stores (87% already tried category)
2. **KOL partnerships:** Fitness/wellness influencers (female), lifestyle/social KOLs (male)
3. **Social media content:** Short video platforms (Douyin, Xiaohongshu)
4. **WeChat mini-program:** Loyalty tracking and repeat purchases

**Target Behaviors:**
- Focus on brand switching (not category trial, given 87% awareness)
- Emphasize "better than what you're drinking now"
- Leverage social proof and friend referrals

**Rationale:** High category awareness (87% trial) means marketing should focus on competitive differentiation and brand switching rather than consumer education.

### Geographic Rollout

**Year 1:** Tier-1 cities (Shanghai, Beijing, Shenzhen)
- Validate product-market fit
- Establish convenience store model
- Test pricing and messaging effectiveness

**Year 2+:** Expand to tier-2 cities (Guangzhou, Hangzhou, Chengdu)
- Scale proven model
- Add supermarket channel
- Launch e-commerce for rural reach

**Rationale:** Survey sample concentrated in urban markets. Validate urban model before expanding to untested geographies.

### Required Validations

Before significant marketing investment, validate the following assumptions:

**1. Wine-Base Positioning**
- **Data Gap:** Survey did not test consumer preference for wine vs malt vs vodka base
- **Required Test:** Blind taste test with 200+ consumers (wine-labeled vs unlabeled vs alternatives)
- **Decision Point:** If no preference detected, pivot messaging to tangible benefits (glass packaging, natural ingredients, international quality)
- **Priority:** High - this is core product differentiation claim

**2. Price Elasticity**
- **Data Gap:** Survey shows stated acceptance (63% accept ¥10+), not actual purchase behavior
- **Required Test:** A/B pricing test in pilot stores (¥15 vs ¥18)
- **Decision Point:** Optimize for total revenue (price × volume)

**3. Convenience Store Velocity**
- **Data Gap:** Survey shows channel preference (85%), not sales throughput
- **Required Test:** 500-store pilot measuring units sold per store per week
- **Decision Point:** Validate minimum velocity (15-20 units/store/week) supports profitability before scaling

**4. Messaging Effectiveness**
- **Data Gap:** Gender-differentiated messaging hypothesis untested
- **Required Test:** A/B test wellness vs social positioning with tracked customer cohorts
- **Decision Point:** Invest in effective messaging approach, adjust ineffective

**Next Step:** Execute pilot program in 500 Shanghai convenience stores to validate assumptions before national scaling.

## 6. Methodology & Frameworks

### Analytical Frameworks Applied

**STEEPG Analysis** (Macro Environment)
- **Social:** Health consciousness, Western lifestyle trends, evolving drinking culture
- **Technology:** E-commerce, mobile payments, social media marketing (KOLs)
- **Economics:** Rising middle class, discretionary spending growth, premiumization
- **Environment:** Sustainability concerns, eco-packaging demand, carbon footprint awareness
- **Policy:** Alcohol regulations, import duties (15-20%), advertising restrictions
- **Global:** Hard seltzer trends from US/UK, international brand expansion

**SWOT Analysis** (Competitive Position)
- **Strengths:** Gallo brand equity, wine-based differentiation (*unvalidated*), international credibility
- **Weaknesses:** Limited China brand awareness, no convenience distribution network, higher import costs
- **Opportunities:** First-mover in premium wine-based segment, underserved male target, health trends
- **Threats:** Local competitors (RIO at ¥7-8), cultural preference for sweetness, regulatory complexity

**Competitive Benchmarking**
| Brand | Base | Position | Price | Target |
|-------|------|----------|-------|--------|
| White Claw | Malt | US leader (60%) | $8-10 | Young prof 21-35 |
| Truly | Malt | US #2 (25%) | $7-9 | Millennials |
| RIO | Malt | China leader | ¥7-8 | Young females 18-28 |
| Horoyoi | Shochu | China import | ¥12-15 | Urban 25-40 |
| **Barefoot** | **Wine** | **Proposed** | **¥15-18** | **Urban 21-30, both genders** |



## Acknowledgments

**Original 2020 Project Team:**
- Hongling Yu, Xin Yin, Jinru Yao, Yitong Gao
- Wake Forest University MSM Program

**2025 Portfolio Project:**
- Independent analysis (solo), using original 2020 survey data
- SQL data preparation, Tableau visualization, strategic analysis
- Revised recommendations incorporating deeper analytical insights

**Special Thanks:**
- E. & J. Gallo Winery for the original case challenge opportunity
- Wake Forest University for competition platform and mentorship
- 273 Chinese consumers who participated in the survey
- MSM program faculty for research methodology guidance

**Last Updated:** November 17, 2025  
**Author:** Niko Wang  
**Contact:** wzzclot@gmail.com | [LinkedIn](https://www.linkedin.com/in/zizhuo-wang-niko)

---
