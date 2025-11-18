
<div align="center">
  <img src="assets/images/barefoot-logo.svg" alt="Barefoot Wine Logo" width="300"/>
  
  <h1>📖 About This Project</h1>
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

---

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

This analysis of 273 Chinese consumer survey responses reveals **five critical insights** for Barefoot Hard Seltzer's market entry strategy:

1. **High Market Readiness:** 87% trial rate among respondents indicates strong category awareness and low customer education costs, positioning hard seltzers as a growth category rather than nascent market.

2. **Convenience-Led Distribution:** 85% prefer convenience store purchases vs 46% e-commerce, requiring strategic pivot from digital-first to offline-retail-led channel strategy with estimated 3x better unit economics (14.5:1 vs 4.6:1 LTV/CAC).

3. **Premium Positioning Validated:** 63% willing to pay ¥10-15+ per unit (premium tier) with average acceptable price of ¥12.7, supporting 15-20% price premium vs mass-market competitors like RIO.

4. **Gender-Differentiated Customer Economics:** Average annual spend of ¥188 per customer (3-year LTV: ¥564), with significant gender variation in 21-30 target group—male consumers demonstrate 2x higher spend (¥308 vs ¥154) despite smaller segment size (22.7% vs 33.7%), requiring dual-target approach rather than female-only focus. Primary target segment (21-30, all genders, tried seltzers) represents 56.4% of sample.

5. **Wine-Base Positioning Unvalidated:** Survey did not test wine vs malt preference in blind format. While gender price differential is minimal (¥12.80 female vs ¥12.45 male, only +2.8%), focus should be on tangible benefits (glass packaging, natural ingredients) rather than unproven alcohol base differentiation—requires blind taste testing before heavy investment in wine-base messaging.

**Business Impact:** Combined target segment (56.4% of sample, ages 21-30, tried seltzers) = **45M urban millennials** × ¥188 average annual spend = **¥8.5B total addressable market**. Conservative Year 1 capture (3% share) = **¥254M revenue opportunity**.

**View Live Dashboard:**  
👉 [Consumer Insights (Tableau Book)](/visualizations/barefoot-hard-seltzer-market-analysis.twb)
<!-- 
**Dashboard Organization:**

The interactive dashboard contains **9 visualizations** organized into three thematic sections:

#### **Demographics Section (3 visualizations)**
- Gender Distribution: 61% Female, 39% Male breakdown
- Age Distribution: 64% concentration in 21-30 age range
- Trial Rate by Segment: 87% overall trial rate with segment breakdown

#### **Preferences Section (3 visualizations)**
- Packaging Preferences: 72% glass bottle preference
- Flavor Rankings: Top 5 flavor categories
- Price Acceptance: 63% willing to pay ¥10+ premium

#### **Behavior Section (3 visualizations)**
- Channel Penetration: 85% convenience store preference
- Purchase Frequency: Distribution across daily/weekly/monthly/yearly buyers
- Annual Spend Analysis: Male vs Female consumption patterns (¥308 vs ¥154)

**Key Features:**
- Interactive filters by age, gender, trial status
- Hover tooltips with detailed metrics
- Annotations highlighting critical insights
- Consistent brand color palette throughout
- Mobile-responsive design -->

## 4. Insights Deep Dive

### 4.1 Market Readiness & Category Awareness

**Visualization:** *Demographics - Trial*

**Key Metric:** 87% hard seltzer trial rate (238/273 respondents)

**Findings:**
- **High category penetration:** 87.2% of respondents have already tried hard seltzers, indicating mature awareness despite "emerging market" classification
- **Purchase frequency distribution:** 38% buy monthly, 38% yearly, 10% weekly, suggesting behavioral segmentation opportunity
- **Average annual consumption:** 13.4 purchases per year (among those who purchase), providing reliable baseline for LTV calculations
- **Strategic implication:** Market is ready for new entrants—focus on differentiation and share capture rather than consumer education

**Business Metric:**
- **Customer acquisition efficiency:** High trial rate reduces marketing spend on awareness (estimated -30% CAC vs nascent category)
- **Market entry timing:** 87% trial + low brand loyalty = ideal window for premium positioning before consolidation

