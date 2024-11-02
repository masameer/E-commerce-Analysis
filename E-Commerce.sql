create database  Ecommerce;


use Ecommerce;


-- Creating Table 1
CREATE TABLE Customers(
	customer_id INT Primary Key,
	customer_name VARCHAR (200) NOT NULL,
    customer_email VARCHAR (200) NOT NULL,
    customer_city VARCHAR (200)
    );


-- Creating Table 2
CREATE TABLE Orders (
	order_id INT PRIMARY KEY,
	order_date DATE,
	customer_id INT,
	total_amount DECIMAL (10,2),
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



-- Creating Table 3
CREATE TABLE Products (
	product_id INT PRIMARY KEY,
	product_name VARCHAR (200) NOT NULL,
	category VARCHAR (200),
	price DECIMAL (10, 2) NOT NULL
);



-- Creating Table 4

CREATE TABLE OrderDetails (
	order_detail_id INT PRIMARY KEY,
	order_id INT,
	product_id INT,
	quantity INT,
	price DECIMAL (10, 2),
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (product_id) REFERENCES Products(product_id)
);



-- Creating Table 5
CREATE TABLE Categories (
	category_id INT PRIMARY KEY,
	category_name VARCHAR (200) NOT NULL
    );


INSERT INTO Customers (customer_id, customer_name, customer_email, customer_city)
VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'New York'),
(2, 'Bob Smith', 'bob.smith@example.com', 'Los Angeles'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 'Chicago'),
(4, 'David Williams', 'david.williams@example.com', 'Houston'),
(5, 'Eve Davis', 'eve.davis@example.com', 'Phoenix'),
(6, 'Frank Harris', 'frank.harris@example.com', 'Philadelphia'),
(7, 'Grace Moore', 'grace.moore@example.com', 'San Antonio'),
(8, 'Hank Thompson', 'hank.thompson@example.com', 'San Diego'),
(9, 'Ivy Clark', 'ivy.clark@example.com', 'Dallas'),
(10, 'Jack White', 'jack.white@example.com', 'San Jose'),
(11, 'Karen Martin', 'karen.martin@example.com', 'Austin'),
(12, 'Leo Scott', 'leo.scott@example.com', 'Jacksonville'),
(13, 'Mia King', 'mia.king@example.com', 'San Francisco'),
(14, 'Noah Walker', 'noah.walker@example.com', 'Indianapolis'),
(15, 'Olivia Adams', 'olivia.adams@example.com', 'Columbus'),
(16, 'Paul Allen', 'paul.allen@example.com', 'Fort Worth'),
(17, 'Quinn Lee', 'quinn.lee@example.com', 'Charlotte'),
(18, 'Rita Baker', 'rita.baker@example.com', 'Seattle'),
(19, 'Steve Garcia', 'steve.garcia@example.com', 'Denver'),
(20, 'Tina Young', 'tina.young@example.com', 'El Paso'), 
(21, 'John Doe', 'john.doe1@example.com', 'Los Angeles'),
(22, 'Jane Smith', 'jane.smith2@example.com', 'Chicago'),
(23, 'Michael Brown', 'michael.brown3@example.com', 'Houston'),
(24, 'Emily Davis', 'emily.davis4@example.com', 'Phoenix'),
(25, 'David Wilson', 'david.wilson5@example.com', 'Philadelphia'),
(26, 'Sarah Johnson', 'sarah.johnson6@example.com', 'San Antonio'),
(27, 'James Martin', 'james.martin7@example.com', 'San Diego'),
(28, 'Jessica Taylor', 'jessica.taylor8@example.com', 'Dallas'),
(29, 'William Anderson', 'william.anderson9@example.com', 'San Jose'),
(30, 'Olivia Thompson', 'olivia.thompson10@example.com', 'Austin'),
(31, 'Sophia White', 'sophia.white11@example.com', 'Fort Worth'),
(32, 'Liam Moore', 'liam.moore12@example.com', 'Columbus'),
(33, 'Isabella Lee', 'isabella.lee13@example.com', 'Charlotte'),
(34, 'Noah Harris', 'noah.harris14@example.com', 'San Francisco'),
(35, 'Mia Clark', 'mia.clark15@example.com', 'Indianapolis'),
(36, 'Lucas Lewis', 'lucas.lewis16@example.com', 'Seattle'),
(37, 'Charlotte Allen', 'charlotte.allen17@example.com', 'Denver'),
(38, 'Ethan Walker', 'ethan.walker18@example.com', 'Washington'),
(39, 'Amelia Scott', 'amelia.scott19@example.com', 'Boston'),
(40, 'Mason Young', 'mason.young20@example.com', 'El Paso'),
(41, 'Benjamin Adams', 'benjamin.adams21@example.com', 'Nashville'),
(42, 'Ava Hill', 'ava.hill22@example.com', 'Detroit'),
(43, 'Alexander King', 'alexander.king23@example.com', 'Oklahoma City'),
(44, 'Harper Baker', 'harper.baker24@example.com', 'Las Vegas'),
(45, 'Daniel Green', 'daniel.green25@example.com', 'Louisville'),
(46, 'Evelyn Carter', 'evelyn.carter26@example.com', 'Baltimore'),
(47, 'Elijah Nelson', 'elijah.nelson27@example.com', 'Milwaukee'),
(48, 'Abigail Mitchell', 'abigail.mitchell28@example.com', 'Albuquerque'),
(49, 'Matthew Perez', 'matthew.perez29@example.com', 'Tucson'),
(50, 'Chloe Roberts', 'chloe.roberts30@example.com', 'Fresno'),
(51, 'Sebastian Rivera', 'sebastian.rivera31@example.com', 'Sacramento'),
(52, 'Madison Stewart', 'madison.stewart32@example.com', 'Mesa'),
(53, 'Jack Sanchez', 'jack.sanchez33@example.com', 'Kansas City'),
(54, 'Ella Morris', 'ella.morris34@example.com', 'Atlanta'),
(55, 'Henry Murphy', 'henry.murphy35@example.com', 'Miami'),
(56, 'Scarlett Cooper', 'scarlett.cooper36@example.com', 'New Orleans'),
(57, 'Aiden Reed', 'aiden.reed37@example.com', 'Cleveland'),
(58, 'Grace Morgan', 'grace.morgan38@example.com', 'Minneapolis'),
(59, 'Samuel Bell', 'samuel.bell39@example.com', 'Raleigh'),
(60, 'Zoe Gomez', 'zoe.gomez40@example.com', 'Virginia Beach'),
(61, 'Isaac Hughes', 'isaac.hughes41@example.com', 'Omaha'),
(62, 'Avery Howard', 'avery.howard42@example.com', 'Oakland'),
(63, 'Logan Ward', 'logan.ward43@example.com', 'Tampa'),
(64, 'Lily Cox', 'lily.cox44@example.com', 'Tulsa'),
(65, 'Ryan Butler', 'ryan.butler45@example.com', 'Arlington'),
(66, 'Nora Torres', 'nora.torres46@example.com', 'Bakersfield'),
(67, 'Owen Flores', 'owen.flores47@example.com', 'Honolulu'),
(68, 'Layla Brooks', 'layla.brooks48@example.com', 'Anaheim'),
(69, 'Luke Rogers', 'luke.rogers49@example.com', 'Santa Ana'),
(70, 'Hannah Long', 'hannah.long50@example.com', 'Riverside');



