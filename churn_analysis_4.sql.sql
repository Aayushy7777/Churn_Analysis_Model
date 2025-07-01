-- churn_analysis_4.sql
-- Churn Analysis Queries for Stg_churn Table

-- 1. Gender-wise Churn Distribution
SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM Stg_churn) AS Percentage
FROM 
    Stg_churn
GROUP BY 
    Gender;

-- 2. Contract Type Churn Distribution
SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM Stg_churn) AS Percentage
FROM 
    Stg_churn
GROUP BY 
    Contract;

-- 3. Customer Status Churn and Revenue Analysis
SELECT 
    Customer_Status, 
    COUNT(Customer_Status) AS TotalCount, 
    SUM(Total_Revenue) AS TotalRev,
    SUM(Total_Revenue) * 100.0 / (SELECT SUM(Total_Revenue) FROM Stg_churn) AS RevPercentage
FROM 
    Stg_churn
GROUP BY 
    Customer_Status;

-- 4. State-wise Churn Distribution (Descending Order of Percentage)
SELECT 
    State, 
    COUNT(State) AS TotalCount,
    COUNT(State) * 100.0 / (SELECT COUNT(*) FROM Stg_churn) AS Percentage
FROM 
    Stg_churn
GROUP BY 
    State
ORDER BY 
    Percentage DESC;

-- 5. List of Distinct Internet Types
SELECT 
    DISTINCT Internet_Type
FROM 
    Stg_churn;
