# Retail-Sales-Performance-Analysis-with-Python-Power-BI-and-SQL

## Description
This project analyzes retail sales data from a U.S.-based retail store to uncover insights and trends driving business performance. The analysis integrates over 64,000 sales orders, covering multiple data sources including sales orders, customers, products, regions, and state-level regions.

The workflow follows a structured process: **Business Understanding → ETL → EDA → Statistical Forecasting Model → Visualization**, transforming raw retail data into actionable business insights.

---

## Business Understanding
**Objective:** Understand retail sales performance, profitability, and customer behavior to provide actionable insights for decision-making.  
**Scope:** Analyze transactional, product, customer, and regional data to identify revenue distribution, high-performing products, and efficient regions.  

**Key Questions:**
- Which products and states generate the highest revenue and profit margins?  
- What are the characteristics of top customers and high-value transactions?  
- How does seasonality affect sales trends?  

---

## Methodology

### ETL (Data Cleaning & Transformation)
- Created base tables for sales orders, customers, products, regions, and state regions  
- Calculated additional metrics: profit, profit margin, first and last purchase dates, total purchases, total transaction amount  
- Verified and cleaned the dataset, ensuring no null values in key financial fields  

### Exploratory Data Analysis (EDA)
- Analyzed over 64,000 sales orders across 10,684 unique order numbers and three main sales channels  
- Average order: ~15 units at $8.44 per unit, mean line total of $2,284.38, and average profit of $852.30 per order  
- Profit margin averages 37% (range 15–60%), indicating generally healthy profitability  
- Customers: 175 unique, predominantly female, strong engagement with 2,022–4,644 purchases per customer  
- Products: 30 unique items, with Montclair Leather Tote and Aspen Leather Backpack standing out for high revenue and profit margins  
- Regions: Data covers 994 U.S. cities in 48 states, allowing detailed geographic performance analysis  
- Seasonality: Peaks observed in March, May, and October–December; revenue lowest in February and April  
- Correlation Analysis: Line total, unit price, and total unit cost strongly correlated with profit; order quantity and profit margin show little correlation with revenue  

### Visualization
- Interactive Power BI dashboard post-EDA to explore sales, profits, top products, regional trends, and customer segmentation dynamically  

### Statistical Forecasting Model
- Implemented revenue prediction using **Prophet**, a time series forecasting model, to estimate monthly revenue from March to December 2018 based on historical sales from January 2014 to February 2018  
- Forecasting results identified seasonal peaks in March, August, November, and December, reflecting expected retail cycles, promotional periods, and strategic business timing  
- This step demonstrates how a statistical forecasting model can be applied to predict revenue trends and support business planning, forming a foundation for further predictive modeling  

---

## Key Insights
- Wholesale channel generates the highest revenue; profit margins are consistent across channels  
- California, Illinois, Florida, and Texas drive the most revenue; Nebraska, Wyoming, and Montana achieve highest profit margins per store  
- Top products balance strong margins and high revenue; mid-priced products often outperform low-priced items in profitability  
- Top customers demonstrate long-term engagement and high transaction values, ideal for targeted loyalty strategies  
- Seasonality analysis confirms predictable revenue peaks aligned with promotional and fiscal cycles  

---

## Recommended Next Steps
Further analysis is recommended to obtain deeper product-level insights, including:  
- Predicting demand for individual items to support sales planning, inventory optimization, and strategic stock management  
- Evaluating the effects of seasonal patterns and customer segmentation to enhance operational decision-making and overall efficiency in the retail business  

---

## Tools
- **SQL:** ETL, data cleaning, creating base tables, and updating customer and sales metrics  
- **Python:** Data preprocessing, Exploratory Data Analysis (EDA), and time series modeling using Prophet  
- **Power BI:** Interactive dashboards for visualizing sales, profits, products, and regional performance  

---

## Python Libraries Used
- `pandas` for data manipulation and analysis  
- `numpy` for numerical computations  
- `matplotlib` and `seaborn` for data visualization  
- `prophet` for time series forecasting  

---

## Dataset
- Sales orders  
- Customer information  
- Product details  
- Regional and state-level data  

---

## Author
**Ilse EMERICH**
