Select * From Record;

--- Basic Exploration of the data

Select count(*) as total_patient 
From Record; -- Total 1000 Patient

--- Age Analysis

--min age
Select Min(age) as Min_Patient_Age 
From Record;
--max age
Select Max(age) as Max_Patient_Age 
From Record;
--average age
Select Round(avg(age),2) as Min_Patient_Age 
From Record;

----Total Patient Having age 50+

Select count(*) as Total_Patient_Above_50
from Record
where age >=50;

---Total Patient having Age Less than 50

Select count(*) as Total_Patient_Below_50
from Record
where age <50;


Select count(*) as Patient_IN_ICU
from Record
where age >50 AND service='ICU';

--Total Patient Having Age 50+ and in Emergency
Select count(*) as Patient_IN_Emergency
from Record
where age >50 AND service='emergency';

---Patient_Having_Surgery
Select count(*) as Patient_Having_Surgery
from Record
where age >50 AND service='surgery';

-- Length of stay 
SELECT *,
       departure_date - arrival_date AS stay_days
FROM Record;

Select * From Record;


---Patient_Having_Surgery and total day of stay in hospital
SELECT *,
       departure_date - arrival_date AS stay_days
from Record
where age >50 AND service='surgery';

--80+ pateint total day in emergency

SELECT *,
       departure_date - arrival_date AS stay_days
from Record
where age >80 AND service='emergency';


--- Patient Stay 5 and satisfication is 50+
SELECT *
from Record
where (departure_date - arrival_date) > 5  AND satisfaction>50;

---checking patient having age of 20 and 30 exact
select
count(*) 
from record
where age=20;

select
count(*) 
from record
where age=30;

