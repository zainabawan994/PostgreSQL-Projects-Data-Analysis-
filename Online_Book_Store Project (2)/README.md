# 📚 Online Book Store Analysis (SQL Project)

## 📌 Overview
This project focuses on performing **Exploratory Data Analysis (EDA)** and **Business Insights Extraction** using SQL on an online bookstore dataset.

It analyzes customer behavior, sales trends, book performance, and genre-based insights.

---

## 🗂️ Dataset Description

### 📖 Books Table
- Book_ID
- Author
- Genre
- Price
- Stock
- Published_Year

### 👤 Customers Table
- Customer_ID
- Name
- Country
- City

### 🛒 Orders Table
- Order_ID
- Customer_ID
- Book_ID
- Quantity
- Total_Amount
- Order_Date

---

## 🔍 Key Analysis

### 📊 Basic EDA
- Total number of books
- Unique authors
- Total genres
- Books published after 1995
- Average book prices (before & after 1995)
- Stock distribution by genre

### 👥 Customer Analysis
- Total customers
- Customers per country
- High-value customers (top spenders)
- Customers with multiple orders

### 💰 Sales & Revenue Analysis
- Genre-wise total revenue
- Monthly sales trends (Aug, Sep, Oct)
- Orders in December & January
- Total quantity sold by genre

### 🏆 Ranking & Performance
- Top 5 customers by orders
- Top countries by order quantity
- Ranking books within each genre
- Cities with highest fiction orders

---

## ⚙️ SQL Concepts Used

- Aggregations (`SUM`, `AVG`, `COUNT`)
- Grouping (`GROUP BY`)
- Filtering (`WHERE`, `HAVING`)
- Joins (`INNER JOIN`, `LEFT JOIN`)
- Window Functions (`RANK() OVER`)
- Date functions (`EXTRACT(MONTH FROM ...)`)

---

## 📈 Key Insights

- Certain genres dominate both **sales and stock**
- A small group of customers contributes to **major revenue**
- Seasonal trends exist in **Aug–Oct and Dec–Jan**
- Fiction genre shows strong demand in specific cities
- Book popularity varies significantly within genres

---

## 🚀 How to Use

1. Import dataset into SQL database
2. Run queries provided in `.sql` file
3. Analyze outputs for insights
4. (Optional) Connect with Power BI for visualization

---

## 🧠 Learning Outcome

- Real-world SQL EDA practice
- Business-oriented thinking
- Data-driven decision making

---

---

## 👩‍💻 Author
Zainab (Data Analyst / AI Enthusiast)

---