INSERT INTO Products (product_id, product_name, category, price)
VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 799.99),
(3, 'Headphones', 'Electronics', 199.99),
(4, 'Camera', 'Electronics', 599.99),
(5, 'Refrigerator', 'Appliances', 1200.00),
(6, 'Microwave', 'Appliances', 300.00),
(7, 'Washing Machine', 'Appliances', 850.00),
(8, 'Blender', 'Appliances', 150.00),
(9, 'Toaster', 'Appliances', 75.00),
(10, 'Television', 'Electronics', 1100.00),
(11, 'Air Conditioner', 'Appliances', 400.00),
(12, 'Vacuum Cleaner', 'Appliances', 200.00),
(13, 'Smartwatch', 'Electronics', 250.00),
(14, 'Tablet', 'Electronics', 450.00),
(15, 'Gaming Console', 'Electronics', 499.99),
(16, 'Monitor', 'Electronics', 299.99),
(17, 'Printer', 'Electronics', 150.00),
(18, 'Keyboard', 'Electronics', 50.00),
(19, 'Mouse', 'Electronics', 30.00),
(20, 'Smart Speaker', 'Electronics', 99.99),
(21, 'Fitness Tracker', 'Electronics', 129.99),
(22, 'Dishwasher', 'Appliances', 750.00),
(23, 'Dryer', 'Appliances', 650.00),
(24, 'Oven', 'Appliances', 900.00),
(25, 'Air Fryer', 'Appliances', 180.00),
(26, 'Electric Kettle', 'Appliances', 40.00),
(27, 'Juicer', 'Appliances', 120.00),
(28, 'Coffee Maker', 'Appliances', 90.00),
(29, 'Water Purifier', 'Appliances', 250.00),
(30, 'Smart Light', 'Electronics', 60.00),
(31, 'Bluetooth Speaker', 'Electronics', 80.00),
(32, 'Router', 'Electronics', 130.00),
(33, 'External Hard Drive', 'Electronics', 100.00),
(34, 'USB Flash Drive', 'Electronics', 25.00),
(35, 'Power Bank', 'Electronics', 45.00),
(36, 'Smart Thermostat', 'Electronics', 150.00),
(37, 'Drone', 'Electronics', 400.00),
(38, 'E-Reader', 'Electronics', 140.00),
(39, 'Electric Shaver', 'Personal Care', 70.00),
(40, 'Hair Dryer', 'Personal Care', 50.00),
(41, 'Electric Toothbrush', 'Personal Care', 60.00),
(42, 'Massage Chair', 'Furniture', 1200.00),
(43, 'Office Chair', 'Furniture', 300.00),
(44, 'Standing Desk', 'Furniture', 400.00),
(45, 'Bookshelf', 'Furniture', 150.00),
(46, 'Sofa', 'Furniture', 950.00),
(47, 'Dining Table', 'Furniture', 600.00),
(48, 'Wardrobe', 'Furniture', 500.00),
(49, 'Bed Frame', 'Furniture', 700.00),
(50, 'Mattress', 'Furniture', 800.00),
(51, 'Fan', 'Appliances', 120.00),
(52, 'Humidifier', 'Appliances', 80.00),
(53, 'Electric Heater', 'Appliances', 90.00),
(54, 'Rice Cooker', 'Appliances', 65.00),
(55, 'Slow Cooker', 'Appliances', 50.00),
(56, 'Food Processor', 'Appliances', 180.00),
(57, 'Hair Straightener', 'Personal Care', 45.00),
(58, 'Treadmill', 'Fitness', 700.00),
(59, 'Exercise Bike', 'Fitness', 600.00),
(60, 'Elliptical Machine', 'Fitness', 850.00),
(61, 'Dumbbells Set', 'Fitness', 120.00),
(62, 'Yoga Mat', 'Fitness', 30.00),
(63, 'Jump Rope', 'Fitness', 15.00),
(64, 'Resistance Bands', 'Fitness', 20.00),
(65, 'Golf Clubs', 'Sports', 400.00),
(66, 'Tennis Racket', 'Sports', 150.00),
(67, 'Soccer Ball', 'Sports', 25.00),
(68, 'Basketball', 'Sports', 30.00),
(69, 'Baseball Glove', 'Sports', 80.00),
(70, 'Hockey Stick', 'Sports', 150.00);


