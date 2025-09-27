## 🚀 SQL – Sales Analysis  
*Turning raw sales data into actionable insights 💼📊*  

### **📖 Overview**  
This project dives into sales data using SQL to uncover insights on business performance, customer engagement, and retention. Through structured queries and analysis, it highlights patterns and trends that support smarter decision-making while showcasing SQL’s power as an analytical tool.  


### **❓ Business Questions**  

1️⃣ **Customer Segmentation**  
- How can we segment customers into **High, Mid, and Low Value groups** based on their Lifetime Value (LTV)?  
- What is the **count of customers** in each segment, and what is the **average LTV** per segment?  

2️⃣ **Cohort Analysis**  
- How does revenue evolve across different **cohort years (2015–2024)**?  
- What is the **total revenue** and **average customer revenue** in each cohort year?  
- How does the **cohort year impact performance in successive years**?  

3️⃣ **Retention Analysis**  
- Based on cohort year and customer status (**Active vs. Churned within 6 months**), what is the **distribution of customers** across these statuses?  
- What is the **percentage of customers retained vs. churned** in each cohort?  


### **🧪 Analysis Approach**  

1️⃣ **Customer Segmentation**  
I classified customers into **High, Mid, and Low Value** groups based on their Lifetime Value (LTV), calculated from total net revenue over their entire relationship. This helps identify how much value each segment contributes to overall sales.  

- 🔗 [SQL Query](1_customer_segmentation.sql)  
- 📊 [Visualization](images\customer_segments.png)  
 

### **👥 Customer Segmentation**  
From the segmentation analysis based on **Lifetime Value (LTV):**  

| Customer Segment | Total LTV (USD)     | Customer Count | Avg. LTV (USD) |
|------------------|---------------------|----------------|----------------|
| 3 - High-Value   | 135,606,968.77      | 12,372         | 10,960.80      |
| 2 - Mid-Value    | 66,367,810.48       | 24,743         | 2,682.29       |
| 1 - Low-Value    | 4,298,367.21        | 12,372         | 347.43         |  

📊 **Key Finding:**  
Most revenue is concentrated among **High-Value customers**, while **Low-Value customers generate very little revenue despite having a similar count to High-Value customers**. Mid-Value customers form the largest group but still contribute less revenue per customer compared to High-Value ones.  

📌 **Business Insight:**  
The company should prioritize **retaining and nurturing High-Value customers**, while also designing strategies (like loyalty programs, upselling, and personalized offers) to **convert Low and Mid-Value customers into High-Value segments**.  


---

2️⃣ **Cohort Analysis**  
I analyzed customers by their **first purchase year (2015–2024)** to measure total revenue, average revenue per customer, and how each cohort impacts future sales performance. This uncovers trends in customer acquisition quality and revenue patterns.  

- 🔗 [SQL Query](2_cohort_analysis.sql)  
- 📊 [Visualization](images\cohort year performance.png)  

### **📅 Cohort Analysis**  
From the cohort analysis based on **first purchase year (2015–2024):**  

| Cohort Year | Total Customers | Total Revenue (USD) | Avg. Customer Revenue (USD) |
|-------------|-----------------|---------------------|-----------------------------|
| 2015        | 2,825           | 7,939,067.47        | 2,810.29                    |
| 2016        | 3,397           | 10,309,452.10       | 3,034.87                    |
| 2017        | 4,068           | 12,308,043.27       | 3,025.58                    |
| 2018        | 7,446           | 20,639,179.47       | 2,771.85                    |
| 2019        | 7,755           | 22,261,147.58       | 2,870.55                    |
| 2020        | 3,031           | 6,942,437.41        | 2,290.48                    |
| 2021        | 4,663           | 12,246,413.14       | 2,626.29                    |
| 2022        | 9,010           | 20,565,768.62       | 2,282.55                    |
| 2023        | 5,890           | 12,036,152.49       | 2,043.49                    |
| 2024        | 1,402           | 2,633,485.18        | 1,878.38                    |  

📊 **Key Finding:**  
Revenue peaked around the **2018–2019 cohorts**, with both high customer counts and strong average revenue per customer. In later cohorts (2022–2024), although customer numbers surged (e.g., 2022), the **average revenue per customer declined steadily**, suggesting weaker engagement or smaller transactions.  

