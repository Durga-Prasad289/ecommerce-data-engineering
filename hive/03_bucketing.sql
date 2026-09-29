USE ecommerce_analytics;

SET hive.auto.convert.join=false;
SET hive.enforce.bucketing=true;

DROP TABLE IF EXISTS orders_bucketed;

CREATE TABLE orders_bucketed (
    order_id INT,
    customer_id INT,
    order_date DATE,
    order_status STRING,
    total_amount DECIMAL(10,2),
    payment_status STRING,
    shipping_city STRING,
    shipping_state STRING
)
CLUSTERED BY (customer_id)
INTO 4 BUCKETS
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

INSERT OVERWRITE TABLE orders_bucketed
SELECT
    order_id,
    customer_id,
    order_date,
    order_status,
    total_amount,
    payment_status,
    shipping_city,
    shipping_state
FROM orders;

DESCRIBE FORMATTED orders_bucketed;
