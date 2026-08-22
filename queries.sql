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
GROUP BY Sub_Category
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

- Best & worst performing state overall 
"WITH tabel_peringkat AS (
SELECT region,state,SUM(profit) as jmlpro,
RANK() OVER(order by SUM(profit) DESC) as peringkat
FROM orders
GROUP BY region,state
ORDER BY jmlpro DESC
)
SELECT region,state,jmlpro,peringkat
FROM tabel_peringkat
WHERE peringkat=1 OR peringkat = 49"

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
count(sales) as penjualan
FROM orders
GROUP BY Tahun"

- Total sales per month (across all years) with ranking
"SELECT substr(order_date_iso,6,2) as Bulan, SUM(sales) as sales_total,
RANK () OVER(ORDER BY SUM(sales) DESC) as peringkat
FROM orders
GROUP BY Bulan	
ORDER BY Bulan ASC"