📌 **Business Insight:**  
The company should **replicate the strategies from 2018–2019 cohorts** (successful acquisition + higher spending per customer) while addressing recent declines. Efforts could include improving **customer onboarding, personalized promotions, and boosting average order value** to maximize revenue from newer cohorts.  
  

---

3️⃣ **Retention Analysis**  
I measured **customer retention vs. churn** across cohorts by tracking whether customers remained active within a 6-month period. This highlights retention performance and churn risk in different cohorts.  

- 🔗 [SQL Query](3_retention_analysis.sql)  
- 📊 [Visualization](images\customer retention and chun.png)  

### **🔄 Retention Analysis**  
From the retention analysis based on **customer status (Active vs. Churned within 6 months):**  

| Cohort Year | Status   | Customer Count | Total Customers | % Status |
|-------------|----------|----------------|-----------------|----------|
| 2015        | Active   | 237            | 2,825           | 8.4%     |
| 2015        | Churned  | 2,588          | 2,825           | 91.6%    |
| 2016        | Active   | 311            | 3,397           | 9.2%     |
| 2016        | Churned  | 3,086          | 3,397           | 90.8%    |
| 2017        | Active   | 385            | 4,068           | 9.5%     |
| 2017        | Churned  | 3,683          | 4,068           | 90.5%    |
| 2018        | Active   | 704            | 7,446           | 9.5%     |
| 2018        | Churned  | 6,742          | 7,446           | 90.5%    |
| 2019        | Active   | 687            | 7,755           | 8.9%     |
| 2019        | Churned  | 7,068          | 7,755           | 91.1%    |
| 2020        | Active   | 283            | 3,031           | 9.3%     |
| 2020        | Churned  | 2,748          | 3,031           | 90.7%    |
| 2021        | Active   | 442            | 4,663           | 9.5%     |
| 2021        | Churned  | 4,221          | 4,663           | 90.5%    |
| 2022        | Active   | 937            | 9,010           | 10.4%    |
| 2022        | Churned  | 8,073          | 9,010           | 89.6%    |
| 2023        | Active   | 455            | 4,718           | 9.6%     |
| 2023        | Churned  | 4,263          | 4,718           | 90.4%    |  

📊 **Key Finding:**  
Across all cohorts, a **very high proportion of customers churned (around 90%) within 6 months**, while the **active customer base stayed consistently below 10%**. The 2022 cohort showed a slightly better retention rate (10.4%), but overall retention remains weak.  

📌 **Business Insight:**  
The company should take proactive steps to **reduce churn and increase retention**, such as:  
- Offering **loyalty programs or exclusive benefits** to active customers.  
- Running **personalized win-back campaigns** for churned customers.  
- Strengthening **early engagement in the first 6 months**, since this is the critical period for retention.  


## 🚀 Strategic Recommendations  

### **💰 Customer Segmentation**
Focus on **uplifting Low & Mid-Value customers** by offering:  
- Personalized upselling & cross-selling campaigns.  
- Exclusive discounts & tier-based loyalty rewards.  
- Data-driven targeting to **move more customers into the High-Value group**.  

👉 *Turning “average” buyers into premium contributors is the fastest way to grow revenue.*  

---

### **📊 Cohort Revenue Analysis**
Cohorts show **fluctuating average revenue** and declining performance in recent years.  
- Strengthen **onboarding strategies** for new cohorts.  
- Re-engage older cohorts with **revival offers & targeted communication**.  
- Use insights from strong years (like 2016–2019) to **replicate success factors**.  

👉 *Each cohort is a story — make every new customer’s journey profitable from day one.*  

---

### **🔄 Retention & Churn**
Retention is consistently below **10% active customers**, which is alarming.  
- Launch **early lifecycle engagement** in the first 6 months (critical churn window).  
- Create **loyalty memberships & referral programs**.  
- Build **personalized win-back journeys** for churned customers.  

👉 *Keeping a customer is cheaper than finding a new one — retention is the real growth hack.*  

### **🛠️ Technical Details**

Because every great analysis needs the right toolkit 🧰✨  

- **Database**: PostgreSQL 🐘  
- **Analysis Tool**: PostgreSQL (SQL queries & exploration) 📊  
- **Visualization**: ChatGPT, Gemini & Excel 📈  





