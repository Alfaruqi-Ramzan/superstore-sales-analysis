# Superstore Sales & Profit Analysis

A SQL-based analysis and Tableau dashboard exploring Superstore sales performance across category, region, discount, time and profit. Built as a portfolio project to practice end-to-end data analysis, from raw data to business insight.

## Dataset
Public "Superstore" dataset (transaction-level retail sales data), cleaned and queried using SQLite.

## Tools
- **SQLite (DB Browser)** — data cleaning & SQL analysis
- **Tableau Public** — interactive dashboard & visualization

## Business Questions
1. Which category/sub-category is most profitable vs. most loss-making?
2. Which region/state has high sales but low profit?
3. Does a higher discount lead to lower profit?
4. Is there a seasonal pattern in monthly/yearly sales?

## Key Insights
- **Category/Sub-Category**: Technology (Copiers) is the most profitable sub-category, while Furniture (Tables) consistently generates a loss overall.
- **Region/State**: The West region has the highest total profit, driven mainly by California. Texas (Central region) has the largest overall loss among all states.
- **Discount vs. Profit**: Profit declines as discount increases — discounts above 20% are consistently associated with net losses.
- **Seasonal Trend**: Sales peak in Q1 (March) and Q4 (September–November), suggesting seasonal demand that could inform inventory and promotion planning.

## Dashboard
🔗 [View interactive dashboard on Tableau Public](https://public.tableau.com/app/profile/alfaruqi.ramzan/viz/SuperstoreSalesProfitAnalysis_17873045756980/Dashboard1?publish=yes)

## Data Quality Notes
During analysis, an inconsistency was found between the number of unique Product Names (1,850) and unique Product IDs (1,862). Further inspection showed some Product IDs are shared across different product names, likely due to ID reuse across order batches. This does not affect the analysis in this project, as none of the aggregations are performed at the Product ID/Name level.

## Files
- `queries.sql` — all SQL queries used in this analysis

## Author
Muhammad Alfaruqi Ramzan Mahrudin — Mathematics Graduate, Universitas Pendidikan Indonesia
[https://www.linkedin.com/in/alfaruqiramzan/](#)
