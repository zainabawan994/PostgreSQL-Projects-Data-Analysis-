select * from Books;
select * from Orders;
select * from Customers;

--checking total books in system
Select count(*) As total_books From Books

--Total Authors
Select count(Distinct Author) As total_Authors From Books;

--Total Categories of book genre
Select count(Distinct Genre) As Total_Genre From Books;

--Total Books Publish After 1995
Select count(Published_Year) As Published_Year From Books
WHERE Published_Year>'1995';

---Average Book Price After 1995
Select Round(Avg(Price),2) As Average_Price From Books
WHERE Published_Year>'1995';

---Average Book Price Before 1995
Select Genre ,Round(Avg(Price),2) As Average_Price From Books
where Published_Year<'1995'
group by Genre;

---Sum stock by genre

Select Genre,SUM(Stock) As Total_Stock From Books
group by Genre;

------------EDA OF CUSTOMER TABLE------------------------

--total customers
Select count(Distinct Name) As total_Authors From Customers;

--total customers from each country
Select Country,count(Name) As Total_Customers From Customers
group by Country;

-------Bussiness Level Question --------------------------------------
Select count(distinct e.Genre),
e.Genre,
o.Quantity
from
Books e
left join Orders o
on e.Book_ID=o.Book_ID
group by 
e.Genre,o.Quantity

---- Name of the Customer along with their total amount spent
SELECT e.Name, SUM(o.Total_Amount) AS Total_Spent
FROM Customers e
JOIN Orders o
ON e.Customer_ID = o.Customer_ID
GROUP BY e.Name;

---Checking Genre wise Total Order Amount
SELECT e.Genre, SUM(o.Total_Amount) AS Total_Order_Amount
FROM Books e
JOIN Orders o
ON e.Book_ID = o.Book_ID
GROUP BY e.Genre;

--- Total of order of every genre in ,onth of August,September,October
SELECT e.Genre,
SUM(o.Total_Amount) AS Total_Order_Amount,
Extract(Month from o.Order_Date) as Order_Month
FROM Books e
JOIN Orders o
ON e.Book_ID = o.Book_ID
GROUP BY e.Genre ,Extract(Month from o.Order_Date)
having Extract(Month from o.Order_Date) in (8,9,10) 


---Top 5 Customers on the base of Order Along the total_amount thet spend

SELECT *
FROM (
    SELECT c.Name,
           SUM(o.Total_Amount) AS Total_Order_Amount,
           SUM(o.Quantity) AS Total_Order_Quantity,
           RANK() OVER (ORDER BY SUM(o.Quantity) DESC) AS Customer_rank
    FROM Customers c
    JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Name
) t1
LIMIT 5;


----customers having more than 1 order
select * from Orders
where Quantity>1;

---Top Ranked Order Countries only 10
Select *
From
(Select
c.Country ,
SUM(o.Quantity) AS Total_Order_Quantity,
Rank() over (order by sum(o.Quantity) desc) as Top_Ranked_Country
FROM Customers c
    JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Country
) t2
LIMIT 10;


---Total Orders from ALL Countries in the Months of December and January
SELECT c.Country,
SUM(o.Quantity) AS Total_Quantity,
Extract(Month from o.Order_Date) as Order_Month
FROM Customers c
JOIN Orders o
ON c.Customer_ID= o.Customer_ID
GROUP BY c.Country ,Extract(Month from o.Order_Date)
having Extract(Month from o.Order_Date) in (1,12) 

----Total Quantity by Each Genre
SELECT e.Genre, SUM(o.Quantity) AS Total_Quantity
FROM Books e
JOIN Orders o
ON e.Book_ID = o.Book_ID
GROUP BY e.Genre;

----Customers having more than 4 orders showing result by their name
SELECT *
FROM (
    SELECT c.Name,
           SUM(o.Quantity) AS Total_Order_Quantity,
           RANK() OVER (ORDER BY SUM(o.Quantity) DESC) AS Customer_rank
    FROM Customers c
    JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Name
) t1
LIMIT 5;

----City having most order of Fiction Genre 
SELECT c.City,
       COUNT(o.Order_ID) AS Total_Orders
FROM Customers c
JOIN Orders o
ON c.Customer_ID = o.Customer_ID
JOIN Books b
ON o.Book_ID = b.Book_ID
WHERE b.Genre = 'Fiction'
GROUP BY c.City
ORDER BY Total_Orders DESC
LIMIT 12;

---Total Quantity Amount of Each Genre
SELECT e.Genre, SUM(o.Total_Amount) AS Total_Amount
FROM Books e
JOIN Orders o
ON e.Book_ID = o.Book_ID
GROUP BY e.Genre;

---Ranking BOOks by the order on the basis of genre
SELECT *
FROM (
    SELECT
        Genre,
        Book_ID,
        Total_Order_Quantity,
        RANK() OVER (
            PARTITION BY Genre
            ORDER BY Total_Order_Quantity DESC
        ) AS Genre_Rank
    FROM (
        SELECT
            b.Genre,
            b.Book_ID,
            SUM(o.Quantity) AS Total_Order_Quantity
        FROM Books b
        JOIN Orders o
        ON b.Book_ID = o.Book_ID
        GROUP BY b.Genre, b.Book_ID
    ) t1
) t2
ORDER BY Genre, Genre_Rank;
