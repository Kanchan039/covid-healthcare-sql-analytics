# COVID-19 Healthcare Analytics using SQL

## 📌 Overview
This project focuses on analyzing state-wise COVID-19 data using SQL.
It applies time-series analysis techniques to study the spread and impact
of COVID-19 through metrics such as daily growth rates, mortality rates,
and moving averages.

The project demonstrates practical SQL-based analytics commonly used
in healthcare and public data analysis.

---

## 🎯 Objectives
- Compute daily new COVID-19 cases
- Analyze daily growth rates over time
- Calculate mortality rates at the state level
- Apply moving averages to smooth daily trends
- Identify peak infection days

---

## 🛠 SQL Concepts Used
- Common Table Expressions (CTEs)
- Window Functions (`LAG`, `AVG`, `RANK`)
- Date-based time-series analysis
- Aggregation and grouping
- Indexing for performance optimization

---

## 📂 Project Structure
covid-healthcare-sql-analytics/
│
├── schema/
│ └── create_tables.sql
│
├── queries/
│ ├── 01_daily_cases.sql
│ ├── 02_growth_rate.sql
│ ├── 03_mortality_rate.sql
│ ├── 04_moving_average.sql
│ └── 05_peak_cases.sql
│
├── data/
│ └── covid_data_sample.csv
│
├── insights/
│ └── key_findings.md
│
└── README.md

yaml
Copy code

---

## 📊 Dataset Description
The dataset contains daily, state-wise COVID-19 statistics with the following fields:
- `report_date` – Date of observation
- `state` – State name
- `confirmed` – Total confirmed cases
- `deaths` – Total deaths
- `recovered` – Total recovered cases

---

## 📎 Dataset Source
This project is designed to work with publicly available COVID-19 datasets, including:

- Johns Hopkins University CSSE COVID-19 Dataset  
- COVID-19 India (covid19india.org) historical data  

Due to large file sizes, the complete datasets are not included.
A small sample dataset is provided for demonstration purposes.
The SQL schema and queries are compatible with the full datasets.

---

## 🚀 How to Run
1. Create the table using `schema/create_tables.sql`
2. Load the sample CSV or any compatible COVID-19 dataset into the database
3. Execute the SQL files in the `queries/` directory

---

## 📈 Key Outcomes
- Daily new cases and growth rates computed using window functions
- Mortality rates analyzed across states
- Moving averages applied to identify long-term trends
- Peak infection days identified through ranking operations

---

## ⚡ Performance Considerations
For large datasets, indexing can be applied to improve query performance:

```sql
CREATE INDEX idx_state_date ON covid_data(state, report_date);
