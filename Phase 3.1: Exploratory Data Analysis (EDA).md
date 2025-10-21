# Phase 3: Exploratory Data Analysis (EDA)

In this phase, an in-depth exploratory analysis was conducted to understand sales performance, customer behavior, product trends, and regional patterns. The analysis used the transformed and cleaned databases prepared in the previous ETL phase, ensuring consistency and reliability.

## Tools and Libraries
The EDA was performed using Python, leveraging several libraries for data manipulation and visualization:
- **pandas** for data handling and aggregation  
- **numpy** for numerical calculations and statistical operations  
- **matplotlib** and **seaborn** for creating visualizations, including:
  - Revenue distribution across states  
  - Profit margins and revenue per product  
  - Seasonal trends  

These visualizations provided clear insights into patterns and anomalies in the data, supporting interpretation and decision-making.

## 1. Customer Overview
The dataset includes 175 unique customers, predominantly female. Customers show strong engagement, with total purchases ranging from 2,022 to 4,644 and an average total transaction amount of around $7.06M, highlighting a highly loyal and active customer base.

## 2. Geographic Analysis
Revenue is concentrated in high-performing states such as California, Illinois, Florida, and Texas, which generate the largest sales volumes. Smaller states like Nebraska, Wyoming, and Montana achieve higher profit margins despite lower total revenue, demonstrating operational efficiency at lower scale.

## 3. Product-Level Insights
The dataset contains 30 unique products, mainly backpacks, handbags, and accessories. Items like the Aspen Leather Backpack and Montclair Leather Tote stand out for combining high revenue with strong profit margins (≈39–40%), showing an effective balance between pricing and demand. Mid-priced products generally outperform low-priced items in overall profitability.

## 4. Transaction and Profitability Analysis
The average order includes ~15 units per product at $8.44 per unit, generating a mean line total of $2,284.38 and average profit of $852.30 per order. Profit margins average 37%, indicating healthy profitability across all transactions. Correlation analysis shows that unit price, line total, and total unit cost strongly drive profit, while order quantity has less impact on overall revenue.

## 5. Seasonality and Trends
Revenue shows predictable seasonal peaks in March, May, and October–December, while February and April record lower sales. These trends likely reflect promotional periods, strategic business timing, and seasonal demand.

## Key Insights and Recommendations
- High-value states and products should be prioritized for marketing and stock allocation.  
- Products balancing strong margins and high demand represent the most strategic revenue opportunities.  
- Seasonality patterns indicate the need for proactive planning around peak months to maximize sales and profits.  
- Customer loyalty is strong, but targeting specific high-revenue segments can further optimize performance.  

## Overall Conclusion
The analysis reveals a retail business with consistent profitability and high customer engagement. Revenue and profit are driven not only by high-volume states and products but also by efficiency in smaller regions and well-balanced product pricing. Seasonality impacts sales predictably, providing opportunities to strategically plan inventory and promotions. The visualizations created during this phase provide actionable insights and a clear foundation for predictive modeling and revenue forecasting.
