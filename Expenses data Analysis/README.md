# 💰 Financial Data Analysis using PostgreSQL

## 📌 Project Overview
This project analyzes financial transaction data using PostgreSQL.  
It focuses on understanding spending patterns, income trends, and payment behaviors.

The analysis helps answer questions like:
- Where is most money being spent?
- How does spending change over time?
- Which payment methods are used most?

---

## 🗂️ Dataset Description

| Column Name        | Description |
|-------------------|------------|
| Date              | Transaction date |
| Account           | Account used (ID or name) |
| Category          | Expense category (Food, Travel, etc.) |
| INR               | Amount in INR |
| Income/Expense    | Transaction type |
| Amount            | Transaction amount |
| Currency          | Currency type |
| Account Type      | Type of account |
| Method            | Payment method (Card, Cash, etc.) |
| Mode              | Online / Offline |

---

## ⚙️ Technologies Used
- PostgreSQL
- SQL (Aggregation, Group By, Date Functions)

---

## 📊 Analysis Performed

### 🔢 Total Records
```sql
SELECT COUNT(*) AS total_records
FROM data;
