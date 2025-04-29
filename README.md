# Task 6: Sales Trend Analysis Using Aggregations

## 👨‍💻 Internship: Data Analyst

### 📌 Objective
Analyze monthly revenue and order volume using SQL to understand sales trends.

### 🛠 Tools Used
- SQLite 

### 📁 Dataset
Simulated `online_sales` table containing:
- `order_date`
- `amount`
- `order_id`
- `product_id`

### 🧮 SQL Operations Performed
1. Extracted year and month from `order_date`
2. Calculated:
   - Monthly Revenue (`SUM(amount)`)
   - Monthly Order Volume (`COUNT(DISTINCT order_id)`)
3. Grouped data by Year and Month
4. Sorted results by year and month
5. Retrieved top 3 months by revenue
6. Handled NULL values in revenue calculation

### 📊 Output Summary
- Most profitable months identified
- Trends in order volume and revenue observed

### 📎 Files Included
- `SQL Script.sql`: SQL code used for analysis
- `Results.pdf`: Output screenshots/tables
- `README.md`: This file


