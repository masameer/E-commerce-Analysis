## **Ecommerce Database**
This project sets up a simple relational database for an eCommerce platform using SQL. It includes tables for customers, orders, products, order details, and categories. The goal is to manage eCommerce data effectively and provide a framework for querying this data.

### **Database Structure**
The database consists of the following tables:

### **Customers:** Stores information about the customers.

**customer_id:** Unique identifier for each customer.
**customer_name:** Name of the customer.
**customer_email:** Email address of the customer.
**customer_city:** City where the customer resides.

### **Orders:** Records all orders made by customers.

**order_id:** Unique identifier for each order.
**order_date:** Date when the order was placed.
**customer_id:** Foreign key referencing the customer who placed the order.
**total_amount:** Total amount for the order.

### **Products:** Lists all available products.

**product_id:** Unique identifier for each product.
**product_name:** Name of the product.
**category:** Category to which the product belongs.
**price**: Price of the product.

### **OrderDetails:** Provides details about the products in each order.

**order_detail_id:** Unique identifier for each order detail entry.
**order_id:** Foreign key referencing the order.
**product_id:** Foreign key referencing the product.
**quantity:** Quantity of the product ordered.
**price:** Price of the product at the time of the order.

### **Categories:** Lists all product categories.

**category_id:** Unique identifier for each category.
**category_name:** Name of the category.
