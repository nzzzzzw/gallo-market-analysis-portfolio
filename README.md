# 📖 About This Project

---

## 1. Background and Overview

In Fall 2020, **E. & J. Gallo Winery**—the world's largest family-owned winery with 90+ brands including Barefoot, Apothic, and Dark Horse—faced a strategic challenge: **declining wine consumption among Millennials and Gen Z**, driven by the explosive growth of hard seltzers (200-300% annual growth, $4-5B market size). Gallo had launched **Barefoot Hard Seltzer** (the only wine-based seltzer in market) but needed data-driven insights to compete with category leaders like White Claw (60% market share) and Truly (25% share).

Wake Forest University's MSM program partnered with Gallo for a semester-long consulting project. As a **student analytics team**, our objective was to answer:

> **"Can Barefoot Hard Seltzer successfully enter the Chinese market using premium wine-based positioning? Which consumer segments, channels, and pricing strategies maximize market penetration?"**

**Our Approach:** Designed and executed a 273-response consumer survey across Tier 1/2 Chinese cities, applying STEEPG analysis, SWOT framework, competitive benchmarking, and Keller's Brand Equity Pyramid to develop a data-backed market entry strategy.

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
- Co-designed 273-response survey (Qualtrics), coordinated distribution via WeChat
- Ensured demographic target alignment and response quality

**Analysis Phase:**
- Conducted Excel data analysis (pivot tables, segmentation)
- Performed descriptive statistics and developed consumer insights
- Created visualizations for presentation

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

This portfolio transforms the 2020's analysis to demonstrate professional data analytics capabilities:

**Technical Evolution:**
- 2020: Excel pivot tables, PowerPoint charts
- 2025: SQL data preparation, Tableau interactive dashboards, GitHub version control

**Skills Demonstrated:**
- Data cleaning and transformation (SQL)
- Business storytelling through visualization (Tableau)
- Consumer insights → business metrics translation
- Professional documentation

**Deliverables:**
- Interactive Tableau dashboards (Consumer Insights + Market Strategy)
- SQL queries for data cleaning and segmentation
- Comprehensive markdown documentation

</details>

<details>
<summary><b>📊 Quick links for Project Documentation →</b></summary>

**Interactive Dashboards:**
- [Consumer Insights Dashboard →](placeholder_tableau_public_link) - 4 tabs visualizing 273 survey responses
- [Market Strategy Dashboard →](placeholder_tableau_public_link) - Strategic recommendations and business metrics

**Technical Documentation:**
- [SQL Data Preparation Queries →](placeholder_sql_file_link) - Data cleaning, segmentation, calculated fields
- [Data Dictionary →](DATA_DICTIONARY.md) - Complete variable definitions and data structure

**Original Project Materials:**
- [2020 Winning Presentation (PDF) →](placeholder_presentation_link)
- [Original Survey Questionnaire →](placeholder_questionnaire_link)

</details>

---

## 2. Data Structure Overview

### Survey Design & Methodology

**Primary Data Collection:**
- **Platform:** WJX Survey Platform
- **Sample Size:** n = 273 Chinese consumers
- **Target Demographic:** Ages 21-35, Tier 1/2 cities (Shanghai, Beijing, Shenzhen, Guangzhou)
- **Distribution:** WeChat, social media, university networks
- **Timeline:** 3 weeks (October-November 2020)
- **Response Rate:** ~65% completion rate

### Data Architecture

**Survey Structure (88 variables across 5 dimensions):**

