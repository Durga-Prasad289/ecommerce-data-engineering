USE ecommerce_analytics;

SET hive.auto.convert.join=false;

DROP TABLE IF EXISTS sales_summary;

CREATE TABLE sales_summary (
    order_id INT,
    customer_id INT,
    customer_name STRING,
    product_id INT,
    product_name STRING,
    category_name STRING,
    quantity INT,
    unit_price DECIMAL(10,2),
    subtotal DECIMAL(10,2),
    order_date STRING,
    order_status STRING
)
STORED AS PARQUET;

INSERT OVERWRITE TABLE sales_summary
SELECT
    o.order_id,
    o.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    p.product_id,
    p.product_name,
    cat.category_name,
    oi.quantity,
    oi.unit_price,
    oi.subtotal,
    CAST(o.order_date AS STRING) AS order_date,
    o.order_status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
JOIN categories cat
    ON p.category_id = cat.category_id;

SELECT COUNT(*) FROM sales_summary;

SELECT *
FROM sales_summary
LIMIT 10;

