CREATE DATABASE IF NOT EXISTS ecommerce_analytics;
USE ecommerce_analytics;

SET hive.auto.convert.join=false;

CREATE EXTERNAL TABLE customers (
    customer_id INT,
    first_name STRING,
    last_name STRING,
    email STRING,
    phone STRING,
    city STRING,
    state STRING,
    registration_date DATE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/customers';
CREATE EXTERNAL TABLE categories (
    category_id INT,
    category_name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/categories';

CREATE EXTERNAL TABLE products (
    product_id INT,
    product_name STRING,
    category_id INT,
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier STRING,
    product_rating DECIMAL(3,2),
    created_date DATE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/products';
CREATE EXTERNAL TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    order_status STRING,
    total_amount DECIMAL(10,2),
    payment_status STRING,
    shipping_city STRING,
    shipping_state STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/orders';
CREATE EXTERNAL TABLE order_items (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    subtotal DECIMAL(10,2)
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/order_items';
CREATE EXTERNAL TABLE payments (
    payment_id INT,
    order_id INT,
    payment_date DATE,
    payment_method STRING,
    amount DECIMAL(10,2),
    payment_status STRING,
    transaction_id STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/payments';
CREATE EXTERNAL TABLE reviews (
    review_id INT,
    customer_id INT,
    product_id INT,
    rating INT,
    review_text STRING,
    review_date DATE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/ecommerce/raw/reviews';