```
survey_data (273 rows × 88 columns)
│
├── Demographics (8 variables)
│   ├── Gender (binary: Male/Female)
│   ├── Age Group (8 categories: 18-20, 21-25, 26-30, 31-35, 36-40, 41-45, 45-50, 51+)
│   ├── City/Province (text)
│   ├── Income Level (5 ranges)
│   └── Education (categorical)
│
├── Product Preferences (22 variables)
│   ├── Alcohol Type Preferences (12 binary flags: fruit wine, rice wine, sparkling, cocktail, beer, etc.)
│   ├── Flavor Preferences (11 binary + 11 ranking: tropical, citrus, berry, etc.)
│   ├── Packaging Preference (3 binary: glass, can, plastic)
│   ├── ABV Preference (6 categories: 2-5%, 5-10%, 10-20%, 20-40%, 40%+, none)
│   └── Price Range (5 categories: 0-5, 5-10, 10-15, 15-20, 20+ RMB per 250ml)
│
├── Purchase Behavior (16 variables)
│   ├── Trial Status (binary: tried hard seltzer yes/no)
│   ├── Willingness to Try (binary)
│   ├── Purchase Frequency (4 categories: daily, weekly, monthly, yearly)
│   ├── Brand Awareness (4 binary: RIO, Horoyoi, Chill, other)
│   ├── Purchase Channels (6 binary: convenience, supermarket, fresh platform, e-commerce, brand site, other)
│   └── Consumption Occasions (multiple select)
│
├── Brand Perceptions (15 variables)
│   ├── Purchase Decision Factors (10 binary: price, taste, calories, ingredients, packaging, origin, quality, convenience, brand culture, brand awareness)
│   ├── Alcohol Base Concern (binary)
│   ├── Health Perception (binary)
│   └── Alcohol vs Non-alcohol Appeal (binary)
│
└── Marketing Influence (8 variables)
    └── Influence Channels (8 binary: celebrity endorsement, short video, rankings, KOL, media placement, livestream, friend referral, other)
```

**Data Quality Metrics:**
- Missing values: 3.32% (798 out of 24,024 total data points)
- Numeric encoding: Binary (0/1) and categorical (1-8 scales)
- Multi-select questions: Binary flags (respondent could select multiple options)

### Data Transformation for Analysis

**SQL Preprocessing Steps:**
1. **Column Renaming:** Translated Chinese column names to English for Tableau compatibility
2. **Value Decoding:** Converted numeric codes to descriptive labels (e.g., 1 → "Female", 2 → "21-25 years")
3. **Calculated Fields:** Created demographic segments (e.g., "Primary Target: Female 21-30"), age categories, channel flags
4. **Reshape Operations:** Pivoted multi-select flavor preferences from wide to long format for ranking analysis
5. **Aggregations:** Pre-calculated segment-level metrics for dashboard performance

**Entity Relationship:**
```
survey_clean (main table)
    ├── response_id (PK)
    ├── demographics
    ├── preferences
    ├── behaviors
    └── segment (calculated)

flavor_preferences (reshaped table)
    ├── response_id (FK)
    ├── flavor_category
    ├── preference_flag
    └── ranking_score
```

<details>
<summary><b>📋 View Complete Variable List (88 columns) →</b></summary>

**Demographics:**
1. Gender
2. Age Group
3-5. Province/City (multi-part)
6. Preferred ABV Range

**Alcohol Preferences (12 types):**
7-18. Fruit wine, Rice wine, Sparkling wine, Cocktail, Beer, Red wine, Yellow wine, Baijiu, Whiskey, Brandy, Gin, Vodka

**Hard Seltzer Trial:**
19. Have you tried hard seltzers?
20. Are you willing to try?
21. Purchase frequency

**Brand Awareness (4 brands):**
22-25. RIO, Horoyoi, Chill, Other

**Flavor Preferences (11 flavors × 2 sets):**
26-36. Preference flags (binary)
37-47. Ranking scores (numeric)

**Perceptions:**
48. Cares about alcohol base type
49. Perceives low-cal as healthy
50. Alcohol more attractive than non-alcohol

**Purchase Decision Factors (10 factors):**
51-60. Price, Taste, Calories, Ingredients, Packaging, Origin, Quality, Convenience, Brand Culture, Brand Awareness

**Price & Packaging:**
61. Acceptable price range
62-65. Packaging preferences (glass, can, plastic, other)
66-68. Package format (single, same-flavor pack, mixed-flavor pack)
69. Package color preference
70. Product design preference

