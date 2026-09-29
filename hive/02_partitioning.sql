USE ecommerce_analytics;

SET hive.auto.convert.join=false;
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

DROP TABLE IF EXISTS orders_partitioned;
CREATE TABLE orders_partitioned (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    payment_status STRING,
    shipping_city STRING,
    shipping_state STRING
)
PARTITIONED BY (order_status STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
INSERT OVERWRITE TABLE orders_partitioned
PARTITION (order_status)
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount,
    payment_status,
    shipping_city,
    shipping_state,
    order_status
FROM orders;

SHOW PARTITIONS orders_partitioned;
