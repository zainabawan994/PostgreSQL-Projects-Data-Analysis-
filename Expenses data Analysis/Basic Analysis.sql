Select * From data;

---checking total data in the database

Select count(*) as total_records
From data;

-- total Category of spending money
Select Category,
SUM(Amount) AS total_spending
From data
group by Category

---Min Amount Spend
Select
Min(Amount) as Minimum_Amount_Spend
From data;

---Max Amount Spend
Select
Max(Amount) as Maxmum_Amount_Spend
From data;

--- Total Income and Spending

Select Expense,
count(Expense) 
From data
group by Expense;


---Total Spending by Currency
Select Currency,
SUM(Amount) AS total_spending
From data
group by Currency;

---Method of Payment

Select Method,
count(Method) 
From data
group by Method;


--Mode of Payment

Select Mode,
count(Mode) 
From data
where Mode is NOT NULL
group by Mode;

----Per Month Spending

Select
DATE_TRUNC('month',Date) as monthly_spend,
sum(Amount) as total_spending
from data
group by monthly_spend
order by monthly_spend desc;


--- per year spend

Select
DATE_TRUNC('year',Date) as yearly_spend,
sum(Amount) as total_spending
from data
group by yearly_spend
order by yearly_spend desc;


-- total spending by each cateogry
Select Category,
Sum(Amount) as total_spending 
from 
data
group by Category
order by total_spending  desc


--total spending in inr rupess
Select
sum(INR) AS Total_Spending
From
data;

--total spending on online 

Select
Mode,
Sum(Amount) as total_amount
From data
where mode is not null
group by Mode

-- total spending by method

Select
Method,
Sum(Amount) as total_amount
From data
group by Method



---Top 5 highest expenses
SELECT *
FROM data
ORDER BY Amount DESC
LIMIT 5;

--- Average spending

SELECT AVG(Amount) AS avg_spending

----Monthly Income vs Expen
SELECT
DATE_TRUNC('month', Date) AS month,
Expense,
SUM(Amount) AS total
FROM data
GROUP BY month, Expense
ORDER BY month;
FROM data;