INSERT INTO Orders (order_id, order_date, customer_id, total_amount)
VALUES
(1, '2023-08-01', 1, 1249.98),
(2, '2023-08-02', 2, 349.99),
(3, '2023-08-03', 3, 549.99),
(4, '2023-08-04', 4, 799.00),
(5, '2023-08-05', 5, 1234.50),
(6, '2023-08-06', 6, 299.00),
(7, '2023-08-07', 7, 750.00),
(8, '2023-08-08', 8, 200.00),
(9, '2023-08-09', 9, 520.99),
(10, '2023-08-10', 10, 1450.00),
(11, '2023-08-11', 11, 340.00),
(12, '2023-08-12', 12, 450.50),
(13, '2023-08-13', 13, 620.00),
(14, '2023-08-14', 14, 980.00),
(15, '2023-08-15', 15, 2100.00),
(16, '2023-08-16', 16, 1150.00),
(17, '2023-08-17', 17, 789.99),
(18, '2023-08-18', 18, 940.00),
(19, '2023-08-19', 19, 650.00),
(20, '2023-08-20', 20, 195.99),
(21, '2023-08-21', 21, 875.00),
(22, '2023-08-22', 22, 450.00),
(23, '2023-08-23', 23, 1299.00),
(24, '2023-08-24', 24, 160.50),
(25, '2023-08-25', 25, 410.00),
(26, '2023-08-26', 26, 860.00),
(27, '2023-08-27', 27, 930.00),
(28, '2023-08-28', 28, 710.00),
(29, '2023-08-29', 29, 1300.00),
(30, '2023-08-30', 30, 2150.00),
(31, '2023-08-31', 31, 1700.00),
(32, '2023-09-01', 32, 1200.00),
(33, '2023-09-02', 33, 900.00),
(34, '2023-09-03', 34, 1400.00),
(35, '2023-09-04', 35, 600.00),
(36, '2023-09-05', 36, 1450.00),
(37, '2023-09-06', 37, 2000.00),
(38, '2023-09-07', 38, 720.00),
(39, '2023-09-08', 39, 1600.00),
(40, '2023-09-09', 40, 1320.00),
(41, '2023-09-10', 41, 1580.00),
(42, '2023-09-11', 42, 490.00),
(43, '2023-09-12', 43, 880.00),
(44, '2023-09-13', 44, 220.00),
(45, '2023-09-14', 45, 560.00),
(46, '2023-09-15', 46, 240.00),
(47, '2023-09-16', 47, 1390.00),
(48, '2023-09-17', 48, 450.00),
(49, '2023-09-18', 49, 960.00),
(50, '2023-09-19', 50, 480.00),
(51, '2023-09-20', 51, 670.00),
(52, '2023-09-21', 52, 1180.00),
(53, '2023-09-22', 53, 150.00),
(54, '2023-09-23', 54, 910.00),
(55, '2023-09-24', 55, 780.00),
(56, '2023-09-25', 56, 350.00),
(57, '2023-09-26', 57, 190.00),
(58, '2023-09-27', 58, 1120.00),
(59, '2023-09-28', 59, 720.00),
(60, '2023-09-29', 60, 1640.00),
(61, '2023-09-30', 61, 990.00),
(62, '2023-10-01', 62, 750.00),
(63, '2023-10-02', 63, 1290.00),
(64, '2023-10-03', 64, 380.00),
(65, '2023-10-04', 65, 110.00),
(66, '2023-10-05', 66, 1450.00),
(67, '2023-10-06', 67, 460.00),
(68, '2023-10-07', 68, 790.00),
(69, '2023-10-08', 69, 1340.00),
(70, '2023-10-09', 70, 270.00);



INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1, 999.99),
(2, 2, 2, 1, 799.99),
(3, 3, 3, 2, 199.99),
(4, 4, 4, 1, 599.99),
(5, 5, 5, 1, 1200.00),
(6, 6, 6, 1, 300.00),
(7, 7, 7, 1, 850.00),
(8, 8, 8, 1, 150.00),
(9, 9, 9, 1, 75.00),
(10, 10, 10, 1, 1100.00),
(11, 11, 11, 2, 200.00),
(12, 12, 12, 1, 250.00),
(13, 13, 13, 1, 450.00),
(14, 14, 14, 1, 450.00),
(15, 15, 15, 1, 499.99),
(16, 16, 16, 2, 299.99),
(17, 17, 17, 1, 150.00),
(18, 18, 18, 1, 50.00),
(19, 19, 19, 2, 30.00),
(20, 20, 20, 1, 99.99),
(21, 21, 21, 1, 129.99),
(22, 22, 22, 2, 750.00),
(23, 23, 23, 1, 160.00),
(24, 24, 24, 1, 90.00),
(25, 25, 25, 1, 410.00),
(26, 26, 26, 1, 860.00),
(27, 27, 27, 1, 930.00),
(28, 28, 28, 1, 710.00),
(29, 29, 29, 1, 1300.00),
(30, 30, 30, 2, 2150.00),
(31, 31, 31, 1, 1700.00),
(32, 32, 32, 1, 1200.00),
(33, 33, 33, 1, 900.00),
(34, 34, 34, 1, 1400.00),
(35, 35, 35, 1, 600.00),
(36, 36, 36, 1, 1450.00),
(37, 37, 37, 1, 2000.00),
(38, 38, 38, 2, 720.00),
(39, 39, 39, 1, 1600.00),
(40, 40, 40, 2, 1320.00),
(41, 41, 41, 1, 1580.00),
(42, 42, 42, 1, 490.00),
(43, 43, 43, 1, 880.00),
(44, 44, 44, 1, 220.00),
(45, 45, 45, 2, 560.00),
(46, 46, 46, 1, 240.00),
(47, 47, 47, 1, 1390.00),
(48, 48, 48, 1, 450.00),
(49, 49, 49, 1, 960.00),
(50, 50, 50, 1, 480.00),
(51, 51, 51, 1, 670.00),
(52, 52, 52, 1, 1180.00),
(53, 53, 53, 1, 150.00),
(54, 54, 54, 1, 910.00),
(55, 55, 55, 1, 780.00),
(56, 56, 56, 1, 350.00),
(57, 57, 57, 2, 190.00),
(58, 58, 58, 1, 1120.00),
(59, 59, 59, 1, 720.00),
(60, 60, 60, 1, 1640.00),
(61, 61, 61, 1, 990.00),
(62, 62, 62, 1, 750.00),
(63, 63, 63, 1, 1290.00),
(64, 64, 64, 1, 380.00),
(65, 65, 65, 1, 110.00),
(66, 66, 66, 1, 1450.00),
(67, 67, 67, 1, 460.00),
(68, 68, 68, 2, 790.00),
(69, 69, 69, 1, 1340.00),
(70, 70, 70, 1, 270.00);


