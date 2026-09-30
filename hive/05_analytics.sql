USE ecommerce_analytics;

-- 1. Total sales by product

SELECT
    product_id,
    product_name,
    ROUND(SUM(subtotal), 2) AS total_sales
FROM sales_summary
GROUP BY product_id, product_name
ORDER BY total_sales DESC;

-- 2. Total sales by category
SELECT
    category_name,
    ROUND(SUM(subtotal), 2) AS total_sales
FROM sales_summary
GROUP BY category_name
ORDER BY 2 DESC;

-- 3. Top 10 customers by total spending
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(subtotal), 2) AS total_spending
FROM sales_summary
GROUP BY customer_id, customer_name
ORDER BY 3 DESC
LIMIT 10;


-- 4. Monthly sales
SELECT
    SUBSTR(order_date, 1, 7) AS sales_month,
    ROUND(SUM(subtotal), 2) AS total_sales
FROM sales_summary
GROUP BY SUBSTR(order_date, 1, 7)
ORDER BY 1 ASC;

  
--5. Order status analysis
SELECT
    order_status,
    COUNT(DISTINCT order_id) AS order_count,
    ROUND(SUM(subtotal), 2) AS total_sales
FROM sales_summary
GROUP BY order_status
ORDER BY 2 DESC;