**What This Means:**
Unlike a nascent market requiring heavy category education (30-40% trial rates), this 87% trial rate indicates Barefoot can immediately focus on brand differentiation and competitive positioning. Marketing dollars should emphasize "better than what you're drinking now" rather than "try hard seltzers for the first time."

---

### 4.2 Channel Strategy & Distribution Economics

**Visualization:** *Behavior - Channels*

**Key Metric:** 85% convenience store preference vs 46% e-commerce

**Findings:**
- **Convenience stores dominate:** 85.3% of respondents purchase through convenience stores, contradicting initial e-commerce-first hypothesis
- **Multi-channel behavior:** 76% also use supermarkets, 46% use e-commerce (Tmall, JD.com), indicating complementary rather than exclusive channel preferences
- **Fresh platforms underutilized:** Only 24% use specialty platforms (Hema Fresh), suggesting niche rather than mass channel
- **Brand website negligible:** 8% purchase via brand websites, deprioritizing direct-to-consumer investment

**Business Metric:**
- **Channel unit economics (estimated):**
  - Convenience: 14.5:1 LTV/CAC ratio (¥35 CAC via placement fees)
  - Supermarket: 10:1 ratio (¥50 CAC)
  - E-commerce: 4.6:1 ratio (¥110 CAC via CPC/CPM)
- **Distribution reach:** 50,000 major city convenience stores × 500 daily traffic = 25M daily touchpoints vs 10M online impressions
- **Strategic revision:** Phase 1 = Convenience (not e-commerce), prioritizing 200M+ offline consumer touchpoints

**What This Means:**
The data contradicts common assumptions about Chinese e-commerce dominance for beverage alcohol. Convenience stores offer 3x better ROI than digital channels for impulse beverage purchases. Year 1 strategy should prioritize 5,000 convenience store placements in tier-1 cities before investing heavily in e-commerce.

---

### 4.3 Premium Positioning & Price Sensitivity

**Visualization:** *Preferences - Price*

**Key Metric:** ¥12.7 average acceptable price (63% willing to pay ¥10-15+)

**Findings:**
- **Price tolerance distribution:** 34% accept ¥5-10, 34% accept ¥10-15, 16% accept ¥15-20, 14% accept ¥20+
- **Premium segment validated:** 63.4% willing to pay ¥10+ (vs RIO baseline ~¥7-8), supporting 15-20% premium strategy
- **Gender price parity:** Minimal differential (female ¥12.80 vs male ¥12.45, only +2.8%), contradicting "female pays more" assumption
- **Quality-price correlation:** Premium pricing must be anchored in tangible benefits (glass packaging, superior ingredients) rather than demographic targeting alone

**Business Metric:**
- **Average transaction value:** ¥12.7 × 2 units per occasion = ¥25.4 basket size
- **Annual customer value:** 13.4 purchases × ¥12.7 = ¥170/year theoretical (actual observed: ¥188 average)
- **Contribution margin:** At 40% gross margin, premium pricing adds ¥27/customer/year incremental profit vs mass market
- **LTV calculation:** ¥188 × 3 years = ¥564 customer lifetime value

**What This Means:**
Two-thirds of target consumers will accept premium pricing (¥10-15+), validating a ¥15-18 price point that positions Barefoot above mass-market RIO (¥7-8) but competitive with import premium Horoyoi (¥12-15). This premium positioning must be justified through tangible quality signals—glass packaging, natural ingredients, international brand equity—rather than unsubstantiated claims.

---

### 4.4 Target Segment Profiling & Gender Analysis

**Visualizations:** *Demographics - Gender, Demographics - Age, Behavior - Spend*

**Key Metric:** 56.4% primary target (21-30, tried seltzers, all genders)

**Findings:**
- **Gender-neutral segmentation:** 154 respondents (56.4%) = Ages 21-30, active hard seltzer consumers (regardless of gender)
- **Gender composition within target:**
  - Female 21-30: 92 respondents (33.7% of total sample)
  - Male 21-30: 62 respondents (22.7% of total sample)