**Purchase Channels (6 channels):**
71-76. Convenience, Supermarket, Fresh platform, E-commerce, Brand website, Other

**Marketing Influence (8 channels):**
77-84. Celebrity, Short video, Rankings, KOL, Media placement, Livestream, Friend referral, Other

</details>

---

## 3. Executive Summary

### Overview of Findings

This analysis of 273 Chinese consumer survey responses (ages 21-35, Tier 1/2 cities) reveals **five critical insights** for Barefoot Hard Seltzer's market entry strategy:

1. **High Market Readiness:** 87% trial rate among target demographic indicates strong category awareness and low customer education costs, positioning hard seltzers as a growth category rather than nascent market.

2. **Convenience-Led Distribution:** 85% prefer convenience store purchases vs 46% e-commerce, requiring strategic pivot from digital-first to offline-retail-led channel strategy with estimated 3x better unit economics (14.5:1 vs 4.6:1 LTV/CAC).

3. **Premium Positioning Validated:** 63% willing to pay ¥10-15+ per unit (premium tier) with average acceptable price of ¥12.7, supporting 15-20% price premium vs mass-market competitors like RIO.

4. **Customer Lifetime Value:** At 13.4 annual purchases × ¥12.7 average price = **¥169 annual spend per customer** (3-year LTV: ¥507), with primary target segment (female 21-30) representing 34% of sample.

5. **Limited Wine-Base Differentiation:** Gender shows minimal price premium differential (2.8%), suggesting wine-based positioning may not drive significant willingness-to-pay advantages—requires validation through blind taste testing.

**Business Impact:** Target segment of 27M consumers (34% of 80M urban millennials) × ¥169 annual spend = **¥4.6B total addressable market**, with Year 1 realistic capture (5% share) = **¥230M revenue opportunity**.

---

### Dashboard Previews

**Consumer Insights Dashboard:**

![Consumer Insights Dashboard Preview](placeholder_dashboard_screenshot_1.png)
*Interactive 4-tab dashboard: Demographics | Product Preferences | Purchase Behavior | Strategic Insights*

---

**Market Strategy Dashboard:**

![Market Strategy Dashboard Preview](placeholder_dashboard_screenshot_2.png)
*Strategic analysis: Competitive Landscape | Target Segments | Channel Economics | Business Metrics*

---

## 4. Insights Deep Dive

### 4.1 Market Readiness & Category Awareness

**Key Metric:** 87% hard seltzer trial rate (238/273 respondents)

**Findings:**
- **High category penetration:** 87.2% of respondents have already tried hard seltzers, indicating mature awareness despite "emerging market" classification
- **Purchase frequency distribution:** 38% buy monthly, 38% yearly, 10% weekly, suggesting behavioral segmentation opportunity
- **Average annual consumption:** 13.4 purchases per year, providing reliable baseline for LTV calculations
- **Strategic implication:** Market is ready for new entrants—focus on differentiation and share capture rather than consumer education

**Business Metric:**
- **Customer acquisition efficiency:** High trial rate reduces marketing spend on awareness (estimated -30% CAC vs nascent category)
- **Market entry timing:** 87% trial + low brand loyalty = ideal window for premium positioning before consolidation

![Trial Rate & Purchase Frequency Chart](placeholder_chart_trial_frequency.png)

---

### 4.2 Channel Strategy & Distribution Economics

**Key Metric:** 85% convenience store preference vs 46% e-commerce

**Findings:**
- **Convenience stores dominate:** 85.3% of respondents purchase through convenience stores, contradicting initial e-commerce-first hypothesis
- **Multi-channel behavior:** 76% also use supermarkets, 46% use e-commerce (Tmall, JD.com), indicating complementary rather than exclusive channel preferences
- **Fresh platforms underutilized:** Only 24% use specialty platforms (Hema Fresh), suggesting niche rather than mass channel
- **Brand website negligible:** 8% purchase via brand websites, deprioritizing direct-to-consumer investment

