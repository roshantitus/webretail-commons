/*
SQLyog v4.06 RC1
Host - 5.0.21-community-nt : Database - webretail
*********************************************************************
Server version : 5.0.21-community-nt
*/


create database if not exists `webretail`;

USE `webretail`;

/*Table structure for table `address` */

drop table if exists `address`;

CREATE TABLE `address` (
  `address_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `home_phone` varchar(255) default NULL,
  `landmark` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `office_phone` varchar(255) default NULL,
  `website_url` varchar(255) default NULL,
  `zip_code` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `city_code` bigint(20) NOT NULL,
  `country_code` bigint(20) NOT NULL,
  `state_code` bigint(20) NOT NULL,
  PRIMARY KEY  (`address_id`),
  UNIQUE KEY `UK_8yilrg13icyeudi9pi3ro0c1j` (`city_code`),
  UNIQUE KEY `UK_r7hc0vfo0kx8mawmr9fl4iyq7` (`country_code`),
  UNIQUE KEY `UK_ggieb35v4ym477kx2ein1995f` (`state_code`),
  KEY `FKsv5dmo21p7mv80c4woffp1t1u` (`created_by`),
  KEY `FKo8ddvkhch69ylkk1a7oy0bkiu` (`updated_by`),
  CONSTRAINT `FK8mhwfbe34rotsnrjeev9es6t2` FOREIGN KEY (`state_code`) REFERENCES `state_master` (`state_id`),
  CONSTRAINT `FK60hk2p2s4hnbx2vbqfb0f5659` FOREIGN KEY (`city_code`) REFERENCES `city_master` (`city_id`),
  CONSTRAINT `FKdphaua5xnf16oiyepgmakfujv` FOREIGN KEY (`country_code`) REFERENCES `country_master` (`country_id`),
  CONSTRAINT `FKo8ddvkhch69ylkk1a7oy0bkiu` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKsv5dmo21p7mv80c4woffp1t1u` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address` */

/*Table structure for table `bank_master` */

drop table if exists `bank_master`;

CREATE TABLE `bank_master` (
  `bank_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `contact_person_name` varchar(255) default NULL,
  `name` varchar(255) NOT NULL,
  `net_banking_url` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `address_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`bank_id`),
  UNIQUE KEY `UK_3506k04hvmt1p0xeip988msib` (`address_id`),
  KEY `FKa1yxegn20d18gqwkrj2xmcdg3` (`created_by`),
  KEY `FK5bb8ss6lrfn98kt4i4v7jlbpd` (`updated_by`),
  CONSTRAINT `FKna0bco8b3fril1gwe4xe9wxva` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK5bb8ss6lrfn98kt4i4v7jlbpd` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa1yxegn20d18gqwkrj2xmcdg3` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_master` */

/*Table structure for table `cart` */

drop table if exists `cart`;

CREATE TABLE `cart` (
  `cart_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`cart_id`),
  UNIQUE KEY `UK_9emlp6m95v5er2bcqkjsw48he` (`user_id`),
  KEY `FK1w0o0607c1sqcasvbxplfq8sj` (`created_by`),
  KEY `FKb8s7ma5btk16xq6be857s0jcr` (`updated_by`),
  CONSTRAINT `FKbmo4tkl6m9od5wdc8gdd65vrb` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK1w0o0607c1sqcasvbxplfq8sj` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKb8s7ma5btk16xq6be857s0jcr` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `cart_line_item` */

drop table if exists `cart_line_item`;

CREATE TABLE `cart_line_item` (
  `cart_line_item_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`cart_line_item_id`),
  UNIQUE KEY `UK_m34c79q4k2wfg6135jht4ik2v` (`product_id`),
  KEY `FKrxu24lhh77o4rx8pe9qr343vr` (`created_by`),
  KEY `FK6kgl4g1b0lq26txusqyy9xsde` (`updated_by`),
  KEY `FK5n2966oatmjcxvqbs10wcwbb` (`cart_id`),
  CONSTRAINT `FKt47yrsi6v1s9kjdg8mxiwt7bh` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FK5n2966oatmjcxvqbs10wcwbb` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  CONSTRAINT `FK6kgl4g1b0lq26txusqyy9xsde` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKrxu24lhh77o4rx8pe9qr343vr` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart_line_item` */

/*Table structure for table `category` */

drop table if exists `category`;

CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `category_description` varchar(255) default NULL,
  `category_name` varchar(255) NOT NULL,
  `sort_order` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `parent_category_id` bigint(20) default NULL,
  PRIMARY KEY  (`category_id`),
  KEY `FKoxjhe07v2ngh92d0etxgpyyg8` (`created_by`),
  KEY `FKrjy4pkn8ra5nbkm7y77qocp2e` (`updated_by`),
  KEY `FK4wqwi3wgsrq5kka9k94vc5u2i` (`parent_category_id`),
  CONSTRAINT `FK4wqwi3wgsrq5kka9k94vc5u2i` FOREIGN KEY (`parent_category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FKoxjhe07v2ngh92d0etxgpyyg8` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKrjy4pkn8ra5nbkm7y77qocp2e` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `city_master` */

drop table if exists `city_master`;

CREATE TABLE `city_master` (
  `city_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `city_code` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`city_id`),
  UNIQUE KEY `UK_748cmcyr0exq64ypil2u0uwqy` (`city_code`),
  KEY `FKr16kow9h8gdn8sdtxwy0kvf4t` (`created_by`),
  KEY `FKp87ok4ab07hkc7grj0rx9xw8t` (`updated_by`),
  KEY `FK1uqoda8olxvuhk5qxk4achff6` (`state_id`),
  CONSTRAINT `FK1uqoda8olxvuhk5qxk4achff6` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`),
  CONSTRAINT `FKp87ok4ab07hkc7grj0rx9xw8t` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKr16kow9h8gdn8sdtxwy0kvf4t` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city_master` */

insert into `city_master` values (1,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KOLHAPUR','','Kolhapur',(null),(null),21),(2,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PORT_BLAIR','','Port Blair',(null),(null),1),(3,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ADILABAD','','Adilabad',(null),(null),2),(4,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ADONI','','Adoni',(null),(null),2),(5,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMADALAVALASA','','Amadalavalasa',(null),(null),2),(6,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMALAPURAM','','Amalapuram',(null),(null),2),(7,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ANAKAPALLE','','Anakapalle',(null),(null),2),(8,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ANANTAPUR','','Anantapur',(null),(null),2),(9,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BADEPALLE','','Badepalle',(null),(null),2),(10,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BANGANAPALLE','','Banganapalle',(null),(null),2),(11,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BAPATLA','','Bapatla',(null),(null),2),(12,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BELLAMPALLE','','Bellampalle',(null),(null),2),(13,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BETHAMCHERLA','','Bethamcherla',(null),(null),2),(14,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHADRACHALAM','','Bhadrachalam',(null),(null),2),(15,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHAINSA','','Bhainsa',(null),(null),2),(16,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHEEMUNIPATNAM','','Bheemunipatnam',(null),(null),2),(17,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHIMAVARAM','','Bhimavaram',(null),(null),2),(18,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHONGIR','','Bhongir',(null),(null),2),(19,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BOBBILI','','Bobbili',(null),(null),2),(20,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BODHAN','','Bodhan',(null),(null),2),(21,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHILAKALURIPET','','Chilakaluripet',(null),(null),2),(22,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHIRALA','','Chirala',(null),(null),2),(23,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHITTOOR','','Chittoor',(null),(null),2),(24,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CUDDAPAH','','Cuddapah',(null),(null),2),(25,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DEVARAKONDA','','Devarakonda',(null),(null),2),(26,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DHARMAVARAM','','Dharmavaram',(null),(null),2),(27,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ELURU','','Eluru',(null),(null),2),(28,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','FAROOQNAGAR','','Farooqnagar',(null),(null),2),(29,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GADWAL','','Gadwal',(null),(null),2),(30,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOOTY','','Gooty',(null),(null),2),(31,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GUDIVADA','','Gudivada',(null),(null),2),(32,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GUDUR','','Gudur',(null),(null),2),(33,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GUNTAKAL','','Guntakal',(null),(null),2),(34,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GUNTUR','','Guntur',(null),(null),2),(35,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HANUMAN_JUNCTION','','Hanuman Junction',(null),(null),2),(36,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HINDUPUR','','Hindupur',(null),(null),2),(37,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HYDERABAD','','Hyderabad',(null),(null),2),(38,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ICHCHAPURAM','','Ichchapuram',(null),(null),2),(39,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAGGAIAHPET','','Jaggaiahpet',(null),(null),2),(40,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAGTIAL','','Jagtial',(null),(null),2),(41,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAMMALAMADUGU','','Jammalamadugu',(null),(null),2),(42,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JANGAON','','Jangaon',(null),(null),2),(43,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KADAPA','','Kadapa',(null),(null),2),(44,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KADIRI','','Kadiri',(null),(null),2),(45,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KAGAZNAGAR','','Kagaznagar',(null),(null),2),(46,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KAKINADA','','Kakinada',(null),(null),2),(47,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KALYANDURG','','Kalyandurg',(null),(null),2),(48,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KAMAREDDY','','Kamareddy',(null),(null),2),(49,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KANDUKUR','','Kandukur',(null),(null),2),(50,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KARIMNAGAR','','Karimnagar',(null),(null),2),(51,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KAVALI','','Kavali',(null),(null),2),(52,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KHAMMAM','','Khammam',(null),(null),2),(53,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KORATLA','','Koratla',(null),(null),2),(54,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KOTHAGUDEM','','Kothagudem',(null),(null),2),(55,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KOTHAPETA','','Kothapeta',(null),(null),2),(56,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KOVVUR','','Kovvur',(null),(null),2),(57,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KURNOOL','','Kurnool',(null),(null),2),(58,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KYATHAMPALLE','','Kyathampalle',(null),(null),2),(59,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MACHERLA','','Macherla',(null),(null),2),(60,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MACHILIPATNAM','','Machilipatnam',(null),(null),2),(61,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MADANAPALLE','','Madanapalle',(null),(null),2),(62,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MAHBUBNAGAR','','Mahbubnagar',(null),(null),2),(63,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANCHERIAL','','Mancherial',(null),(null),2),(64,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANDAMARRI','','Mandamarri',(null),(null),2),(65,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANDAPETA','','Mandapeta',(null),(null),2),(66,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANUGURU','','Manuguru',(null),(null),2),(67,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MARKAPUR','','Markapur',(null),(null),2),(68,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MEDAK','','Medak',(null),(null),2),(69,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MIRYALAGUDA','','Miryalaguda',(null),(null),2),(70,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MOGALTHUR','','Mogalthur',(null),(null),2),(71,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAGARI','','Nagari',(null),(null),2),(72,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAGARKURNOOL','','Nagarkurnool',(null),(null),2),(73,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NANDYAL','','Nandyal',(null),(null),2),(74,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NARASAPUR','','Narasapur',(null),(null),2),(75,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NARASARAOPET','','Narasaraopet',(null),(null),2),(76,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NARAYANPET','','Narayanpet',(null),(null),2),(77,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NARSIPATNAM','','Narsipatnam',(null),(null),2),(78,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NELLORE','','Nellore',(null),(null),2),(79,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NIDADAVOLE','','Nidadavole',(null),(null),2),(80,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NIRMAL','','Nirmal',(null),(null),2),(81,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NIZAMABAD','','Nizamabad',(null),(null),2),(82,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NUZVID','','Nuzvid',(null),(null),2),(83,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ONGOLE','','Ongole',(null),(null),2),(84,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PALACOLE','','Palacole',(null),(null),2),(85,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PALASA_KASIBUGGA','','Palasa Kasibugga',(null),(null),2),(86,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PALWANCHA','','Palwancha',(null),(null),2),(87,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PARVATHIPURAM','','Parvathipuram',(null),(null),2),(88,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PEDANA','','Pedana',(null),(null),2),(89,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PEDDAPURAM','','Peddapuram',(null),(null),2),(90,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PITHAPURAM','','Pithapuram',(null),(null),2),(91,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PONDUR','','Pondur',(null),(null),2),(92,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PONNUR','','Ponnur',(null),(null),2),(93,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PRODDATUR','','Proddatur',(null),(null),2),(94,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PUNGANUR','','Punganur',(null),(null),2),(95,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AP-PUTTUR','','Puttur',(null),(null),2),(96,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAJAHMUNDRY','','Rajahmundry',(null),(null),2),(97,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAJAM','','Rajam',(null),(null),2),(98,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAMACHANDRAPURAM','','Ramachandrapuram',(null),(null),2),(99,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAMAGUNDAM','','Ramagundam',(null),(null),2),(100,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAYACHOTI','','Rayachoti',(null),(null),2),(101,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAYADURG','','Rayadurg',(null),(null),2),(102,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RENIGUNTA','','Renigunta',(null),(null),2),(103,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','REPALLE','','Repalle',(null),(null),2),(104,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SADASIVPET','','Sadasivpet',(null),(null),2),(105,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SALUR','','Salur',(null),(null),2),(106,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SAMALKOT','','Samalkot',(null),(null),2),(107,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SANGAREDDY','','Sangareddy',(null),(null),2),(108,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SATTENAPALLE','','Sattenapalle',(null),(null),2),(109,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SIDDIPET','','Siddipet',(null),(null),2),(110,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SINGAPUR','','Singapur',(null),(null),2),(111,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SIRCILLA','','Sircilla',(null),(null),2),(112,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SRIKAKULAM','','Srikakulam',(null),(null),2),(113,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SRIKALAHASTI','','Srikalahasti',(null),(null),2),(115,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SURYAPET','','Suryapet',(null),(null),2),(116,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TADEPALLIGUDEM','','Tadepalligudem',(null),(null),2),(117,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TADPATRI','','Tadpatri',(null),(null),2),(118,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TANDUR','','Tandur',(null),(null),2),(119,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TANUKU','','Tanuku',(null),(null),2),(120,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TENALI','','Tenali',(null),(null),2),(121,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TIRUPATI','','Tirupati',(null),(null),2),(122,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TUNI','','Tuni',(null),(null),2),(123,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','URAVAKONDA','','Uravakonda',(null),(null),2),(124,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VENKATAGIRI','','Venkatagiri',(null),(null),2),(125,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VICARABAD','','Vicarabad',(null),(null),2),(126,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VIJAYAWADA','','Vijayawada',(null),(null),2),(127,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VINUKONDA','','Vinukonda',(null),(null),2),(128,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VISAKHAPATNAM','','Visakhapatnam',(null),(null),2),(129,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','VIZIANAGARAM','','Vizianagaram',(null),(null),2),(130,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','WANAPARTHY','','Wanaparthy',(null),(null),2),(131,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','WARANGAL','','Warangal',(null),(null),2),(132,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','YELLANDU','','Yellandu',(null),(null),2),(133,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','YEMMIGANUR','','Yemmiganur',(null),(null),2),(134,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','YERRAGUNTLA','','Yerraguntla',(null),(null),2),(135,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ZAHIRABAD','','Zahirabad',(null),(null),2),(136,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAJAMPET','','Rajampet',(null),(null),2),(137,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ALONG','','Along',(null),(null),3),(138,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BOMDILA','','Bomdila',(null),(null),3),(139,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ITANAGAR','','Itanagar',(null),(null),3),(140,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAHARLAGUN','','Naharlagun',(null),(null),3),(141,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PASIGHAT','','Pasighat',(null),(null),3),(142,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ABHAYAPURI','','Abhayapuri',(null),(null),4),(143,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMGURI','','Amguri',(null),(null),4),(144,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ANANDNAGAAR','','Anandnagaar',(null),(null),4),(145,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARPETA','','Barpeta',(null),(null),4),(146,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARPETA_ROAD','','Barpeta Road',(null),(null),4),(147,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BILASIPARA','','Bilasipara',(null),(null),4),(148,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BONGAIGAON','','Bongaigaon',(null),(null),4),(149,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DHEKIAJULI','','Dhekiajuli',(null),(null),4),(150,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DHUBRI','','Dhubri',(null),(null),4),(151,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIBRUGARH','','Dibrugarh',(null),(null),4),(152,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIGBOI','','Digboi',(null),(null),4),(153,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIPHU','','Diphu',(null),(null),4),(154,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DISPUR','','Dispur',(null),(null),4),(156,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GAURIPUR','','Gauripur',(null),(null),4),(157,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOALPARA','','Goalpara',(null),(null),4),(158,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOLAGHAT','','Golaghat',(null),(null),4),(159,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GUWAHATI','','Guwahati',(null),(null),4),(160,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HAFLONG','','Haflong',(null),(null),4),(161,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HAILAKANDI','','Hailakandi',(null),(null),4),(162,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HOJAI','','Hojai',(null),(null),4),(163,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JORHAT','','Jorhat',(null),(null),4),(164,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KARIMGANJ','','Karimganj',(null),(null),4),(165,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KOKRAJHAR','','Kokrajhar',(null),(null),4),(166,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','LANKA','','Lanka',(null),(null),4),(167,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','LUMDING','','Lumding',(null),(null),4),(168,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANGALDOI','','Mangaldoi',(null),(null),4),(169,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANKACHAR','','Mankachar',(null),(null),4),(170,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MARGHERITA','','Margherita',(null),(null),4),(171,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MARIANI','','Mariani',(null),(null),4),(172,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MARIGAON','','Marigaon',(null),(null),4),(173,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAGAON','','Nagaon',(null),(null),4),(174,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NALBARI','','Nalbari',(null),(null),4),(175,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NORTH_LAKHIMPUR','','North Lakhimpur',(null),(null),4),(176,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RANGIA','','Rangia',(null),(null),4),(177,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SIBSAGAR','','Sibsagar',(null),(null),4),(178,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SILAPATHAR','','Silapathar',(null),(null),4),(179,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SILCHAR','','Silchar',(null),(null),4),(180,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TEZPUR','','Tezpur',(null),(null),4),(181,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TINSUKIA','','Tinsukia',(null),(null),4),(182,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMARPUR','','Amarpur',(null),(null),5),(183,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ARARIA','','Araria',(null),(null),5),(184,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ARERAJ','','Areraj',(null),(null),5),(185,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ARRAH','','Arrah',(null),(null),5),(186,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ASARGANJ','','Asarganj',(null),(null),5),(187,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-AURANGABAD','','Aurangabad',(null),(null),5),(188,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BAGAHA','','Bagaha',(null),(null),5),(189,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BAHADURGANJ','','Bahadurganj',(null),(null),5),(190,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BAIRGANIA','','Bairgania',(null),(null),5),(191,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BAKHTIARPUR','','Bakhtiarpur',(null),(null),5),(192,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BANKA','','Banka',(null),(null),5),(193,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BANMANKHI_BAZAR','','Banmankhi Bazar',(null),(null),5),(194,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARAHIYA','','Barahiya',(null),(null),5),(195,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARAULI','','Barauli',(null),(null),5),(196,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARBIGHA','','Barbigha',(null),(null),5),(197,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BARH','','Barh',(null),(null),5),(198,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BEGUSARAI','','Begusarai',(null),(null),5),(199,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BEHEA','','Behea',(null),(null),5),(200,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BETTIAH','','Bettiah',(null),(null),5),(201,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHABUA','','Bhabua',(null),(null),5),(202,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHAGALPUR','','Bhagalpur',(null),(null),5),(203,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BIHAR_SHARIF','','Bihar Sharif',(null),(null),5),(204,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BIKRAMGANJ','','Bikramganj',(null),(null),5),(205,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BODH_GAYA','','Bodh Gaya',(null),(null),5),(206,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BUXAR','','Buxar',(null),(null),5),(207,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHANDAN_BARA','','Chandan Bara',(null),(null),5),(208,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHANPATIA','','Chanpatia',(null),(null),5),(209,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHHAPRA','','Chhapra',(null),(null),5),(210,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','COLGONG','','Colgong',(null),(null),5),(211,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DALSINGHSARAI','','Dalsinghsarai',(null),(null),5),(212,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DARBHANGA','','Darbhanga',(null),(null),5),(213,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DAUDNAGAR','','Daudnagar',(null),(null),5),(214,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DEHRI_ON_SONE','','Dehri-on-Sone',(null),(null),5),(215,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DHAKA','','Dhaka',(null),(null),5),(216,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIGHWARA','','Dighwara',(null),(null),5),(217,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DUMRAON','','Dumraon',(null),(null),5),(218,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','FATWAH','','Fatwah',(null),(null),5),(219,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','FORBESGANJ','','Forbesganj',(null),(null),5),(220,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GAYA','','Gaya',(null),(null),5),(221,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOGRI_JAMALPUR','','Gogri Jamalpur',(null),(null),5),(222,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOPALGANJ','','Gopalganj',(null),(null),5),(223,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HAJIPUR','','Hajipur',(null),(null),5),(224,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HILSA','','Hilsa',(null),(null),5),(225,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','HISUA','','Hisua',(null),(null),5),(226,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-ISLAMPUR','','Islampur',(null),(null),5),(227,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAGDISPUR','','Jagdispur',(null),(null),5),(228,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAMALPUR','','Jamalpur',(null),(null),5),(229,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAMUI','','Jamui',(null),(null),5),(230,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JEHANABAD','','Jehanabad',(null),(null),5),(231,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JHAJHA','','Jhajha',(null),(null),5),(232,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JHANJHARPUR','','Jhanjharpur',(null),(null),5),(233,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JOGABANI','','Jogabani',(null),(null),5),(234,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KANTI','','Kanti',(null),(null),5),(235,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KATIHAR','','Katihar',(null),(null),5),(236,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KHAGARIA','','Khagaria',(null),(null),5),(237,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-KHARAGPUR','','Kharagpur',(null),(null),5),(238,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KISHANGANJ','','Kishanganj',(null),(null),5),(239,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','LAKHISARAI','','Lakhisarai',(null),(null),5),(240,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-LALGANJ','','Lalganj',(null),(null),5),(241,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MADHEPURA','','Madhepura',(null),(null),5),(242,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MADHUBANI','','Madhubani',(null),(null),5),(243,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MAHARAJGANJ','','Maharajganj',(null),(null),5),(244,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MAHNAR_BAZAR','','Mahnar Bazar',(null),(null),5),(245,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MAKHDUMPUR','','Makhdumpur',(null),(null),5),(246,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANER','','Maner',(null),(null),5),(247,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MANIHARI','','Manihari',(null),(null),5),(248,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MARHAURA','','Marhaura',(null),(null),5),(249,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MASAURHI','','Masaurhi',(null),(null),5),(250,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MIRGANJ','','Mirganj',(null),(null),5),(251,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MOKAMEH','','Mokameh',(null),(null),5),(252,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MOTIHARI','','Motihari',(null),(null),5),(253,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MOTIPUR','','Motipur',(null),(null),5),(254,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MUNGER','','Munger',(null),(null),5),(255,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MURLIGANJ','','Murliganj',(null),(null),5),(256,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MUZAFFARPUR','','Muzaffarpur',(null),(null),5),(257,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NARKATIAGANJ','','Narkatiaganj',(null),(null),5),(258,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAUGACHHIA','','Naugachhia',(null),(null),5),(259,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAWADA','','Nawada',(null),(null),5),(260,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-NOKHA','','Nokha',(null),(null),5),(261,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PATNA','','Patna',(null),(null),5),(262,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PIRO','','Piro',(null),(null),5),(263,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','PURNIA','','Purnia',(null),(null),5),(264,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAFIGANJ','','Rafiganj',(null),(null),5),(265,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAJGIR','','Rajgir',(null),(null),5),(266,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BR-RAMNAGAR','','Ramnagar',(null),(null),5),(267,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAXAUL_BAZAR','','Raxaul Bazar',(null),(null),5),(268,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','REVELGANJ','','Revelganj',(null),(null),5),(269,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ROSERA','','Rosera',(null),(null),5),(270,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SAHARSA','','Saharsa',(null),(null),5),(271,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SAMASTIPUR','','Samastipur',(null),(null),5),(272,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SASARAM','','Sasaram',(null),(null),5),(273,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SHEIKHPURA','','Sheikhpura',(null),(null),5),(274,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SHEOHAR','','Sheohar',(null),(null),5),(275,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SHERGHATI','','Sherghati',(null),(null),5),(276,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SILAO','','Silao',(null),(null),5),(277,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SITAMARHI','','Sitamarhi',(null),(null),5),(278,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SIWAN','','Siwan',(null),(null),5),(279,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SONEPUR','','Sonepur',(null),(null),5),(280,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SUGAULI','','Sugauli',(null),(null),5),(281,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SULTANGANJ','','Sultanganj',(null),(null),5),(282,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SUPAUL','','Supaul',(null),(null),5),(283,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','WARISALIGANJ','','Warisaliganj',(null),(null),5),(284,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AHIWARA','','Ahiwara',(null),(null),7),(285,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AKALTARA','','Akaltara',(null),(null),7),(286,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMBAGARH_CHOWKI','','Ambagarh Chowki',(null),(null),7),(287,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMBIKAPUR','','Ambikapur',(null),(null),7),(288,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ARANG','','Arang',(null),(null),7),(289,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BADE_BACHELI','','Bade Bacheli',(null),(null),7),(290,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BALOD','','Balod',(null),(null),7),(291,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BALODA_BAZAR','','Baloda Bazar',(null),(null),7),(292,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BEMETRA','','Bemetra',(null),(null),7),(293,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BHATAPARA','','Bhatapara',(null),(null),7),(294,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CT-BILASPUR','','Bilaspur',(null),(null),7),(295,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','BIRGAON','','Birgaon',(null),(null),7),(296,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHAMPA','','Champa',(null),(null),7),(297,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CHIRMIRI','','Chirmiri',(null),(null),7),(298,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DALLI_RAJHARA','','Dalli-Rajhara',(null),(null),7),(299,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DHAMTARI','','Dhamtari',(null),(null),7),(300,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIPKA','','Dipka',(null),(null),7),(301,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DONGARGARH','','Dongargarh',(null),(null),7),(302,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DURG_BHILAI_NAGAR','','Durg-Bhilai Nagar',(null),(null),7),(303,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','GOBRANAWAPARA','','Gobranawapara',(null),(null),7),(304,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JAGDALPUR','','Jagdalpur',(null),(null),7),(305,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JANJGIR','','Janjgir',(null),(null),7),(306,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','JASHPURNAGAR','','Jashpurnagar',(null),(null),7),(307,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KANKER','','Kanker',(null),(null),7),(308,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KAWARDHA','','Kawardha',(null),(null),7),(309,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KONDAGAON','','Kondagaon',(null),(null),7),(310,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','KORBA','','Korba',(null),(null),7),(311,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MAHASAMUND','','Mahasamund',(null),(null),7),(312,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','CT-MAHENDRAGARH','','Mahendragarh',(null),(null),7),(313,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','MUNGELI','','Mungeli',(null),(null),7),(314,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','NAILA_JANJGIR','','Naila Janjgir',(null),(null),7),(315,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAIGARH','','Raigarh',(null),(null),7),(316,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAIPUR','','Raipur',(null),(null),7),(317,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','RAJNANDGAON','','Rajnandgaon',(null),(null),7),(318,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SAKTI','','Sakti',(null),(null),7),(319,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','TILDA_NEWRA','','Tilda Newra',(null),(null),7),(320,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','AMLI','','Amli',(null),(null),8),(321,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','SILVASSA','','Silvassa',(null),(null),8),(322,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DAMAN','','Daman',(null),(null),9),(323,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','DIU','','Diu',(null),(null),9),(324,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','ASOLA','','Asola',(null),(null),10),(325,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DELHI','','Delhi',(null),(null),10),(326,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ALDONA','','Aldona',(null),(null),11),(327,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CURCHOREM_CACORA','','Curchorem Cacora',(null),(null),11),(328,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MADGAON','','Madgaon',(null),(null),11),(329,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAPUSA','','Mapusa',(null),(null),11),(330,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MARGAO','','Margao',(null),(null),11),(331,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MARMAGAO','','Marmagao',(null),(null),11),(332,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANAJI','','Panaji',(null),(null),11),(333,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AHMEDABAD','','Ahmedabad',(null),(null),12),(334,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMRELI','','Amreli',(null),(null),12),(335,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANAND','','Anand',(null),(null),12),(336,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANKLESHWAR','','Ankleshwar',(null),(null),12),(337,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BHARUCH','','Bharuch',(null),(null),12),(338,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BHAVNAGAR','','Bhavnagar',(null),(null),12),(339,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BHUJ','','Bhuj',(null),(null),12),(340,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CAMBAY','','Cambay',(null),(null),12),(341,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DAHOD','','Dahod',(null),(null),12),(342,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DEESA','','Deesa',(null),(null),12),(343,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHARAMPUR','','Dharampur',(null),(null),14),(344,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHOLKA','','Dholka',(null),(null),12),(345,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GANDHINAGAR','','Gandhinagar',(null),(null),12),(346,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GODHRA','','Godhra',(null),(null),12),(347,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HIMATNAGAR','','Himatnagar',(null),(null),12),(348,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','IDAR','','Idar',(null),(null),12),(349,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JAMNAGAR','','Jamnagar',(null),(null),12),(350,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JUNAGADH','','Junagadh',(null),(null),12),(351,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KADI','','Kadi',(null),(null),12),(352,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALAVAD','','Kalavad',(null),(null),12),(353,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALOL','','Kalol',(null),(null),12),(354,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KAPADVANJ','','Kapadvanj',(null),(null),12),(355,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KARJAN','','Karjan',(null),(null),12),(356,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KESHOD','','Keshod',(null),(null),12),(357,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHAMBHALIA','','Khambhalia',(null),(null),12),(358,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHAMBHAT','','Khambhat',(null),(null),12),(359,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHEDA','','Kheda',(null),(null),12),(360,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHEDBRAHMA','','Khedbrahma',(null),(null),12),(361,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHERALU','','Kheralu',(null),(null),12),(362,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KODINAR','','Kodinar',(null),(null),12),(363,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LATHI','','Lathi',(null),(null),12),(364,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LIMBDI','','Limbdi',(null),(null),12),(365,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LUNAWADA','','Lunawada',(null),(null),12),(366,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHESANA','','Mahesana',(null),(null),12),(367,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHUVA','','Mahuva',(null),(null),12),(368,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANAVADAR','','Manavadar',(null),(null),12),(369,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDVI','','Mandvi',(null),(null),12),(370,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GJ-MANGROL','','Mangrol',(null),(null),12),(371,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GJ-MANSA','','Mansa',(null),(null),12),(372,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MEHMEDABAD','','Mehmedabad',(null),(null),12),(373,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MODASA','','Modasa',(null),(null),12),(374,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MORVI','','Morvi',(null),(null),12),(375,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NADIAD','','Nadiad',(null),(null),12),(376,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAVSARI','','Navsari',(null),(null),12),(377,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PADRA','','Padra',(null),(null),12),(378,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALANPUR','','Palanpur',(null),(null),12),(379,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALITANA','','Palitana',(null),(null),12),(380,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PARDI','','Pardi',(null),(null),12),(381,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATAN','','Patan',(null),(null),12),(382,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PETLAD','','Petlad',(null),(null),12),(383,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PORBANDAR','','Porbandar',(null),(null),12),(384,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RADHANPUR','','Radhanpur',(null),(null),12),(385,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJKOT','','Rajkot',(null),(null),12),(386,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJPIPLA','','Rajpipla',(null),(null),12),(387,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJULA','','Rajula',(null),(null),12),(388,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RANAVAV','','Ranavav',(null),(null),12),(389,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAPAR','','Rapar',(null),(null),12),(390,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SALAYA','','Salaya',(null),(null),12),(391,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANAND','','Sanand',(null),(null),12),(392,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAVARKUNDLA','','Savarkundla',(null),(null),12),(393,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIDHPUR','','Sidhpur',(null),(null),12),(394,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIHOR','','Sihor',(null),(null),12),(395,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SONGADH','','Songadh',(null),(null),12),(396,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SURAT','','Surat',(null),(null),12),(397,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TALAJA','','Talaja',(null),(null),12),(398,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THANGADH','','Thangadh',(null),(null),12),(399,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THARAD','','Tharad',(null),(null),12),(400,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UMBERGAON','','Umbergaon',(null),(null),12),(401,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UMRETH','','Umreth',(null),(null),12),(402,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UNA','','Una',(null),(null),12),(403,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UNJHA','','Unjha',(null),(null),12),(404,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UPLETA','','Upleta',(null),(null),12),(405,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VADNAGAR','','Vadnagar',(null),(null),12),(406,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VADODARA','','Vadodara',(null),(null),12),(407,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VALSAD','','Valsad',(null),(null),12),(408,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VAPI','','Vapi',(null),(null),12),(410,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VERAVAL','','Veraval',(null),(null),12),(411,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VIJAPUR','','Vijapur',(null),(null),12),(412,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VIRAMGAM','','Viramgam',(null),(null),12),(413,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VISNAGAR','','Visnagar',(null),(null),12),(414,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VYARA','','Vyara',(null),(null),12),(415,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','WADHWAN','','Wadhwan',(null),(null),12),(416,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','WANKANER','','Wankaner',(null),(null),12),(417,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ADALAJ','','Adalaj',(null),(null),12),(418,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ADITYANA','','Adityana',(null),(null),12),(419,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ALANG','','Alang',(null),(null),12),(420,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMBAJI','','Ambaji',(null),(null),12),(421,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMBALIYASAN','','Ambaliyasan',(null),(null),12),(422,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANDADA','','Andada',(null),(null),12),(423,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANJAR','','Anjar',(null),(null),12),(424,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANKLAV','','Anklav',(null),(null),12),(425,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANTALIYA','','Antaliya',(null),(null),12),(426,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ARAMBHADA','','Arambhada',(null),(null),12),(427,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ATUL','','Atul',(null),(null),12),(428,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BALLABHGARH','','Ballabhgarh',(null),(null),13),(429,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMBALA','','Ambala',(null),(null),13),(431,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ASANKHURD','','Asankhurd',(null),(null),13),(432,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ASSANDH','','Assandh',(null),(null),13),(433,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ATELI','','Ateli',(null),(null),13),(434,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BABIYAL','','Babiyal',(null),(null),13),(435,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BAHADURGARH','','Bahadurgarh',(null),(null),13),(436,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BARWALA','','Barwala',(null),(null),13),(437,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BHIWANI','','Bhiwani',(null),(null),13),(438,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHARKHI_DADRI','','Charkhi Dadri',(null),(null),13),(439,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHEEKA','','Cheeka',(null),(null),13),(440,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ELLENABAD_2','','Ellenabad 2',(null),(null),13),(441,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','FARIDABAD','','Faridabad',(null),(null),13),(442,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HR-FATEHABAD','','Fatehabad',(null),(null),13),(443,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GANAUR','','Ganaur',(null),(null),13),(444,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GHARAUNDA','','Gharaunda',(null),(null),13),(445,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GOHANA','','Gohana',(null),(null),13),(446,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GURGAON','','Gurgaon',(null),(null),13),(447,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HAIBAT(YAMUNA_NAGAR)','','Haibat(Yamuna Nagar)',(null),(null),13),(448,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HANSI','','Hansi',(null),(null),13),(449,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HISAR','','Hisar',(null),(null),13),(450,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HODAL','','Hodal',(null),(null),13),(451,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JHAJJAR','','Jhajjar',(null),(null),13),(452,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JIND','','Jind',(null),(null),13),(453,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KAITHAL','','Kaithal',(null),(null),13),(454,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALAN_WALI','','Kalan Wali',(null),(null),13),(455,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALKA','','Kalka',(null),(null),13),(456,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KARNAL','','Karnal',(null),(null),13),(457,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LADWA','','Ladwa',(null),(null),13),(458,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HR-MAHENDRAGARH','','Mahendragarh',(null),(null),13),(459,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDI_DABWALI','','Mandi Dabwali',(null),(null),13),(460,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NARNAUL','','Narnaul',(null),(null),13),(461,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NARWANA','','Narwana',(null),(null),13),(462,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALWAL','','Palwal',(null),(null),13),(463,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANCHKULA','','Panchkula',(null),(null),13),(464,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANIPAT','','Panipat',(null),(null),13),(465,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PEHOWA','','Pehowa',(null),(null),13),(466,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PINJORE','','Pinjore',(null),(null),13),(467,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RANIA','','Rania',(null),(null),13),(468,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RATIA','','Ratia',(null),(null),13),(469,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','REWARI','','Rewari',(null),(null),13),(470,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ROHTAK','','Rohtak',(null),(null),13),(471,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAFIDON','','Safidon',(null),(null),13),(472,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAMALKHA','','Samalkha',(null),(null),13),(473,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAHBAD','','Shahbad',(null),(null),13),(474,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIRSA','','Sirsa',(null),(null),13),(475,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SOHNA','','Sohna',(null),(null),13),(476,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SONIPAT','','Sonipat',(null),(null),13),(477,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TARAORI','','Taraori',(null),(null),13),(478,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THANESAR','','Thanesar',(null),(null),13),(479,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TOHANA','','Tohana',(null),(null),13),(480,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','YAMUNANAGAR','','Yamunanagar',(null),(null),13),(481,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ARKI','','Arki',(null),(null),14),(482,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BADDI','','Baddi',(null),(null),14),(483,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HP-BILASPUR','','Bilaspur',(null),(null),14),(484,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HP-CHAMBA','','Chamba',(null),(null),14),(485,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DALHOUSIE','','Dalhousie',(null),(null),14),(486,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHARAMSALA','','Dharamsala',(null),(null),14),(487,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HP-HAMIRPUR','','Hamirpur',(null),(null),14),(488,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDI','','Mandi',(null),(null),14),(489,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAHAN','','Nahan',(null),(null),14),(490,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHIMLA','','Shimla',(null),(null),14),(491,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SOLAN','','Solan',(null),(null),14),(492,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SUNDARNAGAR','','Sundarnagar',(null),(null),14),(493,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JAMMU','','Jammu',(null),(null),15),(494,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ACHABBAL','','Achabbal',(null),(null),15),(495,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AKHNOOR','','Akhnoor',(null),(null),15),(496,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANANTNAG','','Anantnag',(null),(null),15),(497,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ARNIA','','Arnia',(null),(null),15),(498,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AWANTIPORA','','Awantipora',(null),(null),15),(499,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BANDIPORE','','Bandipore',(null),(null),15),(500,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BARAMULA','','Baramula',(null),(null),15),(501,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KATHUA','','Kathua',(null),(null),15),(502,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LEH','','Leh',(null),(null),15),(503,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PUNCH','','Punch',(null),(null),15),(504,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJAURI','','Rajauri',(null),(null),15),(505,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SOPORE','','Sopore',(null),(null),15),(506,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SRINAGAR','','Srinagar',(null),(null),15),(507,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UDHAMPUR','','Udhampur',(null),(null),15),(508,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMLABAD','','Amlabad',(null),(null),16),(509,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ARA','','Ara',(null),(null),16),(510,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BARUGHUTU','','Barughutu',(null),(null),16),(511,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BOKARO_STEEL_CITY','','Bokaro Steel City',(null),(null),16),(512,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHAIBASA','','Chaibasa',(null),(null),16),(513,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHAKRADHARPUR','','Chakradharpur',(null),(null),16),(514,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHANDRAPURA','','Chandrapura',(null),(null),16),(515,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHATRA','','Chatra',(null),(null),16),(516,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHIRKUNDA','','Chirkunda',(null),(null),16),(517,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHURI','','Churi',(null),(null),16),(518,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DALTONGANJ','','Daltonganj',(null),(null),16),(519,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DEOGHAR','','Deoghar',(null),(null),16),(520,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHANBAD','','Dhanbad',(null),(null),16),(521,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DUMKA','','Dumka',(null),(null),16),(522,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GARHWA','','Garhwa',(null),(null),16),(523,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GHATSHILA','','Ghatshila',(null),(null),16),(524,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GIRIDIH','','Giridih',(null),(null),16),(525,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GODDA','','Godda',(null),(null),16),(526,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GOMOH','','Gomoh',(null),(null),16),(527,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GUMIA','','Gumia',(null),(null),16),(528,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GUMLA','','Gumla',(null),(null),16),(529,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HAZARIBAG','','Hazaribag',(null),(null),16),(530,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HUSSAINABAD','','Hussainabad',(null),(null),16),(531,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JAMSHEDPUR','','Jamshedpur',(null),(null),16),(532,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JAMTARA','','Jamtara',(null),(null),16),(533,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JHUMRI_TILAIYA','','Jhumri Tilaiya',(null),(null),16),(534,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KHUNTI','','Khunti',(null),(null),16),(535,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LOHARDAGA','','Lohardaga',(null),(null),16),(536,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MADHUPUR','','Madhupur',(null),(null),16),(537,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MIHIJAM','','Mihijam',(null),(null),16),(538,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUSABANI','','Musabani',(null),(null),16),(539,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAKAUR','','Pakaur',(null),(null),16),(540,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATRATU','','Patratu',(null),(null),16),(541,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PHUSRO','','Phusro',(null),(null),16),(542,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JH-RAMNGARH','','Ramngarh',(null),(null),16),(543,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RANCHI','','Ranchi',(null),(null),16),(544,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAHIBGANJ','','Sahibganj',(null),(null),16),(545,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAUNDA','','Saunda',(null),(null),16),(546,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIMDEGA','','Simdega',(null),(null),16),(547,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TENU_DAM_CUM_KATHHARA','','Tenu Dam-cum- Kathhara',(null),(null),16),(548,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ARASIKERE','','Arasikere',(null),(null),17),(549,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BANGALORE','','Bangalore',(null),(null),17),(550,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BELGAUM','','Belgaum',(null),(null),17),(551,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BELLARY','','Bellary',(null),(null),17),(552,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHAMRAJNAGAR','','Chamrajnagar',(null),(null),17),(553,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHIKKABALLAPUR','','Chikkaballapur',(null),(null),17),(554,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHINTAMANI','','Chintamani',(null),(null),17),(555,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHITRADURGA','','Chitradurga',(null),(null),17),(556,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GULBARGA','','Gulbarga',(null),(null),17),(557,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GUNDLUPET','','Gundlupet',(null),(null),17),(558,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HASSAN','','Hassan',(null),(null),17),(559,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HOSPET','','Hospet',(null),(null),17),(560,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','HUBLI','','Hubli',(null),(null),17),(561,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KARKALA','','Karkala',(null),(null),17),(562,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KARWAR','','Karwar',(null),(null),17),(563,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOLAR','','Kolar',(null),(null),17),(564,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KA-KOTA','','Kota',(null),(null),17),(565,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LAKSHMESHWAR','','Lakshmeshwar',(null),(null),17),(566,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LINGSUGUR','','Lingsugur',(null),(null),17),(567,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MADDUR','','Maddur',(null),(null),17),(568,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MADHUGIRI','','Madhugiri',(null),(null),17),(569,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MADIKERI','','Madikeri',(null),(null),17),(570,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAGADI','','Magadi',(null),(null),17),(571,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHALINGPUR','','Mahalingpur',(null),(null),17),(572,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALAVALLI','','Malavalli',(null),(null),17),(573,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALUR','','Malur',(null),(null),17),(574,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDYA','','Mandya',(null),(null),17),(575,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANGALORE','','Mangalore',(null),(null),17),(576,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANVI','','Manvi',(null),(null),17),(577,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUDALGI','','Mudalgi',(null),(null),17),(578,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUDBIDRI','','Mudbidri',(null),(null),17),(579,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUDDEBIHAL','','Muddebihal',(null),(null),17),(580,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUDHOL','','Mudhol',(null),(null),17),(581,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MULBAGAL','','Mulbagal',(null),(null),17),(582,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUNDARGI','','Mundargi',(null),(null),17),(583,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MYSORE','','Mysore',(null),(null),17),(584,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NANJANGUD','','Nanjangud',(null),(null),17),(585,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAVAGADA','','Pavagada',(null),(null),17),(586,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KA-PUTTUR','','Puttur',(null),(null),17),(587,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RABKAVI_BANHATTI','','Rabkavi Banhatti',(null),(null),17),(588,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAICHUR','','Raichur',(null),(null),17),(589,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAMANAGARAM','','Ramanagaram',(null),(null),17),(590,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAMDURG','','Ramdurg',(null),(null),17),(591,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RANIBENNUR','','Ranibennur',(null),(null),17),(592,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ROBERTSON_PET','','Robertson Pet',(null),(null),17),(593,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RON','','Ron',(null),(null),17),(594,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SADALGI','','Sadalgi',(null),(null),17),(595,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KA-SAGAR','','Sagar',(null),(null),17),(596,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAKLESHPUR','','Sakleshpur',(null),(null),17),(597,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANDUR','','Sandur',(null),(null),17),(598,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANKESHWAR','','Sankeshwar',(null),(null),17),(599,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAUNDATTI_YELLAMMA','','Saundatti-Yellamma',(null),(null),17),(600,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAVANUR','','Savanur',(null),(null),17),(601,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SEDAM','','Sedam',(null),(null),17),(602,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAHABAD','','Shahabad',(null),(null),17),(603,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAHPUR','','Shahpur',(null),(null),17),(604,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHIGGAON','','Shiggaon',(null),(null),17),(605,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHIKAPUR','','Shikapur',(null),(null),17),(606,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHIMOGA','','Shimoga',(null),(null),17),(607,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHORAPUR','','Shorapur',(null),(null),17),(608,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHRIRANGAPATTANA','','Shrirangapattana',(null),(null),17),(609,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIDLAGHATTA','','Sidlaghatta',(null),(null),17),(610,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SINDGI','','Sindgi',(null),(null),17),(611,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SINDHNUR','','Sindhnur',(null),(null),17),(612,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIRA','','Sira',(null),(null),17),(613,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KA-SIRSI','','Sirsi',(null),(null),17),(614,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIRUGUPPA','','Siruguppa',(null),(null),17),(615,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SRINIVASPUR','','Srinivaspur',(null),(null),17),(616,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TALIKOTA','','Talikota',(null),(null),17),(617,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TARIKERE','','Tarikere',(null),(null),17),(618,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TEKKALAKOTA','','Tekkalakota',(null),(null),17),(619,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TERDAL','','Terdal',(null),(null),17),(620,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TIPTUR','','Tiptur',(null),(null),17),(621,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TUMKUR','','Tumkur',(null),(null),17),(622,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UDUPI','','Udupi',(null),(null),17),(623,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VIJAYAPURA','','Vijayapura',(null),(null),17),(624,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','WADI','','Wadi',(null),(null),17),(625,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','YADGIR','','Yadgir',(null),(null),17),(626,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ADOOR','','Adoor',(null),(null),18),(627,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AKATHIYOOR','','Akathiyoor',(null),(null),18),(628,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ALAPPUZHA','','Alappuzha',(null),(null),18),(629,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ANCHARAKANDY','','Ancharakandy',(null),(null),18),(630,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AROOR','','Aroor',(null),(null),18),(631,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ASHTAMICHIRA','','Ashtamichira',(null),(null),18),(632,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ATTINGAL','','Attingal',(null),(null),18),(633,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AVINISSERY','','Avinissery',(null),(null),18),(634,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHALAKUDY','','Chalakudy',(null),(null),18),(635,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHANGANASSERY','','Changanassery',(null),(null),18),(636,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHENDAMANGALAM','','Chendamangalam',(null),(null),18),(637,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHENGANNUR','','Chengannur',(null),(null),18),(638,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHERTHALA','','Cherthala',(null),(null),18),(639,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHERUTHAZHAM','','Cheruthazham',(null),(null),18),(640,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHITTUR_THATHAMANGALAM','','Chittur-Thathamangalam',(null),(null),18),(641,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHOCKLI','','Chockli',(null),(null),18),(642,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ERATTUPETTA','','Erattupetta',(null),(null),18),(643,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GURUVAYOOR','','Guruvayoor',(null),(null),18),(644,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','IRINJALAKUDA','','Irinjalakuda',(null),(null),18),(645,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KADIRUR','','Kadirur',(null),(null),18),(646,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALLIASSERI','','Kalliasseri',(null),(null),18),(647,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALPETTA','','Kalpetta',(null),(null),18),(648,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KANHANGAD','','Kanhangad',(null),(null),18),(649,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KANJIKKUZHI','','Kanjikkuzhi',(null),(null),18),(650,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KANNUR','','Kannur',(null),(null),18),(651,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KASARAGOD','','Kasaragod',(null),(null),18),(652,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KAYAMKULAM','','Kayamkulam',(null),(null),18),(653,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOCHI','','Kochi',(null),(null),18),(654,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KODUNGALLUR','','Kodungallur',(null),(null),18),(655,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOLLAM','','Kollam',(null),(null),18),(656,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOOTHUPARAMBA','','Koothuparamba',(null),(null),18),(657,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOTHAMANGALAM','','Kothamangalam',(null),(null),18),(658,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOTTAYAM','','Kottayam',(null),(null),18),(659,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOZHIKODE','','Kozhikode',(null),(null),18),(660,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KUNNAMKULAM','','Kunnamkulam',(null),(null),18),(661,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALAPPURAM','','Malappuram',(null),(null),18),(662,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MATTANNUR','','Mattannur',(null),(null),18),(663,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAVELIKKARA','','Mavelikkara',(null),(null),18),(664,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAVOOR','','Mavoor',(null),(null),18),(665,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUVATTUPUZHA','','Muvattupuzha',(null),(null),18),(666,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NEDUMANGAD','','Nedumangad',(null),(null),18),(667,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NEYYATTINKARA','','Neyyattinkara',(null),(null),18),(668,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','OTTAPPALAM','','Ottappalam',(null),(null),18),(669,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALAI','','Palai',(null),(null),18),(670,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALAKKAD','','Palakkad',(null),(null),18),(671,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANNIYANNUR','','Panniyannur',(null),(null),18),(672,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAPPINISSERI','','Pappinisseri',(null),(null),18),(673,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PARAVOOR','','Paravoor',(null),(null),18),(674,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATHANAMTHITTA','','Pathanamthitta',(null),(null),18),(675,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAYYANNUR','','Payyannur',(null),(null),18),(676,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PERINGATHUR','','Peringathur',(null),(null),18),(677,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PERINTHALMANNA','','Perinthalmanna',(null),(null),18),(678,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PERUMBAVOOR','','Perumbavoor',(null),(null),18),(679,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PONNANI','','Ponnani',(null),(null),18),(680,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PUNALUR','','Punalur',(null),(null),18),(681,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','QUILANDY','','Quilandy',(null),(null),18),(682,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHORANUR','','Shoranur',(null),(null),18),(683,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TALIPARAMBA','','Taliparamba',(null),(null),18),(684,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THIRUVALLA','','Thiruvalla',(null),(null),18),(685,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THIRUVANANTHAPURAM','','Thiruvananthapuram',(null),(null),18),(686,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THODUPUZHA','','Thodupuzha',(null),(null),18),(687,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','THRISSUR','','Thrissur',(null),(null),18),(688,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TIRUR','','Tirur',(null),(null),18),(689,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VADAKARA','','Vadakara',(null),(null),18),(690,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VAIKOM','','Vaikom',(null),(null),18),(691,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VARKALA','','Varkala',(null),(null),18),(692,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KAVARATTI','','Kavaratti',(null),(null),19),(693,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ASHOK_NAGAR','','Ashok Nagar',(null),(null),20),(694,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BALAGHAT','','Balaghat',(null),(null),20),(695,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BETUL','','Betul',(null),(null),20),(696,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BHOPAL','','Bhopal',(null),(null),20),(697,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BURHANPUR','','Burhanpur',(null),(null),20),(698,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHHATARPUR','','Chhatarpur',(null),(null),20),(699,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DABRA','','Dabra',(null),(null),20),(700,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DATIA','','Datia',(null),(null),20),(701,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DEWAS','','Dewas',(null),(null),20),(702,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHAR','','Dhar',(null),(null),20),(703,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MP-FATEHABAD','','Fatehabad',(null),(null),20),(704,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','GWALIOR','','Gwalior',(null),(null),20),(705,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','INDORE','','Indore',(null),(null),20),(706,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ITARSI','','Itarsi',(null),(null),20),(707,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JABALPUR','','Jabalpur',(null),(null),20),(708,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KATNI','','Katni',(null),(null),20),(709,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KOTMA','','Kotma',(null),(null),20),(710,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LAHAR','','Lahar',(null),(null),20),(711,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LUNDI','','Lundi',(null),(null),20),(712,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHARAJPUR','','Maharajpur',(null),(null),20),(713,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHIDPUR','','Mahidpur',(null),(null),20),(714,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAIHAR','','Maihar',(null),(null),20),(715,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALAJKHAND','','Malajkhand',(null),(null),20),(716,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANASA','','Manasa',(null),(null),20),(717,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANAWAR','','Manawar',(null),(null),20),(718,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDIDEEP','','Mandideep',(null),(null),20),(719,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDLA','','Mandla',(null),(null),20),(720,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANDSAUR','','Mandsaur',(null),(null),20),(721,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAUGANJ','','Mauganj',(null),(null),20),(722,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MHOW_CANTONMENT','','Mhow Cantonment',(null),(null),20),(723,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MHOWGAON','','Mhowgaon',(null),(null),20),(724,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MORENA','','Morena',(null),(null),20),(725,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MULTAI','','Multai',(null),(null),20),(726,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MURWARA','','Murwara',(null),(null),20),(727,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAGDA','','Nagda',(null),(null),20),(728,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAINPUR','','Nainpur',(null),(null),20),(729,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NARSINGHGARH','','Narsinghgarh',(null),(null),20),(731,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NEEMUCH','','Neemuch',(null),(null),20),(732,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NEPANAGAR','','Nepanagar',(null),(null),20),(733,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NIWARI','','Niwari',(null),(null),20),(734,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NOWGONG','','Nowgong',(null),(null),20),(735,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NOWROZABAD','','Nowrozabad',(null),(null),20),(736,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PACHORE','','Pachore',(null),(null),20),(737,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MP-PALI','','Pali',(null),(null),20),(738,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANAGAR','','Panagar',(null),(null),20),(739,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANDHURNA','','Pandhurna',(null),(null),20),(740,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANNA','','Panna',(null),(null),20),(741,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PASAN','','Pasan',(null),(null),20),(742,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PIPARIYA','','Pipariya',(null),(null),20),(743,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PITHAMPUR','','Pithampur',(null),(null),20),(744,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PORSA','','Porsa',(null),(null),20),(745,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PRITHVIPUR','','Prithvipur',(null),(null),20),(746,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAGHOGARH_VIJAYPUR','','Raghogarh-Vijaypur',(null),(null),20),(747,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAHATGARH','','Rahatgarh',(null),(null),20),(748,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAISEN','','Raisen',(null),(null),20),(749,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJGARH','','Rajgarh',(null),(null),20),(750,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RATLAM','','Ratlam',(null),(null),20),(751,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAU','','Rau',(null),(null),20),(752,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','REHLI','','Rehli',(null),(null),20),(753,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','REWA','','Rewa',(null),(null),20),(754,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SABALGARH','','Sabalgarh',(null),(null),20),(755,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MP-SAGAR','','Sagar',(null),(null),20),(756,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANAWAD','','Sanawad',(null),(null),20),(757,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SARANGPUR','','Sarangpur',(null),(null),20),(758,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SARNI','','Sarni',(null),(null),20),(759,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SATNA','','Satna',(null),(null),20),(760,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAUSAR','','Sausar',(null),(null),20),(761,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SEHORE','','Sehore',(null),(null),20),(762,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SENDHWA','','Sendhwa',(null),(null),20),(763,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SEONI','','Seoni',(null),(null),20),(764,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SEONI_MALWA','','Seoni-Malwa',(null),(null),20),(765,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAHDOL','','Shahdol',(null),(null),20),(766,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAJAPUR','','Shajapur',(null),(null),20),(767,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHAMGARH','','Shamgarh',(null),(null),20),(768,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHEOPUR','','Sheopur',(null),(null),20),(769,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHIVPURI','','Shivpuri',(null),(null),20),(770,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SHUJALPUR','','Shujalpur',(null),(null),20),(771,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIDHI','','Sidhi',(null),(null),20),(772,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIHORA','','Sihora',(null),(null),20),(773,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SINGRAULI','','Singrauli',(null),(null),20),(774,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SIRONJ','','Sironj',(null),(null),20),(775,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SOHAGPUR','','Sohagpur',(null),(null),20),(776,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TARANA','','Tarana',(null),(null),20),(777,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','TIKAMGARH','','Tikamgarh',(null),(null),20),(778,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UJHANI','','Ujhani',(null),(null),20),(779,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UJJAIN','','Ujjain',(null),(null),20),(780,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','UMARIA','','Umaria',(null),(null),20),(781,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','VIDISHA','','Vidisha',(null),(null),20),(782,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','WARA_SEONI','','Wara Seoni',(null),(null),20),(783,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AHMEDNAGAR','','Ahmednagar',(null),(null),21),(784,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AKOLA','','Akola',(null),(null),21),(785,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','AMRAVATI','','Amravati',(null),(null),21),(786,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MH-AURANGABAD','','Aurangabad',(null),(null),21),(787,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','BARAMATI','','Baramati',(null),(null),21),(788,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHALISGAON','','Chalisgaon',(null),(null),21),(789,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','CHINCHANI','','Chinchani',(null),(null),21),(790,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DEVGARH','','Devgarh',(null),(null),21),(791,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DHULE','','Dhule',(null),(null),21),(792,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','DOMBIVLI','','Dombivli',(null),(null),21),(793,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MH-DURGAPUR','','Durgapur',(null),(null),21),(794,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','ICHALKARANJI','','Ichalkaranji',(null),(null),21),(795,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','JALNA','','Jalna',(null),(null),21),(796,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','KALYAN','','Kalyan',(null),(null),21),(797,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LATUR','','Latur',(null),(null),21),(798,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LOHA','','Loha',(null),(null),21),(799,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LONAR','','Lonar',(null),(null),21),(800,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','LONAVLA','','Lonavla',(null),(null),21),(801,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHAD','','Mahad',(null),(null),21),(802,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MAHULI','','Mahuli',(null),(null),21),(803,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALEGAON','','Malegaon',(null),(null),21),(804,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MALKAPUR','','Malkapur',(null),(null),21),(805,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANCHAR','','Manchar',(null),(null),21),(806,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANGALVEDHE','','Mangalvedhe',(null),(null),21),(807,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANGRULPIR','','Mangrulpir',(null),(null),21),(808,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANJLEGAON','','Manjlegaon',(null),(null),21),(809,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANMAD','','Manmad',(null),(null),21),(810,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MANWATH','','Manwath',(null),(null),21),(811,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MEHKAR','','Mehkar',(null),(null),21),(812,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MHASWAD','','Mhaswad',(null),(null),21),(813,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MIRAJ','','Miraj',(null),(null),21),(814,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MORSHI','','Morshi',(null),(null),21),(815,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUKHED','','Mukhed',(null),(null),21),(816,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUL','','Mul',(null),(null),21),(817,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MUMBAI','','Mumbai',(null),(null),21),(818,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','MURTIJAPUR','','Murtijapur',(null),(null),21),(819,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAGPUR','','Nagpur',(null),(null),21),(820,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NALASOPARA','','Nalasopara',(null),(null),21),(821,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NANDED_WAGHALA','','Nanded-Waghala',(null),(null),21),(822,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NANDGAON','','Nandgaon',(null),(null),21),(823,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NANDURA','','Nandura',(null),(null),21),(824,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NANDURBAR','','Nandurbar',(null),(null),21),(825,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NARKHED','','Narkhed',(null),(null),21),(826,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NASHIK','','Nashik',(null),(null),21),(827,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAVI_MUMBAI','','Navi Mumbai',(null),(null),21),(828,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NAWAPUR','','Nawapur',(null),(null),21),(829,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','NILANGA','','Nilanga',(null),(null),21),(830,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','OSMANABAD','','Osmanabad',(null),(null),21),(831,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','OZAR','','Ozar',(null),(null),21),(832,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PACHORA','','Pachora',(null),(null),21),(833,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAITHAN','','Paithan',(null),(null),21),(834,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PALGHAR','','Palghar',(null),(null),21),(835,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANDHARKAODA','','Pandharkaoda',(null),(null),21),(836,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANDHARPUR','','Pandharpur',(null),(null),21),(837,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PANVEL','','Panvel',(null),(null),21),(838,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PARBHANI','','Parbhani',(null),(null),21),(839,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PARLI','','Parli',(null),(null),21),(840,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAROLA','','Parola',(null),(null),21),(841,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PARTUR','','Partur',(null),(null),21),(842,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATHARDI','','Pathardi',(null),(null),21),(843,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATHRI','','Pathri',(null),(null),21),(844,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PATUR','','Patur',(null),(null),21),(845,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PAUNI','','Pauni',(null),(null),21),(846,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PEN','','Pen',(null),(null),21),(847,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PHALTAN','','Phaltan',(null),(null),21),(848,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PULGAON','','Pulgaon',(null),(null),21),(849,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PUNE','','Pune',(null),(null),21),(850,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PURNA','','Purna',(null),(null),21),(851,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','PUSAD','','Pusad',(null),(null),21),(852,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAHURI','','Rahuri',(null),(null),21),(853,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAJURA','','Rajura',(null),(null),21),(854,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAMTEK','','Ramtek',(null),(null),21),(855,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RATNAGIRI','','Ratnagiri',(null),(null),21),(856,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RAVER','','Raver',(null),(null),21),(857,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','RISOD','','Risod',(null),(null),21),(858,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SAILU','','Sailu',(null),(null),21),(859,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANGAMNER','','Sangamner',(null),(null),21),(860,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANGLI','','Sangli',(null),(null),21),(861,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SANGOLE','','Sangole',(null),(null),21),(862,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SASVAD','','Sasvad',(null),(null),21),(863,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SATANA','','Satana',(null),(null),21),(864,'2016-04-05 01:13:39','\0',0,'2016-04-05 01:13:39','SATARA','','Satara',(null),(null),21),(865,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAVNER','','Savner',(null),(null),21),(866,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAWANTWADI','','Sawantwadi',(null),(null),21),(867,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHADE','','Shahade',(null),(null),21),(868,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHEGAON','','Shegaon',(null),(null),21),(869,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHENDURJANA','','Shendurjana',(null),(null),21),(870,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHIRDI','','Shirdi',(null),(null),21),(871,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHIRPUR_WARWADE','','Shirpur-Warwade',(null),(null),21),(872,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHIRUR','','Shirur',(null),(null),21),(873,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHRIGONDA','','Shrigonda',(null),(null),21),(874,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHRIRAMPUR','','Shrirampur',(null),(null),21),(875,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SILLOD','','Sillod',(null),(null),21),(876,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SINNAR','','Sinnar',(null),(null),21),(877,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SOLAPUR','','Solapur',(null),(null),21),(878,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SOYAGAON','','Soyagaon',(null),(null),21),(879,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TALEGAON_DABHADE','','Talegaon Dabhade',(null),(null),21),(880,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TALODE','','Talode',(null),(null),21),(881,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TASGAON','','Tasgaon',(null),(null),21),(882,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRORA','','Tirora',(null),(null),21),(883,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TULJAPUR','','Tuljapur',(null),(null),21),(884,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TUMSAR','','Tumsar',(null),(null),21),(885,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','URAN','','Uran',(null),(null),21),(886,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','URAN_ISLAMPUR','','Uran Islampur',(null),(null),21),(887,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WADGAON_ROAD','','Wadgaon Road',(null),(null),21),(888,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WAI','','Wai',(null),(null),21),(889,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WANI','','Wani',(null),(null),21),(890,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WARDHA','','Wardha',(null),(null),21),(891,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WARORA','','Warora',(null),(null),21),(892,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WARUD','','Warud',(null),(null),21),(893,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WASHIM','','Washim',(null),(null),21),(894,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','YEVLA','','Yevla',(null),(null),21),(895,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UCHGAON','','Uchgaon',(null),(null),21),(896,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UDGIR','','Udgir',(null),(null),21),(897,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UMARGA','','Umarga',(null),(null),21),(898,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UMARKHED','','Umarkhed',(null),(null),21),(899,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UMRED','','Umred',(null),(null),21),(900,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VADGAON_KASBA','','Vadgaon Kasba',(null),(null),21),(901,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VAIJAPUR','','Vaijapur',(null),(null),21),(902,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VASAI','','Vasai',(null),(null),21),(903,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VIRAR','','Virar',(null),(null),21),(904,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VITA','','Vita',(null),(null),21),(905,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','YAVATMAL','','Yavatmal',(null),(null),21),(906,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','YAWAL','','Yawal',(null),(null),21),(907,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','IMPHAL','','Imphal',(null),(null),22),(908,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KAKCHING','','Kakching',(null),(null),22),(909,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LILONG','','Lilong',(null),(null),22),(910,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MAYANG_IMPHAL','','Mayang Imphal',(null),(null),22),(911,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THOUBAL','','Thoubal',(null),(null),22),(912,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JOWAI','','Jowai',(null),(null),23),(913,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NONGSTOIN','','Nongstoin',(null),(null),23),(914,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHILLONG','','Shillong',(null),(null),23),(915,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TURA','','Tura',(null),(null),23),(916,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AIZAWL','','Aizawl',(null),(null),24),(917,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CHAMPHAI','','Champhai',(null),(null),24),(918,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LUNGLEI','','Lunglei',(null),(null),24),(919,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAIHA','','Saiha',(null),(null),24),(920,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DIMAPUR','','Dimapur',(null),(null),25),(921,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KOHIMA','','Kohima',(null),(null),25),(922,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MOKOKCHUNG','','Mokokchung',(null),(null),25),(923,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TUENSANG','','Tuensang',(null),(null),25),(924,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','WOKHA','','Wokha',(null),(null),25),(925,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ZUNHEBOTO','','Zunheboto',(null),(null),25),(950,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ANANDAPUR','','Anandapur',(null),(null),26),(951,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ANUGUL','','Anugul',(null),(null),26),(952,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ASIKA','','Asika',(null),(null),26),(953,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALANGIR','','Balangir',(null),(null),26),(954,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALASORE','','Balasore',(null),(null),26),(955,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALESHWAR','','Baleshwar',(null),(null),26),(956,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BAMRA','','Bamra',(null),(null),26),(957,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARBIL','','Barbil',(null),(null),26),(958,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARGARH','','Bargarh',(null),(null),26),(960,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARIPADA','','Baripada',(null),(null),26),(961,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BASUDEBPUR','','Basudebpur',(null),(null),26),(962,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BELPAHAR','','Belpahar',(null),(null),26),(963,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHADRAK','','Bhadrak',(null),(null),26),(964,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHAWANIPATNA','','Bhawanipatna',(null),(null),26),(965,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHUBAN','','Bhuban',(null),(null),26),(966,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHUBANESWAR','','Bhubaneswar',(null),(null),26),(967,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BIRAMITRAPUR','','Biramitrapur',(null),(null),26),(968,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BRAHMAPUR','','Brahmapur',(null),(null),26),(969,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BRAJRAJNAGAR','','Brajrajnagar',(null),(null),26),(970,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BYASANAGAR','','Byasanagar',(null),(null),26),(971,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CUTTACK','','Cuttack',(null),(null),26),(972,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DEBAGARH','','Debagarh',(null),(null),26),(973,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DHENKANAL','','Dhenkanal',(null),(null),26),(974,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GUNUPUR','','Gunupur',(null),(null),26),(975,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','HINJILICUT','','Hinjilicut',(null),(null),26),(976,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAGATSINGHAPUR','','Jagatsinghapur',(null),(null),26),(977,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAJAPUR','','Jajapur',(null),(null),26),(978,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JALESWAR','','Jaleswar',(null),(null),26),(979,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JATANI','','Jatani',(null),(null),26),(980,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JEYPUR','','Jeypur',(null),(null),26),(981,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JHARSUGUDA','','Jharsuguda',(null),(null),26),(982,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JODA','','Joda',(null),(null),26),(983,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KANTABANJI','','Kantabanji',(null),(null),26),(984,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARANJIA','','Karanjia',(null),(null),26),(985,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KENDRAPARA','','Kendrapara',(null),(null),26),(986,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KENDUJHAR','','Kendujhar',(null),(null),26),(987,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KHORDHA','','Khordha',(null),(null),26),(988,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KORAPUT','','Koraput',(null),(null),26),(989,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MALKANGIRI','','Malkangiri',(null),(null),26),(990,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NABARANGAPUR','','Nabarangapur',(null),(null),26),(991,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PARADIP','','Paradip',(null),(null),26),(992,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PARLAKHEMUNDI','','Parlakhemundi',(null),(null),26),(993,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATTAMUNDAI','','Pattamundai',(null),(null),26),(994,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHULABANI','','Phulabani',(null),(null),26),(995,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PURI','','Puri',(null),(null),26),(996,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAIRANGPUR','','Rairangpur',(null),(null),26),(997,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJAGANGAPUR','','Rajagangapur',(null),(null),26),(998,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAURKELA','','Raurkela',(null),(null),26),(999,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAYAGADA','','Rayagada',(null),(null),26),(1000,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMBALPUR','','Sambalpur',(null),(null),26),(1001,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SORO','','Soro',(null),(null),26),(1002,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUNABEDA','','Sunabeda',(null),(null),26),(1003,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUNDARGARH','','Sundargarh',(null),(null),26),(1004,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TALCHER','','Talcher',(null),(null),26),(1005,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TITLAGARH','','Titlagarh',(null),(null),26),(1006,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UMARKOTE','','Umarkote',(null),(null),26),(1007,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARAIKAL','','Karaikal',(null),(null),27),(1008,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MAHE','','Mahe',(null),(null),27),(1009,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PONDICHERRY','','Pondicherry',(null),(null),27),(1010,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','YANAM','','Yanam',(null),(null),27),(1011,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AHMEDGARH','','Ahmedgarh',(null),(null),28),(1012,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AMRITSAR','','Amritsar',(null),(null),28),(1013,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARNALA','','Barnala',(null),(null),28),(1014,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BATALA','','Batala',(null),(null),28),(1015,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BATHINDA','','Bathinda',(null),(null),28),(1016,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHAGHA_PURANA','','Bhagha Purana',(null),(null),28),(1017,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BUDHLADA','','Budhlada',(null),(null),28),(1018,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PUNJAB','','Punjab',(null),(null),28),(1019,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DASUA','','Dasua',(null),(null),28),(1020,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DHURI','','Dhuri',(null),(null),28),(1021,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DINANAGAR','','Dinanagar',(null),(null),28),(1022,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','FARIDKOT','','Faridkot',(null),(null),28),(1023,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','FAZILKA','','Fazilka',(null),(null),28),(1024,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','FIROZPUR','','Firozpur',(null),(null),28),(1025,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','FIROZPUR_CANTT','','Firozpur Cantt.',(null),(null),28),(1026,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GIDDARBAHA','','Giddarbaha',(null),(null),28),(1027,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GOBINDGARH','','Gobindgarh',(null),(null),28),(1028,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GURDASPUR','','Gurdaspur',(null),(null),28),(1029,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','HOSHIARPUR','','Hoshiarpur',(null),(null),28),(1030,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAGRAON','','Jagraon',(null),(null),28),(1031,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAITU','','Jaitu',(null),(null),28),(1032,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JALALABAD','','Jalalabad',(null),(null),28),(1033,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JALANDHAR','','Jalandhar',(null),(null),28),(1034,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JALANDHAR_CANTT','','Jalandhar Cantt.',(null),(null),28),(1035,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JANDIALA','','Jandiala',(null),(null),28),(1036,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KAPURTHALA','','Kapurthala',(null),(null),28),(1037,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARORAN','','Karoran',(null),(null),28),(1038,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARTARPUR','','Kartarpur',(null),(null),28),(1039,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KHANNA','','Khanna',(null),(null),28),(1040,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KHARAR','','Kharar',(null),(null),28),(1041,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KOT_KAPURA','','Kot Kapura',(null),(null),28),(1042,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KURALI','','Kurali',(null),(null),28),(1043,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LONGOWAL','','Longowal',(null),(null),28),(1044,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LUDHIANA','','Ludhiana',(null),(null),28),(1045,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MALERKOTLA','','Malerkotla',(null),(null),28),(1046,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MALOUT','','Malout',(null),(null),28),(1047,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PB-MANSA','','Mansa',(null),(null),28),(1048,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MAUR','','Maur',(null),(null),28),(1049,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MOGA','','Moga',(null),(null),28),(1050,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MOHALI','','Mohali',(null),(null),28),(1051,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MORINDA','','Morinda',(null),(null),28),(1052,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MUKERIAN','','Mukerian',(null),(null),28),(1053,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MUKTSAR','','Muktsar',(null),(null),28),(1054,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NABHA','','Nabha',(null),(null),28),(1055,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAKODAR','','Nakodar',(null),(null),28),(1056,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NANGAL','','Nangal',(null),(null),28),(1057,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAWANSHAHR','','Nawanshahr',(null),(null),28),(1058,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATHANKOT','','Pathankot',(null),(null),28),(1059,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATIALA','','Patiala',(null),(null),28),(1060,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATRAN','','Patran',(null),(null),28),(1061,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATTI','','Patti',(null),(null),28),(1062,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHAGWARA','','Phagwara',(null),(null),28),(1063,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHILLAUR','','Phillaur',(null),(null),28),(1064,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','QADIAN','','Qadian',(null),(null),28),(1065,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAIKOT','','Raikot',(null),(null),28),(1066,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJPURA','','Rajpura',(null),(null),28),(1067,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMPURA_PHUL','','Rampura Phul',(null),(null),28),(1068,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RUPNAGAR','','Rupnagar',(null),(null),28),(1069,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMANA','','Samana',(null),(null),28),(1070,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANGRUR','','Sangrur',(null),(null),28),(1071,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIRHIND_FATEHGARH_SAHIB','','Sirhind Fatehgarh Sahib',(null),(null),28),(1072,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUJANPUR','','Sujanpur',(null),(null),28),(1073,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUNAM','','Sunam',(null),(null),28),(1074,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TALWARA','','Talwara',(null),(null),28),(1075,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TARN_TARAN','','Tarn Taran',(null),(null),28),(1076,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','URMAR_TANDA','','Urmar Tanda',(null),(null),28),(1077,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ZIRA','','Zira',(null),(null),28),(1078,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ZIRAKPUR','','Zirakpur',(null),(null),28),(1079,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALI','','Bali',(null),(null),29),(1080,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BANSWARA','','Banswara',(null),(null),29),(1081,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AJMER','','Ajmer',(null),(null),29),(1082,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ALWAR','','Alwar',(null),(null),29),(1083,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BANDIKUI','','Bandikui',(null),(null),29),(1084,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARAN','','Baran',(null),(null),29),(1085,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BARMER','','Barmer',(null),(null),29),(1086,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BIKANER','','Bikaner',(null),(null),29),(1087,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-FATEHPUR','','Fatehpur',(null),(null),29),(1088,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAIPUR','','Jaipur',(null),(null),29),(1089,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAISALMER','','Jaisalmer',(null),(null),29),(1090,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JODHPUR','','Jodhpur',(null),(null),29),(1091,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-KOTA','','Kota',(null),(null),29),(1092,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LACHHMANGARH','','Lachhmangarh',(null),(null),29),(1093,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LADNU','','Ladnu',(null),(null),29),(1094,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LAKHERI','','Lakheri',(null),(null),29),(1095,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LALSOT','','Lalsot',(null),(null),29),(1096,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LOSAL','','Losal',(null),(null),29),(1097,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MAKRANA','','Makrana',(null),(null),29),(1098,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MALPURA','','Malpura',(null),(null),29),(1099,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MANDALGARH','','Mandalgarh',(null),(null),29),(1100,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MANDAWA','','Mandawa',(null),(null),29),(1101,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-MANGROL','','Mangrol',(null),(null),29),(1102,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MERTA_CITY','','Merta City',(null),(null),29),(1103,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MOUNT_ABU','','Mount Abu',(null),(null),29),(1104,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NADBAI','','Nadbai',(null),(null),29),(1105,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAGAR','','Nagar',(null),(null),29),(1106,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAGAUR','','Nagaur',(null),(null),29),(1107,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NARGUND','','Nargund',(null),(null),29),(1108,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NASIRABAD','','Nasirabad',(null),(null),29),(1109,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NATHDWARA','','Nathdwara',(null),(null),29),(1110,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAVALGUND','','Navalgund',(null),(null),29),(1111,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAWALGARH','','Nawalgarh',(null),(null),29),(1112,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NEEM_KA_THANA','','Neem-Ka-Thana',(null),(null),29),(1113,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NELAMANGALA','','Nelamangala',(null),(null),29),(1114,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NIMBAHERA','','Nimbahera',(null),(null),29),(1115,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NIPANI','','Nipani',(null),(null),29),(1116,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NIWAI','','Niwai',(null),(null),29),(1117,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NOHAR','','Nohar',(null),(null),29),(1118,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-NOKHA','','Nokha',(null),(null),29),(1119,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-PALI','','Pali',(null),(null),29),(1120,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHALODI','','Phalodi',(null),(null),29),(1121,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHULERA','','Phulera',(null),(null),29),(1122,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PILANI','','Pilani',(null),(null),29),(1123,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PILIBANGA','','Pilibanga',(null),(null),29),(1124,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PINDWARA','','Pindwara',(null),(null),29),(1125,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PIPAR_CITY','','Pipar City',(null),(null),29),(1126,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PRANTIJ','','Prantij',(null),(null),29),(1127,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-PRATAPGARH','','Pratapgarh',(null),(null),29),(1128,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAISINGHNAGAR','','Raisinghnagar',(null),(null),29),(1129,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJAKHERA','','Rajakhera',(null),(null),29),(1130,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJALDESAR','','Rajaldesar',(null),(null),29),(1131,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJGARH_(ALWAR)','','Rajgarh (Alwar)',(null),(null),29),(1132,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJGARH_(CHURU)','','Rajgarh (Churu)',(null),(null),29),(1133,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJSAMAND','','Rajsamand',(null),(null),29),(1134,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMGANJ_MANDI','','Ramganj Mandi',(null),(null),29),(1135,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-RAMNGARH','','Ramngarh',(null),(null),29),(1136,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RATANGARH','','Ratangarh',(null),(null),29),(1137,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAWATBHATA','','Rawatbhata',(null),(null),29),(1138,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAWATSAR','','Rawatsar',(null),(null),29),(1139,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','REENGUS','','Reengus',(null),(null),29),(1140,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SADRI','','Sadri',(null),(null),29),(1141,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SADULSHAHAR','','Sadulshahar',(null),(null),29),(1142,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAGWARA','','Sagwara',(null),(null),29),(1143,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMBHAR','','Sambhar',(null),(null),29),(1144,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANCHORE','','Sanchore',(null),(null),29),(1145,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANGARIA','','Sangaria',(null),(null),29),(1146,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SARDARSHAHAR','','Sardarshahar',(null),(null),29),(1147,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAWAI_MADHOPUR','','Sawai Madhopur',(null),(null),29),(1148,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHPURA','','Shahpura',(null),(null),29),(1150,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHEOGANJ','','Sheoganj',(null),(null),29),(1151,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIKAR','','Sikar',(null),(null),29),(1152,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIROHI','','Sirohi',(null),(null),29),(1153,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SOJAT','','Sojat',(null),(null),29),(1154,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SRI_MADHOPUR','','Sri Madhopur',(null),(null),29),(1155,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUJANGARH','','Sujangarh',(null),(null),29),(1156,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-SUMERPUR','','Sumerpur',(null),(null),29),(1157,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SURATGARH','','Suratgarh',(null),(null),29),(1158,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TARANAGAR','','Taranagar',(null),(null),29),(1159,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TODABHIM','','Todabhim',(null),(null),29),(1160,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TODARAISINGH','','Todaraisingh',(null),(null),29),(1161,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TONK','','Tonk',(null),(null),29),(1162,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RJ-UDAIPUR','','Udaipur',(null),(null),29),(1163,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UDAIPURWATI','','Udaipurwati',(null),(null),29),(1164,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VIJAINAGAR','','Vijainagar',(null),(null),29),(1165,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GANGTOK','','Gangtok',(null),(null),30),(1166,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CALCUTTA','','Calcutta',(null),(null),36),(1167,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ARAKKONAM','','Arakkonam',(null),(null),31),(1168,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ARCOT','','Arcot',(null),(null),31),(1169,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ARUPPUKKOTTAI','','Aruppukkottai',(null),(null),31),(1170,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BHAVANI','','Bhavani',(null),(null),31),(1171,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CHENGALPATTU','','Chengalpattu',(null),(null),31),(1172,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CHENNAI','','Chennai',(null),(null),31),(1173,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CHINNA_SALEM','','Chinna salem',(null),(null),31),(1174,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','COIMBATORE','','Coimbatore',(null),(null),31),(1175,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','COONOOR','','Coonoor',(null),(null),31),(1176,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CUDDALORE','','Cuddalore',(null),(null),31),(1177,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DHARMAPURI','','Dharmapuri',(null),(null),31),(1178,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DINDIGUL','','Dindigul',(null),(null),31),(1179,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ERODE','','Erode',(null),(null),31),(1180,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GUDALUR','','Gudalur',(null),(null),31),(1183,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KANCHIPURAM','','Kanchipuram',(null),(null),31),(1184,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARAIKUDI','','Karaikudi',(null),(null),31),(1185,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARUNGAL','','Karungal',(null),(null),31),(1186,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KARUR','','Karur',(null),(null),31),(1187,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KOLLANKODU','','Kollankodu',(null),(null),31),(1188,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LALGUDI','','Lalgudi',(null),(null),31),(1189,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MADURAI','','Madurai',(null),(null),31),(1190,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAGAPATTINAM','','Nagapattinam',(null),(null),31),(1191,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAGERCOIL','','Nagercoil',(null),(null),31),(1192,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAMAGIRIPETTAI','','Namagiripettai',(null),(null),31),(1193,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAMAKKAL','','Namakkal',(null),(null),31),(1194,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NANDIVARAM_GUDUVANCHERI','','Nandivaram-Guduvancheri',(null),(null),31),(1195,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NANJIKOTTAI','','Nanjikottai',(null),(null),31),(1196,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NATHAM','','Natham',(null),(null),31),(1197,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NELLIKUPPAM','','Nellikuppam',(null),(null),31),(1198,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NEYVELI','','Neyveli',(null),(null),31),(1199,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','O_VALLEY','','O Valley',(null),(null),31),(1200,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ODDANCHATRAM','','Oddanchatram',(null),(null),31),(1201,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','P_N_PATTI','','P.N.Patti',(null),(null),31),(1202,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PACODE','','Pacode',(null),(null),31),(1203,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PADMANABHAPURAM','','Padmanabhapuram',(null),(null),31),(1204,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PALANI','','Palani',(null),(null),31),(1205,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PALLADAM','','Palladam',(null),(null),31),(1206,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PALLAPATTI','','Pallapatti',(null),(null),31),(1207,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PALLIKONDA','','Pallikonda',(null),(null),31),(1208,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PANAGUDI','','Panagudi',(null),(null),31),(1209,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PANRUTI','','Panruti',(null),(null),31),(1210,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PARAMAKUDI','','Paramakudi',(null),(null),31),(1211,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PARANGIPETTAI','','Parangipettai',(null),(null),31),(1212,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PATTUKKOTTAI','','Pattukkottai',(null),(null),31),(1213,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PERAMBALUR','','Perambalur',(null),(null),31),(1214,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PERAVURANI','','Peravurani',(null),(null),31),(1215,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PERIYAKULAM','','Periyakulam',(null),(null),31),(1216,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PERIYASEMUR','','Periyasemur',(null),(null),31),(1217,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PERNAMPATTU','','Pernampattu',(null),(null),31),(1218,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','POLLACHI','','Pollachi',(null),(null),31),(1219,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','POLUR','','Polur',(null),(null),31),(1220,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PONNERI','','Ponneri',(null),(null),31),(1221,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PUDUKKOTTAI','','Pudukkottai',(null),(null),31),(1222,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PUDUPATTINAM','','Pudupattinam',(null),(null),31),(1223,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PULIYANKUDI','','Puliyankudi',(null),(null),31),(1224,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PUNJAIPUGALUR','','Punjaipugalur',(null),(null),31),(1225,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAJAPALAYAM','','Rajapalayam',(null),(null),31),(1226,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMANATHAPURAM','','Ramanathapuram',(null),(null),31),(1227,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMESHWARAM','','Rameshwaram',(null),(null),31),(1228,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RASIPURAM','','Rasipuram',(null),(null),31),(1229,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SALEM','','Salem',(null),(null),31),(1230,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANKARANKOIL','','Sankarankoil',(null),(null),31),(1231,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANKARI','','Sankari',(null),(null),31),(1232,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SATHYAMANGALAM','','Sathyamangalam',(null),(null),31),(1233,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SATTUR','','Sattur',(null),(null),31),(1234,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHENKOTTAI','','Shenkottai',(null),(null),31),(1235,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHOLAVANDAN','','Sholavandan',(null),(null),31),(1236,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHOLINGUR','','Sholingur',(null),(null),31),(1237,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIRKALI','','Sirkali',(null),(null),31),(1238,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIVAGANGA','','Sivaganga',(null),(null),31),(1239,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIVAGIRI','','Sivagiri',(null),(null),31),(1240,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIVAKASI','','Sivakasi',(null),(null),31),(1241,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SRIVILLIPUTHUR','','Srivilliputhur',(null),(null),31),(1242,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SURANDAI','','Surandai',(null),(null),31),(1243,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SURIYAMPALAYAM','','Suriyampalayam',(null),(null),31),(1244,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TENKASI','','Tenkasi',(null),(null),31),(1245,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THAMMAMPATTI','','Thammampatti',(null),(null),31),(1246,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THANJAVUR','','Thanjavur',(null),(null),31),(1247,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THARAMANGALAM','','Tharamangalam',(null),(null),31),(1248,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THARANGAMBADI','','Tharangambadi',(null),(null),31),(1249,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THENI_ALLINAGARAM','','Theni Allinagaram',(null),(null),31),(1250,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUMANGALAM','','Thirumangalam',(null),(null),31),(1251,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUNINDRAVUR','','Thirunindravur',(null),(null),31),(1252,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUPARAPPU','','Thiruparappu',(null),(null),31),(1253,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUPUVANAM','','Thirupuvanam',(null),(null),31),(1254,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUTHURAIPOONDI','','Thiruthuraipoondi',(null),(null),31),(1255,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUVALLUR','','Thiruvallur',(null),(null),31),(1256,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THIRUVARUR','','Thiruvarur',(null),(null),31),(1257,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THOOTHUKUDI','','Thoothukudi',(null),(null),31),(1258,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THURAIYUR','','Thuraiyur',(null),(null),31),(1259,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TINDIVANAM','','Tindivanam',(null),(null),31),(1260,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUCHENDUR','','Tiruchendur',(null),(null),31),(1261,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUCHENGODE','','Tiruchengode',(null),(null),31),(1262,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUCHIRAPPALLI','','Tiruchirappalli',(null),(null),31),(1263,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUKALUKUNDRAM','','Tirukalukundram',(null),(null),31),(1264,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUKKOYILUR','','Tirukkoyilur',(null),(null),31),(1265,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUNELVELI','','Tirunelveli',(null),(null),31),(1266,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUPATHUR','','Tirupathur',(null),(null),31),(1268,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUPPUR','','Tiruppur',(null),(null),31),(1269,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUTTANI','','Tiruttani',(null),(null),31),(1270,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUVANNAMALAI','','Tiruvannamalai',(null),(null),31),(1271,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TIRUVETHIPURAM','','Tiruvethipuram',(null),(null),31),(1272,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TITTAKUDI','','Tittakudi',(null),(null),31),(1273,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UDHAGAMANDALAM','','Udhagamandalam',(null),(null),31),(1274,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UDUMALAIPETTAI','','Udumalaipettai',(null),(null),31),(1275,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UNNAMALAIKADAI','','Unnamalaikadai',(null),(null),31),(1276,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','USILAMPATTI','','Usilampatti',(null),(null),31),(1277,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UTHAMAPALAYAM','','Uthamapalayam',(null),(null),31),(1278,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UTHIRAMERUR','','Uthiramerur',(null),(null),31),(1279,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VADAKKUVALLIYUR','','Vadakkuvalliyur',(null),(null),31),(1280,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VADALUR','','Vadalur',(null),(null),31),(1281,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VADIPATTI','','Vadipatti',(null),(null),31),(1282,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VALPARAI','','Valparai',(null),(null),31),(1283,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VANDAVASI','','Vandavasi',(null),(null),31),(1284,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VANIYAMBADI','','Vaniyambadi',(null),(null),31),(1285,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VEDARANYAM','','Vedaranyam',(null),(null),31),(1286,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VELLAKOIL','','Vellakoil',(null),(null),31),(1287,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VELLORE','','Vellore',(null),(null),31),(1288,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VIKRAMASINGAPURAM','','Vikramasingapuram',(null),(null),31),(1289,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VILUPPURAM','','Viluppuram',(null),(null),31),(1290,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VIRUDHACHALAM','','Virudhachalam',(null),(null),31),(1291,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VIRUDHUNAGAR','','Virudhunagar',(null),(null),31),(1292,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','VISWANATHAM','','Viswanatham',(null),(null),31),(1293,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AGARTALA','','Agartala',(null),(null),33),(1294,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BADHARGHAT','','Badharghat',(null),(null),33),(1295,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DHARMANAGAR','','Dharmanagar',(null),(null),33),(1296,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','INDRANAGAR','','Indranagar',(null),(null),33),(1297,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JOGENDRANAGAR','','Jogendranagar',(null),(null),33),(1298,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KAILASAHAR','','Kailasahar',(null),(null),33),(1299,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KHOWAI','','Khowai',(null),(null),33),(1300,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TR-PRATAPGARH','','Pratapgarh',(null),(null),33),(1301,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TR-UDAIPUR','','Udaipur',(null),(null),33),(1302,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ACHHNERA','','Achhnera',(null),(null),34),(1303,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ADARI','','Adari',(null),(null),34),(1304,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AGRA','','Agra',(null),(null),34),(1305,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ALIGARH','','Aligarh',(null),(null),34),(1306,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ALLAHABAD','','Allahabad',(null),(null),34),(1307,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AMROHA','','Amroha',(null),(null),34),(1308,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','AZAMGARH','','Azamgarh',(null),(null),34),(1309,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BAHRAICH','','Bahraich',(null),(null),34),(1310,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALLIA','','Ballia',(null),(null),34),(1311,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BALRAMPUR','','Balrampur',(null),(null),34),(1312,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BANDA','','Banda',(null),(null),34),(1313,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','BAREILLY','','Bareilly',(null),(null),34),(1314,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','CHANDAUSI','','Chandausi',(null),(null),34),(1315,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DADRI','','Dadri',(null),(null),34),(1316,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','DEORIA','','Deoria',(null),(null),34),(1317,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ETAWAH','','Etawah',(null),(null),34),(1318,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-FATEHABAD','','Fatehabad',(null),(null),34),(1319,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-FATEHPUR','','Fatehpur',(null),(null),34),(1321,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','GREATER_NOIDA','','Greater Noida',(null),(null),34),(1322,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-HAMIRPUR','','Hamirpur',(null),(null),34),(1323,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','HARDOI','','Hardoi',(null),(null),34),(1324,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAJMAU','','Jajmau',(null),(null),34),(1325,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JAUNPUR','','Jaunpur',(null),(null),34),(1326,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','JHANSI','','Jhansi',(null),(null),34),(1327,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KALPI','','Kalpi',(null),(null),34),(1328,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','KANPUR','','Kanpur',(null),(null),34),(1329,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-KOTA','','Kota',(null),(null),34),(1330,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LAHARPUR','','Laharpur',(null),(null),34),(1331,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LAKHIMPUR','','Lakhimpur',(null),(null),34),(1332,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LAL_GOPALGANJ_NINDAURA','','Lal Gopalganj Nindaura',(null),(null),34),(1333,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-LALGANJ','','Lalganj',(null),(null),34),(1334,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LALITPUR','','Lalitpur',(null),(null),34),(1335,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LAR','','Lar',(null),(null),34),(1336,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LONI','','Loni',(null),(null),34),(1337,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','LUCKNOW','','Lucknow',(null),(null),34),(1338,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MATHURA','','Mathura',(null),(null),34),(1339,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MEERUT','','Meerut',(null),(null),34),(1340,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MODINAGAR','','Modinagar',(null),(null),34),(1341,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','MURADNAGAR','','Muradnagar',(null),(null),34),(1342,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAGINA','','Nagina',(null),(null),34),(1343,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAJIBABAD','','Najibabad',(null),(null),34),(1344,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAKUR','','Nakur',(null),(null),34),(1345,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NANPARA','','Nanpara',(null),(null),34),(1346,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NARAURA','','Naraura',(null),(null),34),(1347,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAUGAWAN_SADAT','','Naugawan Sadat',(null),(null),34),(1348,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAUTANWA','','Nautanwa',(null),(null),34),(1349,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NAWABGANJ','','Nawabganj',(null),(null),34),(1350,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NEHTAUR','','Nehtaur',(null),(null),34),(1351,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NOIDA','','NOIDA',(null),(null),34),(1352,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','NOORPUR','','Noorpur',(null),(null),34),(1353,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','OBRA','','Obra',(null),(null),34),(1354,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ORAI','','Orai',(null),(null),34),(1355,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PADRAUNA','','Padrauna',(null),(null),34),(1356,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PALIA_KALAN','','Palia Kalan',(null),(null),34),(1357,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PARASI','','Parasi',(null),(null),34),(1358,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PHULPUR','','Phulpur',(null),(null),34),(1359,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PIHANI','','Pihani',(null),(null),34),(1360,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PILIBHIT','','Pilibhit',(null),(null),34),(1361,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PILKHUWA','','Pilkhuwa',(null),(null),34),(1362,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','POWAYAN','','Powayan',(null),(null),34),(1363,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PUKHRAYAN','','Pukhrayan',(null),(null),34),(1364,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PURANPUR','','Puranpur',(null),(null),34),(1365,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PURQUAZI','','Purquazi',(null),(null),34),(1366,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','PURWA','','Purwa',(null),(null),34),(1367,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAE_BARELI','','Rae Bareli',(null),(null),34),(1368,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMPUR','','Rampur',(null),(null),34),(1369,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RAMPUR_MANIHARAN','','Rampur Maniharan',(null),(null),34),(1370,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RASRA','','Rasra',(null),(null),34),(1371,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RATH','','Rath',(null),(null),34),(1372,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RENUKOOT','','Renukoot',(null),(null),34),(1373,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','REOTI','','Reoti',(null),(null),34),(1374,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','ROBERTSGANJ','','Robertsganj',(null),(null),34),(1375,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','RUDAULI','','Rudauli',(null),(null),34),(1376,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-RUDRAPUR','','Rudrapur',(null),(null),34),(1377,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SADABAD','','Sadabad',(null),(null),34),(1378,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAFIPUR','','Safipur',(null),(null),34),(1379,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAHARANPUR','','Saharanpur',(null),(null),34),(1380,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAHASPUR','','Sahaspur',(null),(null),34),(1381,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAHASWAN','','Sahaswan',(null),(null),34),(1382,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAHAWAR','','Sahawar',(null),(null),34),(1383,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAHJANWA','','Sahjanwa',(null),(null),34),(1384,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAIDPUR_GHAZIPUR','','Saidpur, Ghazipur',(null),(null),34),(1385,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMBHAL','','Sambhal',(null),(null),34),(1386,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMDHAN','','Samdhan',(null),(null),34),(1387,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SAMTHAR','','Samthar',(null),(null),34),(1388,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANDI','','Sandi',(null),(null),34),(1389,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SANDILA','','Sandila',(null),(null),34),(1390,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SARDHANA','','Sardhana',(null),(null),34),(1391,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SEOHARA','','Seohara',(null),(null),34),(1392,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHABAD_HARDOI','','Shahabad, Hardoi',(null),(null),34),(1393,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHABAD_RAMPUR','','Shahabad, Rampur',(null),(null),34),(1394,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHGANJ','','Shahganj',(null),(null),34),(1395,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAHJAHANPUR','','Shahjahanpur',(null),(null),34),(1396,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAMLI','','Shamli',(null),(null),34),(1397,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAMSABAD_AGRA','','Shamsabad, Agra',(null),(null),34),(1398,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHAMSABAD_FARRUKHABAD','','Shamsabad, Farrukhabad',(null),(null),34),(1399,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHERKOT','','Sherkot',(null),(null),34),(1400,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHIKARPUR_BULANDSHAHR','','Shikarpur, Bulandshahr',(null),(null),34),(1401,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHIKOHABAD','','Shikohabad',(null),(null),34),(1402,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SHISHGARH','','Shishgarh',(null),(null),34),(1403,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIANA','','Siana',(null),(null),34),(1404,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIKANDERPUR','','Sikanderpur',(null),(null),34),(1405,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIKANDRA_RAO','','Sikandra Rao',(null),(null),34),(1406,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIKANDRABAD','','Sikandrabad',(null),(null),34),(1407,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SIRSAGANJ','','Sirsaganj',(null),(null),34),(1408,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-SIRSI','','Sirsi',(null),(null),34),(1409,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SITAPUR','','Sitapur',(null),(null),34),(1410,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SORON','','Soron',(null),(null),34),(1411,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SUAR','','Suar',(null),(null),34),(1412,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','SULTANPUR','','Sultanpur',(null),(null),34),(1413,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','UP-SUMERPUR','','Sumerpur',(null),(null),34),(1414,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TANDA','','Tanda',(null),(null),34),(1416,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','TETRI_BAZAR','','Tetri Bazar',(null),(null),34),(1417,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THAKURDWARA','','Thakurdwara',(null),(null),34),(1418,'2016-04-05 01:13:40','\0',0,'2016-04-05 01:13:40','THANA_BHAWAN','','Thana Bhawan',(null),(null),34),(1419,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TILHAR','','Tilhar',(null),(null),34),(1420,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TIRWAGANJ','','Tirwaganj',(null),(null),34),(1421,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TULSIPUR','','Tulsipur',(null),(null),34),(1422,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TUNDLA','','Tundla',(null),(null),34),(1423,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','UNNAO','','Unnao',(null),(null),34),(1424,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','UTRAULA','','Utraula',(null),(null),34),(1425,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','VARANASI','','Varanasi',(null),(null),34),(1426,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','VRINDAVAN','','Vrindavan',(null),(null),34),(1427,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','WARHAPUR','','Warhapur',(null),(null),34),(1428,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ZAIDPUR','','Zaidpur',(null),(null),34),(1429,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ZAMANIA','','Zamania',(null),(null),34),(1430,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ALMORA','','Almora',(null),(null),35),(1431,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BAZPUR','','Bazpur',(null),(null),35),(1432,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','UT-CHAMBA','','Chamba',(null),(null),35),(1433,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','DEHRADUN','','Dehradun',(null),(null),35),(1434,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','HALDWANI','','Haldwani',(null),(null),35),(1435,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','HARIDWAR','','Haridwar',(null),(null),35),(1436,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','JASPUR','','Jaspur',(null),(null),35),(1437,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','KASHIPUR','','Kashipur',(null),(null),35),(1438,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','KICHHA','','kichha',(null),(null),35),(1439,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','KOTDWARA','','Kotdwara',(null),(null),35),(1440,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MANGLAUR','','Manglaur',(null),(null),35),(1441,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MUSSOORIE','','Mussoorie',(null),(null),35),(1442,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','NAGLA','','Nagla',(null),(null),35),(1443,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','NAINITAL','','Nainital',(null),(null),35),(1444,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PAURI','','Pauri',(null),(null),35),(1445,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PITHORAGARH','','Pithoragarh',(null),(null),35),(1446,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','UT-RAMNAGAR','','Ramnagar',(null),(null),35),(1447,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','RISHIKESH','','Rishikesh',(null),(null),35),(1448,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ROORKEE','','Roorkee',(null),(null),35),(1449,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','UT-RUDRAPUR','','Rudrapur',(null),(null),35),(1450,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SITARGANJ','','Sitarganj',(null),(null),35),(1451,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TEHRI','','Tehri',(null),(null),35),(1452,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MUZAFFARNAGAR','','Muzaffarnagar',(null),(null),34),(1453,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ADRA_PURULIA','','Adra, Purulia',(null),(null),36),(1454,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ALIPURDUAR','','Alipurduar',(null),(null),36),(1455,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ARAMBAGH','','Arambagh',(null),(null),36),(1456,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ASANSOL','','Asansol',(null),(null),36),(1457,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BAHARAMPUR','','Baharampur',(null),(null),36),(1458,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BALLY','','Bally',(null),(null),36),(1459,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BALURGHAT','','Balurghat',(null),(null),36),(1460,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BANKURA','','Bankura',(null),(null),36),(1461,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BARAKAR','','Barakar',(null),(null),36),(1462,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BARASAT','','Barasat',(null),(null),36),(1463,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BARDHAMAN','','Bardhaman',(null),(null),36),(1464,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','BIDHAN_NAGAR','','Bidhan Nagar',(null),(null),36),(1465,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','CHINSURA','','Chinsura',(null),(null),36),(1466,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','CONTAI','','Contai',(null),(null),36),(1467,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','COOCH_BEHAR','','Cooch Behar',(null),(null),36),(1468,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','DARJEELING','','Darjeeling',(null),(null),36),(1469,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','WB-DURGAPUR','','Durgapur',(null),(null),36),(1470,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','HALDIA','','Haldia',(null),(null),36),(1471,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','HOWRAH','','Howrah',(null),(null),36),(1472,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','WB-ISLAMPUR','','Islampur',(null),(null),36),(1473,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','JHARGRAM','','Jhargram',(null),(null),36),(1474,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','WB-KHARAGPUR','','Kharagpur',(null),(null),36),(1475,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','KOLKATA','','Kolkata',(null),(null),36),(1476,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MAINAGURI','','Mainaguri',(null),(null),36),(1477,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MAL','','Mal',(null),(null),36),(1478,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MATHABHANGA','','Mathabhanga',(null),(null),36),(1479,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MEDINIPUR','','Medinipur',(null),(null),36),(1480,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MEMARI','','Memari',(null),(null),36),(1481,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MONOHARPUR','','Monoharpur',(null),(null),36),(1482,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','MURSHIDABAD','','Murshidabad',(null),(null),36),(1483,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','NABADWIP','','Nabadwip',(null),(null),36),(1484,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','NAIHATI','','Naihati',(null),(null),36),(1485,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PANCHLA','','Panchla',(null),(null),36),(1486,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PANDUA','','Pandua',(null),(null),36),(1487,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PASCHIM_PUNROPARA','','Paschim Punropara',(null),(null),36),(1488,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','PURULIA','','Purulia',(null),(null),36),(1489,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','RAGHUNATHPUR','','Raghunathpur',(null),(null),36),(1490,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','RAIGANJ','','Raiganj',(null),(null),36),(1491,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','RAMPURHAT','','Rampurhat',(null),(null),36),(1492,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','RANAGHAT','','Ranaghat',(null),(null),36),(1493,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SAINTHIA','','Sainthia',(null),(null),36),(1494,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SANTIPUR','','Santipur',(null),(null),36),(1495,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SILIGURI','','Siliguri',(null),(null),36),(1496,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SONAMUKHI','','Sonamukhi',(null),(null),36),(1497,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SRIRAMPORE','','Srirampore',(null),(null),36),(1498,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','SURI','','Suri',(null),(null),36),(1499,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TAKI','','Taki',(null),(null),36),(1500,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TAMLUK','','Tamluk',(null),(null),36),(1501,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','TARAKESWAR','','Tarakeswar',(null),(null),36),(1502,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','CHIKMAGALUR','','Chikmagalur',(null),(null),17),(1503,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','DAVANAGERE','','Davanagere',(null),(null),17),(1504,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','DHARWAD','','Dharwad',(null),(null),17),(1505,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','GADAG','','Gadag',(null),(null),17);

/*Table structure for table `country_master` */

drop table if exists `country_master`;

CREATE TABLE `country_master` (
  `country_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `country_code` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `eu_numeric_code` int(11) default NULL,
  `iso3_code` varchar(255) default NULL,
  `iso_numeric_code` int(11) default NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`country_id`),
  UNIQUE KEY `UK_dm3c82ih64nmg8u58fw6cisyw` (`country_code`),
  KEY `FK8tiubpjw6wxxw6gqi9pa8xi7e` (`created_by`),
  KEY `FKnqwslcrhnh5aeo4hjyl4fs6fk` (`updated_by`),
  CONSTRAINT `FKnqwslcrhnh5aeo4hjyl4fs6fk` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK8tiubpjw6wxxw6gqi9pa8xi7e` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `country_master` */

insert into `country_master` values (1,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','IN','',356,'IND',356,'India',(null),(null));

/*Table structure for table `coupon` */

drop table if exists `coupon`;

CREATE TABLE `coupon` (
  `coupon_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `discount` double default NULL,
  `valid_from_date` datetime default NULL,
  `valid_to_date` datetime default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`coupon_id`),
  KEY `FK3n3vccstyxg5eckhpia954q42` (`created_by`),
  KEY `FK7uf1nog5qtg47853xibf4hl6s` (`updated_by`),
  CONSTRAINT `FK7uf1nog5qtg47853xibf4hl6s` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK3n3vccstyxg5eckhpia954q42` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `coupon` */

/*Table structure for table `currency_master` */

drop table if exists `currency_master`;

CREATE TABLE `currency_master` (
  `currency_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `currency_code` varchar(255) default NULL,
  `currency_symbol` varchar(255) default NULL,
  `default_fraction_digit` bigint(20) default NULL,
  `description` varchar(255) default NULL,
  `issuing_country_code` varchar(255) default NULL,
  `min_accountable_amount` bigint(20) default NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`currency_id`),
  UNIQUE KEY `UK_4q44grmjfwtfvwkvwc3joh91f` (`currency_code`),
  KEY `FK6c23ldweyo6gsc2oeqx62h6bn` (`created_by`),
  KEY `FKfixkbbw48skffe9tf72rbvhiv` (`updated_by`),
  CONSTRAINT `FKfixkbbw48skffe9tf72rbvhiv` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK6c23ldweyo6gsc2oeqx62h6bn` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `currency_master` */

insert into `currency_master` values (1,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','USD','US$',2,'','US',1,'Dollars',(null),(null)),(2,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','EUR','€',2,'','FR',1,'Euro',(null),(null)),(3,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','INR','Rs',2,'','IN',1,'Rupees',(null),(null));

/*Table structure for table `delivery` */

drop table if exists `delivery`;

CREATE TABLE `delivery` (
  `delivery_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `delivery_estimate_date` datetime default NULL,
  `delivery_instruction` varchar(255) default NULL,
  `gift_note` varchar(255) default NULL,
  `gift_wrap` bit(1) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`delivery_id`),
  UNIQUE KEY `UK_3bdrbd2jcybaaa5rxkj4s7vlk` (`order_id`),
  KEY `FKffa4a89hvon9o5bqxgyixxoy4` (`created_by`),
  KEY `FKs3nl1mrvxqa4w3x4qml71dy6v` (`updated_by`),
  CONSTRAINT `FKp9fvm2l23kr74hqouqb3ymm6h` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FKffa4a89hvon9o5bqxgyixxoy4` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKs3nl1mrvxqa4w3x4qml71dy6v` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `delivery` */

/*Table structure for table `invoice` */

drop table if exists `invoice`;

CREATE TABLE `invoice` (
  `invoice_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `invoice_date` datetime NOT NULL,
  `status` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `billing_address_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`invoice_id`),
  UNIQUE KEY `UK_c2fcw5sa2lj5p18js8pi68cld` (`billing_address_id`),
  UNIQUE KEY `UK_gnfabg6rvhoc3c9o4deqb1hn4` (`order_id`),
  KEY `FKlgd0lgcyh8bfj569mtaxb1fdl` (`created_by`),
  KEY `FKdqji649fajk3jfa0tja8ac77m` (`updated_by`),
  CONSTRAINT `FK5nkqtdwru3n8c6t2sc68u7pgq` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FK9ei19bnmxflfup8a5q9st1sy0` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKdqji649fajk3jfa0tja8ac77m` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKlgd0lgcyh8bfj569mtaxb1fdl` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

/*Table structure for table `locale_master` */

drop table if exists `locale_master`;

CREATE TABLE `locale_master` (
  `locale_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `country_code` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `language_code` varchar(255) default NULL,
  `locale_code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`locale_id`),
  UNIQUE KEY `UK_mbmc37vrncfobmjr7c22dpagw` (`locale_code`),
  KEY `FKlng9e7m4gk01ilmg2yvhuqkkq` (`created_by`),
  KEY `FKk2vasoysa9po08uyy5u049i8l` (`updated_by`),
  CONSTRAINT `FKk2vasoysa9po08uyy5u049i8l` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKlng9e7m4gk01ilmg2yvhuqkkq` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `locale_master` */

insert into `locale_master` values (1,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','US','','en','en_US','English (United States)',(null),(null)),(2,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','JP','','ja','ja_JP','Japanese (Japan)',(null),(null)),(3,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','FR','','fr','fr_FR','French (France)',(null),(null));

/*Table structure for table `order` */

drop table if exists `order`;

CREATE TABLE `order` (
  `order_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `order_date` date default NULL,
  `order_status` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `billing_address_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `delivery_id` bigint(20) NOT NULL,
  `delivery_address_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL,
  `shipment_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`order_id`),
  UNIQUE KEY `UK_ov8s0rh9lnj3bi2lxr4n8o5kc` (`billing_address_id`),
  UNIQUE KEY `UK_6dyj55lr8o2hh3nftogp0ipr3` (`delivery_id`),
  UNIQUE KEY `UK_5ybm9s6hgsv3n89olatcdd9b3` (`delivery_address_id`),
  UNIQUE KEY `UK_hqj0dpdfb7o45wahntt5vjnu5` (`invoice_id`),
  UNIQUE KEY `UK_jv31y8rpkce8du4fbesb6muv8` (`payment_id`),
  UNIQUE KEY `UK_62rhdeu93cr3562m5qqbap78h` (`shipment_id`),
  KEY `FK4l028rfvhpas5pbawtfhvx6uj` (`created_by`),
  KEY `FKj37x8rtreq622syjrhejk63er` (`updated_by`),
  KEY `FKamfx744ngwwxkpin826gjl9f7` (`coupon_id`),
  KEY `FK5ds52cnxjw9c99ovccne0axk0` (`user_id`),
  CONSTRAINT `FK5ds52cnxjw9c99ovccne0axk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK4l028rfvhpas5pbawtfhvx6uj` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK6t14cnj3gpbmex9ubl7hrnb0e` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKamfx744ngwwxkpin826gjl9f7` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`coupon_id`),
  CONSTRAINT `FKbjd4l7kbg6g7nxkvcxi75t85n` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `FKi0wiwxbb1522vhm4ttyj1cn57` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`),
  CONSTRAINT `FKj37x8rtreq622syjrhejk63er` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKspkk7wbhq301s3vhq1qw10hu` FOREIGN KEY (`delivery_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKtfglh1ege6lcsteupl5jg3t3d` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `FKtnggcq3o11kgmg346q6w19ntm` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order` */

/*Table structure for table `order_line_item` */

drop table if exists `order_line_item`;

CREATE TABLE `order_line_item` (
  `order_line_item_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`order_line_item_id`),
  UNIQUE KEY `UK_hub0aa8xrewy5764u1iarb9km` (`product_id`),
  KEY `FKa5cn8enghp7mpu9cb81i6dris` (`created_by`),
  KEY `FK8ni8ibwqub3onr2ske9dbul7c` (`updated_by`),
  KEY `FK20m958i30ouo7gy3ck0pn8m3l` (`order_id`),
  CONSTRAINT `FKojf5alvt8fls7toem82bgkem9` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FK20m958i30ouo7gy3ck0pn8m3l` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FK8ni8ibwqub3onr2ske9dbul7c` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa5cn8enghp7mpu9cb81i6dris` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_line_item` */

/*Table structure for table `party` */

drop table if exists `party`;

CREATE TABLE `party` (
  `party_type` varchar(31) NOT NULL,
  `party_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website_url` varchar(255) default NULL,
  `business_phone_number` varchar(255) default NULL,
  `cell_phone_number` varchar(255) default NULL,
  `date_of_birth` date default NULL,
  `fax_number` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `gender` int(11) default NULL,
  `home_phone_number` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `address_id` bigint(20) default NULL,
  PRIMARY KEY  (`party_id`),
  KEY `FK1jywebg47fjoldsiwjl10hp6m` (`created_by`),
  KEY `FKqbl5qjb9i0iwnhqygndmylg6o` (`updated_by`),
  KEY `FKghoxu6nfy43d9jtenfspdyf6x` (`address_id`),
  CONSTRAINT `FKghoxu6nfy43d9jtenfspdyf6x` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK1jywebg47fjoldsiwjl10hp6m` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKqbl5qjb9i0iwnhqygndmylg6o` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `party` */

/*Table structure for table `payment` */

drop table if exists `payment`;

CREATE TABLE `payment` (
  `payment_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `payment_amount` double default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_gateway_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`payment_id`),
  UNIQUE KEY `UK_mf7n8wo2rwrxsd6f3t9ub2mep` (`order_id`),
  KEY `FKgbs5lh59ppbadqjobchtx16ka` (`created_by`),
  KEY `FKhkjvcasylhrmn2nl66m26gdm8` (`updated_by`),
  KEY `FKgjocntkegabc0v2raqqvkrff7` (`payment_gateway_id`),
  CONSTRAINT `FKgjocntkegabc0v2raqqvkrff7` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateway` (`payment_gateway_id`),
  CONSTRAINT `FK6b0nsdjjc7log0i74wrfp2coo` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FKgbs5lh59ppbadqjobchtx16ka` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKhkjvcasylhrmn2nl66m26gdm8` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `payment_gateway` */

drop table if exists `payment_gateway`;

CREATE TABLE `payment_gateway` (
  `payment_gateway_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `contact_person_name` varchar(255) default NULL,
  `name` varchar(255) NOT NULL,
  `integration_url` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `address_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`payment_gateway_id`),
  UNIQUE KEY `UK_bl192l0i8t1sp5jye7d5tv56r` (`address_id`),
  KEY `FKbmigqgyooiwwvfn8nv6ato8gl` (`created_by`),
  KEY `FK24me091biahxyacuewomyjvmp` (`updated_by`),
  CONSTRAINT `FKifkok15g5yaj03u3s972w864d` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK24me091biahxyacuewomyjvmp` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKbmigqgyooiwwvfn8nv6ato8gl` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment_gateway` */

/*Table structure for table `payment_transaction` */

drop table if exists `payment_transaction`;

CREATE TABLE `payment_transaction` (
  `transaction_type` varchar(31) NOT NULL,
  `payment_transaction_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `transaction_status` int(11) default NULL,
  `transaction_amount` double default NULL,
  `transaction_charges` double default NULL,
  `transaction_date_and_time` datetime default NULL,
  `card_number` varchar(255) default NULL,
  `card_type` varchar(255) default NULL,
  `valid_to_month` varchar(255) default NULL,
  `valid_to_year` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `payment_id` bigint(20) NOT NULL,
  `bank_id` bigint(20) default NULL,
  PRIMARY KEY  (`payment_transaction_id`),
  KEY `FKqj97f8e903m1q0mscrtuwjlrl` (`created_by`),
  KEY `FKm487nw1d8758r379fmncojv46` (`updated_by`),
  KEY `FKmy10wwkgtxmdglm6fix2ot3t3` (`payment_id`),
  KEY `FKs8kegd95jj2v0yc2ji80jbhmy` (`bank_id`),
  CONSTRAINT `FKs8kegd95jj2v0yc2ji80jbhmy` FOREIGN KEY (`bank_id`) REFERENCES `bank_master` (`bank_id`),
  CONSTRAINT `FKm487nw1d8758r379fmncojv46` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmy10wwkgtxmdglm6fix2ot3t3` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `FKqj97f8e903m1q0mscrtuwjlrl` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment_transaction` */

/*Table structure for table `pincode_master` */

drop table if exists `pincode_master`;

CREATE TABLE `pincode_master` (
  `pincode_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`pincode_id`),
  KEY `FKsj6ilw6g9kons9x6nemc4l9yo` (`created_by`),
  KEY `FKp00fsuh85fbxiek4axrbgxcbe` (`updated_by`),
  CONSTRAINT `FKp00fsuh85fbxiek4axrbgxcbe` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKsj6ilw6g9kons9x6nemc4l9yo` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pincode_master` */

/*Table structure for table `product` */

drop table if exists `product`;

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `product_description` varchar(255) default NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) default NULL,
  `sort_order` int(11) default NULL,
  `unit_price` double default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`product_id`),
  UNIQUE KEY `UK_rlaghtegr0yx2c1q1s6nkqjlh` (`category_id`),
  KEY `FKkq98cisr4t6h5djei00310q28` (`created_by`),
  KEY `FKacglm2tg5xemjln8twxcgb6qc` (`updated_by`),
  CONSTRAINT `FK7l29ekt1x29jup80y2iigimyy` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FKacglm2tg5xemjln8twxcgb6qc` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKkq98cisr4t6h5djei00310q28` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

/*Table structure for table `product_attribute` */

drop table if exists `product_attribute`;

CREATE TABLE `product_attribute` (
  `product_attribute_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `attribute_name` varchar(255) default NULL,
  `attribute_value` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`product_attribute_id`),
  KEY `FKembuy3csd35id5jfbd8wyjvti` (`created_by`),
  KEY `FKm17jr7p7sbf8qnjxmb8o98t0a` (`updated_by`),
  KEY `FKh9pcrnity3ljaiy561cbcil71` (`product_id`),
  CONSTRAINT `FKh9pcrnity3ljaiy561cbcil71` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKembuy3csd35id5jfbd8wyjvti` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKm17jr7p7sbf8qnjxmb8o98t0a` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_attribute` */

/*Table structure for table `product_image` */

drop table if exists `product_image`;

CREATE TABLE `product_image` (
  `product_image_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `image_file_path` varchar(255) NOT NULL,
  `image_height` int(11) default NULL,
  `image_thumbnail_file_path` varchar(255) default NULL,
  `image_thumbnail_height` int(11) default NULL,
  `image_thumbnail_width` int(11) default NULL,
  `image_width` int(11) default NULL,
  `sort_order` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`product_image_id`),
  KEY `FK7aovke133rl8il0uat6ce9ay0` (`created_by`),
  KEY `FKls1l0gjgwjkmy1bdd202nolvs` (`updated_by`),
  KEY `FK404iut26wg4pq85osw3vn0kwd` (`product_id`),
  CONSTRAINT `FK404iut26wg4pq85osw3vn0kwd` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FK7aovke133rl8il0uat6ce9ay0` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKls1l0gjgwjkmy1bdd202nolvs` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_image` */

/*Table structure for table `product_review` */

drop table if exists `product_review`;

CREATE TABLE `product_review` (
  `product_review_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `comments` varchar(255) default NULL,
  `rating` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `reviewed_by` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`product_review_id`),
  KEY `FK5p4sd3pv7062j966p36dlkfex` (`created_by`),
  KEY `FKc7ph8vjy7ecvm8vj3mbubqtx4` (`updated_by`),
  KEY `FKd7c9mvquksfrovswjwtge9v45` (`reviewed_by`),
  KEY `FKqvf3tuvv6rw2jvxdx6e42uokd` (`product_id`),
  CONSTRAINT `FKqvf3tuvv6rw2jvxdx6e42uokd` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FK5p4sd3pv7062j966p36dlkfex` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKc7ph8vjy7ecvm8vj3mbubqtx4` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKd7c9mvquksfrovswjwtge9v45` FOREIGN KEY (`reviewed_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_review` */

/*Table structure for table `role` */

drop table if exists `role`;

CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `role_code` varchar(255) NOT NULL,
  `role_description` varchar(255) default NULL,
  `role_name` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`role_id`),
  KEY `FKmll0g5nue2hsfl32cint6s6po` (`created_by`),
  KEY `FKq40ld1yi1bubk4n78oim6b1h8` (`updated_by`),
  CONSTRAINT `FKq40ld1yi1bubk4n78oim6b1h8` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmll0g5nue2hsfl32cint6s6po` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert into `role` values (1,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','ADMINISTRATOR','','System Administrator',(null),(null)),(2,'2016-04-05 01:13:41','\0',0,'2016-04-05 01:13:41','CUSTOMER','','Customer',(null),(null));

/*Table structure for table `shipment` */

drop table if exists `shipment`;

CREATE TABLE `shipment` (
  `shipment_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `delivered_time` datetime default NULL,
  `expected_arrival_date` datetime default NULL,
  `shipment_charges` double default NULL,
  `shipment_tracking_no` int(11) default NULL,
  `shipped_time` datetime default NULL,
  `shipping_type` int(11) default NULL,
  `shipment_status` int(11) default NULL,
  `total_shipment_weight` double default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `invoice_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `shipping_address_id` bigint(20) NOT NULL,
  `shipping_company_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`shipment_id`),
  UNIQUE KEY `UK_p9yjq63uvhgudvpo0l9jx6vam` (`invoice_id`),
  UNIQUE KEY `UK_nbvrlwleg9u60pon83awjnluh` (`shipping_address_id`),
  UNIQUE KEY `UK_ddgp0moxu41kcajaaudykhyxv` (`shipping_company_id`),
  UNIQUE KEY `UK_p06cong2injx54ipykoegys3w` (`order_id`),
  KEY `FKe3yrjxa71pc41nhoupdu64sgi` (`created_by`),
  KEY `FK600up4ldg9kwpxij5ga4oll6r` (`updated_by`),
  KEY `FKmvdqtqm0tatyhggde0xfn4sfv` (`user_id`),
  CONSTRAINT `FKgt6od477kct1jc5yqoad8367p` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_company_master` (`shipping_company_id`),
  CONSTRAINT `FK600up4ldg9kwpxij5ga4oll6r` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKe3yrjxa71pc41nhoupdu64sgi` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKef5d75re2hy4runnsne2f8vxg` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKmvdqtqm0tatyhggde0xfn4sfv` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKonoo7u5e162h8pv49atqvp83p` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FKrik5xv9rumk91ycu6as9gdfod` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shipment` */

/*Table structure for table `shipment_item` */

drop table if exists `shipment_item`;

CREATE TABLE `shipment_item` (
  `shipment_Item_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `order_line_item_id` bigint(20) NOT NULL,
  `shipment_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`shipment_Item_id`),
  UNIQUE KEY `UK_7eyy83tikhvb8iu5n1bjivix2` (`order_line_item_id`),
  KEY `FKf4r280h6xm1826pcb1oti6pc6` (`created_by`),
  KEY `FK4xufxrx51hko2dns0l4xwu2uu` (`updated_by`),
  KEY `FK32um4pt4nscuyqb6dhl54pxcj` (`shipment_id`),
  CONSTRAINT `FK32um4pt4nscuyqb6dhl54pxcj` FOREIGN KEY (`shipment_id`) REFERENCES `shipment` (`shipment_id`),
  CONSTRAINT `FK4xufxrx51hko2dns0l4xwu2uu` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKdl2y2flvoy7i08qkv11dbu7kq` FOREIGN KEY (`order_line_item_id`) REFERENCES `order_line_item` (`order_line_item_id`),
  CONSTRAINT `FKf4r280h6xm1826pcb1oti6pc6` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shipment_item` */

/*Table structure for table `shipping_company_master` */

drop table if exists `shipping_company_master`;

CREATE TABLE `shipping_company_master` (
  `shipping_company_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `contact_person_name` varchar(255) default NULL,
  `name` varchar(255) NOT NULL,
  `tracker_url` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `address_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`shipping_company_id`),
  UNIQUE KEY `UK_ared92ltj23rvgklwyleyyje6` (`address_id`),
  KEY `FKfh8lq9o8nf919kdmwhdigx6uo` (`created_by`),
  KEY `FKnxjusetompe3vyren6xjcuqgd` (`updated_by`),
  CONSTRAINT `FKbupdbteetc3pg1r5e4v7ixr49` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKfh8lq9o8nf919kdmwhdigx6uo` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKnxjusetompe3vyren6xjcuqgd` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shipping_company_master` */

/*Table structure for table `state_master` */

drop table if exists `state_master`;

CREATE TABLE `state_master` (
  `state_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `capital_city` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `state_code` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `country_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`state_id`),
  UNIQUE KEY `UK_j8vtqrk60e0fgaewnj28ygwt9` (`state_code`),
  KEY `FKluj71yiqksw8p062pa82k49uq` (`created_by`),
  KEY `FKfnhlke4mqrjtrefuo2syyano3` (`updated_by`),
  KEY `FK8so64pesmfxpg90mix8w8foqs` (`country_id`),
  CONSTRAINT `FK8so64pesmfxpg90mix8w8foqs` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`country_id`),
  CONSTRAINT `FKfnhlke4mqrjtrefuo2syyano3` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKluj71yiqksw8p062pa82k49uq` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `state_master` */

insert into `state_master` values (1,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Andaman and Nicobar Island','IN-AN',(null),(null),1),(2,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Andhra Pradesh','IN-AP',(null),(null),1),(3,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Arunachal Pradesh','IN-AR',(null),(null),1),(4,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Assam','IN-AS',(null),(null),1),(5,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Bihar','IN-BR',(null),(null),1),(6,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Chandigarh','IN-CH',(null),(null),1),(7,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Chhattisgarh','IN-CT',(null),(null),1),(8,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Dadra and Nagar Haveli','IN-DN',(null),(null),1),(9,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Daman and Diu','IN-DD',(null),(null),1),(10,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Delhi','IN-DL',(null),(null),1),(11,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Goa','IN-GA',(null),(null),1),(12,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Gujarat','IN-GJ',(null),(null),1),(13,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Haryana','IN-HR',(null),(null),1),(14,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Himachal Pradesh','IN-HP',(null),(null),1),(15,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Jammu and Kashmir','IN-JK',(null),(null),1),(16,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Jharkhand','IN-JH',(null),(null),1),(17,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Karnataka','IN-KA',(null),(null),1),(18,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Kerala','IN-KL',(null),(null),1),(19,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Lakshadweep','IN-LD',(null),(null),1),(20,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Madhya Pradesh','IN-MP',(null),(null),1),(21,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Maharashtra','IN-MH',(null),(null),1),(22,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Manipur','IN-MN',(null),(null),1),(23,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Meghalaya','IN-ML',(null),(null),1),(24,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Mizoram','IN-MZ',(null),(null),1),(25,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Nagaland','IN-NL',(null),(null),1),(26,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Odisha','IN-OR',(null),(null),1),(27,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Puducherry','IN-PY',(null),(null),1),(28,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Punjab','IN-PB',(null),(null),1),(29,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Rajasthan','IN-RJ',(null),(null),1),(30,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Sikkim','IN-SK',(null),(null),1),(31,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Tamil Nadu','IN-TN',(null),(null),1),(32,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Telangana','IN-TG',(null),(null),1),(33,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Tripura','IN-TR',(null),(null),1),(34,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Uttar Pradesh','IN-UP',(null),(null),1),(35,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','Uttarakhand','IN-UT',(null),(null),1),(36,'2016-04-05 01:13:38','\0',0,'2016-04-05 01:13:38','','','West Bengal','IN-WB',(null),(null),1);

/*Table structure for table `user` */

drop table if exists `user`;

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `reward_points` int(11) default NULL,
  `status` int(11) NOT NULL,
  `subscribed_for_news_letter_yn` bit(1) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_authentication_id` bigint(20) NOT NULL,
  `billing_address_id` bigint(20) default NULL,
  `currency_code` bigint(20) NOT NULL,
  `delivery_address_id` bigint(20) default NULL,
  `locale_code` bigint(20) NOT NULL,
  `party_id` bigint(20) NOT NULL,
  `user_image_id` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `UK_rywod31yq6w887do21arevxf0` (`user_authentication_id`),
  UNIQUE KEY `UK_phtn88euiwlx2je8cgrwwykj2` (`currency_code`),
  UNIQUE KEY `UK_1nu5a0f4iftljpg4k2lx23pxp` (`locale_code`),
  UNIQUE KEY `UK_fc1o1kw2nluxu6qq7aqpb8kaq` (`party_id`),
  UNIQUE KEY `UK_r10qcb2s6ga05opkd5o7oo9dk` (`user_image_id`),
  KEY `FKtgx1nsmw2irw5u69hibdx5t8b` (`created_by`),
  KEY `FKap4v54a63igjjm8tegdgji11m` (`updated_by`),
  KEY `FKpkrcgtfyvkdf78tj7fd6medi8` (`billing_address_id`),
  KEY `FK8bwha8q3caxqfsiqt5sec7226` (`delivery_address_id`),
  CONSTRAINT `FKhy48iskxm55vfu0nbyp588x36` FOREIGN KEY (`user_image_id`) REFERENCES `user_image` (`user_image_id`),
  CONSTRAINT `FK60d9wb09cwhw9jl02hivauut8` FOREIGN KEY (`user_authentication_id`) REFERENCES `user_authentication` (`user_authentication_id`),
  CONSTRAINT `FK6krkrl4wv1in53j1ppdp9d9t0` FOREIGN KEY (`currency_code`) REFERENCES `currency_master` (`currency_id`),
  CONSTRAINT `FK8bwha8q3caxqfsiqt5sec7226` FOREIGN KEY (`delivery_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKap4v54a63igjjm8tegdgji11m` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKm0y5f320oybhis1wi6engqdw` FOREIGN KEY (`locale_code`) REFERENCES `locale_master` (`locale_id`),
  CONSTRAINT `FKpkrcgtfyvkdf78tj7fd6medi8` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKrrymbl2hd1lq7caftf3bqwhgd` FOREIGN KEY (`party_id`) REFERENCES `party` (`party_id`),
  CONSTRAINT `FKtgx1nsmw2irw5u69hibdx5t8b` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*Table structure for table `user_authentication` */

drop table if exists `user_authentication`;

CREATE TABLE `user_authentication` (
  `user_authentication_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`user_authentication_id`),
  UNIQUE KEY `UK_2f7rnxlwhdd4uo32nuljwkgtg` (`username`),
  KEY `FKqk7ly7d6ydg01prj7cancpohg` (`created_by`),
  KEY `FKq8765o4u30slbqm3utdakkbby` (`updated_by`),
  CONSTRAINT `FKq8765o4u30slbqm3utdakkbby` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKqk7ly7d6ydg01prj7cancpohg` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_authentication` */

/*Table structure for table `user_image` */

drop table if exists `user_image`;

CREATE TABLE `user_image` (
  `user_image_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `image_file_path` varchar(255) NOT NULL,
  `image_height` int(11) default NULL,
  `image_thumbnail_file_path` varchar(255) default NULL,
  `image_thumbnail_height` int(11) default NULL,
  `image_thumbnail_width` int(11) default NULL,
  `image_width` int(11) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_image_id`),
  UNIQUE KEY `UK_kmuuil8sny6o2cxlbjx4sc43g` (`user_id`),
  KEY `FK8kl9e2mg0b7np6irvgy2ahu1x` (`created_by`),
  KEY `FK5ftr8fkhnv9eaowf6wo7fr3j6` (`updated_by`),
  CONSTRAINT `FKkned9iog18towcul0jtw2g432` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK5ftr8fkhnv9eaowf6wo7fr3j6` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK8kl9e2mg0b7np6irvgy2ahu1x` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_image` */

/*Table structure for table `user_preference` */

drop table if exists `user_preference`;

CREATE TABLE `user_preference` (
  `user_preference_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `preference_name` varchar(255) default NULL,
  `preference_value` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_preference_id`),
  KEY `FK1uw8qimmjidffif7bs458cgjw` (`created_by`),
  KEY `FK113ur38ky93jfx4tvqsje0hwx` (`updated_by`),
  KEY `FKdk2lgoernfqwsmmb947osbnao` (`user_id`),
  CONSTRAINT `FKdk2lgoernfqwsmmb947osbnao` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK113ur38ky93jfx4tvqsje0hwx` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK1uw8qimmjidffif7bs458cgjw` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_preference` */

/*Table structure for table `user_role` */

drop table if exists `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKka3w3atry4amefp94rblb52n7` (`role_id`),
  KEY `FKhjx9nk20h4mo745tdqj8t8n9d` (`user_id`),
  CONSTRAINT `FKhjx9nk20h4mo745tdqj8t8n9d` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKka3w3atry4amefp94rblb52n7` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

/*Table structure for table `visitor` */

drop table if exists `visitor`;

CREATE TABLE `visitor` (
  `visitor_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `input_device_browser_code` varchar(255) default NULL,
  `input_device_browser_text` varchar(255) default NULL,
  `input_device_browser_version` varchar(255) default NULL,
  `input_device_ip_address` varchar(255) default NULL,
  `input_device_os_code` varchar(255) default NULL,
  `input_device_os_text` varchar(255) default NULL,
  `input_device_os_version` varchar(255) default NULL,
  `input_device_type_code` varchar(255) default NULL,
  `input_locale_code` varchar(255) default NULL,
  `input_referrer_url` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`visitor_id`),
  UNIQUE KEY `UK_f768x0mf235v9dw2s3w5ip2hk` (`input_device_ip_address`),
  KEY `FK5ihqfvvlyiy3jep0rddnbykx0` (`created_by`),
  KEY `FKgedfv6hl2myqcclqy624t29th` (`updated_by`),
  CONSTRAINT `FKgedfv6hl2myqcclqy624t29th` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK5ihqfvvlyiy3jep0rddnbykx0` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `visitor` */

/*Table structure for table `wallet_payment_method` */

drop table if exists `wallet_payment_method`;

CREATE TABLE `wallet_payment_method` (
  `wallet_payment_method_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `valid_to_month` varchar(255) NOT NULL,
  `valid_to_year` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`wallet_payment_method_id`),
  UNIQUE KEY `UK_mkvwhc74uqmbq3xcofbbdxaos` (`user_id`),
  KEY `FKqfioo052mu70vofr9rikpn2as` (`created_by`),
  KEY `FK70ru44td54g184o5unoh8ijn8` (`updated_by`),
  CONSTRAINT `FK2n14anjvnk912thnpcakte309` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK70ru44td54g184o5unoh8ijn8` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKqfioo052mu70vofr9rikpn2as` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wallet_payment_method` */

/*Table structure for table `wish_list` */

drop table if exists `wish_list`;

CREATE TABLE `wish_list` (
  `wish_list_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`wish_list_id`),
  KEY `FKsudn7kyh9ir0wjms4j2vi710a` (`created_by`),
  KEY `FK74at2rcnvmuno2vpv1k6qjark` (`updated_by`),
  KEY `FKex9mxwjdcjvc8ges1te1ncunt` (`user_id`),
  CONSTRAINT `FKex9mxwjdcjvc8ges1te1ncunt` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK74at2rcnvmuno2vpv1k6qjark` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKsudn7kyh9ir0wjms4j2vi710a` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wish_list` */

/*Table structure for table `wish_list_item` */

drop table if exists `wish_list_item`;

CREATE TABLE `wish_list_item` (
  `wish_list_item_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `product_id` bigint(20) NOT NULL,
  `wish_list_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`wish_list_item_id`),
  UNIQUE KEY `UK_mqaehu8w423qs8hgie6ciq3ut` (`product_id`),
  KEY `FK6sxkmj5la4h0tho4mvpmxeels` (`created_by`),
  KEY `FKeyrs1gr2kkgnyngi5cx7j43t6` (`updated_by`),
  KEY `FKi55vmh1sjochxekwpjtq4md4h` (`wish_list_id`),
  CONSTRAINT `FKi55vmh1sjochxekwpjtq4md4h` FOREIGN KEY (`wish_list_id`) REFERENCES `wish_list` (`wish_list_id`),
  CONSTRAINT `FK6sxkmj5la4h0tho4mvpmxeels` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKeyrs1gr2kkgnyngi5cx7j43t6` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKi23hynyeuqodnr6ne6px1s200` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wish_list_item` */
