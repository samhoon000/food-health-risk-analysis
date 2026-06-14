# 🍎 Food Nutrition & Health Risk Analytics System

> An end-to-end Data Analytics project focused on analyzing food nutrition data, identifying health risks, and generating actionable insights using Python, SQL, MySQL, and Power BI.

---

## 🚧 Project Status

**Current Stage:** SQL Analytics Completed | Preparing for EDA & Power BI Dashboard Development

This project follows a complete analytics workflow from raw nutritional data to health intelligence and interactive business dashboards.

---

# 🏗️ Project Workflow

<p align="center">
  <img src="Workflow/Food-Health-Risk-Workflow.png" alt="Food Health Risk Workflow" width="900">
</p>

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
├── dataset/
│
├── notebooks/
│   ├── data-understanding-and-cleaning.ipynb
│   └── feature-engineering.ipynb
│
├── sql/
│   └── nutrition_analysis.sql
│
├── Workflow/
│   └── Food-Health-Risk-Workflow.png
│
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

A total of 15 business-focused SQL analyses were performed, including:

* Highest Protein Foods
* Most Nutrient Dense Foods
* Highest Health Risk Foods
* Highest Sugar Foods
* High Fat & High Sugar Foods
* High Nutrition, Low Risk Foods
* Calcium-Rich Low-Risk Foods
* High Fibre, Low Sugar Foods
* High Protein, Low Risk Foods
* Lowest Health Risk Foods
* Best Protein-to-Calorie Ratio Foods
* Health Risk Distribution Analysis
* Above-Average Healthy Foods
* Overall Healthiest Foods Ranking

All SQL queries are available in:

```text
sql/nutrition_analysis.sql
```

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

* [ ] Nutrient Distribution Analysis
* [ ] Correlation Analysis
* [ ] Outlier Detection
* [ ] Statistical Insights

### Phase 7: Power BI Dashboard

* [ ] KPI Dashboard
* [ ] Health Risk Dashboard
* [ ] Nutrition Dashboard
* [ ] Interactive Filters

### Phase 8: Insights & Recommendations

* [ ] Dashboard Insights
* [ ] Health Recommendations
* [ ] Final Report

---

## 🔜 Upcoming Work

1. Exploratory Data Analysis (EDA)
2. Correlation Analysis
3. Power BI Dashboard Development
4. Health Risk Visualization
5. Nutrition Intelligence Dashboard
6. Final Recommendations & Reporting

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

## 📅 Development Roadmap

| Stage                      | Status         |
| -------------------------- | -------------- |
| Data Understanding         | ✅ Completed    |
| Data Cleaning              | ✅ Completed    |
| Feature Engineering        | ✅ Completed    |
| MySQL Integration          | ✅ Completed    |
| SQL Analytics              | ✅ Completed    |
| Exploratory Data Analysis  | 🔄 In Progress |
| Power BI Dashboard         | ⏳ Planned      |
| Final Insights & Reporting | ⏳ Planned      |

---

## 👨‍💻 Author

**Samhoon**

Aspiring Data Analyst | Python | SQL | Power BI

Building an end-to-end analytics project focused on nutrition intelligence, health risk assessment, and data-driven decision making.

---

⭐ Project currently under active development.
