CREATE DATABASE customer_churn;
USE customer_churn;
SELECT * FROM churn_data
LIMIT 5;

#QUERY 1 — TOTAL CUSTOMERS
SELECT COUNT(*) AS Total_Customers
FROM churn_data;

#QUERY 2 — CHURN RATE
SELECT 
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),
2
) AS Churn_Rate
FROM churn_data;

#QUERY 3 — CONTRACT TYPE ANALYSIS
SELECT 
Contract,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned_Customers
FROM churn_data
GROUP BY Contract
ORDER BY Churned_Customers DESC;

#QUERY 4 — MONTHLY CHARGES ANALYSIS
SELECT 
Churn,
ROUND(AVG(MonthlyCharges),2) AS Avg_Monthly_Charges
FROM churn_data
GROUP BY Churn;

#QUERY 5 — TENURE ANALYSIS
SELECT 
Churn,
ROUND(AVG(tenure),2) AS Avg_Tenure
FROM churn_data
GROUP BY Churn;

#QUERY 6 — PAYMENT METHOD ANALYSIS
SELECT 
PaymentMethod,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM churn_data
GROUP BY PaymentMethod
ORDER BY Churned DESC;

#QUERY 7 — RISK SEGMENT ANALYSIS
SELECT 
Risk_Level,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM churn_data
GROUP BY Risk_Level;

#QUERY 8 — INTERNET SERVICE ANALYSIS
SELECT 
InternetService,
COUNT(*) AS Customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM churn_data
GROUP BY InternetService;

#QUERY 9 — REVENUE ANALYSIS
SELECT 
ROUND(SUM(MonthlyCharges),2) AS Total_Monthly_Revenue
FROM churn_data;

#QUERY 10 — TOP HIGH-RISK CUSTOMERS
SELECT 
tenure,
MonthlyCharges,
Contract,
Risk_Level
FROM churn_data
WHERE Risk_Level='High Risk'
LIMIT 10;

bookings