**Business Metric:**
- **Channel unit economics:** 
  - Convenience: 14.5:1 LTV/CAC ratio (estimated ¥35 CAC via placement fees)
  - Supermarket: 10:1 ratio (¥50 CAC)
  - E-commerce: 4.6:1 ratio (¥110 CAC via CPC/CPM)
- **Distribution reach:** 50,000 Tier 1 convenience stores × 500 daily traffic = 25M daily touchpoints vs 10M online impressions
- **Strategic revision:** Phase 1 = Convenience (not e-commerce), prioritizing 200M+ offline consumer touchpoints

![Channel Preference & ROI Comparison](placeholder_chart_channel_roi.png)

---

### 4.3 Premium Positioning & Price Sensitivity

**Key Metric:** ¥12.7 average acceptable price (63% willing to pay ¥10-15+)

**Findings:**
- **Price tolerance distribution:** 34% accept ¥5-10, 34% accept ¥10-15, 16% accept ¥15-20, 14% accept ¥20+
- **Premium segment validated:** 63.4% willing to pay ¥10+ (vs RIO baseline ~¥7-8), supporting 15-20% premium strategy
- **Gender price parity:** Minimal differential (female ¥12.8 vs male ¥12.5, only +2.8%), contradicting "female pays more" assumption
- **Quality-price correlation:** Premium pricing must be anchored in tangible benefits (glass packaging, superior ingredients) rather than demographic targeting alone

**Business Metric:**
- **Average transaction value:** ¥12.7 × 2 units per occasion = ¥25.4 basket size
- **Annual customer value:** 13.4 purchases × ¥12.7 = **¥169/year** (vs ¥100-120 mass-market baseline)
- **Contribution margin:** At 40% gross margin, premium pricing adds ¥27/customer/year incremental profit
- **LTV calculation:** ¥169 × 3 years = ¥507 customer lifetime value

![Price Sensitivity Distribution](placeholder_chart_price_distribution.png)

---

### 4.4 Target Segment Profiling

**Key Metric:** 34% primary target segment (Female 21-30, tried seltzers)

**Findings:**
- **Primary segment:** 92 respondents (33.7%) = Female, ages 21-30, active hard seltzer consumers
- **Age concentration:** 64% of sample aged 21-30 (vs original 25-32 framing), with 46% in 21-25 cohort alone
- **Gender distribution:** 61% female, 39% male (not 65/35 as initially reported), adjusting target sizing
- **Education & income:** 85% bachelor's degree+, 68% middle-to-upper-middle class (¥8K-20K/month), confirming urban professional profile
- **Behavioral clustering:** Primary segment shows 90%+ trial rate (vs 87% overall), 15% higher purchase frequency, glass bottle preference (78% vs 72%)

**Business Metric:**
- **Segment market size:** 80M urban millennials × 34% target = **27M addressable customers**
- **Segment annual value:** 27M × ¥169 = ¥4.6B total addressable market (TAM)
- **Realistic capture:** 5% Year 1 share = 1.35M customers = ¥230M revenue
- **Customer concentration:** Top 34% segment drives 40%+ of category value (higher frequency + premium pricing)

![Target Segment Demographics](placeholder_chart_segment_profile.png)

---

### 4.5 Product Preferences & Packaging

**Key Metric:** 72% glass bottle preference

**Findings:**
- **Packaging hierarchy:** Glass bottles 72% (197/273), metal cans 62%, plastic bottles 16% (multi-select allowed)
- **Premium perception:** Glass associates with quality, sustainability, Instagram-worthy aesthetics (stated reasons: "premium look", "better taste", "recyclable")
- **Flavor preferences:** Tropical (68%), citrus (54%), berry (48%) lead; local flavors (green tea, plum) at 35% show customization opportunity
- **ABV preference:** 5% ABV most acceptable (matches global hard seltzer standard), with 2-5% range acceptable to 60%+

