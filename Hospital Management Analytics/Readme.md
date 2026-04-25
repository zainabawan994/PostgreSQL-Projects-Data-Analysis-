# 📊 Patient Satisfaction & Hospital Performance Analysis (PostgreSQL)

## 📌 Project Overview

This project analyzes hospital patient data to identify patterns in:
- Patient satisfaction
- Service performance
- Stay duration impact
- Age-based trends
- Monthly patient flow

The goal is to generate insights that help improve hospital operations and patient experience.

---

## 📂 Dataset Description

The dataset includes:

- `patient_id` – Unique ID  
- `name` – Patient name  
- `age` – Patient age  
- `arrival_date` – Admission date  
- `departure_date` – Discharge date  
- `service` – Department (ICU, Emergency, Surgery)  
- `satisfaction` – Satisfaction score  

---

## 🛠️ Data Processing

### Feature Engineering
- Created a new column:
  - **stay_days = departure_date - arrival_date**

This helps analyze patient duration and its effect on satisfaction.

---

## 📊 Key Insights

### 🔹 Overall Data
- Total patients: **1000**
- Wide distribution of age groups

**Insight:**  
Dataset is large enough to generate meaningful patterns.

---

### 🔹 Service-wise Performance

**Findings:**
- Surgery has the highest average satisfaction
- Other services show lower satisfaction levels

**Insight:**  
Performance varies across departments.

**Decision:**  
- Improve low-performing services  
- Apply best practices from Surgery  

---

### 🔹 Monthly Trends

**Findings:**
- Patient count changes every month  
- Satisfaction also fluctuates  

**Insight:**  
Hospital workload affects service quality.

**Decision:**  
- Increase staff during peak months  
- Monitor satisfaction monthly  

---

### 🔹 Stay Duration vs Satisfaction

**Findings:**
- Long stay patients have higher satisfaction  

**Insight:**  
Patients staying longer receive better attention and care.

**Decision:**  
- Improve experience for short-stay patients  
- Enhance admission and discharge process  

---

### 🔹 Service vs Stay & Satisfaction

**Findings:**
- Surgery patients stay longer and are more satisfied  

**Insight:**  
Better engagement in complex treatments improves satisfaction.

**Decision:**  
- Apply similar care approach in other departments  

---

### 🔹 Patient Ranking (Window Function)

**Findings:**
- Patients ranked based on satisfaction  

**Insight:**  
Helps identify best and worst experiences.

**Decision:**  
- Analyze low-ranked patients for issues  
- Use high-ranked cases as benchmarks  

---

### 🔹 Age-Based Analysis

**Findings:**
- Patients above 50 are significant  
- Higher ICU and Emergency usage  

**Insight:**  
Older patients need more critical care.

**Decision:**  
- Improve geriatric care  
- Strengthen ICU services  

---

### 🔹 Service Usage by Age

**Findings:**
- Age > 50 uses ICU, Emergency, Surgery more  

**Insight:**  
Demand increases with age.

**Decision:**  
- Allocate resources accordingly  

---

### 🔹 High Stay & High Satisfaction Patients

**Findings:**
- Patients with stay > 5 days show high satisfaction  

**Insight:**  
Longer engagement improves experience.

**Decision:**  
- Focus on continuous care and communication  

---

### 🔹 Monthly Service Distribution

**Findings:**
- Different services peak in different months  

**Insight:**  
Demand is not constant across services.

**Decision:**  
- Plan staffing based on monthly trends  

---

## 🧠 SQL Concepts Used

- Aggregation functions (`AVG`, `COUNT`)
- Window functions (`RANK`, `OVER`)
- CTE (Common Table Expressions)
- Date functions (`DATE_TRUNC`)
- Conditional logic (`CASE`)
- Views (`CREATE VIEW`)

---

## 📈 Business Impact

This analysis helps to:
- Improve patient satisfaction  
- Optimize department performance  
- Manage hospital resources better  
- Identify high-risk patient groups  

---

## 🚀 Future Improvements

- Build Power BI dashboard  
- Add machine learning for prediction  
- Include more features (gender, disease)  

---

## ✅ Conclusion

- Satisfaction varies by service  
- Longer stays lead to higher satisfaction  
- Older patients require more care  
- Surgery performs best  

**Final Decision:**
- Improve low-performing services  
- Focus on short-stay experience  
- Optimize resources based on trends  