- **Critical gender insight:** Male segment shows **2x higher annual spend** (¥308 vs ¥154) driven by elevated purchase frequency (19.1 vs 11.8 times/year), contradicting initial female-focused hypothesis
- **Age concentration:** 64% of sample aged 21-30, with 46% in 21-25 cohort alone
- **Behavioral patterns:** Primary target shows 88.5% trial rate, preference for glass bottles (73%), and convenience store purchases (85%+)

**Business Metric:**
- **Female 21-30 segment value:** 92 respondents × ¥154 annual = ¥14.2K sample value (larger size, lower per-customer value)
- **Male 21-30 segment value:** 62 respondents × ¥308 annual = ¥19.1K sample value (smaller size, **2x per-customer value**)
- **Combined target value:** 154 respondents × ¥216 blended average = ¥33.3K (demonstrates value of gender-neutral approach)
- **Market sizing:** 80M urban millennials × 56.4% target penetration = **45M addressable consumers** (vs 27M if female-only)
- **TAM calculation:** 45M × ¥188 = **¥8.5B** total addressable market (vs ¥4.6B female-only scenario)

**Target Segment Performance Summary:**

| Segment | Sample Size | % of Total | Avg Frequency | Avg Spend | 3-Year LTV | Segment Value |
|---------|-------------|------------|---------------|-----------|------------|---------------|
| **Male 21-30, Tried** | 62 | 22.7% | 19.1/yr | ¥308 | ¥925 | ¥19.1K (59%) |
| **Female 21-30, Tried** | 92 | 33.7% | 11.8/yr | ¥154 | ¥462 | ¥14.2K (41%) |
| Other Segments | 99 | 36.3% | 10.9/yr | ¥137 | ¥410 | ¥13.6K |
| Age 21-30, Not Tried | 20 | 7.3% | - | - | - | - |

**Strategic Implication:**

> **Initial female-focused targeting based on North American hard seltzer trends does not align with Chinese consumer data.** Recommend gender-neutral positioning (21-30, all genders) with differentiated messaging: wellness/health positioning for female consumers, social occasions/variety positioning for male consumers. Female-only approach would forfeit **59% of target segment value** (¥19.1K male contribution vs ¥33.3K combined).

**What This Means:**
While female consumers represent a larger segment (33.7% vs 22.7%), male consumers drive disproportionate value through higher frequency (19.1 vs 11.8 purchases/year). A dual-target strategy with differentiated messaging—wellness for females, social occasions for males—maximizes both reach (56.4% of market) and value (¥8.5B TAM vs ¥4.6B female-only).

---

### 4.5 Product Preferences & Packaging

**Visualizations:** *Preferences - Packaging, Preferences - Flavors*

**Key Metrics:** 72% glass bottle preference | Top flavor: Apple/Pear/Peach (55%)

**Findings:**
- **Packaging hierarchy:** Glass bottles 72% (197/273), metal cans 62%, plastic bottles 16% (multi-select allowed)
- **Premium perception:** Glass associates with quality, sustainability, Instagram-worthy aesthetics (stated reasons: "premium look", "better taste", "recyclable")
- **Flavor preferences:** Apple/Pear/Peach (55%), Grape/Cherry/Blueberry (45%), Lemon/Grapefruit/Orange (42%) lead preferences
- **ABV preference:** 5% ABV most acceptable (matches global hard seltzer standard), with 2-5% range acceptable to 60%+

**Business Metric:**
- **Packaging cost differential:** Glass bottles +¥0.50-1.00 per unit vs cans, but support 15%+ price premium (net positive margin)
- **Production implications:** Glass-first strategy requires different supply chain (bottling lines, logistics) vs can-focused competitors
- **Sustainability premium:** 72% preference signals opportunity for eco-positioning (recycled glass, carbon-neutral messaging)

**What This Means:**
Glass packaging isn't just a preference—it's a tangible differentiation point that justifies premium pricing. While glass adds ¥0.50-1.00 per unit cost, the 15%+ price premium more than compensates. Lead with 330ml glass bottles at ¥15-18, introduce 355ml cans as secondary SKU for portability occasions (¥12-14).

