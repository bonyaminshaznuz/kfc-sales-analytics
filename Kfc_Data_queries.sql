-- 1 Total sales by year
SELECT Year, SUM(Sales) AS Total_Sales
FROM kfc_sales
GROUP BY Year
ORDER BY Year;

-- 2 Total sales by country
SELECT Country, SUM(Sales) AS Total_Sales
FROM kfc_sales
GROUP BY Country
ORDER BY Total_Sales DESC;

-- 3 Total sales by branch
SELECT Branch_ID, SUM(Sales) AS Total_Sales
FROM kfc_sales
GROUP BY Branch_ID
ORDER BY Total_Sales DESC;

-- 4 Monthly sales totals
SELECT Year, Month, SUM(Sales) AS Monthly_Sales
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Year, Month;

-- 5 Total customers served
SELECT SUM(Customers) AS Total_Customers
FROM kfc_sales;

-- 6 Average customers per month
SELECT Year, Month, AVG(Customers) AS Avg_Customers
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Year, Month;

-- 7 Country-wise customer distribution
SELECT Country, SUM(Customers) AS Total_Customers
FROM kfc_sales
GROUP BY Country
ORDER BY Total_Customers DESC;

-- 8 Year-over-year growth rate
SELECT s1.Year,
       ((SUM(s1.Sales) - SUM(s2.Sales)) / SUM(s2.Sales)) * 100 AS YoY_Growth
FROM kfc_sales s1
LEFT JOIN kfc_sales s2
  ON s1.Year = s2.Year + 1
GROUP BY s1.Year
ORDER BY s1.Year;

-- 9 Month-over-month changes
SELECT Year, Month,
       SUM(Sales) AS Monthly_Sales,
       SUM(Sales) - LAG(SUM(Sales)) OVER (ORDER BY Year, Month) AS MoM_Change
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Year, Month;

-- 10 Quarterly performance
SELECT Year, CEIL(Month/3) AS Quarter, SUM(Sales) AS Quarterly_Sales
FROM kfc_sales
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- 11 Average transaction value (Sales per Customer)
SELECT AVG(Sales / Customers) AS Avg_Transaction_Value
FROM kfc_sales
WHERE Customers > 0;

-- 12 Revenue per customer per month
SELECT Year, Month, SUM(Sales)/SUM(Customers) AS Revenue_Per_Customer
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Year, Month;

-- 13 Marketing ROI by country
SELECT Country, SUM(Sales)/SUM(Marketing_Spend) AS Marketing_ROI
FROM kfc_sales
GROUP BY Country
ORDER BY Marketing_ROI DESC;

-- 14 Cost per customer acquisition
SELECT Country, SUM(Marketing_Spend)/SUM(Customers) AS Cost_Per_Customer
FROM kfc_sales
GROUP BY Country
ORDER BY Cost_Per_Customer;

-- 15 Branch ranking by sales
SELECT Branch_ID, SUM(Sales) AS Total_Sales,
       RANK() OVER (ORDER BY SUM(Sales) DESC) AS Branch_Rank
FROM kfc_sales
GROUP BY Branch_ID
ORDER BY Branch_Rank;

-- 16 Cumulative sales over time
SELECT Year, Month,
       SUM(Sales) OVER (ORDER BY Year, Month) AS Cumulative_Sales
FROM kfc_sales;

-- 17 3-month moving average
SELECT Year, Month,
       AVG(Sales) OVER (ORDER BY Year, Month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS MA_3
FROM kfc_sales;

-- 18 Top 5 months (best performance)
SELECT Year, Month, SUM(Sales) AS Monthly_Sales
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Monthly_Sales DESC
LIMIT 5;

-- 19 Bottom 5 months (worst performance)
SELECT Year, Month, SUM(Sales) AS Monthly_Sales
FROM kfc_sales
GROUP BY Year, Month
ORDER BY Monthly_Sales ASC
LIMIT 5;

-- 20 Market share per country per year
SELECT Year, Country,
       SUM(Sales)/SUM(SUM(Sales)) OVER (PARTITION BY Year) AS Market_Share
FROM kfc_sales
GROUP BY Year, Country
ORDER BY Year, Market_Share DESC;
