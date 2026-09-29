# E-Commerce Data Engineering Pipeline

## Project Overview

An end-to-end Data Engineering project that extracts e-commerce transactional data from MySQL, stores raw data in HDFS, processes the data using Hadoop ecosystem technologies, and creates analytics-ready datasets.

## Architecture

MySQL → Sqoop → HDFS → Hive / MapReduce / Spark → Parquet → Analytics
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
- Git/GitHub
## Dataset

The project contains:

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
- Data Partitioning
- Bucketing
- Data Skew
- MapReduce
- Spark RDD
- Spark DataFrame
- Spark SQL
- Avro
- Parquet
## Pipeline

1. Data is stored in MySQL as the OLTP source.
2. Sqoop imports the MySQL tables into HDFS.
3. Hive provides SQL-based processing and analytics.
4. MapReduce performs distributed processing.
5. Spark performs DataFrame and SQL-based transformations.
6. Avro demonstrates schema-based serialization.
7. Parquet stores processed analytics data.
8. Processed data is used for analytical queries.
## Project Status

In progress.
