# Retail Sales Analysis – PostgreSQL Project

## Project Overview

This project is based on a retail sales dataset analyzed using PostgreSQL. The goal of this project is to perform data cleaning, data exploration, and business analysis using SQL queries to generate useful business insights from sales data.

The dataset contains transaction-level sales data including customer information, product categories, sales amount, and purchase time.

---

## Database Schema

**Table Name:** retail_sales

| Column Name     | Data Type         | Description               |
| --------------- | ----------------- | ------------------------- |
| transactions_id | INT (Primary Key) | Unique transaction ID     |
| sale_date       | DATE              | Date of the sale          |
| sale_time       | TIME              | Time of the sale          |
| customer_id     | INT               | Unique customer ID        |
| gender          | VARCHAR           | Customer gender           |
| age             | INT               | Customer age              |
| category        | VARCHAR           | Product category          |
| quantiy         | INT               | Number of items purchased |
| price_per_unit  | FLOAT             | Price per item            |
| cogs            | FLOAT             | Cost of goods sold        |
| total_sale      | FLOAT             | Total sale amount         |

---

## Data Preprocessing

Data preprocessing was performed to ensure data quality before analysis.

### Steps Performed:

1. Checked for null values in important columns.
2. Missing age values were replaced with 20.
3. Rows containing null values in category, quantity, cogs, and total_sale were deleted.
4. Cleaned dataset was then used for analysis.

---

## Data Exploration

The following exploratory analysis was performed:

* Total number of sales transactions
* Total number of unique customers
* Total number of product categories
* Number of adult customers (age > 18)
* Number of underage customers (age ≤ 18)
* Sales count by category (Clothing, Beauty, Electronics)
* Number of male and female customers
* Total sales in November
* Sales on a specific date (2022-11-05)

---

## Data Analysis & Business Questions Solved

### Business Questions:

1. What are the total sales for each product category?
2. What is the average age of customers who purchase beauty products?
3. Which transactions have total sales greater than 1000?
4. What is the distribution of sales by gender in each category?
5. Which month has the highest average sales in each year?
6. Who are the top 5 customers by total purchase amount?
7. How many unique customers purchased from each category?
8. What time of day has the highest number of orders?

---

## Business Insights

### Key Insights from the Analysis:

**1. Category Performance**

* Clothing, Beauty, and Electronics are the main product categories.
* Total sales and total orders were calculated for each category to identify best-performing categories.

**2. Customer Demographics**

* Adult customers make most of the purchases.
* Female customers contributed significantly to Clothing and Beauty category sales.
* Male customers contributed more to Electronics purchases.

**3. High Value Transactions**

* Transactions with total sales greater than 1000 were identified as high-value sales.
* These transactions contribute a large portion of revenue.

**4. Monthly Sales Analysis**

* Average sales were calculated for each month.
* The best-selling month for each year was identified using ranking window functions.

**5. Top Customers**

* Top 5 customers were identified based on total purchase amount.
* These customers are important for loyalty programs and targeted marketing.

**6. Customer Purchase Behavior**

* Unique customers per category were calculated.
* This helps understand which category attracts more customers.

**7. Sales by Time of Day**
Orders were divided into shifts:

* Morning (Before 12)
* Afternoon (12 to 17)
* Evening (After 17)

This helps the business understand peak sales hours and manage staff and inventory accordingly.

---

## Tools Used

* PostgreSQL
* SQL (Joins, Aggregations, Window Functions, CTEs)
* Data Cleaning
* Data Analysis

---

## Conclusion

This project demonstrates how SQL can be used for real-world business data analysis. The analysis helps businesses understand customer behavior, product performance, sales trends, and high-value customers. These insights can help businesses make better decisions related to marketing, inventory management, and sales strategy.
