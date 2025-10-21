# Phase 1: Business Understanding

## Business Context
The company is a U.S.-based retail store specializing in backpacks, handbags, and accessories. The dataset, sourced from Kaggle, covers the period from January 2014 to December 2018 and includes more than 64,000 recorded sales orders across multiple U.S. states and regions.

The main data sources are:
- **Sales Orders:** detailed transaction history including quantities, prices, discounts, and profits.  
- **Customers:** customer profiles and purchase histories for behavior analysis.  
- **Products:** catalog information such as product names, categories, and unit costs.  
- **Regions and State Regions:** geographic segmentation of sales performance across 48 U.S. states.  

All datasets were extracted from Kaggle and integrated through an ETL process using SQL, ensuring consistency and analytical readiness for further exploration and visualization using Python and Power BI.

## Business Problem
The retail company seeks to better understand the distribution of revenue and profit across products, regions, and customer groups. While profitability is stable overall, variations across states and product categories indicate opportunities for optimization. The company needs to determine which products and regions generate the highest profit margins, identify seasonal trends in sales, and forecast future revenue to support more effective sales planning, pricing strategies, and inventory management.

## Objectives
- Identify top-performing products, states, and customer segments that drive the majority of sales and profits.  
- Analyze revenue distribution and profit margin differences across the U.S. market.  
- Detect seasonal patterns that influence sales performance.  
- Develop an interactive Power BI dashboard to visualize sales, profits, and regional trends dynamically.  
- Apply a **Statistical Forecasting Model** using Prophet to predict future monthly revenue and detect seasonal peaks (March, August, November, and December).