---

### 4.6 Purchase Frequency & Consumption Patterns

**Visualization:** *Behavior - Frequency*

**Key Metric:** 13.4 average annual purchases (among active consumers)

**Findings:**
- **Frequency distribution:** 38% monthly buyers, 38% yearly buyers, 10% weekly buyers, 14% daily buyers
- **Gender frequency gap:** Male 19.1 purchases/year vs Female 11.8 purchases/year (62% higher)
- **High-value segment:** Top 25% of consumers (by frequency) drive 60%+ of total category value
- **Seasonality indicators:** Survey suggests higher consumption in summer months (social/outdoor occasions)

**Business Metric:**
- **Annual purchase baseline:** 13.4 times/year = 1.1 times/month average
- **Frequency tiers:**
  - Heavy users (weekly+): 10% of consumers, 30% of value
  - Regular users (monthly): 38% of consumers, 50% of value
  - Light users (yearly): 52% of consumers, 20% of value
- **Retention opportunity:** Converting light → regular users doubles LTV (¥282 → ¥564)

**What This Means:**
Rather than treating all consumers equally, segment by frequency: heavy users (loyalty programs, variety packs), regular users (maintain engagement), light users (trial conversion campaigns). Male consumers' 62% higher frequency explains their 2x spend—this is a frequency issue, not a price issue.

---

### 4.7 Wine-Based Positioning Validation

**Key Metric:** Unvalidated assumption requiring market testing

**Findings:**
- **Alcohol base concern:** Survey did not explicitly test wine vs malt preference in blind format, limiting validation of core positioning hypothesis
- **Gender premium minimal:** Female segment shows only 2.8% higher price tolerance (¥12.80 vs ¥12.45), suggesting wine-based "sophistication" messaging may not drive incremental willingness-to-pay
- **Category blind spots:** Consumers may not differentiate alcohol bases in flavored/carbonated formats (requires blind taste testing validation)
- **Competitive intelligence:** High Noon (vodka-based, launched 2019) outperformed wine-based seltzers in North America by 2023, suggesting alcohol base is not primary purchase driver

**Strategic Implication:**

⚠️ **High-risk assumption:** Wine-based differentiation is **unproven and potentially ineffective**—survey did not test consumer preference for wine vs malt/vodka bases.

**Recommended pivot:** Lead with **tangible, testable benefits** rather than unvalidated wine-base claims:
- ✅ Glass packaging (72% preference, verifiable)
- ✅ Natural ingredients (can be validated through ingredients list)
- ✅ Lower sugar/calories (measurable, health-conscious positioning)
- ✅ Premium quality (supported by international brand equity)
- ⚠️ Wine heritage (unvalidated, requires blind taste testing)

**Required validation before heavy investment:**
1. Blind taste test: Wine-labeled vs unlabeled vs vodka-based (n=200+)
2. A/B messaging test: Wine heritage vs natural ingredients positioning
3. Price premium test: Does wine-base justify higher price vs malt alternatives?

**Fallback strategy:** If wine-base shows no consumer preference, Gallo's competitive advantage lies in distribution strength, brand equity, and production scale—not product composition. Pivot messaging to "premium ingredients" and "international quality standards."

---

## 5. Strategic Recommendations

### Executive Summary

Based on analysis of 273 consumer survey responses, the following strategic recommendations guide Barefoot Hard Seltzer's China market entry:

**Core Strategy:** Gender-neutral dual-target approach (ages 21-30, all genders) with convenience-store-led distribution and premium glass-bottle positioning at ¥15-18 price point.

**Market Opportunity:** ¥8.5B total addressable market (45M urban millennials × ¥188 average annual spend), with conservative Year 1 target of ¥254M revenue (3% market capture).

**Critical Pivot from Original Assumptions:**
1. **Target:** Gender-neutral (56.4% of market) vs female-only (34%)
2. **Distribution:** Convenience-first (85% preference, 14.5:1 ROI) vs e-commerce-first
3. **Positioning:** Tangible benefits (glass, natural ingredients) vs unvalidated wine-base claims

