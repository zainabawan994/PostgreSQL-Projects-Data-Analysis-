Select * from Record;

----Service-wise Performance Analysis
SELECT service,
       COUNT(*) AS total_patients,
       Round(AVG(satisfaction),2) AS avg_satisfaction,
       Round(AVG(departure_date - arrival_date),2) AS avg_stay
FROM Record
GROUP BY service
ORDER BY avg_satisfaction DESC;

---Monthly Trend Analysis
SELECT DATE_TRUNC('month', arrival_date) AS month,
       COUNT(*) AS total_patients,
       Round(AVG(satisfaction),2) AS avg_satisfaction
FROM Record
GROUP BY month
ORDER BY month;

--- Customer Satisfication comparsion with its department average
SELECT *,
       AVG(satisfaction) OVER (PARTITION BY service) AS service_avg
FROM Record;


--- Ranking Patient According to the Satisfiation
SELECT *,
       RANK() OVER (ORDER BY satisfaction DESC) AS rank_high
FROM Record;

---Effect of stay duration on satisfcation

SELECT 
    CASE 
        WHEN (departure_date - arrival_date) <= 3 THEN 'Short Stay'
        WHEN (departure_date - arrival_date) <= 7 THEN 'Medium Stay'
        ELSE 'Long Stay'
    END AS stay_type,
    Round(AVG(satisfaction),2)
FROM Record
GROUP BY stay_type;  --- insight long stay have more satification level


--- Services wise stay and satification comparsion
WITH stay_data AS (
    SELECT *,
           departure_date - arrival_date AS stay_days
    FROM Record
)
SELECT service,
       Round(AVG(stay_days),2) as Stay_Avg,
       Round(AVG(satisfaction),2) as Satisfaction_Avg
FROM stay_data
GROUP BY service; ---- surgery have more satification then other serivces

----View
CREATE VIEW patient_summary AS
SELECT service,
       COUNT(*) AS total,
       Round(AVG(satisfaction),2) AS avg_satisfaction
FROM Record
GROUP BY service;
Select * From patient_summary;