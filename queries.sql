Q1: Which category/sub-category is most profitable vs most loss-making?

- Single order with the highest profit
"SELECT Category,Sub_Category,MAX(profit)
FROM orders"

- Single order with the lowest profit (biggest single loss)
"SELECT Category,Sub_Category,MIN(profit)
FROM orders"

- Total profit aggregated by category & sub-category
"SELECT Category,Sub_Category,SUM(profit)
FROM orders
GROUP BY Category, Sub_Category
ORDER BY sum(profit) DESC"

Q2: Which region/state has high sales but low profit?

- Total profit per region 
"SELECT region,SUM(profit) as jmlpro
FROM orders
GROUP BY region
ORDER BY jmlpro DESC"

- Total profit per region & state
"SELECT region,state,SUM(profit) as jmlpro
FROM orders
GROUP BY region,state
ORDER BY jmlpro DESC"

- Best & worst performing state with high sales but low profit 
"WITH state_summary AS(SELECT Region,state, 
		SUM(Sales) as total_sales,
		SUM(profit) as total_profit,
		SUM(profit)/SUM(sales) as profit_margin
FROM orders
GROUP BY Region,State)
SELECT *
FROM state_summary
WHERE total_sales > (SELECT AVG(total_sales) FROM state_summary)
ORDER BY profit_margin ASC"

Q3: Does a higher discount lead to lower profit?

- Highest single-order profit per discount level
"SELECT Discount,MAX(Profit) as proMAX,
RANK() OVER(ORDER BY MAX(profit) DESC) AS peringkat
FROM orders
GROUP BY Discount
ORDER BY Discount ASC"

- Total profit per discount level
"SELECT Discount,SUM(Profit) total_profit, 
RANK() OVER(ORDER BY SUM(profit) DESC)as peringkat
FROM orders
GROUP BY Discount
ORDER BY Discount ASC"

Q4: Is there a seasonal pattern in monthly/yearly sales?

- Number of transactions per year
"SELECT substr(order_date_iso,1,4) as Tahun,
count(DISTINCT "order id") as num_transaction
FROM orders
GROUP BY Tahun"

- Total sales per month (across all years) with ranking
"SELECT substr(order_date_iso,6,2) as Bulan, SUM(sales) as sales_total,
RANK () OVER(ORDER BY SUM(sales) DESC) as peringkat
FROM orders
GROUP BY Bulan	
ORDER BY Bulan ASC"