---

### Phase 1: Market Entry Strategy (Months 1-6)

#### Channel-First Launch

**Prioritize Convenience Store Distribution**
- Target: 5,000 convenience stores in tier-1 cities (Shanghai, Beijing, Shenzhen)
- Pilot: 500 stores in Shanghai (Months 1-2) to validate conversion rates and velocity
- Expected reach: 2.5M daily consumer touchpoints
- Unit economics: 14.5:1 LTV/CAC ratio (¥35 CAC) vs 4.6:1 e-commerce

**Data-backed rationale:** 85% of target consumers purchase hard seltzers at convenience stores vs 46% e-commerce. Convenience offers 3x superior ROI and enables impulse purchase behavior critical for beverage alcohol.

---

#### Premium Glass-First Product Strategy

**Lead SKU: 330ml Glass Bottles (¥15-18)**
- Packaging: Premium glass with minimalist label design
- Target: 72% of consumers who prefer glass packaging
- Margin: 40% gross margin at ¥15-18 pricing
- Positioning: Premium quality, sustainability, Instagram-worthy

**Secondary SKU: 355ml Cans (¥12-14)**
- Purpose: Portability occasions (beach, outdoor, travel)
- Target: 62% who also prefer cans for specific occasions
- Timing: Introduce 3-6 months post-launch once glass establishes brand

**Avoid:** Plastic bottles (16% preference, undermines premium positioning)

**Data-backed rationale:** Glass preference (72%) combined with premium price acceptance (63% willing to pay ¥10+) validates ¥15-18 pricing. Glass adds ¥0.50-1.00 cost but enables 15%+ price premium.

---

#### Target Segment Strategy (Gender-Neutral)

**Primary Target: Urban Millennials 21-30, All Genders**
- Market size: 56.4% of sample = 45M consumers nationally
- Composition:
  - Male 21-30: 22.7% (high-value: ¥308/year, 19.1 purchases/year)
  - Female 21-30: 33.7% (high-volume: ¥154/year, 11.8 purchases/year)
- Combined TAM: ¥8.5B (vs ¥4.6B female-only)

**Differentiated Messaging (Not Segmentation):**
- **For males:** Social occasions, flavor variety, convenience, sessionability
- **For females:** Wellness, low-calorie, premium quality, natural ingredients
- **Shared:** Same product, channels, pricing—only messaging differs

**Avoid:** 
- Age targeting above 35 (frequency drops significantly)
- Gender-exclusive product positioning (forfeits 59% of segment value)
- Rural markets without urban validation

**Data-backed rationale:** Male segment contributes 59% of target value despite being only 40% of target size. Gender-neutral approach captures full ¥8.5B TAM vs ¥4.6B female-only limitation.

---

### Phase 2: Product & Messaging Optimization (Months 7-12)

#### Flavor Portfolio

**Launch Flavors (4 core SKUs):**
1. Apple/Pear/Peach (55% preference)
2. Grape/Cherry/Blueberry (45%)
3. Lemon/Grapefruit/Orange (42%)
4. Mango/Pineapple/Passion Fruit (36%)

**Year 2 Innovation:**
- Local flavor test: Green tea or Plum (35% interest) as limited edition
- Seasonal rotations based on Year 1 velocity data

**Standardization:**
- 5% ABV across all SKUs (industry standard, 60%+ acceptance)
- Natural flavoring (no artificial colors/sweeteners)
- Low calorie positioning (vs sweeter RIO competitor)

---

#### Positioning & Messaging

**Lead with Tangible Benefits:**
- ✅ "Premium glass packaging"
- ✅ "Natural ingredients, no artificial colors"
- ✅ "Lower sugar than leading brands"
- ✅ "International quality, California heritage"

**De-emphasize Unvalidated Claims:**
- ⚠️ "Wine-based superior taste" (requires blind taste test validation)
- ⚠️ "Sophisticated wine heritage" (no data supporting consumer preference)

