# 📊 Customer Churn Analysis & Prediction with SQL Server, Power BI & Python

![ETL Process](https://img.shields.io/badge/ETL-SQL%20Server-blue)
![Visualization](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Machine Learning](https://img.shields.io/badge/Random%20Forest-Model-green)

## 🚀 Project Overview

This project implements a full-fledged **ETL process**, interactive **Power BI dashboards**, and a **machine learning model (Random Forest)** to **analyze**, **visualize**, and **predict** customer churn behavior.

🔍 The project goals include:
- Analyzing customer demographics, geography, account, and service data
- Identifying churner profiles and potential marketing strategies
- Building a predictive model for customer churn using Python

---

## 📁 Project Structure

```
📦 Customer-Churn-Analysis
│
├── 📊 PowerBI_Dashboard
│   └── PowerBI_Report.pbix
├── 🧠 Churn_Prediction_Model
│   └── churn_model.ipynb
├── 📄 ETL_SQL_Scripts
│   ├── create_database.sql
│   ├── data_exploration.sql
│   └── clean_and_load.sql
├── 📈 Prediction_Results
│   └── Predictions.csv
└── README.md
```

---

## ⚙️ Tools & Technologies Used

| Component         | Technology                  |
|------------------|-----------------------------|
| **Database**      | SQL Server (SSMS)           |
| **Visualization** | Power BI                    |
| **Machine Learning** | Python (Jupyter Notebook) |
| **Libraries**     | pandas, scikit-learn, seaborn, matplotlib |

---

## 🛠️ Step-by-Step Process

### 🔄 Step 1: ETL in SQL Server

- **Create Database**: `db_Churn`
- **Load CSV to Staging**: Using Import Wizard in SSMS
- **Data Cleaning**: Replace nulls, correct datatypes (e.g., BIT → VARCHAR)
- **Exploration**: Check distribution by Gender, Contract, State, Customer Status
- **Move to Production Table**: Cleaned data moved from `stg_Churn` → `prod_Churn`
- **Views Created**: 
  - `vw_ChurnData` – For churn/stay analysis
  - `vw_JoinData` – For new joiners

---

### 📊 Step 2: Power BI Data Transformation

- **Transformations**
  - `Churn Status` as binary
  - Grouping: `Age Group`, `Tenure Group`, `Monthly Charge Range`
  - Service Data Unpivoted

- **Reference Tables**
  - `mapping_AgeGrp`
  - `mapping_TenureGrp`
  - `prod_Services`

---

### 📐 Step 3: Power BI Measures

```DAX
Total Customers = COUNT(prod_Churn[Customer_ID])
New Joiners = CALCULATE(COUNT(prod_Churn[Customer_ID]), prod_Churn[Customer_Status] = "Joined")
Total Churn = SUM(prod_Churn[Churn Status])
Churn Rate = [Total Churn] / [Total Customers]
```

---

### 📈 Step 4: Power BI Dashboards

#### 📌 Summary Page:
- KPIs: Total Customers, New Joiners, Total Churn, Churn Rate%
- Demographics: Gender, Age Group
- Account Info: Payment Method, Contract Type, Tenure
- Geography: Top 5 States
- Churn Breakdown: Category & Reason
- Services Used: Internet Type, Streaming, Data Usage

#### 🧾 Tooltip Page:
- Churn Reasons – Filtered distribution

---

### 🤖 Step 5: Machine Learning Model (Random Forest)

- Tools: Jupyter Notebook (Python, Scikit-Learn)
- Dataset: `vw_ChurnData` (for training), `vw_JoinData` (for prediction)
- Key Steps:
  - Preprocessing: Label encoding, dropping unnecessary columns
  - Model Training: `RandomForestClassifier`
  - Evaluation: Confusion matrix, classification report, feature importance
  - Prediction Output: `Predictions.csv` with customer churn prediction

---

### 📉 Step 6: Predicted Churn Dashboard in Power BI

#### Key Visuals:
- Grid View: Customer ID, Revenue, Refunds, Referrals
- Demographics: Gender, Age Group, Marital Status
- Account: Payment, Contract, Tenure
- Geographic: State

---

## 🧠 Insights Delivered

- **High-Churn Segments** identified by demographic & service patterns
- **Feature Importance** from Random Forest highlights churn drivers
- **Marketing Focus**: Targeted retention for contracts, states, age groups

---

## 💡 Future Enhancements

- Automate ETL with SQL Server Agent
- Integrate model predictions via Power BI Gateway
- Explore more advanced ML models (XGBoost, Neural Nets)

---

## 🔗 Connect With Me

👨‍💻 **GitHub**: [github.com/Aayushy7777](https://github.com/Aayushy7777)  
💼 **LinkedIn**: [linkedin.com/in/aayush-yadav2004](https://www.linkedin.com/in/aayush-yadav2004/)

---

## 📬 Feedback & Contributions

Found this useful? 🌟 Star the repo!  
Got feedback or ideas? Open an issue or submit a PR.

---

**Cheers! Happy Analyzing 🧠📊**
