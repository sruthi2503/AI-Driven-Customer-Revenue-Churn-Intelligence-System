use churn_analysis ;
CREATE TABLE customers (
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    tenure INT,
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(10,2),
    contract VARCHAR(20),
    payment_method VARCHAR(30),
    churn VARCHAR(5)
);
select *
from customers;

SELECT 
    COUNT(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM customers;


SELECT customer_id, total_charges
FROM customers
ORDER BY total_charges DESC
LIMIT 10;


SELECT 
    customer_id,
    tenure AS recency,
    monthly_charges AS frequency,
    total_charges AS monetary
FROM customers;


SELECT tenure, COUNT(*) AS customers
FROM customers
GROUP BY tenure
ORDER BY tenure;



