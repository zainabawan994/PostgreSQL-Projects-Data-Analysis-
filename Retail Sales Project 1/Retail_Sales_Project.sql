create table retail_sales(
   transactions_id	int	primary key,
   sale_date	date,
   sale_time	time,
   customer_id	int	,
   gender varchar(15),	
   age	int	,
   category	varchar(45),	
   quantiy	int	,
   price_per_unit float,	
   cogs	float,	
   total_sale	float
);
select * from retail_sales;

select count(*) from retail_sales as Total_Customers;

-- Data Preprocessing
--- checking for Null Values
SELECT * FROM retail_sales
where 
age is NULL
OR
category is NULL
OR
quantiy is NULL
OR
cogs is NULL
OR
total_sale is NULL;

--- filling age missing values with 20
update retail_sales
set age=20 where age is null;

--- deleting other rows having null values

Delete FROM retail_sales
where 
age is NULL
OR
category is NULL
OR
quantiy is NULL
OR
cogs is NULL
OR
total_sale is NULL;

--- Data Exploration
--how many sales we have-sae
select count (*) as total_sales from retail_sales;

--how many customers we have
select count (distinct customer_id) as total_customer from retail_sales;

--how many categories we have
select distinct (category) as total_category from retail_sales;

-- total customers having age greater than 18
select
count (*) as Adult_Customer from retail_sales
where age>18;

-- total customer having age less than 18 or equal to 18

select
count (*) as Under_age_Customer from retail_sales
where age<=18;

-- total sales in Clothing Category

select
count (*) as Clothing_Category_Sales from retail_sales
where category='Clothing';

-- total sales in Beauty Category

select
count (*) as Beauty_Category_Sales from retail_sales
where category='Beauty';

-- total sales in Electronics Category

select
count (*) as Electronics_Category_Sales from retail_sales
where category='Electronics';

--- total Female Customers

select
count (*) as Total_Female_Clients from retail_sales
where gender='Female';

--- total Male Customers

select
count (*) as Total_Male_Clients from retail_sales
where gender='Male';

--- Total Sales in the Month of November

select 
count (*) as total_sales_November from retail_sales
where sale_date  between '2022-11-01' and '2022-11-30';



---Data Analysis & Bussiness Problems

-- sales on 2022-11-05

select 
count (*) as total_sales_November from retail_sales
where sale_date='2022-11-05';

--sales of clothing in november month 2022
select*
from retail_sales
where 
category='Clothing' and to_char(sale_date,'YYYY-MM')='2022-11'
group by 1
-----------------
SELECT *
FROM retail_sales
WHERE category='Clothing' AND to_char(sale_date,'YYYY-MM')='2022-11' 
AND quantiy>1;

--- Total Sales of Each Category

select
category,
sum(total_sale) as Total_Sales,
count(*) as Total_Orders
from retail_sales
group by category

---Find Avergae age of Customer where category is beauty

select
round(avg(age),2)as Average_Age
from retail_sales
where 
category='Beauty'

--total sales greater than 1000
select
* from retail_sales
where total_sale > 1000;

--checking gender by sales in each category

select
category,
gender,
count(*) as total_sales
from retail_sales
group by
category,
gender order by 1

---averge sales for each month and best selling month

SELECT
    year,
    month,
    avg_sale
FROM
    (
        SELECT
            EXTRACT(YEAR FROM sale_date) AS year,
            EXTRACT(MONTH FROM sale_date) AS month,
            AVG(total_sale) AS avg_sale,
            RANK() OVER (
                PARTITION BY EXTRACT(YEAR FROM sale_date)
                ORDER BY
                    AVG(total_sale) DESC
            ) AS rank
        FROM
            retail_sales
        GROUP BY
            1,
            2
    ) AS t1
WHERE
    rank = 1;


--- highest sales 5 id of customers

select
customer_id,
sum(total_sale) as total_sales
from retail_sales
group by 1
order by 2 desc 
limit 5

--- customers who buy from each cateogry

select
category,
 count(distinct customer_id) as Count_Unique
 from retail_sales
 group by
 category

 ---creatig shift and numbers of orders like
-- <=12 is morning ,afternoon is between 12 & 17 
-- evening is <=17
with hourly_sale ----cte table
as
(select sale_time,
case
when  extract(hour from sale_time) <12 then 'Morning'
when extract(hour from sale_time) between 12 and 17 then 'Afternoon'
else 'Evening'
end as shift
from retail_sales
)
select
shift,
count(*) as total_orders
from hourly_sale
group by shift


----------------------------------------------------------------------


