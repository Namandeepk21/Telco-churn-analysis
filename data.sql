CREATE TABLE customers (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(40),
    MonthlyCharges FLOAT,
    TotalCharges VARCHAR(20),
    Churn VARCHAR(10)
);




SELECT COUNT(*) AS Churned_Customers FROM customers WHERE Churn = 'Yes';
SELECT Contract, COUNT(*) AS Total,
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned
FROM customers
GROUP BY Contract;