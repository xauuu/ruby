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
INSERT INTO `blogs` VALUES (2,2,'5 điểm du lịch Đà Lạt \'cực đẹp\' không đi sẽ phí','dalat.jpg',NULL,'<p>Đà Lạt thơ mộng với ngàn hoa khoe sắc và khí hậu ôn hòa, mát lạnh, khiến bao con tim lữ khách xao xuyến. Đà Lạt cứ thế, một chút gợi mở, một chút bí ẩn, hãy dành thời gian để tận hưởng hương vị cuộc sống qua 6 điểm du lịch “cực đẹp” dưới đây đang được giới trẻ yêu thích.</p>',7,'<p>Đà Lạt thơ mộng với ngàn hoa khoe sắc và khí hậu ôn hòa, mát lạnh, khiến bao con tim lữ khách xao xuyến. Đà Lạt cứ thế, một chút gợi mở, một chút bí ẩn, hãy dành thời gian để tận hưởng hương vị cuộc sống qua 6 điểm du lịch “cực đẹp” dưới đây đang được giới trẻ yêu thích.</p>','2021-04-18 08:00:30.593174','2021-04-23 03:09:57.522784'),(5,3,'Cẩm nang du lịch Trung Quốc','single_blog_1.png',NULL,'<p><i>Trung Quốc – đất nước xinh đẹp với nền văn hóa lâu đời, là điểm đến du lịch hấp dẫn ở Châu Á. Với cảnh sắc thiên nhiên phong phú, khối lượng di sản đồ sộ và nét đặc sắc văn hóa phương Đông, quốc gia láng giềng này thực sự xứng đáng là một nơi chúng ta nên đặt chân tới</i></p>',6,'<p>Mình đi vào tháng 6, là mùa hè, nhưng đến tối nhiệt độ giảm hẳn, đôi lúc còn thấy hơi se lạnh. Vậy nên các bạn hãy mang theo khăn hoặc áo khoác mỏng. Đặc biệt đây cũng là mùa mưa ở Giang Nam, những cơn mưa có thể bất chợt xuất hiện bất cứ lúc nào, vì vậy đừng quên mang theo mình 1 chiếc ô nhé.<br>Vùng đất Giang Nam xinh đẹp, trù phú, cảnh sắc vô cùng nên thơ, bạn hãy tìm trước hình ảnh về từng nơi mình đến để chọn trang phục hợp với background nha . Các bạn có thể mua một chiếc sườn xám – trang phục truyền thống của Trung Quốc, được bán rất nhiều ở các cổ trấn. Hoặc nếu có thời gian, hãy dành một buổi thuê đồ cổ trang và chụp ảnh ở Cổ trấn nha, đảm bảo bạn sẽ có một bộ ảnh vô cùng độc đáo đó.&nbsp;<br>Chuẩn bị xong xuôi rồi, bây giờ hãy cùng bọn mình lên đường thôi nào.</p>','2021-04-19 03:18:23.671700','2021-04-23 03:09:59.804641');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (6,4,'---\n- beauty.jpg\n- IMG_20210119_090415.jpg\n- road_marking_cloudy_124093_1366x768.jpg\n','2021-04-17 13:10:06.870799','2021-04-17 13:10:06.870799'),(7,6,'---\n- combo-con-dao-gia-khuyen-mai-du-lich-viet.jpg\n- combo-con-dao-gia-re-du-lich-viet.jpg\n- combo-con-dao-tai-du-lich-viet.jpg\n- combo-di-bien-dao-con-dao-du-lich-viet.jpg\n- combo-du-lich-con-dao-gia-sieu-re-tai-du-lich-viet.jpg\n','2021-05-09 08:38:52.236273','2021-05-09 08:38:52.236273'),(8,8,'---\n- du-lich-tet-da-nang-gia-khuyen-mai-du-lich-viet.jpg\n- kinh-nghiem-du-lich-he-kham-pha-dong-thien-duong-du-lich-viet.jpg\n- tua-he-dong-thien-duong-du-lich-viet.jpg\n- tua-tet-duong-lich-gia-tot-du-lich-viet.jpg\n','2021-05-09 08:57:55.373791','2021-05-09 08:57:55.373791'),(9,10,'---\n- fish-sause-production_440249275.jpg\n- Ho-Quoc-pagoda_1019027986.jpg\n- phu-quoc-beach_521611657.jpg\n- Phu-Quoc-island_1113880625.jpg\n','2021-05-09 09:44:40.988521','2021-05-09 09:44:40.988521'),(10,9,'---\n- bai-nhat-con-dao.jpg\n- dinh-chua-dao-con-dao.jpg\n- Nhatu-ConDao_1007732638.jpg\n- Vietnamese-fishing-boats-on-Con-Dao-Island.jpg\n','2021-05-09 09:45:39.191692','2021-05-09 09:45:39.191692'),(11,7,'---\n- du-lich-cao-cap-tour-da-nang-hoi-an-anatara-du-lich-viet.jpg\n- tour-cao-cap-am-thuc-tai-resort-hoi-an-du-lich-viet.jpg\n- tour-cao-cap-anatara-hoi-an-du-lich-viet.jpg\n- tour-cao-cap-gia-tot-du-lich-viet.jpg\n','2021-05-09 09:46:39.502002','2021-05-09 09:46:39.502002');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `tour_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_user_id` (`user_id`),
  KEY `index_orders_on_tour_id` (`tour_id`),
  CONSTRAINT `fk_rails_6abcbe1e3e` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`),
  CONSTRAINT `fk_rails_f868b47f6a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,4,'Tran Quang Dat','0886381845','Da Nang',NULL,'as',1,'2021-05-06 13:47:13.811381','2021-05-08 09:14:53.670483'),(2,3,5,'Dang Quang Tai','0797126001','Huyeeeeee',NULL,'dat tour vi dam me',0,'2021-05-09 09:49:41.788333','2021-05-09 09:49:41.788333');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20210314140647'),('20210328022114'),('20210329064610'),('20210329065921'),('20210329071837'),('20210329072049'),('20210329072153'),('20210329095727'),('20210329100008'),('20210329100331'),('20210329100512'),('20210411013721'),('20210411015612'),('20210417022841'),('20210417024056'),('20210417110957'),('20210419102402'),('20210506125816'),('20210506133221'),('20210508091012');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (4,'Paris','1.png','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur</p>',1000000,4,3,'2021-04-11 01:53:37.297381','2021-04-17 02:29:44.447002',6),(5,'Huế - Quảng Trị - Quảng Bình - Vinh - Huế','tf_200811021310_094630.jpg','<p><strong>Thánh Địa La Vang</strong>: chốn linh thiêng và là nơi hành hương không thể bỏ qua của những người theo đạo công giáo, một trong bốn tiểu vương cung thánh đường La Mã tại Việt Nam</p><p><strong>Thành Cổ Quảng Trị</strong>: Di tích quốc gia đặc biệt của Việt Nam được xếp hạng đợt 4, tọa lạc ở trung tâm thị xã Quảng Trị, tỉnh Quảng Trị. Thành Cổ trở thành điểm tham quan không thể bỏ qua mỗi khi du khách đến Quảng Trị, nơi đây được xem là nghĩa trang không nấm mồ, là ngôi mộ chung của những người lính Thành Cổ đã ngã xuống vì quê hương vì sự hòa bình thống nhất đất nước.</p><p><strong>Cầu Hiền Lương, Sông Bến Hải</strong>: nghe hướng dẫn viên thuyết minh khu phi quân sự DMZ và cầu Hiền Lương - sông Bến Hải</p><p><strong>Động Thiên Đường</strong>: được xem như là Hoàng cung dưới lòng đất, hang động đá vôi đẹp và kỳ ảo, có độ dài kỷ lục trên 30km.<br>Sau khi ăn trưa, xe đưa Quý khách đến thành phố Vinh nhận phòng nghỉ ngơi hoặc tự do thả mình trong hồ bơi vô cực<br><br>&nbsp;</p>',3790000,4,3,'2021-05-09 08:36:14.991766','2021-05-09 08:36:14.991766',5),(6,'Du lịch Vũng Tàu - Côn Đảo','combo-con-dao-3-ngay-2-dem-du-lich-viet.jpg','<p>Côn Đảo là một địa danh du lịch và nghỉ dưỡng nổi tiếng được đông đảo du khách yêu thích.. .Du Lịch Việt &nbsp;giới thiệu các gói combo du lịch côn đảo với nhiều lựa chọn về tuyến điểm, dịch vụ cao cấp và đặc biệt là giá thành cực kỳ hấp dẫn. Khi lựa chọn combo du lịch côn đảo du khách có thể trải nghiệm một kỳ nghỉ tiết kiệm nhất để khám phá Côn Đảo</p><p>Với gói combo Côn Đảo &nbsp;2 ngày 1 đêm đi bằng vé tàu cao tốc + phòng, du khách hoàn toàn có thể tự chủ mọi thứ cho việc tham quan, nghỉ ngơi hay khám phá Côn Đảo theo cách của riêng mình, cũng là cách du lịch Côn Đảo tiết kiệm nhất và để trải nghiệm hành trình đường biển đến với Côn Đảo đầy thú vị.</p><p><strong>Ngày 1: Vũng Tàu - &nbsp;Côn Đảo</strong><br>Quý khách có mặt tại cảng Cầu Đá (Vũng Tàu) 1h trước giờ khởi hành để làm thủ tục lên tàu. &nbsp;Khởi hành lúc 8:00 (Tàu Phú Quốc Express).Đến Côn Đảo, xe đón đưa về khách sạn, nhận phòng.&nbsp;<br>Chiều tự do tắm biển, đắm mình trong thiên nhiên Côn Đảo, khám phá vẻ đẹp hoang sơ của Bãi Nhất, Bãi Đầm Trầu, Bãi biển bí ẩn...tự do thăm quan quanh đảo (có thể thuê xe máy) hoặc book tour option hàng ngày như tour &nbsp;lặn ngắm san hô Vịnh Côn Sơn hay tour khám phá Hòn Bảy Cạnh, tour khám phá Hòn Cau... &nbsp;</p><p><strong>Ngày 2:</strong> Nghỉ ngơi, tự do tắm biển, đi chợ mua sắm… cho đến giờ tiễn khách ra bến tàu, lên tàu cao tốc về Vũng Tàu chuyến 13:30 (Tàu Phú Quốc Express).&nbsp;</p>',1000000,3,2,'2021-05-09 08:38:09.567825','2021-05-09 08:38:09.567825',5),(7,'Du lịch Cao Cấp Nghỉ dưỡng Anantara Hội An Resort Đà Nẵng','tour-cao-cap-du-lich-hoi-an-du-lich-viet.jpg','<p>Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với Công Viên Fantasy, Rạp chiếu phim 3D Mega 360 độ với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam, Hai rạp chiếu phim 4D và 5Di, Xe Trượt Ống, Hầm rượu, Vườn hoa tình yêu, Bảo Tàng Sáp, tự do chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.</p><p>Thưởng thức buffet trưa tại Bà Nà.</p><p>Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình: Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.</p><p>&nbsp;</p>',21900000,5,3,'2021-05-09 08:42:01.110783','2021-05-09 08:42:01.110783',5),(8,'Tour Đà Nẵng - Huế - Thánh Địa La Vang - Động Thiên Đường','du-lich-he-hoi-an-du-lich-viet.jpg','<p>Du lịch Hè - Du lịch Đà Nẵng - Hội An - Huế - Thánh Địa La Vang - Động Thiên Đường&nbsp;từ Sài Gòn - Du lịch Miền Trung - Tour Du lịch Đà Nẵng được thiên nhiên đặc biệt ưu đãi, mảnh đất miền Trung đẹp với nhiều dãy núi hùng vỹ xanh rì, những bờ biển cát trắng mịn thoai thoải và những dòng sông trong vắt thơ mộng. Không những vậy, trên con đường di sản miền Trung, du khách còn được thưởng ngoạn những di sản thế giới cuả Việt Nam đó là Phố cổ Hội An – nơi bến cảng một thời sầm uất nhất Đông Dương, quần thể di tích Cố Đô Huế với hệ thống đền đài lăng tẩm nguy nga tráng lệ và Động Phong Nha với nhiều hang động kì bí của tạo hóa.</p><p>&nbsp;</p>',6999000,4,5,'2021-05-09 08:57:04.773339','2021-05-09 08:57:04.773339',5),(9,'Du lịch Côn Đảo','combo-con-dao-gia-khuyen-mai-du-lich-viet.jpg','<p>Tham quan Bảo tàng Côn Đảo nơi trưng bày các hiện vật, hình ảnh về quá trình đấu tranh, giải phóng dân tộc&nbsp;</p><p>Tham quan trại tù Phú Hải lâu đời do thực dân Pháp xây dựng&nbsp;</p><p>Viếng nghĩa trang Hàng Dương - nghĩa trang lớn nhất tại Côn Đảo&nbsp;</p><p>Tham quan ngôi chùa Núi Một duy nhất tại Côn Đảo - Chiêm ngưỡng bãi đá Trắng, mũi Cá Mập</p>',4999000,4,3,'2021-05-09 09:41:38.996415','2021-05-09 09:41:38.996415',5),(10,'Du lịch Phú Quốc','phu-quoc_594716297.jpg','<p>Tham quan Di tích lịch sử Nhà tù Phú Quốc&nbsp;</p><p>Viếng Dinh Bà Thủy Long Thánh Mẫu - Thờ Thần Nữ Kim Giao, người phụ nữ được người dân Phú Quốc rất mực tôn kính&nbsp;</p><p>Chiêm ngưỡng Hòn Móng Tay: Một trong những điểm check in tuyệt đẹp, tự do chụp hình, tắm biển&nbsp;</p><p>Hòn Ghầm Ghì: Nơi được biết là hòn đảo có rạn san hô đẹp nhất của quần đảo An Thới, thỏa sức khám phá thế giới đại dương kỳ thú&nbsp;</p><p>Hòn Mây Rút: Một hòn đảo tuyệt đẹp với bãi cát trắng trải dài, tự do tắm biển và đắm mình cùng thiên nhiên</p>',3999000,4,3,'2021-05-09 09:43:05.648055','2021-05-09 09:43:05.648055',5);
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

-- Dump completed on 2021-05-09 16:57:43