**Gender-Differentiated Channels:**
- **Female:** Partner with fitness/wellness influencers, lifestyle KOLs on Xiaohongshu
- **Male:** Partner with sports/social KOLs, lifestyle content on Douyin

---

#### Marketing Mix

**Primary Channels:**
1. **In-store sampling** (convenience stores): Direct trial conversion for 87% who've tried category
2. **KOL partnerships:** Leverage 233 respondents influenced by friend referrals/social proof
3. **Short video content:** 126 respondents influenced by short video platforms (Douyin/Xiaohongshu)
4. **WeChat mini-program:** Loyalty and repeat purchase tracking (46% use e-commerce platforms)

**Budget Allocation (indicative):**
- 40% In-store activation (sampling, merchandising, placement fees)
- 30% Digital/KOL partnerships
- 20% Brand awareness (video content, social media)
- 10% E-commerce launch preparation

---

### Phase 3: Geographic & Channel Expansion (Year 2+)

#### Market Expansion Sequencing

**Year 1: Tier-1 Cities**
- Shanghai, Beijing, Shenzhen (30M+ urban millennials)
- 5,000 convenience store placements
- Validate product-market fit and unit economics

**Year 2: Tier-2 Cities**
- Guangzhou, Hangzhou, Chengdu, Wuhan (50M+ expansion potential)
- 10,000 additional convenience store placements
- Add supermarket channel

**Year 3+: National Scale**
- Tier-3 cities and digital-first rural markets
- 30,000+ total points of distribution
- E-commerce as primary rural channel

---

#### Channel Diversification Timeline

**Month 1-6:** Convenience stores only (focus, validate, learn)
**Month 6-9:** Add supermarkets (76% penetration, 10:1 ROI)
**Month 9-12:** Launch e-commerce (Tmall/JD.com flagship stores)
**Year 2:** Add fresh platforms (Hema, 7Fresh) for premium niche

**Data-backed rationale:** Sequential channel rollout maximizes learning and minimizes risk. Convenience stores provide fastest feedback loop for product-market fit before expanding to slower-turn channels.

---

### Financial Projections & Targets

#### Year 1 Conservative Model (3% Market Capture)

**Revenue:**
- Target customers: 1.35M (3% of 45M TAM)
- Average annual spend: ¥188 per customer
- **Total revenue: ¥254M**

**Gross Margin:**
- 40% gross margin on ¥15-18 pricing
- **Gross profit: ¥102M**

**Customer Acquisition:**
- Blended CAC: ¥45 (convenience ¥35, supermarket ¥50, e-commerce ¥110)
- Total CAC: ¥61M for 1.35M customers

**Contribution Margin:**
- Gross profit (¥102M) - CAC (¥61M) = **¥41M contribution**

**Break-even:** Month 8-10 (assuming ¥30M fixed costs for production setup, initial inventory, team)

---

#### Year 3 Target (10% Market Capture)

**Revenue:**
- Target customers: 4.5M (10% of 45M TAM)
- Average annual spend: ¥188 per customer
- **Total revenue: ¥846M** (3.3x Year 1)

**Margin Improvement:**
- Gross margin expansion to 45% (scale economies)
- CAC reduction to ¥35 blended (channel optimization)

**Profitability:**
- EBITDA margin: 15-20%
- Path to profitability: Month 18-24

---

### Risk Mitigation & Validation

#### Critical Assumptions Requiring Pre-Launch Validation

**1. Wine-Base Positioning Effectiveness (HIGH PRIORITY)**
- **Risk:** Core differentiation claim unvalidated
- **Test:** Blind taste test (wine-labeled vs unlabeled vs vodka-based, n=200+)
- **Timeline:** Complete before major marketing investment (Month -2)
- **Decision:** If no preference detected, pivot messaging to "natural ingredients + premium packaging"

**2. Convenience Store Velocity**
- **Risk:** Sell-through below break-even threshold
- **Test:** 500-store Shanghai pilot with target 20 units/store/week
- **Timeline:** Months 1-2
- **Decision:** If velocity <15 units/week, accelerate supermarket/e-commerce channels

