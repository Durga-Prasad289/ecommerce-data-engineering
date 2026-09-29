-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Rahul','Sharma','rahul@gmail.com','9876500001','Hyderabad','Telangana','2026-01-05'),(2,'Priya','Reddy','priya@gmail.com','9876500002','Vijayawada','Andhra Pradesh','2026-01-08'),(3,'Arjun','Kumar','arjun@gmail.com','9876500003','Bengaluru','Karnataka','2026-01-12'),(4,'Sneha','Patel','sneha@gmail.com','9876500004','Chennai','Tamil Nadu','2026-01-15'),(5,'Kiran','Rao','kiran@gmail.com','9876500005','Guntur','Andhra Pradesh','2026-01-20'),(6,'Ananya','Das','ananya@gmail.com','9876500006','Kolkata','West Bengal','2026-01-25'),(7,'Vikram','Singh','vikram@gmail.com','9876500007','Delhi','Delhi','2026-02-01'),(8,'Meena','Nair','meena@gmail.com','9876500008','Kochi','Kerala','2026-02-05'),(9,'Rohit','Verma','rohit@gmail.com','9876500009','Mumbai','Maharashtra','2026-02-10'),(10,'Divya','Krishna','divya@gmail.com','9876500010','Bapatla','Andhra Pradesh','2026-02-15'),(11,'Suresh','Babu','suresh@gmail.com','9876500011','Visakhapatnam','Andhra Pradesh','2026-02-20'),(12,'Lakshmi','Devi','lakshmi@gmail.com','9876500012','Tirupati','Andhra Pradesh','2026-02-25'),(13,'Manoj','Reddy','manoj@gmail.com','9876500013','Warangal','Telangana','2026-03-01'),(14,'Pooja','Shah','pooja@gmail.com','9876500014','Ahmedabad','Gujarat','2026-03-05'),(15,'Ajay','Mishra','ajay@gmail.com','9876500015','Pune','Maharashtra','2026-03-10'),(16,'Swathi','Rao','swathi@gmail.com','9876500016','Nellore','Andhra Pradesh','2026-03-15'),(17,'Naveen','Kumar','naveen@gmail.com','9876500017','Bhubaneswar','Odisha','2026-03-20'),(18,'Harsha','Vardhan','harsha@gmail.com','9876500018','Mysuru','Karnataka','2026-04-01'),(19,'Keerthi','Rani','keerthi@gmail.com','9876500019','Coimbatore','Tamil Nadu','2026-04-05'),(20,'Tarun','Chowdary','tarun@gmail.com','9876500020','Rajahmundry','Andhra Pradesh','2026-04-10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1001,1,'2026-04-20','Delivered','55000.00','Paid','Hyderabad','Telangana'),(1002,2,'2026-04-21','Delivered','25000.00','Paid','Vijayawada','Andhra Pradesh'),(1003,3,'2026-04-22','Shipped','3299.00','Paid','Bengaluru','Karnataka'),(1004,4,'2026-04-23','Delivered','1499.00','Paid','Chennai','Tamil Nadu'),(1005,5,'2026-04-24','Delivered','699.00','Paid','Guntur','Andhra Pradesh'),(1006,6,'2026-04-25','Pending','899.00','Pending','Kolkata','West Bengal'),(1007,7,'2026-04-26','Delivered','2999.00','Paid','Delhi','Delhi'),(1008,8,'2026-04-27','Delivered','3499.00','Paid','Kochi','Kerala'),(1009,9,'2026-04-28','Shipped','2500.00','Paid','Mumbai','Maharashtra'),(1010,10,'2026-04-29','Delivered','1299.00','Paid','Bapatla','Andhra Pradesh'),(1011,11,'2026-05-01','Delivered','2499.00','Paid','Visakhapatnam','Andhra Pradesh'),(1012,12,'2026-05-02','Cancelled','999.00','Failed','Tirupati','Andhra Pradesh'),(1013,13,'2026-05-03','Delivered','2999.00','Paid','Warangal','Telangana'),(1014,14,'2026-05-04','Delivered','799.00','Paid','Ahmedabad','Gujarat'),(1015,15,'2026-05-05','Shipped','55000.00','Paid','Pune','Maharashtra'),(1016,16,'2026-05-06','Delivered','450.00','Paid','Nellore','Andhra Pradesh'),(1017,17,'2026-05-07','Delivered','180.00','Paid','Bhubaneswar','Odisha'),(1018,18,'2026-05-08','Pending','25000.00','Pending','Mysuru','Karnataka'),(1019,19,'2026-05-09','Delivered','350.00','Paid','Coimbatore','Tamil Nadu'),(1020,20,'2026-05-10','Delivered','1499.00','Paid','Rajahmundry','Andhra Pradesh'),(1021,1,'2026-05-11','Delivered','2500.00','Paid','Hyderabad','Telangana'),(1022,2,'2026-05-12','Delivered','3499.00','Paid','Vijayawada','Andhra Pradesh'),(1023,3,'2026-05-13','Delivered','699.00','Paid','Bengaluru','Karnataka'),(1024,5,'2026-05-14','Shipped','2499.00','Paid','Guntur','Andhra Pradesh'),(1025,7,'2026-05-15','Delivered','899.00','Paid','Delhi','Delhi'),(1026,10,'2026-05-16','Delivered','2999.00','Paid','Bapatla','Andhra Pradesh'),(1027,12,'2026-05-17','Delivered','450.00','Paid','Tirupati','Andhra Pradesh'),(1028,15,'2026-05-18','Cancelled','1299.00','Failed','Pune','Maharashtra'),(1029,16,'2026-05-19','Delivered','799.00','Paid','Nellore','Andhra Pradesh'),(1030,20,'2026-05-20','Delivered','55000.00','Paid','Rajahmundry','Andhra Pradesh');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1001,101,1,'55000.00','55000.00'),(2,1002,102,1,'25000.00','25000.00'),(3,1003,103,1,'2500.00','2500.00'),(4,1003,111,1,'999.00','999.00'),(5,1004,105,1,'1499.00','1499.00'),(6,1005,106,1,'699.00','699.00'),(7,1006,107,1,'899.00','899.00'),(8,1007,112,1,'2999.00','2999.00'),(9,1008,108,1,'3499.00','3499.00'),(10,1009,103,1,'2500.00','2500.00'),(11,1010,109,1,'1299.00','1299.00'),(12,1011,110,1,'2499.00','2499.00'),(13,1012,111,1,'999.00','999.00'),(14,1013,112,1,'2999.00','2999.00'),(15,1014,104,1,'799.00','799.00'),(16,1015,101,1,'55000.00','55000.00'),(17,1016,113,1,'450.00','450.00'),(18,1017,114,1,'180.00','180.00'),(19,1018,102,1,'25000.00','25000.00'),(20,1019,115,1,'350.00','350.00'),(21,1020,105,1,'1499.00','1499.00'),(22,1021,103,2,'2500.00','5000.00'),(23,1022,108,1,'3499.00','3499.00'),(24,1023,106,1,'699.00','699.00'),(25,1024,110,1,'2499.00','2499.00'),(26,1025,107,1,'899.00','899.00'),(27,1026,112,1,'2999.00','2999.00'),(28,1027,113,1,'450.00','450.00'),(29,1028,109,1,'1299.00','1299.00'),(30,1029,104,1,'799.00','799.00'),(31,1030,101,1,'55000.00','55000.00'),(32,1001,103,1,'2500.00','2500.00'),(33,1002,104,2,'799.00','1598.00'),(34,1004,111,2,'999.00','1998.00'),(35,1007,110,1,'2499.00','2499.00'),(36,1008,109,2,'1299.00','2598.00'),(37,1011,111,1,'999.00','999.00'),(38,1013,105,1,'1499.00','1499.00'),(39,1015,107,1,'899.00','899.00'),(40,1020,104,1,'799.00','799.00'),(41,1021,115,2,'350.00','700.00'),(42,1022,114,2,'180.00','360.00'),(43,1024,111,2,'999.00','1998.00'),(44,1026,103,1,'2500.00','2500.00'),(45,1030,102,1,'25000.00','25000.00');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1001,'2026-04-20','Credit Card','55000.00','Success','TXN100001'),(2,1002,'2026-04-21','UPI','25000.00','Success','TXN100002'),(3,1003,'2026-04-22','Debit Card','3299.00','Success','TXN100003'),(4,1004,'2026-04-23','UPI','1499.00','Success','TXN100004'),(5,1005,'2026-04-24','UPI','699.00','Success','TXN100005'),(6,1006,'2026-04-25','UPI','899.00','Pending','TXN100006'),(7,1007,'2026-04-26','Credit Card','2999.00','Success','TXN100007'),(8,1008,'2026-04-27','UPI','3499.00','Success','TXN100008'),(9,1009,'2026-04-28','Debit Card','2500.00','Success','TXN100009'),(10,1010,'2026-04-29','UPI','1299.00','Success','TXN100010'),(11,1011,'2026-05-01','Credit Card','2499.00','Success','TXN100011'),(12,1012,'2026-05-02','UPI','999.00','Failed','TXN100012'),(13,1013,'2026-05-03','UPI','2999.00','Success','TXN100013'),(14,1014,'2026-05-04','UPI','799.00','Success','TXN100014'),(15,1015,'2026-05-05','Credit Card','55000.00','Success','TXN100015'),(16,1016,'2026-05-06','UPI','450.00','Success','TXN100016'),(17,1017,'2026-05-07','Cash on Delivery','180.00','Success','TXN100017'),(18,1018,'2026-05-08','UPI','25000.00','Pending','TXN100018'),(19,1019,'2026-05-09','UPI','350.00','Success','TXN100019'),(20,1020,'2026-05-10','Debit Card','1499.00','Success','TXN100020'),(21,1021,'2026-05-11','UPI','2500.00','Success','TXN100021'),(22,1022,'2026-05-12','UPI','3499.00','Success','TXN100022'),(23,1023,'2026-05-13','UPI','699.00','Success','TXN100023'),(24,1024,'2026-05-14','Credit Card','2499.00','Success','TXN100024'),(25,1025,'2026-05-15','UPI','899.00','Success','TXN100025'),(26,1026,'2026-05-16','UPI','2999.00','Success','TXN100026'),(27,1027,'2026-05-17','Cash on Delivery','450.00','Success','TXN100027'),(28,1028,'2026-05-18','UPI','1299.00','Failed','TXN100028'),(29,1029,'2026-05-19','UPI','799.00','Success','TXN100029'),(30,1030,'2026-05-20','Credit Card','55000.00','Success','TXN100030');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,101,5,'Excellent laptop performance','2026-04-21'),(2,2,102,4,'Good smartphone for the price','2026-04-22'),(3,3,103,4,'Good sound quality','2026-04-23'),(4,4,105,5,'Very comfortable jeans','2026-04-24'),(5,5,106,5,'Very useful Python book','2026-04-25'),(6,6,107,5,'Excellent data engineering content','2026-04-26'),(7,7,112,4,'Comfortable running shoes','2026-04-27'),(8,8,108,4,'Works well and easy to use','2026-04-28'),(9,9,103,4,'Battery life is good','2026-04-29'),(10,10,109,5,'Heats water quickly','2026-04-30'),(11,11,110,5,'Good quality cricket bat','2026-05-02'),(12,12,111,4,'Good football for practice','2026-05-03'),(13,13,112,5,'Very comfortable shoes','2026-05-04'),(14,14,104,4,'Good quality T-shirt','2026-05-05'),(15,15,101,5,'Excellent laptop','2026-05-06'),(16,16,113,4,'Good quality rice','2026-05-07'),(17,17,114,4,'Good cooking oil','2026-05-08'),(18,18,102,5,'Great phone performance','2026-05-09'),(19,19,115,4,'Nice coffee taste','2026-05-10'),(20,20,105,4,'Good fit and quality','2026-05-11'),(21,1,103,5,'Excellent earbuds','2026-05-12'),(22,2,108,4,'Good mixer grinder','2026-05-13'),(23,3,106,5,'Helpful for learning Python','2026-05-14'),(24,5,110,4,'Good bat for beginners','2026-05-15'),(25,10,109,5,'Very useful kettle','2026-05-16');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-29  7:00:02
