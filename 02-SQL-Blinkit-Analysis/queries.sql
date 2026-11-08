-- Blinkit Sales Analysis
-- Using MySQL

-- 1. check data
SELECT * FROM blinkit LIMIT 10;

-- 2. Total sales
SELECT SUM(Sales) as Total_Sales FROM blinkit;

-- 3. Sales by outlet type
SELECT Outlet_Type, SUM(Sales) as Total_Sales 
FROM blinkit 
GROUP BY Outlet_Type 
ORDER BY Total_Sales DESC;

-- 4. Avg sales by fat content
SELECT Item_Fat_Content, AVG(Sales) as Avg_Sales 
FROM blinkit 
GROUP BY Item_Fat_Content;

-- 5. Sales by location
SELECT Outlet_Location_Type, SUM(Sales) as Total_Sales 
FROM blinkit 
GROUP BY Outlet_Location_Type;

-- 6. Top 5 items
SELECT Item_Type, SUM(Sales) as Total_Sales 
FROM blinkit 
GROUP BY Item_Type 
ORDER BY Total_Sales DESC LIMIT 5;

-- 7. Sales by year
SELECT Outlet_Establishment_Year, SUM(Sales) as Total_Sales 
FROM blinkit 
GROUP BY Outlet_Establishment_Year 
ORDER BY Outlet_Establishment_Year;
