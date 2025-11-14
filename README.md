# 🍹 Barefoot Hard Seltzer: 2020→2025 Evolution Analysis

**From Award-Winning Student Project to Professional Data Portfolio**

[![Last Updated](https://img.shields.io/badge/Last%20Updated-November%202025-blue)]()
[![Status](https://img.shields.io/badge/Status-Portfolio%20Ready-success)]()
[![Tools](https://img.shields.io/badge/Tools-Python%20|%20SQL%20|%20Tableau-orange)]()

---

## 🔗 Quick Navigation

**📖 Documentation:**
- [**About This Project**](ABOUT_PROJECT.md) - Full backstory, competition details, and what I learned
- [**Data Dictionary**](DATA_DICTIONARY.md) - All data sources and variable definitions
- [**Methodology**](METHODOLOGY.md) - Research design and validation methods

**📊 Analyses:**
- [**Prediction Validation**](analysis/prediction_validation.md) - Testing 2020 predictions against 2025 reality
- [**Cross-Market Insights**](analysis/cross_market_insights.md) - North America vs China comparison

**📈 Visualizations:**
- [**Tableau Dashboard**](visualizations/cross_market_dashboard.twbx) - Interactive cross-market analysis

---

## 👋 About This Project

> **📖 Want the complete backstory?** This README gives you the overview. For the full origin story, competition details, and what I learned, see **[ABOUT_PROJECT.md →](ABOUT_PROJECT.md)**

In December 2020, my team at Wake Forest University won **first place** in the GCP competition for developing a market entry strategy for E. & J. Gallo Winery's Barefoot Hard Seltzer in the Chinese market. We surveyed 273 consumers and made bold predictions about the future of hard seltzers.

**Five years later, I revisited this analysis** to:
- ✅ Validate our 2020 predictions with 2025 market data
- ✅ Demonstrate technical growth (Excel → Python/SQL/Tableau)
- ✅ Practice intellectual honesty (admitting what we got wrong)
- ✅ Build cross-market insights (North America vs China)

**Key Finding:** Our quantitative predictions had **15% MAPE accuracy**, but our strategic assumption about wine-based positioning was fundamentally flawed. This taught me that even solid data can lead to wrong conclusions if core assumptions go untested.

**Why This Matters for Vancouver:** This analysis focuses on hard seltzers, a category where **White Claw** (headquartered right here in Vancouver!) holds 50-52% market share in North America.

---

## 📊 Project Highlights

### What Makes This Portfolio Unique

1. **Prediction Validation** - Most portfolios analyze historical data. This one tests 5-year-old predictions against reality.
2. **Intellectual Honesty** - I showcase both successes and failures, demonstrating analytical maturity.
3. **Cross-Market Analysis** - Compares two distinct markets (North America vs China) with different dynamics.
4. **Technical Evolution** - Rebuilds 2020 Excel analysis using professional tools (Python, SQL, Tableau).
5. **Local Relevance** - Analyzes Vancouver's White Claw market leadership.

### Key Results Summary

| Metric | 2020 Prediction | 2025 Reality | Accuracy |
|--------|----------------|--------------|----------|
| **North America Market Size** | $4-5B baseline | ~$12B | ✅ 3x growth (directionally correct) |
| **China Market Size** | $5B by 2025 | ~$2B | ❌ 150% overestimate |
| **White Claw Market Share** | ~60% | 50-52% | ✅ 15% error |
| **Target Demographics** | Female 21-35 | 60-65% female | ✅ Correct |
| **Wine-Based Positioning** | "Key differentiator" | Consumers don't care | ❌ Wrong assumption |

**Overall Quantitative Accuracy: ~15% MAPE**  
**Directional Accuracy: ~70% of predictions**

---

## 🎯 Business Question

**Original 2020 Question:**  
*"How should E. & J. Gallo position Barefoot Hard Seltzer to enter the Chinese market successfully, given the spiked seltzer trend among Millennials and Gen Z?"*

**2025 Evolution Question:**  
*"How accurate were our 2020 predictions? What strategic insights did we miss, and what does this tell us about cross-market consumer behavior?"*

---

## 📁 Repository Structure

```
barefoot-seltzer-evolution-2020-2025/
│
├── README.md                          # This file - project overview
├── ABOUT_PROJECT.md                   # Detailed project backstory
├── DATA_DICTIONARY.md                 # Data sources and variable definitions
├── METHODOLOGY.md                     # Research methods (2020 + 2025)
│
├── data/                              # Market data and datasets
│   ├── market_data_2020_2025.csv     # Cross-market comparison data
│   ├── consumer_insights.csv          # Demographic and preference data
│   └── README.md                      # Data sources documentation
│
├── analysis/                          # Written analyses
│   ├── prediction_validation.md       # P1: 2020 vs 2025 prediction accuracy
│   └── cross_market_insights.md       # P2: North America vs China comparison
│
├── visualizations/                    # Charts and dashboards
│   ├── cross_market_dashboard.twbx    # Tableau interactive dashboard
│   ├── prediction_accuracy.png        # 2020 predictions vs 2025 reality
│   └── market_evolution.png           # Market size growth chart
│
├── scripts/                           # SQL and Python code
│   ├── data_cleaning.py               # Data preparation
│   └── market_analysis.sql            # Cross-market queries
│
└── assets/                            # Supporting materials
    └── images/                        # Screenshots and diagrams
```

---

## 🔍 New Analyses (2025)

### 📈 Analysis 1: Prediction Validation

**[Read Full Analysis →](analysis/prediction_validation.md)**

Systematically compared our 2020 predictions against 2025 market data using MAPE (Mean Absolute Percentage Error) methodology.

**Key Insights:**
- **What We Got Right:** Market growth trajectory, target demographics, e-commerce importance in China
- **What We Missed:** Overestimated China market size by 150%, misunderstood consumer indifference to alcohol base
- **Critical Learning:** Wine-based "advantage" was an untested assumption that failed in reality

**Statistical Accuracy:** 15% MAPE on quantifiable metrics

---

### 🌏 Analysis 2: Cross-Market Comparison

**[View Interactive Dashboard →](visualizations/cross_market_dashboard.twbx)** | **[Read Insights →](analysis/cross_market_insights.md)**

Built interactive Tableau dashboard comparing North American and Chinese hard seltzer markets across multiple dimensions.

**Market Dynamics:**

| Dimension | North America (2025) | China (2025) |
|-----------|---------------------|--------------|
| **Market Size** | $12B | $2B |
| **CAGR (2020-2025)** | 21.6% | 20.1% |
| **Market Leader** | White Claw (50-52%) | RIO (30%+) |
| **Primary Channel** | Retail (60-70%) | E-commerce (40%+) |
| **Consumer Gender** | 60% female | 65% female |
| **Price Sensitivity** | Medium | High |

**Strategic Insight:** China's 2025 market mirrors North America's 2018 stage, presenting a **5-year time arbitrage opportunity** to apply proven strategies.

---

## 🛠️ Technical Skills Demonstrated

### 2020 Project Tools
- Microsoft Excel (data analysis, pivot tables)
- PowerPoint (presentation design)
- Qualtrics (survey platform - 273 responses)
- Descriptive statistics

### 2025 Portfolio Upgrade
- **Python:** pandas (data manipulation), matplotlib/seaborn (visualization)
- **SQL:** Cross-market queries, data aggregation
- **Tableau:** Interactive multi-tab dashboard with filters
- **Statistical Methods:** MAPE calculation, accuracy validation
- **Data Sources Integration:** Synthesized from Grand View Research, Statista, IWSR, Precedence Research
- **GitHub:** Version control, professional documentation

**Evolution Demonstrated:** Excel → Python/SQL → Tableau (5-year technical growth)

---

## 💡 Key Learnings

### Analytical Lessons

1. **Test Assumptions Early**  
   Our wine-based positioning sounded logical but was never validated with consumer behavior data. Blind taste tests show consumers can't distinguish alcohol bases.

2. **Stated Preferences ≠ Behavior**  
   72% of our survey respondents said they preferred glass bottles, yet cans dominate actual sales due to convenience.

3. **External Validation Matters**  
   We should have looked at global wine-based seltzer performance (e.g., Barefoot struggled while vodka-based High Noon became #1).

4. **Market Timing Is Critical**  
   China's hard seltzer market is 5-7 years behind North America's maturity curve, creating opportunities for strategic first-mover advantages.

### What This Experience Taught Me

As an analyst, being wrong isn't failure—it's data. This project taught me:
- The importance of intellectual humility
- How to validate predictions systematically
- That growth mindset matters as much as technical skills
- The value of revisiting past work with fresh perspective

---

## 📌 Business Implications

### For E. & J. Gallo (Hypothetical 2025 Strategy)

**Barefoot Hard Seltzer Performance:**
- North America: <2% market share, struggled against competitors
- China: Limited presence, overshadowed by local brands

**Gallo's Winning Product:**
- **High Noon** (vodka-based, launched 2019): Now 10-12% NA market share, #1 spirit-based seltzer
- **Why it won:** Aggressive Gen Z targeting, 4.5% + 8% ABV options, "real fruit juice" positioning

**Lesson:** Consumer don't pay premium for "wine-based." They want convenience, taste, and value.

---

## 📞 Connect With Me

**Niko Wang**  
📧 Email: wzzclot@gmail.com  
🔗 LinkedIn: [linkedin.com/in/zizhuo-wang-niko](https://www.linkedin.com/in/zizhuo-wang-niko)  
📍 Location: Vancouver, BC, Canada  
💼 Status: Actively seeking Data Analyst roles

**About Me:**  
Data analyst passionate about consumer behavior analytics and cross-market strategy. Skilled in Python, SQL, and Tableau with a foundation in statistical analysis. Experienced in survey design, market research, and translating data insights into actionable business strategies. Previous experience in award-winning data analytics projects with focus on beverage industry trends.

---

## 📚 Additional Resources

### 📖 Project Documentation
- **[ABOUT_PROJECT.md](ABOUT_PROJECT.md)** - Complete origin story, competition context, and why I revisited this project in 2025
- **[DATA_DICTIONARY.md](DATA_DICTIONARY.md)** - Complete data sources, variables, and methodology
- **[METHODOLOGY.md](METHODOLOGY.md)** - Research design for both 2020 survey and 2025 validation

### 📊 Analyses
- **[Prediction Validation Analysis](analysis/prediction_validation.md)** - How accurate were our 2020 predictions?
- **[Cross-Market Insights](analysis/cross_market_insights.md)** - North America vs China comparison and strategic recommendations

### 🎨 Visualizations
- **[Cross-Market Dashboard](visualizations/cross_market_dashboard.twbx)** - Interactive Tableau dashboard (available after Day 5)
- **[Charts & Visuals](visualizations/)** - All supporting charts and graphics

### 📅 Original 2020 Project
- **Team:** Wake Forest University MSM Class of 2020, Group 25
- **Competition:** E. & J. Gallo Case Competition (December 2020)
- **Result:** First Place 🏆
- **Survey:** 273 responses, Chinese consumers aged 21-35

### 📈 2025 Data Sources
- Grand View Research (market sizing)
- Precedence Research (growth projections)
- Statista (brand share data)
- IWSR (alcohol industry reports)
- Company investor presentations (High Noon, Mark Anthony Brands)

---

## 🎓 Project Context

**University:** Wake Forest University School of Business  
**Competition:** MSM Graduate Consulting Project (GCP) 
**Original Completion:** December 2020  
**Portfolio Update:** November 2025  


---

## 📅 Version History

- **v1.0 (November 2025):** Initial portfolio release with prediction validation and cross-market dashboard
- **v0.9 (December 2020):** Original award-winning project (Excel/PowerPoint)

---

## 🙏 Acknowledgments

- **Wake Forest University** - Original project opportunity and mentorship
- **Team 25 Members** (2020) - Collaborative research and competition success
- **E. & J. Gallo Winery** - Real-world business case challenge
- **Industry Researchers** - Market data from Grand View Research, Statista, IWSR, Precedence Research

---

## 📄 License

This portfolio project is for educational and demonstration purposes. Market data compiled from publicly available industry research sources. Original 2020 survey data anonymized and aggregated.

---

**⭐ If you found this portfolio interesting or helpful, feel free to reach out or connect on LinkedIn!**

*Last Updated: November 12, 2025*