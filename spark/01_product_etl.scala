import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.types._

object ProductETL {

  def main(args: Array[String]): Unit = {

    val spark = SparkSession.builder()
      .appName("ECommerce Product ETL")
      .getOrCreate()
    val productSchema = StructType(Array(
      StructField("product_id", IntegerType, true),
      StructField("product_name", StringType, true),
      StructField("category_id", IntegerType, true),
      StructField("price", DoubleType, true),
      StructField("stock_quantity", IntegerType, true),
      StructField("supplier", StringType, true),
      StructField("product_rating", DoubleType, true),
      StructField("created_date", StringType, true)
    ))
    val categorySchema = StructType(Array(
      StructField("category_id", IntegerType, true),
      StructField("category_name", StringType, true)
    ))
    val productsDF = spark.read
      .schema(productSchema)
      .option("header", "false")
      .csv("/ecommerce/raw/products/part-m-00000")
    val categoriesDF = spark.read
      .schema(categorySchema)
      .option("header", "false")
      .csv("/ecommerce/raw/categories/part-m-00000")
    val processedProducts = productsDF
      .join(categoriesDF, Seq("category_id"))
      .select(
        "product_id",
        "product_name",
        "category_name",
        "price",
        "stock_quantity",
        "supplier",
        "product_rating",
        "created_date"
      )
    processedProducts.show(10, false)

    processedProducts.write
      .mode("overwrite")
      .parquet("/ecommerce/processed/spark_products")

    spark.stop()
  }
}

