#!/bin/bash

# Import e-commerce tables from MySQL into HDFS

sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table customers \
--target-dir /ecommerce/raw/customers \
--m 1

sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table categories \
--target-dir /ecommerce/raw/categories \
--m 1
sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table products \
--target-dir /ecommerce/raw/products \
--m 1

sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table orders \
--target-dir /ecommerce/raw/orders \
--m 1
sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table order_items \
--target-dir /ecommerce/raw/order_items \
--m 1

sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table payments \
--target-dir /ecommerce/raw/payments \
--m 1
sqoop import \
--connect jdbc:mysql://localhost:3306/ecommerce_db \
--username root \
--password <YOUR_MYSQL_PASSWORD> \
--table reviews \
--target-dir /ecommerce/raw/reviews \
--m 1
