# E-commerce Project Using SQL

## Project Overview

This project involves building an ETL (Extract, Transform, Load) pipeline for an e-commerce platform using PostgreSQL and SQL. The objective is to provide insights into customer insights, sales trends and product performance through comprehensive data analysis.

## Database Schema
The database consists of three main tables: Customers, Products and Sales. SQL scripts were used to create the tables in PostgreSQL.

## Data Extraction and Loading
Data was loaded as CSV files into the PostgreSQL database. 

## Data Analysis
The data is analyzed using SQL queries for customer analysis, sales analysis, product information, and join operations. Below are the key queries used:
### 1. Customer Analysis
- Customers with Annual Income Greater than $100,000
- Female Customers Who Are Homeowners
- Loyal customers

### 2. Sales Analysis
- Total Number of Orders Placed by Each Customer
- Total Quantity of Products Ordered for Each Product

### 3. Product Information
- Products that Have a Price Greater than $50
- Average Product Price for Each Category

### 4. JOIN Queries
- Total Sales Amount for Each Customer
- Number of Orders Placed Each Month
- Customers Who Made More than 5 Orders

## Summary of Insights
### 1. Customer Analysis:
- Identifies high-income customers.
- Segments female customers who own homes.

### 2. Sales Analysis:
- Tracks the total number of orders placed by each customer.
- Measures the total quantity of products ordered per product.

### 3. Product Information:
- Filters high-priced products.
- Calculates the average price of products in each category.
  
### 4. Join Queries:
- Computes the total sales amount for each customer.
- Counts the number of orders placed each month.
- Identifies customers who placed more than 5 orders.

## Conclusion
This project provides a comprehensive ETL pipeline for an e-commerce platform, enabling detailed sales data analysis and customer demographics. Leveraging PostgreSQL and SQL can derive valuable insights to support data-driven decision-making and strategic planning.
Please refer to the SQL script for further details of the SQL queries.
