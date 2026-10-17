# Superstore Sales & Profit Analysis

I worked with the Sample Superstore dataset to look at sales trends and identify where the business was making or losing money. I used SQLite for the initial exploration and Tableau Public to build the dashboard.

[View the dashboard on Tableau Public](https://public.tableau.com/app/profile/alfaruqi.ramzan/viz/SuperstoreSalesProfitAnalysis_17873045756980/SuperstoreDashboard?publish=yes)

![Superstore dashboard](Dashboard%20Superstore%20Performance%20.png)

## About the project

The dataset covers Superstore transactions in the United States from 2014 to 2017. I focused on monthly sales, profit by state, and profit by product sub-category. The dashboard also includes a year filter.

The main figures for the full period are:

| Metric | Value |
| --- | ---: |
| Sales | $2.30M |
| Profit | $286.4K |
| Profit margin | 12.5% |
| Orders | 5,009 |

*Values are rounded to match the dashboard. Orders are counted using distinct Order IDs.*

## What I found

- **Copiers** had the highest total profit at around $55.6K. **Tables** had the largest loss at around $17.7K.
- Profit differed quite a bit between states. Some states recorded negative profit, which is worth examining before increasing sales efforts there.
- Monthly sales fluctuated across the four years, with several high points in the later months. More years of data would help determine whether this is a recurring seasonal pattern.

Based on these results, I would look more closely at the pricing and costs of loss-making products, especially Tables. I'd also investigate what drives losses in certain states rather than focusing only on sales volume.

## Tools and files

I used **SQLite (DB Browser for SQLite)** for SQL queries and **Tableau Public** for the dashboard.

- [SQL queries](queries.sql)
- [Tableau workbook (.twbx)](FINAL_Superstore%20Sales%20%26%20Profit%20Analysis.twbx)
- [Dashboard screenshot](Dashboard%20Superstore%20Performance%20.png)

## Dataset

Source: [Sample Superstore on Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

The dataset contains 9,994 transaction rows. Its description doesn't explicitly state a currency, so I used USD based on the U.S. sales context. The original dataset belongs to its respective creator.

## Contact

**Muhammad Alfaruqi Ramzan Mahrudin**  
[LinkedIn](https://www.linkedin.com/in/alfaruqiramzan/) | [GitHub](https://github.com/Alfaruqi-Ramzan)
