Smartphones Sales Prediction-2024 SQL Project

Project Overview
The Smartphones-2024 project is a comprehensive SQL-based data analysis focusing on smartphone specifications, pricing trends, and brand insights. This project leverages structured query language (SQL) to extract, manipulate, and analyze smartphone data efficiently. Advanced SQL concepts such as **joins, triggers, indexing, and stored procedures are incorporated to enhance data processing and ensure database integrity.

Dataset Description
The dataset consists of smartphone-related attributes, including:  
- **Smartphone Name** (`VARCHAR(50)`)  
- **Brand** (`VARCHAR(50)`)  
- **RAM** (`INT`)  
- **Storage** (`INT`)  
- **Color** (`VARCHAR(50)`)  
- **Freebies** (`VARCHAR(50)`, e.g., "Yes" or "No")  
- **Final Price** (`DECIMAL(10,3)`)  

Key Objectives & SQL Implementations 

1. Price & Feature Analysis
- Analyzed pricing trends by calculating average price by brand and color.  
- Identified top 5 most expensive smartphones and those priced below $500.  
- Compared smartphone pricing based on RAM and storage configurations.  

2. Brand Market Insights
- Counted the number of smartphones offered by each brand.  
- Determined the brand with the highest and lowest average price.  
- Identified which brands offer smartphones in specific colors.  

3. Freebies Impact on Pricing
- Extracted smartphones with and without freebies and compared average prices.  
- Identified trends in free item offerings across different brands.  

4. Performance Optimization using Indexing
- Created indexes on frequently queried columns (`Brand`, `Final Price`, `RAM`, `Storage`) to improve query performance.  

5. Advanced SQL Implementations  

 Joins (Multi-Table Queries)  
- Used INNER JOIN, LEFT JOIN, and RIGHT JOIN to fetch brand details from a separate `brands` table.  
- Joined pricing data with a `discounts` table to analyze discounted vs. non-discounted prices.  

Triggers for Data Integrity
- Implemented a BEFORE INSERT trigger to ensure valid price entries (e.g., no negative prices).  
- Used an AFTER UPDATE trigger to log changes when price or storage is updated.  

Stored Procedures & Functions* 
- Created a stored procedure to dynamically retrieve smartphones within a user-specified price range.  
- Developed a function to classify smartphones into categories (`Budget`, `Mid-Range`, `Flagship`).  

Conclusion 
The Smartphones-2024 SQL Project effectively demonstrates the power of SQL queries, joins, triggers, indexing, and stored procedures in handling and analyzing structured data. The insights derived help in understanding pricing trends, user preferences, and brand competitiveness** in the smartphone market.  
