-- Step 1: Create the database and use it
CREATE DATABASE sales_db;
USE sales_db;

-- Step 2: Create the sales table
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Step 3: Insert sample data
INSERT INTO sales (product, quantity, price) VALUES ('Apples', 10, 2.5);
INSERT INTO sales (product, quantity, price) VALUES ('Bananas', 20, 1.0);
INSERT INTO sales (product, quantity, price) VALUES ('Cherries', 15, 3.0);
INSERT INTO sales (product, quantity, price) VALUES ('Apples', 5, 2.5);
INSERT INTO sales (product, quantity, price) VALUES ('Bananas', 10, 1.0);
INSERT INTO sales (product, quantity, price) VALUES ('Cherries', 5, 3.0);

-- Step 4: (Outside of sales_db) Fix MySQL root user authentication method 
-- Run this in the MySQL shell (not inside any particular database):
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_password';
FLUSH PRIVILEGES;

-- Step 5: Verify the inserted data (optional)
USE sales_db;
SELECT * FROM sales;
