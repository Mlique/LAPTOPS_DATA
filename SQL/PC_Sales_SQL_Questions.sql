
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
SELECT COUNT(1) AS TotalNumbeOfSales
FROM DBO.Laptops_Data

-- 2. Count the number of sales per Continent.
SELECT COUNT(1) SalesPerContinent
FROM DBO.Laptops_Data
GROUP BY Continent

-- 3. Count the number of sales per Country or State.
SELECT Country_or_State, COUNT(1) AS SalesPerCountryorState
FROM DBO.Laptops_Data
GROUP BY Country_or_State

-- 4. List all distinct Shop Name values.
SELECT DISTINCT Shop_Name
FROM DBO.Laptops_Data

-- 5. Find the average Sale Price.
SELECT AVG(SALE_PRICE) AS Average_SalePrice
FROM DBO.Laptops_Data

-- 6. Find the highest and lowest Sale Price.
SELECT MAX(SALE_PRICE) AS Max_SalePrice, MIN(SALE_PRICE) AS Min_SalePrice
FROM DBO.Laptops_Data

-- 7. Count the number of sales by Payment Method.
SELECT Payment_Method, COUNT(1) AS NumberOfSales_by_PaymentMethod
FROM DBO.Laptops_Data
GROUP BY Payment_Method

-- 8. Count the number of sales by Channel (Online vs Offline).
SELECT Channel, COUNT(1) AS NumberOfSales_by_Channel
FROM DBO.Laptops_Data
GROUP BY Channel

-- 9. Count the number of sales by Priority level.
SELECT Priority, COUNT(1) AS SalesByPriorityLevel
FROM DBO.Laptops_Data
GROUP BY Priority

-- 10. Count the number of distinct PC Make values.
SELECT DISTINCT PC_Make, COUNT(1) AS NumberOfEachPCMake
FROM DBO.Laptops_Data
GROUP BY PC_Make


-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
SELECT SUM(Sale_Price) AS SumOfSalesPrice
FROM DBO.Laptops_Data

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
SELECT SUM(Sale_Price)  - SUM(Cost_Price) AS TotalProfit
FROM DBO.Laptops_Data

-- 13. Find the average Discount Amount.
SELECT AVG(Discount_Amount)
FROM DBO.Laptops_Data

-- 14. Calculate total Finance Amount issued.
SELECT SUM(Finance_Amount) AS TotalFinanceAmount
FROM DBO.Laptops_Data

-- 15. Find total revenue per PC Make.
SELECT PC_Make, SUM(Sale_Price) AS TotalRev_per_PCMake
FROM DBO.Laptops_Data
GROUP BY PC_Make

-- 16. Find average Sale Price per Storage Type.
SELECT Storage_Type, AVG(Sale_Price) AS SalePrice_per_StorageType
FROM DBO.Laptops_Data
GROUP BY Storage_Type

-- 17. Calculate total revenue per Shop Name.
SELECT Shop_Name, SUM(Sale_Price) AS TotalRev_per_ShopName
FROM DBO.Laptops_Data
GROUP BY Shop_Name

-- 18. Calculate total revenue per Sales Person Name.
SELECT Sales_Person_Name, SUM(Sale_Price) AS TotalRev_per_SalesPersonName
FROM DBO.Laptops_Data
GROUP BY Sales_Person_Name

-- 19. Find average Credit Score per Payment Method.
SELECT Payment_Method, AVG(Credit_Score) AS AverageCreditScore_per_PaymentMethod
FROM DBO.Laptops_Data
GROUP BY Payment_Method

-- 20. Calculate total Cost of Repairs per Sales Person Department.
SELECT Sales_Person_Department,SUM(Cost_of_Repairs) AS Repairs_per_SalesPersonDepartment
FROM DBO.Laptops_Data
GROUP BY Sales_Person_Department

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