**Business Metric:**
- **Packaging cost differential:** Glass bottles +¥0.50-1.00 per unit vs cans, but support 15%+ price premium (net positive margin)
- **Production implications:** Glass-first strategy requires different supply chain (bottling lines, logistics) vs can-focused competitors
- **Sustainability premium:** 72% preference signals opportunity for eco-positioning (recycled glass, carbon-neutral messaging)

![Packaging & Flavor Preferences](placeholder_chart_packaging_flavor.png)

---

### 4.6 Wine-Based Positioning Validation

**Key Metric:** Limited alcohol base differentiation (minimal stated preference)

**Findings:**
- **Alcohol base concern:** Survey did not explicitly test wine vs malt preference in blind format, limiting validation of core positioning hypothesis
- **Gender premium minimal:** Female segment shows only 2.8% higher price tolerance, suggesting wine-based "sophistication" messaging may not drive incremental willingness-to-pay
- **Category blind spots:** Consumers may not differentiate alcohol bases in flavored/carbonated formats (requires blind taste testing validation)
- **Competitive intelligence:** High Noon (vodka-based, launched 2019) outperformed wine-based seltzers in North America by 2023, suggesting alcohol base is not primary purchase driver

**Strategic Implication:**
- **Positioning risk:** Wine-based differentiation is unproven assumption—recommend pilot testing with control groups (wine-labeled vs unlabeled)
- **Alternative value props:** Focus on tangible benefits (glass packaging, natural ingredients, lower sugar) rather than alcohol base as core message
- **Competitive moat:** If wine-base creates no consumer preference, Gallo's competitive advantage lies in distribution strength and brand equity, not product composition

---

## 5. Strategic Recommendations

### Phase 1: Market Entry Strategy (Months 1-6)

**Channel-First Launch:**
- ✅ **Prioritize convenience store distribution** over e-commerce given 85% channel preference and 3x superior LTV/CAC economics (14.5:1 vs 4.6:1)
- ✅ **Target 5,000 convenience stores in Tier 1 cities** (Shanghai, Beijing, Shenzhen) = 2.5M daily consumer touchpoints
- ✅ **Pilot test 500 stores in Shanghai** (Month 1-2) to validate placement fees (¥5K-10K/store), conversion rates, and velocity before scaling
- **Data-backed rationale:** 233/273 respondents (85%) prefer convenience channel; estimated ¥35 CAC vs ¥110 e-commerce CAC

**Premium Glass-First Positioning:**
- ✅ **Lead with 330ml glass bottles at ¥15-18 per unit** (midpoint of ¥10-15 acceptable range for 63% of respondents)
- ✅ **Introduce 355ml cans as secondary SKU** (¥12-14) for portability-focused occasions (outdoor, beach) targeting 62% who also prefer cans
- ✅ **Avoid plastic bottles** (only 16% preference, poor premium perception)
- **Data-backed rationale:** 72% glass preference supports premium positioning; ¥12.7 average acceptable price enables ¥15-18 pricing with 40% gross margin

**Target Segment Focus:**
- ✅ **Primary: Urban females 21-30 with hard seltzer trial experience** (34% of market = 27M consumers)
- ✅ **Secondary: Urban males 21-35 in Tier 1 cities** (expanding addressable market to 45M+)
- ✅ **Avoid age targeting above 35** (drop in trial rate and purchase frequency per survey data)
- **Data-backed rationale:** 92/273 primary segment respondents show 90%+ trial rate, 15% higher purchase frequency, ¥169 annual value

---

### Phase 2: Product & Messaging Optimization (Months 7-12)

**Flavor Portfolio Strategy:**
- ✅ **Launch with 4 core SKUs:** Mango/Pineapple (tropical, 68% preference), Grapefruit (citrus, 54%), Strawberry/Raspberry (berry, 48%), Peach (42%)
- ✅ **Test local flavor innovation:** Green tea or Plum (35% interest) as limited edition after core SKUs establish foothold
- ✅ **Standardize 5% ABV** across all SKUs to match global category norms and 60%+ survey acceptance
- **Data-backed rationale:** Focus on top 4 flavors = 68% coverage of preferences; local flavors as differentiation after market entry

