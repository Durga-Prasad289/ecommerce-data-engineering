# Spark ETL

## Objective

Use Apache Spark to read raw e-commerce product and category data from HDFS, join the datasets, and write the processed result in Parquet format.

## Input Data

- `/ecommerce/raw/products/part-m-00000`
- `/ecommerce/raw/categories/part-m-00000`

## Processing

1. Read products using an explicit schema.
2. Read categories using an explicit schema.
3. Join products and categories using `category_id`.
4. Select the required analytical columns.
5. Display the processed data.
6. Write the result as Parquet.

## Output

```text
/ecommerce/processed/spark_products

