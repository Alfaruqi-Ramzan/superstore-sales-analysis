# Superstore Sales & Profit Analysis

An end-to-end retail sales analysis using SQL and Tableau Public. This project explores sales trends, profitability across U.S. states, and differences in profit between product sub-categories using the Sample Superstore dataset.

**[View the interactive Tableau dashboard](https://public.tableau.com/app/profile/alfaruqi.ramzan/viz/SuperstoreSalesProfitAnalysis_17873045756980/SuperstoreDashboard?publish=yes)**

## Project overview

The goal is to understand how sales and profit vary over time, where the business earns or loses money, and which product sub-categories contribute most to overall profit. The dashboard is designed as a compact executive overview with a year filter.

## Dataset

- **Source:** Sample Superstore, a public retail transaction dataset used for educational analysis.
- **Period:** 2014–2017
- **Geographic coverage:** United States
- **Key fields:** Order Date, Order ID, State, Region, Category, Sub-Category, Sales, Profit, Discount.
- **Currency:** USD assumed, based on the U.S. context; the dataset description does not explicitly specify currency.

## Tools

- **SQLite / DB Browser for SQLite:** exploratory SQL queries and data-quality checks
- **Tableau Public:** interactive dashboard, calculated fields, and visual analysis

## Dashboard highlights

| Metric | 2014–2017 |
| --- | ---: |
| Total Sales | $2.30M |
| Total Profit | $286.4K |
| Profit Margin | 12.5% |
| Total Orders | 5,009 |

*Metrics are rounded as displayed in the published dashboard. Total Orders uses distinct Order IDs.*

The dashboard contains:
- **Monthly Sales by Year:** compares monthly sales patterns across 2014–2017.
- **Profit by State:** highlights geographic differences in profit and loss.
- **Profit by Sub-Category:** ranks product sub-categories by total profit.
- **Year filter:** allows analysis of individual or multiple years.

## Key findings

1. **Overall profitability:** Across the four-year period, sales total approximately $2.30M and profit reaches $286.4K, corresponding to a 12.5% profit margin.
2. **Top and bottom sub-categories:** Copiers contributes the highest total profit (approximately $55.6K), while Tables records the largest loss (approximately -$17.7K).
3. **Geographic performance:** Profit varies considerably between states. The map shows that positive sales activity does not guarantee positive profit in every market.
4. **Sales pattern:** Monthly sales vary across the year, with visible peaks toward the later months in several years. Further analysis is needed before attributing the pattern to seasonality.

## Business recommendations

- Examine pricing, costs, and discounts in loss-making sub-categories, particularly Tables.
- Investigate states with negative profit before increasing sales or promotion budgets in those markets.
- Use monthly patterns as a starting point for inventory and campaign planning, while validating trends against additional periods and operational data.

## Repository files

- `queries.sql` — SQL exploration and data-quality queries.
- [Interactive dashboard on Tableau Public](https://public.tableau.com/app/profile/alfaruqi.ramzan/viz/SuperstoreSalesProfitAnalysis_17873045756980/SuperstoreDashboard?publish=yes) — the latest published dashboard.

The final packaged Tableau workbook (`.twbx`) and dashboard screenshot are available as project deliverables and can be added to this repository.

## Notes

This is a portfolio project using a sample dataset rather than live business data. Currency is treated as USD for display purposes. Findings describe the observed data and do not establish causal effects.

## Author

**Muhammad Alfaruqi Ramzan Mahrudin**  
Mathematics Graduate, Universitas Pendidikan Indonesia

[LinkedIn](https://www.linkedin.com/in/alfaruqiramzan/) · [GitHub](https://github.com/Alfaruqi-Ramzan)
