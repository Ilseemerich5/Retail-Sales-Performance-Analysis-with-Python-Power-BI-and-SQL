# Phase 2: ETL (Extract, Transform, Load)

## ETL Process
The objective of this phase was to integrate and prepare the datasets obtained from Kaggle for analysis, ensuring consistency, integrity, and completeness. The entire ETL process was performed in PostgreSQL, leveraging its capacity for relational database management, data transformation, and validation.

This process involved three main stages:
1. Database and table creation to define the relational structure of the retail data.
2. Data cleaning and transformation to ensure data accuracy and completeness.
3. Feature generation to enrich the data model with analytical variables such as profit, profit margin, and customer-level metrics.


## 1. Database and Table Creation
Six main tables were created to organize the different business dimensions:
- **sales_orders:** Contained transactional information such as order number, order date, product reference, order quantity, unit price, line total, and total unit cost.  
- **customers:** Stored customer information, including name and gender.  
- **products:** Listed product details, focusing on the company’s main categories — backpacks, handbags, and accessories.  
- **regions:** Contained geographic and demographic attributes for U.S. cities and states, including population, median income, and land area.  
- **state_regions:** Defined the relationship between states and their broader regions across the United States.  
- **budgets_2017:** Included budget allocations by product for 2017. **Note: This table was created but not used for this project.**  

After creating all tables, verification queries (`SELECT * FROM ...`) were executed to confirm that data had been properly loaded and structured.


## 2. Data Cleaning and Transformation
A comprehensive data validation process was carried out to identify missing or invalid values and ensure accuracy across financial fields.

- **Validation of key metrics:** Checks confirmed that there were no NULL or zero values in essential columns such as `unit_price` or `order_quantity`.  
- **Profit calculation:** A new column `profit` was added to the `sales_orders` table and calculated as:  
profit = unit_price - total_unit_cost
- **Profit margin calculation:** A `profit_margin` column was also created and computed as:  
profit_margin = profit / unit_price

- **Customer enrichment:** The `customers` table was expanded with new fields to provide a comprehensive view of purchasing behavior:
- `first_purchase_date`  
- `last_purchase_date`  
- `total_purchases`  
- `total_transaction_amount`  

These metrics were derived through an SQL subquery that aggregated data from `sales_orders` by `customer_name_index`, enabling a deeper understanding of each customer’s activity, purchase frequency, and total spending.


## Outcome
After completing the ETL process, the dataset was transformed into a clean and business-oriented database that clearly reflects the company’s sales performance and customer behavior.

This step allowed for the detection of patterns in purchase frequency, profitability, and regional differences across the United States. Each customer record now includes useful behavioral insights, such as the time span between their first and last purchases and their total spending over the period analyzed.

Additionally, the creation of profit and margin variables made it possible to identify which product categories — particularly backpacks, handbags, and accessories — contributed the most to overall performance.

The resulting structure provided a solid foundation for the analytical phase, enabling a more strategic view of sales dynamics and customer engagement over time.
