# Sales Data Analysis Using Python and SQL

## Overview
This repository showcases sales data analysis using SQL within Python through two different approaches:

1. **SQLite Approach**
   - Implemented in: `sales_summary_sqlite.ipynb`
   - Uses Python's built-in `sqlite3` to create and query a local SQLite database
   - Visualizes total revenue per product using a bar chart

2. **MySQL Approach**
   - Implemented in: `sales_summary_sql.ipynb` and `sales_data.sql`
   - `sales_data.sql` contains SQL commands to set up the MySQL database, table, and sample data
   - Includes commands to fix MySQL authentication plugin issues
   - The Python notebook connects to MySQL and runs sales queries

## Files

- `sales_summary_sqlite.ipynb` — SQLite-based Python notebook for creating DB, querying data, and plotting results
- `sales_summary_sql.ipynb` — Python notebook for querying MySQL
- `sales_data.sql` — SQL script to create and populate the sales table in MySQL

## One-Line Project Description
A Python-based sales data analysis project using both SQLite and MySQL with SQL queries and basic visualizations.

## Requirements

- Python 3.x
- Libraries: `sqlite3`, `pandas`, `matplotlib`, `mysql-connector-python` (if using MySQL)
- MySQL server (for MySQL approach)

## How to Run

### SQLite
1. Open and run all cells in `sales_summary_sqlite.ipynb`
2. It will auto-create `sales_data.db`, insert data, and show results

### MySQL
1. Run `sales_data.sql` in your MySQL client to set up the database
2. If you encounter a login issue, run:
   ```sql
   ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_password';
   FLUSH PRIVILEGES;
