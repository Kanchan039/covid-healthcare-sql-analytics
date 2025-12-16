# COVID-19 Healthcare Analytics using SQL

## 📌 Overview
This project analyzes state-wise COVID-19 data to extract healthcare insights using advanced SQL techniques such as CTEs and window functions.

## 🎯 Objectives
- Calculate daily new cases and growth rates
- Analyze mortality rates across states
- Compute moving averages for trend smoothing
- Identify peak infection periods

## 🛠 SQL Techniques Used
- Common Table Expressions (CTEs)
- Window Functions (LAG, RANK, AVG)
- Date-based time series analysis
- Conditional aggregation

## 📂 Project Structure
- `schema/` – database schema
- `queries/` – analytical SQL queries
- `data/` – sample datasets
- `insights/` – analytical conclusions

## 🚀 How to Run
1. Create the table using `schema/create_tables.sql`
2. Import CSV data into `covid_data`
3. Execute queries from the `queries/` folder

## 📈 Sample Insights
- Identified state-level infection spikes using ranking functions
- Computed mortality and growth trends over time
- Used 7-day moving averages to reduce reporting noise

## 📌 Index Optimization
```sql
CREATE INDEX idx_state_date ON covid_data(state, report_date);

