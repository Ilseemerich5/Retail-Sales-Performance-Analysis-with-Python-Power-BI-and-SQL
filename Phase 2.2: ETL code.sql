--1. Creating Base Tables

-- Main sales orders table
CREATE TABLE sales_orders (
    order_number TEXT,
    order_date DATE,
    customer_name_index INT,
    channel TEXT,
    currency_code TEXT,
    warehouse_code TEXT,
    delivery_region_index INT,
    product_description_index INT,
    order_quantity INT,
    unit_price NUMERIC(10,2),
    line_total NUMERIC(12,2),
    total_unit_cost NUMERIC(12,2)
);

-- customers
CREATE TABLE customers (
    customer_name_index INT PRIMARY KEY,
    customer_name TEXT,
    gender TEXT
);

-- regions
CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    name TEXT,
    county TEXT,
    state_code TEXT,
    state TEXT,
    type TEXT,
    latitude DECIMAL(9,5),
    longitude DECIMAL(9,5),
    area_code INT,
    population INT,
    households INT,
    median_income INT,
    land_area BIGINT,
    water_area BIGINT,
    time_zone TEXT
);

-- states regions
CREATE TABLE state_regions (
    state_region_index TEXT PRIMARY KEY,
    state_name TEXT,
    region_name TEXT
);

-- products
CREATE TABLE products (
    index INT PRIMARY KEY,
    product_name TEXT
);

--2017 budgets: NOTE at the end i did not use this data
CREATE TABLE budgets_2017 (
    product_name TEXT,
    budget NUMERIC(12,2)
);

-- Verifications
SELECT * FROM sales_orders;
SELECT * FROM state_regions;
SELECT * FROM regions;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM budgets_2017;


--2. Data Cleaning and Transformation
--View all rows where unit_price is either 0 or NULL
SELECT *
FROM sales_orders
WHERE unit_price = 0 OR unit_price IS NULL;

--View all rows where order_quantity is either 0 or NULL
SELECT *
FROM sales_orders
WHERE order_quantity = 0 OR order_quantity IS NULL;

--No NULL values were found

-- Add a new column for profit
ALTER TABLE sales_orders
ADD COLUMN profit NUMERIC(12,2);

UPDATE sales_orders
SET profit = unit_price - total_unit_cost;

-- Add a new column for profit margin
ALTER TABLE sales_orders
ADD COLUMN profit_margin NUMERIC(12,2);

UPDATE sales_orders
SET profit_margin = profit / unit_price;

-- Add columns to customers
ALTER TABLE customers
ADD COLUMN first_purchase_date DATE,
ADD COLUMN last_purchase_date DATE,
ADD COLUMN total_purchases INT,
ADD COLUMN total_transaction_amount NUMERIC(12,2);

-- Update the columns using data from sales_orders
UPDATE customers c
SET 
    first_purchase_date = sub.first_purchase_date,
    last_purchase_date = sub.last_purchase_date,
    total_purchases = sub.total_purchases,
    total_transaction_amount = sub.total_transaction_amount
FROM (
    SELECT
        customer_name_index,
        MIN(order_date) AS first_purchase_date,
        MAX(order_date) AS last_purchase_date,
        SUM(order_quantity) AS total_purchases,
        SUM(line_total) AS total_transaction_amount
    FROM sales_orders
    GROUP BY customer_name_index
) sub
WHERE c.customer_name_index = sub.customer_name_index;