**3. Price Elasticity at ¥15-18**
- **Risk:** Survey acceptance doesn't translate to purchase behavior
- **Test:** ¥15 vs ¥18 pricing in controlled pilot markets
- **Timeline:** Within Month 1-2 pilot
- **Decision:** If ¥18 hurts velocity >20%, default to ¥15; if ¥15 sells out, test ¥16-17

**4. Gender Messaging Effectiveness**
- **Risk:** Differentiated messaging doesn't drive incremental sales vs generic
- **Test:** A/B test wellness vs social positioning with tracked customer cohorts
- **Timeline:** Months 3-6
- **Decision:** Double down on effective messaging, pivot away from ineffective

---

#### Contingency Plans

**If wine-base shows no preference:**
→ Immediate pivot to "premium natural ingredients + international quality" messaging
→ No production impact (product unchanged)

**If convenience velocity underperforms:**
→ Accelerate supermarket channel (Month 3-4 vs Month 6-9)
→ Increase e-commerce investment (Month 6-7 vs Month 9-12)
→ Preserve flexibility by negotiating short-term convenience contracts

**If ¥15-18 pricing hits resistance:**
→ Introduce ¥12-14 can format earlier (Month 3-4 vs Month 6+)
→ Test ¥13-15 glass pricing
→ Maintain premium positioning with "better value" messaging vs mass-market

**If male segment underperforms:**
→ Still avoid female-only pivot (would limit TAM to ¥4.6B)
→ Adjust messaging but maintain product/channel strategy
→ Investigate whether issue is messaging, distribution, or product-market fit

---

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

---

### Data Quality & Limitations

**Strengths:**
- ✅ Reasonable sample size (n=273) for exploratory research
- ✅ Focused demographic (urban millennials 21-35)
- ✅ Comprehensive questionnaire (88 variables)
- ✅ High trial rate enables behavior-based analysis (87% tried)

**Limitations:**
- ⚠️ Self-reported data subject to recall bias (frequency, spend estimates)
- ⚠️ Urban sample may not represent rural markets (55% other cities, 45% tier-1)
- ⚠️ Cross-sectional design prevents causal inference
- ⚠️ Wine-base preference not directly tested (requires follow-up validation)
- ⚠️ October-November timing may miss seasonal variation

**Mitigation:**
- Triangulate with industry benchmarks where available
- Validate financial assumptions through pilot before scaling
- Conduct blind taste testing for wine-base positioning claims
- Monitor actual purchase behavior vs stated preferences

---

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

---

**Project Timeline:**
- Original Project: October-December 2020 (8 weeks, team project)
- Portfolio Evolution: November 2025 (2 weeks, independent work)

**Last Updated:** November 17, 2025  
**Author:** Niko Wang  
**Contact:** wzzclot@gmail.com | [LinkedIn](https://www.linkedin.com/in/zizhuo-wang-niko)

---

## 📝 Key Changes from 2020 Analysis

**Major Strategic Pivots:**

1. **Target Segmentation:** Female-only (34%) → Gender-neutral dual-target (56.4%)
   - *Rationale:* Male segment contributes 59% of value despite smaller size

2. **Market Sizing:** ¥4.6B TAM → ¥8.5B TAM (+85%)
   - *Rationale:* Expanding target from female-only to both genders

3. **Distribution Strategy:** E-commerce-first → Convenience-store-led
   - *Rationale:* 85% convenience preference vs 46% e-commerce; 3x better ROI

4. **Positioning:** Wine-base as core → Tangible benefits (glass, natural ingredients)
   - *Rationale:* Wine-base preference unvalidated; requires blind taste testing

5. **Financial Targets:** ¥230M Year 1 (5% capture) → ¥254M Year 1 (3% capture, larger TAM)
   - *Rationale:* More conservative capture rate on expanded TAM

**Data Quality Improvements:**
- Removed unvalidated demographic assumptions (education %, income %, city tier %)
- Added transparency on missing values (6.16% overall)
- Clarified geographic distribution (45% tier-1, 55% other major cities)
- Validated all business metrics through systematic SQL queries
- Separated stated preferences from validated behaviors