-- TABLE
CREATE TABLE online_sales (
    order_id INTEGER PRIMARY KEY,
    order_date TEXT,
    amount REAL,
    product_id INTEGER
);
 
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-03', 120.50, 101),
(2, '2024-01-15', 85.00, 102),
(3, '2024-01-25', 200.75, 103),
(4, '2024-02-02', 300.00, 101),
(5, '2024-02-10', 150.00, 104),
(6, '2024-02-21', 130.25, 105),
(7, '2024-03-05', 250.00, 106),
(8, '2024-03-12', 175.50, 107),
(9, '2024-03-29', 400.00, 108),
(10, '2024-04-03', 220.00, 102),
(11, '2024-04-15', 140.00, 101),
(12, '2024-04-25', 310.50, 104),
(13, '2024-05-05', 180.75, 105),
(14, '2024-05-16', 200.00, 107),
(15, '2024-05-28', 155.00, 108),
(16, '2024-06-01', 120.00, 106),
(17, '2024-06-10', 500.00, 101),
(18, '2024-06-22', 180.00, 103),
(19, '2024-07-03', 210.25, 102),
(20, '2024-07-14', 160.00, 104),
(21, '2024-07-25', 145.00, 105),
(22, '2024-08-01', 300.00, 106),
(23, '2024-08-12', 200.00, 107),
(24, '2024-08-23', 250.00, 108),
(25, '2024-09-05', 400.00, 101),
(26, '2024-09-15', 130.00, 102),
(27, '2024-09-28', 190.00, 103),
(28, '2024-10-01', 310.00, 104),
(29, '2024-10-12', 120.00, 105),
(30, '2024-10-25', 210.00, 106);

SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    order_year, order_month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;

-SELECT 
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(COALESCE(amount, 0)) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM 
    online_sales
WHERE 
    order_date IS NOT NULL
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

 