INSERT INTO Categories (category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Home Appliances'),
(3, 'Fashion'),
(4, 'Beauty Products'),
(5, 'Health & Fitness'),
(6, 'Books'),
(7, 'Toys'),
(8, 'Furniture'),
(9, 'Sports Equipment'),
(10, 'Groceries'),
(11, 'Jewelry'),
(12, 'Office Supplies'),
(13, 'Automotive'),
(14, 'Pet Supplies'),
(15, 'Gardening'),
(16, 'Musical Instruments'),
(17, 'Baby Products'),
(18, 'Travel & Luggage'),
(19, 'Mobile Accessories'),
(20, 'Watches'),
(21, 'Shoes'),
(22, 'Clothing'),
(23, 'Kitchen Appliances'),
(24, 'Cameras'),
(25, 'Computers & Accessories'),
(26, 'Video Games'),
(27, 'Movies & TV'),
(28, 'Smart Home Devices'),
(29, 'Fitness Wearables'),
(30, 'Outdoor Gear'),
(31, 'Camping Equipment'),
(32, 'Handbags & Wallets'),
(33, 'Cosmetics'),
(34, 'Skincare Products'),
(35, 'Hair Care Products'),
(36, 'Fragrances'),
(37, 'Stationery'),
(38, 'Craft Supplies'),
(39, 'Art Supplies'),
(40, 'Lighting'),
(41, 'Heating & Cooling'),
(42, 'Home Decor'),
(43, 'Bedding & Linens'),
(44, 'Cleaning Supplies'),
(45, 'Storage & Organization'),
(46, 'Tools & Hardware'),
(47, 'Security & Surveillance'),
(48, 'Bicycles'),
(49, 'Motorcycles'),
(50, 'Car Accessories'),
(51, 'Tires'),
(52, 'Car Electronics'),
(53, 'Office Furniture'),
(54, 'Printers & Scanners'),
(55, 'Networking Equipment'),
(56, 'Software'),
(57, 'Educational Materials'),
(58, 'Collectibles'),
(59, 'Action Figures'),
(60, 'Board Games'),
(61, 'Puzzles'),
(62, 'Baby Clothing'),
(63, 'Maternity Wear'),
(64, 'Luggage & Backpacks'),
(65, 'Sunglasses'),
(66, 'Bath & Body'),
(67, 'Fitness Equipment'),
(68, 'Beverages'),
(69, 'Snack Foods'),
(70, 'Meats & Seafood');

-- Question needs to be answered:

-- Q1 Retrieve Customer Information:
-- Write a query to select the customer names and their corresponding cities.


SELECT customer_name, customer_city
FROM customers
ORDER BY customer_name;


-- Q2 List All Orders:
-- Write a query to display the order ID, order date, and total amount for all orders.


SELECT order_id, order_date, total_amount
FROM orders
ORDER BY order_date;


-- Q3 Find Products in a Specific Category:
-- Write a query to list all products that belong to the category "Electronics."



SELECT product_name, category
FROM products
WHERE category = "Electronics"
ORDER BY product_name;


-- Q4 Total Sales by Customer:
-- Write a query to find the total amount spent by each customer.


SELECT customers.customer_name, SUM(orders.total_amount) AS Total_Spent
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
GROUP BY customer_name
ORDER BY customer_name;


-- Q5 Count Orders Per City:
-- Write a query to count the number of orders placed by customers in each city.

SELECT customers.customer_city AS City, COUNT(orderdetails.quantity) AS Number_of_Orders_Placed
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN orderdetails ON orderdetails.order_id = orders.order_id
GROUP BY customers.customer_city
ORDER BY customers.customer_city;


-- Q6 Average Quantity per Product:
-- Write a query to find the average quantity ordered for each product.

SELECT products.product_name AS Products, avg(orderdetails.quantity) AS Average_Quantity
FROM orderdetails
JOIN products ON products.product_id = orderdetails.product_id
GROUP BY products.product_name
ORDER BY products.product_name;


-- Q7 Top 5 Most Expensive Products:
-- Write a query to rank the products by price and list the top 5 most expensive ones.

SELECT products.product_name AS Product, products.price AS Price,DENSE_RANK() OVER (ORDER BY products.price DESC) AS Price_Rank
FROM products
ORDER BY Price_Rank
LIMIT 5;


-- Q8 Customer Spending Rank:
-- Write a query to rank customers based on their total spending.

SELECT customers.customer_name AS Customers, SUM(orders.total_amount) AS Total_Spending,
    RANK() OVER ( ORDER BY sum(orders.total_amount) DESC) AS Highest_Spenders
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
GROUP BY customers.customer_name
ORDER BY Highest_Spenders
LIMIT 5;


-- Q9 Customers with Above-Average Orders:
-- Write a query to find customers who have placed orders above the average order amount.

SELECT customers.customer_name AS Customer, orders.total_amount AS Above_Average_Orders
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
WHERE orders.total_amount > (
		SELECT AVG(orders.total_amount)
        FROM orders)
ORDER BY orders.total_amount DESC;


#Other way 

SELECT customers.customer_name AS Customer, orders.total_amount AS Above_Average_Orders
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN (
    SELECT AVG(total_amount) AS average_amount
    FROM orders
) AS avg_order ON orders.total_amount > avg_order.average_amount
ORDER BY orders.total_amount DESC;



-- Q10 Products with Highest Sales in Each Category:
-- Write a query to find the product with the highest sales in each category.


SELECT products.product_name AS Product, categories.category_name AS Category, SUM(orderdetails.quantity * orderdetails.price) AS Total_Sales
FROM Products
JOIN orderdetails ON orderdetails.product_id = products.product_id
JOIN orders ON orders.order_id = orderdetails.order_id
JOIN categories ON products.product_id = categories.category_id
GROUP BY products.product_id, products.product_name, categories.category_name
ORDER BY Total_Sales DESC
LIMIT 10;


-- Q11 Customers with Multiple Orders:
-- Write a query to list all customers who have placed more than one order, including their customer names and the number of orders they have placed.

SELECT customers.customer_name AS Customers, orderdetails.quantity AS Number_Of_Orders
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN orderdetails ON orders.order_id = orderdetails.order_id
WHERE orderdetails.quantity >1;


-- Q12 Orders in the Last 30 Days:
-- Write a query to retrieve all orders placed in the last 30 days, showing the order ID, order date, and customer name.

    
SELECT customers.customer_name AS Customer, orders.order_date AS Date, orders.order_id AS Order_id
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
WHERE orders.order_date >= '2023-10-01';


-- Q13 Products Ordered by Each Customer:
-- Write a query to display each customer and the products they have ordered, including the customer name, product name, and quantity ordered.

SELECT customers.customer_name AS Customer, products.product_name AS Product, orderdetails.quantity AS Quantity
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN orderdetails ON orderdetails.order_id = orders.order_id
JOIN products ON products.product_id = orderdetails.product_id
ORDER BY customers.customer_name;
    

-- Q14 Total Revenue by Category:
-- Write a query to calculate the total revenue generated for each product category, displaying the category name and total revenue.

-- To join with categories table respected matching column is not there in categories table with other tables.

SELECT products.category AS Category, SUM(orderdetails.quantity * orderdetails.price) AS Total_Revenue
FROM products
JOIN orderdetails ON orderdetails.product_id = products.product_id
GROUP BY products.category
ORDER BY Total_Revenue DESC;

-- Q15 Order Frequency by Month:
-- Write a query to count how many orders were placed in each month of the current year, displaying the month and the number of orders.

SELECT 
    MONTH(order_date) AS month,
    COUNT(order_id) AS number_of_orders
FROM 
    Orders
WHERE 
    YEAR(order_date) = 2020
GROUP BY 
    MONTH(order_date)
ORDER BY 
    month;



-- Q16 Products with Low Stock:
-- Write a query to list products that have been ordered fewer than 10 times, displaying the product name and the total quantity ordered.

SELECT products.product_name AS Product,SUM(orderdetails.quantity) AS Total_Quantity_Ordered
FROM Products
JOIN OrderDetails ON orderdetails.product_id = products.product_id
GROUP BY products.product_name
HAVING COUNT(orderdetails.order_id) < 10;


-- Q17 Customer Loyalty:
-- Write a query to list customers who have placed more than 10 orders, displaying the customer name and the total number of orders they’ve placed.
 
SELECT customers.customer_name AS Customer,COUNT(orders.order_id) AS Total_Orders FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
GROUP BY customers.customer_name
HAVING COUNT(orders.order_id)
ORDER BY Total_Orders DESC;


-- Q18 Top Cities by Revenue:
-- Write a query to rank cities based on the total revenue generated from orders placed by customers residing in each city, displaying the city name and total revenue.

SELECT customers.customer_city AS City,SUM(orderdetails.quantity * orderdetails.price) AS Total_Revenue
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN orderdetails ON orderdetails.order_id = orders.order_id
GROUP BY customers.customer_city
ORDER BY Total_Revenue DESC;


-- Q19 Orders with More than 3 Products:
-- Write a query to find all orders where more than 3 different products were ordered, displaying the order ID, order date, and customer name.

SELECT orders.order_id AS Order_ID,orders.order_date AS Order_Date,customers.customer_name AS Customer_Name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
JOIN orderdetails ON orderdetails.order_id = orders.order_id
GROUP BY orders.order_id, orders.order_date, customers.customer_name
HAVING COUNT(DISTINCT orderdetails.product_id) >= 1;
    

-- Q20 Product Popularity by Region:
-- Write a query to display the most popular product (based on quantity ordered) in each region, including the region name and product name.

SELECT customers.customer_city,products.product_name,OrderDetails.quantity FROM customers
join Orders on Customers.customer_id = Orders.customer_id 
join OrderDetails on Orders.order_id = OrderDetails.order_id
join Products on OrderDetails.product_id = Products.product_id 
order by OrderDetails.quantity desc
limit 5 ;