**Positioning Message Refinement:**
- ⚠️ **Validate wine-based positioning through blind taste tests** before heavy investment in "wine-base superiority" messaging
- ✅ **Lead with tangible benefits:** "Natural ingredients, low sugar, premium glass packaging" rather than abstract "wine heritage"
- ✅ **Avoid gender-specific targeting** (minimal 2.8% female price premium suggests limited ROI on "female-focused" campaigns)
- **Data-backed rationale:** Alcohol base preference is unproven in survey; gender parity in pricing contradicts "women pay more" assumption

**Marketing Channel Mix:**
- ✅ **KOL partnerships (lifestyle/fitness influencers):** 233 respondents influenced by friend referrals, 126 by short video, 100+ by KOLs
- ✅ **In-store sampling at convenience stores:** Drive trial conversion among 87% who've tried category but not Barefoot
- ✅ **WeChat mini-program for loyalty:** 46% use e-commerce (complementary to offline), enabling repeat purchase tracking
- **Data-backed rationale:** Multi-channel influence (friends + digital + in-store) maximizes reach within ¥35-50 CAC target

---

### Phase 3: Geographic & Channel Expansion (Year 2+)

**Market Expansion Sequencing:**
- ✅ **Year 1: Shanghai, Beijing, Shenzhen** (Tier 1 cities, 30M+ urban millennials)
- ✅ **Year 2: Guangzhou, Hangzhou, Chengdu** (Tier 2 cities, 50M+ expansion potential)
- ✅ **Avoid rural markets** until Tier 1/2 penetration reaches 10%+ (survey sample 83% Tier 1, limited rural validation)
- **Data-backed rationale:** 83% of respondents from Tier 1 cities; focus resources on validated high-density markets first

**Channel Diversification:**
- ✅ **Add supermarkets (Month 6-9):** 76% penetration in survey, 10:1 LTV/CAC ratio
- ✅ **E-commerce secondary (Month 9-12):** 46% penetration, supports omnichannel discovery and rural reach
- ✅ **Specialty fresh platforms (Year 2):** 24% penetration, premium niche for brand building
- **Data-backed rationale:** Sequence channels by penetration rate and unit economics to maximize ROI

**Financial Targets:**
- ✅ **Year 1 Revenue:** 1.35M customers (5% market capture) × ¥169 annual spend = ¥230M
- ✅ **Year 1 Gross Margin:** 40% margin on premium pricing = ¥92M gross profit
- ✅ **Break-even:** Month 8-10 assuming ¥30M fixed costs (production, distribution setup)
- ✅ **Year 3 Target:** 15% market share = 4M customers = ¥680M revenue (3x Year 1)
- **Data-backed rationale:** LTV/CAC ratios (4.6-14.5:1) support profitability; 13.4 annual purchase frequency enables predictable revenue modeling

---

### Risk Mitigation & Validation

**Critical Assumptions Requiring Validation:**
- ⚠️ **Wine-based positioning advantage:** Conduct blind taste tests (wine-labeled vs unlabeled vs vodka-based) with 200+ consumers before committing to "wine-base superiority" messaging
- ⚠️ **Convenience store conversion rates:** Pilot 500 stores to measure actual sell-through (target: 20 units/store/week) vs assumptions
- ⚠️ **Price elasticity:** Test ¥15 vs ¥18 pricing in controlled markets to validate 63% premium acceptance translates to purchase behavior
- ⚠️ **E-commerce vs offline mix:** Track omnichannel customer behavior to validate 85/46 split holds under real purchase conditions

**Contingency Plans:**
- If wine-base shows no consumer preference → pivot to "natural ingredients + premium packaging" as core message
- If convenience store velocity underperforms → accelerate supermarket and e-commerce (lower CAC risk)
- If ¥15-18 pricing hits resistance → introduce ¥12-14 can format earlier to capture mass premium segment (63% ¥10-15 acceptance)

