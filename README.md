# E-Commerce Data Engineering Pipeline

## Project Overview

An end-to-end Data Engineering project that extracts e-commerce transactional data from MySQL, stores raw data in HDFS, processes and transforms the data using Hadoop ecosystem technologies, performs OLAP analytics, and presents the results through an interactive dashboard.

## Architecture

MySQL → Sqoop → HDFS → Hive / MapReduce / Spark → Parquet / Avro → Analytics → Dashboard

## Technologies

- Linux
- MySQL
- Hadoop HDFS
- YARN
- Sqoop
- Hive
- MapReduce
- Spark
- Scala
- Avro
- Parquet
- HTML
- CSS
- JavaScript
- Chart.js
- Git/GitHub

## Dataset

The project contains seven MySQL tables:

- Customers
- Categories
- Products
- Orders
- Order Items
- Payments
- Reviews

## Data Engineering Concepts

- OLTP and OLAP
- ETL
- HDFS
- Data Ingestion
- Data Partitioning
- Bucketing
- Data Skew
- MapReduce
- Spark RDD
- Spark DataFrame
- Spark SQL
- Avro
- Parquet
- Data Visualization

## Pipeline

1. E-commerce transactional data is stored in MySQL as the OLTP source.
2. Sqoop imports the MySQL tables into HDFS.
3. Hive creates external tables over the raw HDFS data.
4. Hive partitioning and bucketing are used for data organization.
5. Hive performs ETL transformations and creates analytics-ready datasets.
6. MapReduce calculates product-level sales.
7. Spark performs DataFrame and SQL-based transformations.
8. Avro demonstrates schema-based data serialization.
9. Parquet stores processed data efficiently.
10. Hive performs OLAP analytics such as product sales, category sales, monthly sales, customer spending, and order-status analysis.
11. Analytics results are loaded into CSV datasets.
12. HTML, CSS, JavaScript, and Chart.js are used to create the interactive dashboard.

## HDFS Structure

```text
/ecommerce
├── raw
├── processed
└── archive
```

## Hive Analytics

The project performs the following analytics:

- Total sales by product
- Total sales by category
- Top customers by spending
- Monthly sales
- Order status analysis

## Dashboard

The project includes an interactive E-Commerce Analytics Dashboard.

Dashboard components:

- Total Sales
- Total Orders
- Sales by Product
- Sales by Category
- Monthly Sales
- Top Customers
- Order Status

The dashboard uses Chart.js for visualization and reads the generated analytics datasets from CSV files.

## Results

The completed analytics dataset contains:

- Total Sales: ₹305,758
- Total Orders: 30
- 15 products
- 6 categories
- 20 customers
- 30 orders
- 45 order items
- 30 payments
- 25 reviews

## Project Structure

```text
ecommerce-data-engineering/
├── avro/
├── dashboard/
├── hive/
├── mapreduce/
├── spark/
├── README.md
└── .gitignore
```

## How to Run the Dashboard

From the project directory:

```bash
python -m http.server 8000

Open:

```text
http://localhost:8000/dashboard/
```

## GitHub

The project is maintained using Git and GitHub for version control.

## Project Status

Completed.

The project demonstrates an end-to-end E-Commerce Data Engineering workflow from OLTP data ingestion to Hadoop processing, OLAP analytics, and dashboard visualization.
