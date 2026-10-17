# Superstore Sales & Profit Analysis

A retail analytics portfolio project examining sales performance, profitability, and product performance across the United States from 2014 to 2017. I used SQL to explore the data and Tableau Public to build an interactive dashboard.

**[Explore the interactive dashboard](https://public.tableau.com/app/profile/alfaruqi.ramzan/viz/SuperstoreSalesProfitAnalysis_17873045756980/SuperstoreDashboard?publish=yes)** · **[Download the Tableau workbook](FINAL_Superstore%20Sales%20%26%20Profit%20Analysis.twbx)**

![Superstore Performance Overview](Dashboard%20Superstore%20Performance%20.png)

## Project summary

This project focuses on three business questions:

1. How does monthly sales performance change across years?
2. Which U.S. states contribute positive or negative profit?
3. Which product sub-categories perform best and worst by total profit?

The dashboard includes a year filter for exploring performance over different periods.

## Dashboard KPIs

| Metric | 2014–2017 |
| --- | ---: |
| Total sales | $2.30M |
| Total profit | $286.4K |
| Profit margin | 12.5% |
| Distinct orders | 5,009 |

*Values are rounded to match the dashboard. USD is an assumption based on the dataset's U.S. context; currency is not explicitly specified in its description.*

## Key insights

- **Sub-category performance:** Copiers generated approximately $55.6K in profit, while Tables recorded approximately $17.7K in losses.
- **Geographic profitability:** State-level profit varies substantially, with some states showing losses despite recorded sales.
- **Monthly trends:** Sales show fluctuations across months and years, with several of the larger monthly totals appearing in the later part of the year. These are observed patterns, not proof of seasonality.

## Recommendations

- Review pricing, discounts, and costs for loss-making sub-categories, particularly Tables.
- Investigate the reasons for negative profitability in specific states before expanding promotional spending.
- Use monthly sales trends as an input to planning, while checking additional periods before concluding that a pattern is seasonal.

## Tools and workflow

- **SQLite (DB Browser):** SQL-based exploration and data-quality checks.
- **Tableau Public:** KPI calculations, monthly trends, profit mapping, sub-category analysis, and interactive filters.

The SQL exploration is available in [`queries.sql`](queries.sql). The published dashboard represents the final visual analysis.

## Dataset and attribution

The analysis uses **Sample Superstore**, a public educational retail dataset (9,994 transaction lines, 2014–2017).

**[Dataset source on Kaggle — vivek468 / Superstore Dataset (Final)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)**

The dataset was not authored by me. Please consult the dataset owner and license information before redistributing the original CSV. The Tableau packaged workbook can include an embedded data extract; refer to the source's terms before further redistribution.

## Project files

| File | Purpose |
| --- | --- |
| [Dashboard screenshot](Dashboard%20Superstore%20Performance%20.png) | Overview of the completed dashboard |
| [Tableau workbook](FINAL_Superstore%20Sales%20%26%20Profit%20Analysis.twbx) | Packaged interactive Tableau workbook |
| [SQL queries](queries.sql) | Exploration and analysis queries |

## Author

**Muhammad Alfaruqi Ramzan Mahrudin**  
Mathematics Graduate, Universitas Pendidikan Indonesia

[LinkedIn](https://www.linkedin.com/in/alfaruqiramzan/) · [GitHub profile](https://github.com/Alfaruqi-Ramzan)
