# 📊 Customer Churn Analysis & Prediction with SQL Server, Power BI & Python

Churn analysis & prediction with SQL Server, Power BI, and Python (Random Forest). Complete ETL + BI + ML pipeline.

## 🚀 Project Overview

A complete end-to-end project for **Customer Churn Analysis and Prediction** using:
- 🗃️ SQL Server for ETL and data modeling
- 📈 Power BI for dynamic dashboards
- 🤖 Python (Random Forest) for predictive modeling

🎯 **Objectives**:
- Analyze customer behavior by demographics, geography, account, and service
- Identify churn trends and patterns
- Predict potential future churners

---

## 🧱 Project Architecture

📦 Customer-Churn-Analysis
│
├── 📊 PowerBI_Dashboard
│ └── PowerBI_Report.pbix
├── 🧠 Churn_Prediction_Model
│ └── churn_model.ipynb
├── 📄 ETL_SQL_Scripts
│ ├── create_database.sql
│ ├── data_exploration.sql
│ └── clean_and_load.sql
├── 📈 Prediction_Results
│ └── Predictions.csv
└── README.md

yaml
Copy
Edit

---

## ⚙️ Tech Stack

| 💡 Component        | 🔧 Technology                  |
|--------------------|-------------------------------|
| Database            | SQL Server (SSMS)             |
| Visualization       | Power BI                      |
| Machine Learning    | Python (Jupyter Notebook)     |
| Python Libraries    | `pandas`, `sklearn`, `seaborn`, `matplotlib` |

---

## 📊 Step-by-Step Workflow

### 🛠️ Step 1: ETL in SQL Server

- 📂 Create `db_Churn` database
- 📥 Import raw CSV to `stg_Churn` using Import Wizard
- 🧹 Clean & transform data (fix BIT issues, handle NULLs)
- 🔁 Load to `prod_Churn` with meaningful defaults
- 👁️ Create views: `vw_ChurnData` (Churn/Stayed), `vw_JoinData` (Joiners)

---

### 🔄 Step 2: Power BI Data Transformations

- ➕ Add `Churn Status` column (binary)
- 📊 Categorize: `Monthly_Charge`, `Age Group`, `Tenure Group`
- 🔃 Unpivot service columns to analyze subscriptions

---

### 🧮 Step 3: Power BI DAX Measures

DAX
Total Customers = COUNT(prod_Churn[Customer_ID])
New Joiners = CALCULATE(COUNT(prod_Churn[Customer_ID]), prod_Churn[Customer_Status] = "Joined")
Total Churn = SUM(prod_Churn[Churn Status])
Churn Rate = [Total Churn] / [Total Customers]
📈 Step 4: Power BI Dashboards
🧾 Summary Page
📌 KPIs: Total Customers | New Joiners | Total Churn | Churn Rate

## screenshot dashboard
![Screenshot 2025-07-01 191121](https://github.com/user-attachments/assets/9f803305-84d8-4fc7-a730-126326573706)

👤 Demographic: Gender, Age Group

💳 Account Info: Payment Method, Contract Type, Tenure

🌍 Geography: Top 5 States

🧭 Churn Distribution: Category + Tooltip (Churn Reason)

🌐 Services: Internet Type, Streaming, Data Plans

🧠 Tooltip Page
🎯 Breakdown by Churn Reason (interactive hover data)

🤖 Step 5: Machine Learning Model – Random Forest
🧪 Train model using vw_ChurnData

🧼 Preprocess with LabelEncoder

🔍 Evaluate using Confusion Matrix & Feature Importance

📈 Predict churn on vw_JoinData

💾 Save output to Predictions.csv

📉 Step 6: Predicted Churn Dashboard (Power BI)
👁️ Visualize:
📋 Customer ID, Monthly Charge, Revenue, Refunds, Referrals

📍 Geographic: State

👥 Demographic: Gender, Age Group, Marital Status

💼 Account Info: Contract, Payment Method, Tenure Group

📌 Insights & Business Impact
✅ Identified top churn-prone customer segments
✅ Enabled proactive targeting for retention campaigns
✅ Predictive model improves long-term strategic planning

🔮 Future Enhancements
🧾 Automate ETL using SQL Server Agent

🌐 Live ML refresh via Power BI Gateway

🧠 Try advanced models like XGBoost or LightGBM
## screenshot dashboard
![Screenshot 2025-07-01 191133](https://github.com/user-attachments/assets/4ef335af-2b15-4936-8f95-828156f91153)

🤝 Contributing
Contributions, suggestions, and improvements are welcome!
If you'd like to contribute:

🍴 Fork the repo

💡 Create your feature branch (git checkout -b feature/AmazingFeature)

✅ Commit your changes (git commit -m 'Add some AmazingFeature')

📤 Push to the branch (git push origin feature/AmazingFeature)

🔁 Open a Pull Request

📝 License
This project is licensed under the MIT License.

Copyright © 2025
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files...

🔗 Connect With Me
🐙 GitHub: github.com/Aayushy7777

💼 LinkedIn: linkedin.com/in/aayush-yadav2004

⭐ Feedback & Support
If this project helped you:

🌟 Star this repo

🗣 Share your feedback

🛠 Suggest ideas via issues or pull requests

📊 Empowering data-driven decisions. Let’s reduce churn together! 🚀

yaml
Copy
Edit

---

✅ You can now **copy-paste** this into your GitHub repo’s `README.md`.  
Let me know if you'd like me to provide the `LICENSE` file (MIT) or help create GitHub tags/releases too!
