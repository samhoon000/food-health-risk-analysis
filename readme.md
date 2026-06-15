# 🍎 Food Nutrition & Health Risk Analytics System

> An end-to-end Data Analytics project focused on analyzing food nutrition data, identifying health risks, and generating actionable insights using Python, SQL, MySQL, and Power BI.

---

## ✅ Project Status

**Current Stage:** Completed

This project successfully follows a complete end-to-end analytics workflow, transforming raw nutritional data into actionable health insights through feature engineering, SQL analysis, and interactive Power BI dashboards.

---

# 🏗️ Project Workflow

<p align="center">
  <img src="Workflow/Food-Health-Risk-Workflow.png" alt="Food Health Risk Workflow" width="900">
</p>

---

## 📊 Dashboard Preview

<p align="center">
  <img src="dashboard/dashboard-overview.png" alt="Food Health Risk Analytics Dashboard" width="1000">
</p>

The Power BI dashboard provides an interactive view of food health risk metrics, nutrition density, risk categorization, and healthy versus high-risk food analysis.

---

## 🎯 Project Objective

The goal of this project is to:

* Analyze food nutritional composition
* Create custom health-related metrics
* Identify healthy and high-risk food patterns
* Perform SQL-based analytical exploration
* Build interactive Power BI dashboards
* Generate actionable nutrition insights

---

## 📂 Project Structure

```text
Food/
│
├── dashboard/
│   ├── dashboard-overview.png
│   └── food-health.pbix
│
├── dataset/
│
├── notebooks/
│   ├── data-understanding-and-cleaning.ipynb
│   ├── feature-engineering.ipynb
│   └── Food_Nutrition.csv
│
├── sql/
│   └── nutrition_analysis.sql
│
├── report/
│   └── Food_Nutrition_Health_Risk_Report.pdf
│
├── presentation/
│   └── Food_Nutrition_Health_Risk_Presentation.pptx
│
├── Workflow/
│   └── Food-Health-Risk-Workflow.png
│
├── .gitignore
└── README.md
```

---

## 📊 Dataset

The dataset contains nutritional information for more than 1,000 food items.

### Available Features

| Column             | Category                   |
| ------------------ | -------------------------- |
| food_item          | Identifier                 |
| energy_kcal        | Context Dependent          |
| carbs              | Context Dependent          |
| protein_g          | Positive                   |
| fat_g              | Negative When High         |
| free_sugar_g       | Negative When High         |
| fibre_g            | Positive                   |
| cholesterol_mg     | Negative When High         |
| calcium_mg         | Positive                   |
| nutrition_density  | Engineered Positive Metric |
| health_risk_score  | Engineered Negative Metric |
| is_spice_condiment | Analytical Flag            |

---

## ⚙️ Feature Engineering Implemented

### Nutrition Density

A custom metric designed to evaluate nutritional quality using:

* Protein
* Fibre
* Calcium
* Sugar
* Fat
* Calories
* Cholesterol

Higher values indicate better nutritional quality.

---

### Health Risk Score

A custom metric designed to estimate potential health risk using:

* Free Sugar
* Fat
* Calories
* Cholesterol
* Protein
* Fibre

Higher values indicate higher health risk.

---

### Additional Features

#### Spice / Condiment Classification

A binary flag:

```text
is_spice_condiment
```

was created to prevent spices and seasoning blends from distorting nutritional rankings due to per-100g measurements.

---

## 🗄️ SQL Analytics Completed

A total of 14 business-focused SQL analyses were performed, including:

* Most Nutrient-Dense Foods
* Highest Health Risk Foods
* High Fibre & Low Sugar Foods
* High Protein & Low Risk Foods
* Health Risk Distribution Analysis
* Overall Healthiest Foods Ranking
* Protein-to-Calorie Analysis
* High Fat & High Sugar Foods
* Calcium-Rich Low-Risk Foods
* Above-Average Healthy Foods
* And additional nutrition-focused analyses

All SQL queries are available in:

```text
sql/nutrition_analysis.sql
```

---

## 📈 Power BI Dashboard Features

The completed dashboard includes:

### KPI Cards

* Total Foods
* Average Risk Score
* Low Risk Percentage
* Average Nutrition Density

### Interactive Visualizations

* Risk Category Distribution
* Health Risk Score vs Nutrition Density Analysis
* Top 10 Healthiest Foods
* Top 10 Highest Risk Foods

### Interactive Filters

* Risk Category
* Food Item
* Spice & Condiment Classification
* Energy (kcal) Range

---

## 📊 Key Insights Generated

* Maa Chaane Ki Dal ranked as the healthiest food overall based on Nutrition Density and Health Risk Score.
* Cracked Wheat & Green Gram Dal Premix consistently appeared among the top-performing foods.
* Foods rich in pulses, legumes, and whole grains generally achieved the highest nutrition density scores.
* Butter Icing, Glace Icing, and Royal Icing were identified as the highest-risk foods due to their high sugar and fat content.
* 662 foods were classified as Low Risk, 346 as Medium Risk, and only 12 as High Risk.
* High-fibre and protein-rich foods consistently demonstrated better nutritional profiles and lower health risks.

---

## ✅ Progress Tracker

### Phase 1: Data Understanding

* [x] Dataset Exploration
* [x] Column Analysis
* [x] Statistical Summary

### Phase 2: Data Cleaning

* [x] Missing Value Analysis
* [x] Duplicate Detection
* [x] Data Standardization

### Phase 3: Feature Engineering

* [x] Nutrition Density Score
* [x] Health Risk Score
* [x] Risk Categorization
* [x] Spice/Condiment Classification

### Phase 4: Database Integration

* [x] MySQL Database Setup
* [x] Data Import
* [x] SQL Query Development

### Phase 5: SQL Analytics

* [x] Business Questions Analysis
* [x] Health Risk Exploration
* [x] Nutritional Insights Generation
* [x] Healthy Food Ranking

### Phase 6: Exploratory Data Analysis

* [x] Nutrient Distribution Analysis
* [x] Correlation Analysis
* [x] Outlier Detection
* [x] Statistical Insights

### Phase 7: Power BI Dashboard

* [x] KPI Dashboard
* [x] Health Risk Dashboard
* [x] Nutrition Dashboard
* [x] Interactive Filters
* [x] Risk Category Analysis
* [x] Top Healthy Foods Analysis
* [x] Top High-Risk Foods Analysis

### Phase 8: Insights & Reporting

* [x] Dashboard Insights
* [x] Health Recommendations
* [x] Final Report
* [x] Project Documentation

---

## 📄 Project Deliverables

The project includes:

* Processed Nutrition Dataset
* Feature Engineering Pipeline
* MySQL Database Integration
* SQL Analytics Queries
* Interactive Power BI Dashboard
* Project Report
* Project Presentation
* GitHub Documentation

This repository demonstrates an end-to-end Data Analytics workflow from data preparation to insight generation and dashboard reporting.

---

## 🛠️ Tech Stack

### Data Processing

* Python
* Pandas
* NumPy

### Database

* MySQL
* SQL

### Visualization

* Matplotlib
* Seaborn
* Power BI

### Development

* Jupyter Notebook
* Git
* GitHub

---

## 👨‍💻 Author

**Abdul Samhoon**

Aspiring Data Analyst | Python | SQL | Power BI

Building data-driven solutions through analytics, visualization, and business intelligence.

---

⭐ Completed end-to-end Data Analytics portfolio project showcasing Python, SQL, MySQL, and Power BI skills.