---

## Appendix: Analytical Framework Details

<details>
<summary><b>📊 STEEPG Analysis →</b></summary>

**Social:** Health consciousness, Western lifestyle trends, female drinking culture normalization  
**Technology:** E-commerce dominance (Tmall, JD.com), mobile payments (WeChat Pay, Alipay), KOL marketing via Xiaohongshu  
**Economics:** Rising middle class (¥8K-20K/month income), discretionary spending growth  
**Environment:** Sustainability concerns (glass recycling, carbon footprint), premium eco-packaging demand  
**Policy:** Alcohol regulations (age restrictions, advertising limits), import duties (15-20% for foreign alcohol)  
**Global:** Hard seltzer trends from US/UK, international brand expansion (White Claw, Truly testing China)

</details>

<details>
<summary><b>⚔️ SWOT Analysis →</b></summary>

**Strengths:**
- Gallo brand equity (90+ years, premium wine heritage)
- Wine-based differentiation (only wine-based seltzer in market)
- International credibility and production expertise
- Distribution capabilities and supply chain strength

**Weaknesses:**
- Limited brand awareness in China (Barefoot known for wine, not seltzers)
- No existing convenience store distribution network
- Higher import costs vs local competitors (15-20% duties)
- Cultural unfamiliarity with "seltzer" category (education required)

**Opportunities:**
- First-mover advantage in premium wine-based segment
- E-commerce rapid launch capability (low barriers to entry)
- Health & wellness consumer trend (low-calorie, natural ingredients)
- Female target market underserved by mass-market brands

**Threats:**
- Local competitors with lower costs (RIO at ¥7-8, 30% market share)
- Cultural preference for sweeter drinks vs dry seltzers
- Regulatory complexity (import licenses, advertising restrictions)
- Rapid market saturation risk if White Claw/Truly enter China

</details>

<details>
<summary><b>🏆 Competitive Benchmarking →</b></summary>

| Brand | Alcohol Base | Market Position | Price Point | Target Demographic |
|-------|--------------|----------------|-------------|--------------------|
| **White Claw** | Malt | US market leader (60%) | Premium ($8-10/6-pack) | Young professionals, 21-35 |
| **Truly** | Malt | US #2 brand (25%) | Mid-premium ($7-9/6-pack) | Millennials, health-conscious |
| **RIO** | Malt | China local leader (30%) | Mass market (¥7-8/unit) | Young females, 18-28 |
| **Horoyoi** | Shochu (Japan) | China import, premium | Premium (¥12-15/unit) | Urban sophisticates, 25-40 |
| **Barefoot** | **Wine** | Proposed entrant | **Premium (¥15-18/unit)** | Health-conscious females, 21-35 |

**Competitive Advantage:** Wine-based differentiation, glass packaging, international brand equity  
**Competitive Risk:** Unproven consumer preference for wine-base vs malt/vodka alternatives

</details>

---

## Acknowledgments

**Original 2020 Project Team:**
- Hongling Yu, Xin Yin, Jinru Yao, Yitong Gao
- Wake Forest University MSM Program

**2025 Portfolio:**
- Independent project (solo), using original 2020 survey data (anonymized)
- SQL data preparation, Tableau visualization, GitHub documentation

**Special Thanks:**
- E. & J. Gallo Winery for the case challenge opportunity
- Wake Forest University for the competition platform and mentorship
- 273 Chinese consumers who participated in the survey
- MSM program faculty for research methodology guidance

---

**Project Timeline:**
- Original Project: October-December 2020 (8 weeks)
- Portfolio Rebuild: November 2025 (2 weeks)

**Last Updated:** November 14, 2025  
**Author:** Niko Wang  
**Contact:** wzzclot@gmail.com | [LinkedIn](https://www.linkedin.com/in/zizhuo-wang-niko)