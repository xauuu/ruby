-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: xau_development
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2021-03-14 14:12:39.383204','2021-03-14 14:12:39.383204');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (2,'Công nghệ','<p><strong>abc</strong></p>','2021-04-18 07:35:55.143705','2021-04-18 07:37:41.637861'),(3,'Trải nghiêm','<p>av</p>','2021-04-19 03:11:51.187826','2021-04-19 03:11:51.187826');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_category_id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `desc` text,
  `view` int(11) DEFAULT '1',
  `content` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_blog_category_id` (`blog_category_id`),
  CONSTRAINT `fk_rails_1476ff306b` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,2,'5 điểm du lịch Đà Lạt \'cực đẹp\' không đi sẽ phí','dalat.jpg',NULL,'<p>Đà Lạt thơ mộng với ngàn hoa khoe sắc và khí hậu ôn hòa, mát lạnh, khiến bao con tim lữ khách xao xuyến. Đà Lạt cứ thế, một chút gợi mở, một chút bí ẩn, hãy dành thời gian để tận hưởng hương vị cuộc sống qua 6 điểm du lịch “cực đẹp” dưới đây đang được giới trẻ yêu thích.</p>',5,'<p>Đà Lạt thơ mộng với ngàn hoa khoe sắc và khí hậu ôn hòa, mát lạnh, khiến bao con tim lữ khách xao xuyến. Đà Lạt cứ thế, một chút gợi mở, một chút bí ẩn, hãy dành thời gian để tận hưởng hương vị cuộc sống qua 6 điểm du lịch “cực đẹp” dưới đây đang được giới trẻ yêu thích.</p>','2021-04-18 08:00:30.593174','2021-04-19 10:52:18.282974'),(5,3,'Cẩm nang du lịch Trung Quốc','single_blog_1.png',NULL,'<p><i>Trung Quốc – đất nước xinh đẹp với nền văn hóa lâu đời, là điểm đến du lịch hấp dẫn ở Châu Á. Với cảnh sắc thiên nhiên phong phú, khối lượng di sản đồ sộ và nét đặc sắc văn hóa phương Đông, quốc gia láng giềng này thực sự xứng đáng là một nơi chúng ta nên đặt chân tới</i></p>',4,'<p>Mình đi vào tháng 6, là mùa hè, nhưng đến tối nhiệt độ giảm hẳn, đôi lúc còn thấy hơi se lạnh. Vậy nên các bạn hãy mang theo khăn hoặc áo khoác mỏng. Đặc biệt đây cũng là mùa mưa ở Giang Nam, những cơn mưa có thể bất chợt xuất hiện bất cứ lúc nào, vì vậy đừng quên mang theo mình 1 chiếc ô nhé.<br>Vùng đất Giang Nam xinh đẹp, trù phú, cảnh sắc vô cùng nên thơ, bạn hãy tìm trước hình ảnh về từng nơi mình đến để chọn trang phục hợp với background nha . Các bạn có thể mua một chiếc sườn xám – trang phục truyền thống của Trung Quốc, được bán rất nhiều ở các cổ trấn. Hoặc nếu có thời gian, hãy dành một buổi thuê đồ cổ trang và chụp ảnh ở Cổ trấn nha, đảm bảo bạn sẽ có một bộ ảnh vô cùng độc đáo đó.&nbsp;<br>Chuẩn bị xong xuôi rồi, bây giờ hãy cùng bọn mình lên đường thôi nào.</p>','2021-04-19 03:18:23.671700','2021-04-19 10:37:45.010969');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Du lịch trong nước','<p>aaba</p>','2021-04-03 14:06:43.652451','2021-04-03 16:26:06.261323'),(6,'Du lịch nước ngoài','<p>abc</p>','2021-04-11 01:31:54.336992','2021-04-11 01:31:54.336992');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tour_id` bigint(20) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_tour_id` (`tour_id`),
  CONSTRAINT `fk_rails_84313ecca8` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (6,4,'---\n- beauty.jpg\n- IMG_20210119_090415.jpg\n- road_marking_cloudy_124093_1366x768.jpg\n','2021-04-17 13:10:06.870799','2021-04-17 13:10:06.870799');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20210314140647'),('20210328022114'),('20210329064610'),('20210329065921'),('20210329071837'),('20210329072049'),('20210329072153'),('20210329095727'),('20210329100008'),('20210329100331'),('20210329100512'),('20210411013721'),('20210411015612'),('20210417022841'),('20210417024056'),('20210417110957'),('20210419102402');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `desc` text,
  `price` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tours_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_138548726a` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (4,'Paris','1.png','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>',1000000,4,3,'2021-04-11 01:53:37.297381','2021-04-17 02:29:44.447002',6);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Quang Đạt','$2a$12$himHp3xTQ2auwybHF1JY9.CzswPey9dpfxOixwcRDe5hs9bNGL8y.','2021-03-28 02:40:00.728137','2021-03-28 02:40:00.728137','qdatqb@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 10:51:42
