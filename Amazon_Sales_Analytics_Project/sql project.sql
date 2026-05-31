#Query 1: Lowest Revenue Categories
select category,
sum(sales) as revenue
from amazon_sales
group by Category
order by revenue asc
limit 3;

#Query 2: Regional Profitability Analysis
select region,
sum(profit) as total_profit
from amazon_sales
group by region
order by total_profit asc
limit 5;

# Query3: Top Profitable Orders in Seattle
select * from amazon_sales
where city = 'seattle'
order by profit desc
limit 3;

#Query 4: Top Customers by total Spending
select `Customer Name`,
sum(sales) as total_spent
from amazon_sales
group by `Customer Name`
order by total_spent desc
limit 4;

#Query5: Lowest Selling Products Analysis
SELECT `Product Name`,
SUM(quantity) AS total_quantity_sold
FROM amazon_sales
GROUP BY `Product Name`
ORDER BY total_quantity_sold ASC
LIMIT 5;

#KPI1: Total Revenue
SELECT SUM(sales) AS total_revenue
FROM amazon_sales;

#KPI2: Total Profit
SELECT SUM(profit) AS total_profit
FROM amazon_sales;

#KPI3: Total Orders
SELECT COUNT('Order ID') AS total_orders
FROM amazon_sales;

#KPI4: Average Order Value
SELECT 
SUM(sales)/COUNT('Order ID') AS avg_order_value
FROM amazon_sales;




