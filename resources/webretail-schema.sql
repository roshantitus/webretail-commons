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
  `email` varchar(255) default NULL,
  `home_phone` varchar(255) default NULL,
  `landmark` varchar(255) default NULL,
  `mobile_no` varchar(255) default NULL,
  `office_phone` varchar(255) default NULL,
  `website_url` varchar(255) default NULL,
  `zip_code` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `city_id` bigint(20) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`address_id`),
  KEY `FKsv5dmo21p7mv80c4woffp1t1u` (`created_by`),
  KEY `FKo8ddvkhch69ylkk1a7oy0bkiu` (`updated_by`),
  KEY `FKs2as0ock2lltry62gy0ncxnhg` (`city_id`),
  KEY `FKd3at77pmmvw7trhqpoqtyug6e` (`country_id`),
  KEY `FKljk5vpefoop4l2v7pwrdybojq` (`state_id`),
  CONSTRAINT `FKd3at77pmmvw7trhqpoqtyug6e` FOREIGN KEY (`country_id`) REFERENCES `country_master` (`country_id`),
  CONSTRAINT `FKljk5vpefoop4l2v7pwrdybojq` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`),
  CONSTRAINT `FKo8ddvkhch69ylkk1a7oy0bkiu` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKs2as0ock2lltry62gy0ncxnhg` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`),
  CONSTRAINT `FKsv5dmo21p7mv80c4woffp1t1u` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address` */

insert into `address` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LEELA PLAZA, IDIUMVILAKATHUVEEDU','ULOOR, KOCHULOOR','','','','','0471-2556955','http://www.bluedart.com','695011',-99,-99,685,1,18),(2,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','3rd & 4th floor, Maa Grace','12, 7th Cross Road, Koramangala 1A Block','','','','','0471-2556955','https://www.instamojo.com/','560034',-99,-99,549,1,15),(3,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','Kariavattom, Padmanabham Club House Road','Technopark, Thiruvananthapuram','','','','','0471-2556955','http://www.hdfcbank.com/','695581',-99,-99,685,1,18);

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
  CONSTRAINT `FK5bb8ss6lrfn98kt4i4v7jlbpd` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa1yxegn20d18gqwkrj2xmcdg3` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKna0bco8b3fril1gwe4xe9wxva` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_master` */

insert into `bank_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','','HDFC Bank LTD','https://netbanking.hdfcbank.com/netbanking/',-99,-99,3);

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
  CONSTRAINT `FK1w0o0607c1sqcasvbxplfq8sj` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKb8s7ma5btk16xq6be857s0jcr` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKbmo4tkl6m9od5wdc8gdd65vrb` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
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
  CONSTRAINT `FK5n2966oatmjcxvqbs10wcwbb` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  CONSTRAINT `FK6kgl4g1b0lq26txusqyy9xsde` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKrxu24lhh77o4rx8pe9qr343vr` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKt47yrsi6v1s9kjdg8mxiwt7bh` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
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

insert into `category` values (2,'2016-04-05 22:33:19','\0',0,'2016-04-05 22:33:19','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(4,'2016-04-05 22:33:20','\0',0,'2016-04-05 22:33:20','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(6,'2016-04-05 22:51:03','\0',0,'2016-04-05 22:51:03','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(7,'2016-04-05 22:51:03','\0',0,'2016-04-05 22:51:03','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(9,'2016-04-05 23:04:35','\0',0,'2016-04-05 23:04:35','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(10,'2016-04-05 23:04:35','\0',0,'2016-04-05 23:04:35','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(12,'2016-04-05 23:31:14','\0',0,'2016-04-05 23:31:14','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(13,'2016-04-05 23:31:14','\0',0,'2016-04-05 23:31:14','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(15,'2016-04-05 23:33:51','\0',0,'2016-04-05 23:33:51','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(16,'2016-04-05 23:33:51','\0',0,'2016-04-05 23:33:51','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(18,'2016-04-05 23:35:31','\0',0,'2016-04-05 23:35:31','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(19,'2016-04-05 23:35:31','\0',0,'2016-04-05 23:35:31','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(21,'2016-04-05 23:40:23','\0',0,'2016-04-05 23:40:23','Collection of classic and non-classic books','Books',(null),(null),(null),(null)),(22,'2016-04-05 23:40:24','\0',0,'2016-04-05 23:40:24','Collection of classic and non-classic books','Books',(null),(null),(null),(null));

/*Table structure for table `city_master` */

drop table if exists `city_master`;

CREATE TABLE `city_master` (
  `city_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `city_code` varchar(255) NOT NULL,
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

insert into `city_master` values (1,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KOLHAPUR','-99','Kolhapur',-99,(null),21),(2,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PORT_BLAIR','-99','Port Blair',-99,(null),1),(3,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ADILABAD','-99','Adilabad',-99,(null),2),(4,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ADONI','-99','Adoni',-99,(null),2),(5,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','AMADALAVALASA','-99','Amadalavalasa',-99,(null),2),(6,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','AMALAPURAM','-99','Amalapuram',-99,(null),2),(7,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ANAKAPALLE','-99','Anakapalle',-99,(null),2),(8,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ANANTAPUR','-99','Anantapur',-99,(null),2),(9,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BADEPALLE','-99','Badepalle',-99,(null),2),(10,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BANGANAPALLE','-99','Banganapalle',-99,(null),2),(11,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BAPATLA','-99','Bapatla',-99,(null),2),(12,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BELLAMPALLE','-99','Bellampalle',-99,(null),2),(13,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BETHAMCHERLA','-99','Bethamcherla',-99,(null),2),(14,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHADRACHALAM','-99','Bhadrachalam',-99,(null),2),(15,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHAINSA','-99','Bhainsa',-99,(null),2),(16,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHEEMUNIPATNAM','-99','Bheemunipatnam',-99,(null),2),(17,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHIMAVARAM','-99','Bhimavaram',-99,(null),2),(18,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHONGIR','-99','Bhongir',-99,(null),2),(19,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BOBBILI','-99','Bobbili',-99,(null),2),(20,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BODHAN','-99','Bodhan',-99,(null),2),(21,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHILAKALURIPET','-99','Chilakaluripet',-99,(null),2),(22,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHIRALA','-99','Chirala',-99,(null),2),(23,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHITTOOR','-99','Chittoor',-99,(null),2),(24,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CUDDAPAH','-99','Cuddapah',-99,(null),2),(25,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DEVARAKONDA','-99','Devarakonda',-99,(null),2),(26,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DHARMAVARAM','-99','Dharmavaram',-99,(null),2),(27,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ELURU','-99','Eluru',-99,(null),2),(28,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','FAROOQNAGAR','-99','Farooqnagar',-99,(null),2),(29,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GADWAL','-99','Gadwal',-99,(null),2),(30,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GOOTY','-99','Gooty',-99,(null),2),(31,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GUDIVADA','-99','Gudivada',-99,(null),2),(32,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GUDUR','-99','Gudur',-99,(null),2),(33,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GUNTAKAL','-99','Guntakal',-99,(null),2),(34,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GUNTUR','-99','Guntur',-99,(null),2),(35,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HANUMAN_JUNCTION','-99','Hanuman Junction',-99,(null),2),(36,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HINDUPUR','-99','Hindupur',-99,(null),2),(37,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HYDERABAD','-99','Hyderabad',-99,(null),2),(38,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ICHCHAPURAM','-99','Ichchapuram',-99,(null),2),(39,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAGGAIAHPET','-99','Jaggaiahpet',-99,(null),2),(40,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAGTIAL','-99','Jagtial',-99,(null),2),(41,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAMMALAMADUGU','-99','Jammalamadugu',-99,(null),2),(42,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JANGAON','-99','Jangaon',-99,(null),2),(43,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KADAPA','-99','Kadapa',-99,(null),2),(44,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KADIRI','-99','Kadiri',-99,(null),2),(45,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KAGAZNAGAR','-99','Kagaznagar',-99,(null),2),(46,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KAKINADA','-99','Kakinada',-99,(null),2),(47,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KALYANDURG','-99','Kalyandurg',-99,(null),2),(48,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KAMAREDDY','-99','Kamareddy',-99,(null),2),(49,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KANDUKUR','-99','Kandukur',-99,(null),2),(50,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KARIMNAGAR','-99','Karimnagar',-99,(null),2),(51,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KAVALI','-99','Kavali',-99,(null),2),(52,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KHAMMAM','-99','Khammam',-99,(null),2),(53,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KORATLA','-99','Koratla',-99,(null),2),(54,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KOTHAGUDEM','-99','Kothagudem',-99,(null),2),(55,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KOTHAPETA','-99','Kothapeta',-99,(null),2),(56,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KOVVUR','-99','Kovvur',-99,(null),2),(57,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KURNOOL','-99','Kurnool',-99,(null),2),(58,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KYATHAMPALLE','-99','Kyathampalle',-99,(null),2),(59,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MACHERLA','-99','Macherla',-99,(null),2),(60,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MACHILIPATNAM','-99','Machilipatnam',-99,(null),2),(61,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MADANAPALLE','-99','Madanapalle',-99,(null),2),(62,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MAHBUBNAGAR','-99','Mahbubnagar',-99,(null),2),(63,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANCHERIAL','-99','Mancherial',-99,(null),2),(64,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANDAMARRI','-99','Mandamarri',-99,(null),2),(65,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANDAPETA','-99','Mandapeta',-99,(null),2),(66,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANUGURU','-99','Manuguru',-99,(null),2),(67,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MARKAPUR','-99','Markapur',-99,(null),2),(68,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MEDAK','-99','Medak',-99,(null),2),(69,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MIRYALAGUDA','-99','Miryalaguda',-99,(null),2),(70,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MOGALTHUR','-99','Mogalthur',-99,(null),2),(71,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NAGARI','-99','Nagari',-99,(null),2),(72,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NAGARKURNOOL','-99','Nagarkurnool',-99,(null),2),(73,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NANDYAL','-99','Nandyal',-99,(null),2),(74,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NARASAPUR','-99','Narasapur',-99,(null),2),(75,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NARASARAOPET','-99','Narasaraopet',-99,(null),2),(76,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NARAYANPET','-99','Narayanpet',-99,(null),2),(77,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NARSIPATNAM','-99','Narsipatnam',-99,(null),2),(78,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NELLORE','-99','Nellore',-99,(null),2),(79,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NIDADAVOLE','-99','Nidadavole',-99,(null),2),(80,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NIRMAL','-99','Nirmal',-99,(null),2),(81,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NIZAMABAD','-99','Nizamabad',-99,(null),2),(82,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NUZVID','-99','Nuzvid',-99,(null),2),(83,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ONGOLE','-99','Ongole',-99,(null),2),(84,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PALACOLE','-99','Palacole',-99,(null),2),(85,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PALASA_KASIBUGGA','-99','Palasa Kasibugga',-99,(null),2),(86,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PALWANCHA','-99','Palwancha',-99,(null),2),(87,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PARVATHIPURAM','-99','Parvathipuram',-99,(null),2),(88,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PEDANA','-99','Pedana',-99,(null),2),(89,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PEDDAPURAM','-99','Peddapuram',-99,(null),2),(90,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PITHAPURAM','-99','Pithapuram',-99,(null),2),(91,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PONDUR','-99','Pondur',-99,(null),2),(92,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PONNUR','-99','Ponnur',-99,(null),2),(93,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PRODDATUR','-99','Proddatur',-99,(null),2),(94,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PUNGANUR','-99','Punganur',-99,(null),2),(95,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','AP-PUTTUR','-99','Puttur',-99,(null),2),(96,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAJAHMUNDRY','-99','Rajahmundry',-99,(null),2),(97,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAJAM','-99','Rajam',-99,(null),2),(98,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAMACHANDRAPURAM','-99','Ramachandrapuram',-99,(null),2),(99,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAMAGUNDAM','-99','Ramagundam',-99,(null),2),(100,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAYACHOTI','-99','Rayachoti',-99,(null),2),(101,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAYADURG','-99','Rayadurg',-99,(null),2),(102,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RENIGUNTA','-99','Renigunta',-99,(null),2),(103,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','REPALLE','-99','Repalle',-99,(null),2),(104,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SADASIVPET','-99','Sadasivpet',-99,(null),2),(105,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SALUR','-99','Salur',-99,(null),2),(106,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SAMALKOT','-99','Samalkot',-99,(null),2),(107,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SANGAREDDY','-99','Sangareddy',-99,(null),2),(108,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SATTENAPALLE','-99','Sattenapalle',-99,(null),2),(109,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SIDDIPET','-99','Siddipet',-99,(null),2),(110,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SINGAPUR','-99','Singapur',-99,(null),2),(111,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SIRCILLA','-99','Sircilla',-99,(null),2),(112,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SRIKAKULAM','-99','Srikakulam',-99,(null),2),(113,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SRIKALAHASTI','-99','Srikalahasti',-99,(null),2),(115,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SURYAPET','-99','Suryapet',-99,(null),2),(116,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TADEPALLIGUDEM','-99','Tadepalligudem',-99,(null),2),(117,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TADPATRI','-99','Tadpatri',-99,(null),2),(118,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TANDUR','-99','Tandur',-99,(null),2),(119,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TANUKU','-99','Tanuku',-99,(null),2),(120,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TENALI','-99','Tenali',-99,(null),2),(121,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TIRUPATI','-99','Tirupati',-99,(null),2),(122,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TUNI','-99','Tuni',-99,(null),2),(123,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','URAVAKONDA','-99','Uravakonda',-99,(null),2),(124,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VENKATAGIRI','-99','Venkatagiri',-99,(null),2),(125,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VICARABAD','-99','Vicarabad',-99,(null),2),(126,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VIJAYAWADA','-99','Vijayawada',-99,(null),2),(127,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VINUKONDA','-99','Vinukonda',-99,(null),2),(128,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VISAKHAPATNAM','-99','Visakhapatnam',-99,(null),2),(129,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','VIZIANAGARAM','-99','Vizianagaram',-99,(null),2),(130,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','WANAPARTHY','-99','Wanaparthy',-99,(null),2),(131,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','WARANGAL','-99','Warangal',-99,(null),2),(132,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','YELLANDU','-99','Yellandu',-99,(null),2),(133,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','YEMMIGANUR','-99','Yemmiganur',-99,(null),2),(134,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','YERRAGUNTLA','-99','Yerraguntla',-99,(null),2),(135,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ZAHIRABAD','-99','Zahirabad',-99,(null),2),(136,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RAJAMPET','-99','Rajampet',-99,(null),2),(137,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ALONG','-99','Along',-99,(null),3),(138,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BOMDILA','-99','Bomdila',-99,(null),3),(139,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ITANAGAR','-99','Itanagar',-99,(null),3),(140,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NAHARLAGUN','-99','Naharlagun',-99,(null),3),(141,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','PASIGHAT','-99','Pasighat',-99,(null),3),(142,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ABHAYAPURI','-99','Abhayapuri',-99,(null),4),(143,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','AMGURI','-99','Amguri',-99,(null),4),(144,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ANANDNAGAAR','-99','Anandnagaar',-99,(null),4),(145,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARPETA','-99','Barpeta',-99,(null),4),(146,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARPETA_ROAD','-99','Barpeta Road',-99,(null),4),(147,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BILASIPARA','-99','Bilasipara',-99,(null),4),(148,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BONGAIGAON','-99','Bongaigaon',-99,(null),4),(149,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DHEKIAJULI','-99','Dhekiajuli',-99,(null),4),(150,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DHUBRI','-99','Dhubri',-99,(null),4),(151,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DIBRUGARH','-99','Dibrugarh',-99,(null),4),(152,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DIGBOI','-99','Digboi',-99,(null),4),(153,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DIPHU','-99','Diphu',-99,(null),4),(154,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DISPUR','-99','Dispur',-99,(null),4),(156,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GAURIPUR','-99','Gauripur',-99,(null),4),(157,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GOALPARA','-99','Goalpara',-99,(null),4),(158,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GOLAGHAT','-99','Golaghat',-99,(null),4),(159,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GUWAHATI','-99','Guwahati',-99,(null),4),(160,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HAFLONG','-99','Haflong',-99,(null),4),(161,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HAILAKANDI','-99','Hailakandi',-99,(null),4),(162,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HOJAI','-99','Hojai',-99,(null),4),(163,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JORHAT','-99','Jorhat',-99,(null),4),(164,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KARIMGANJ','-99','Karimganj',-99,(null),4),(165,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','KOKRAJHAR','-99','Kokrajhar',-99,(null),4),(166,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','LANKA','-99','Lanka',-99,(null),4),(167,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','LUMDING','-99','Lumding',-99,(null),4),(168,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANGALDOI','-99','Mangaldoi',-99,(null),4),(169,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MANKACHAR','-99','Mankachar',-99,(null),4),(170,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MARGHERITA','-99','Margherita',-99,(null),4),(171,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MARIANI','-99','Mariani',-99,(null),4),(172,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','MARIGAON','-99','Marigaon',-99,(null),4),(173,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NAGAON','-99','Nagaon',-99,(null),4),(174,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NALBARI','-99','Nalbari',-99,(null),4),(175,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','NORTH_LAKHIMPUR','-99','North Lakhimpur',-99,(null),4),(176,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','RANGIA','-99','Rangia',-99,(null),4),(177,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SIBSAGAR','-99','Sibsagar',-99,(null),4),(178,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SILAPATHAR','-99','Silapathar',-99,(null),4),(179,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','SILCHAR','-99','Silchar',-99,(null),4),(180,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TEZPUR','-99','Tezpur',-99,(null),4),(181,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','TINSUKIA','-99','Tinsukia',-99,(null),4),(182,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','AMARPUR','-99','Amarpur',-99,(null),5),(183,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ARARIA','-99','Araria',-99,(null),5),(184,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ARERAJ','-99','Areraj',-99,(null),5),(185,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ARRAH','-99','Arrah',-99,(null),5),(186,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','ASARGANJ','-99','Asarganj',-99,(null),5),(187,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BR-AURANGABAD','-99','Aurangabad',-99,(null),5),(188,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BAGAHA','-99','Bagaha',-99,(null),5),(189,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BAHADURGANJ','-99','Bahadurganj',-99,(null),5),(190,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BAIRGANIA','-99','Bairgania',-99,(null),5),(191,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BAKHTIARPUR','-99','Bakhtiarpur',-99,(null),5),(192,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BANKA','-99','Banka',-99,(null),5),(193,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BANMANKHI_BAZAR','-99','Banmankhi Bazar',-99,(null),5),(194,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARAHIYA','-99','Barahiya',-99,(null),5),(195,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARAULI','-99','Barauli',-99,(null),5),(196,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARBIGHA','-99','Barbigha',-99,(null),5),(197,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BARH','-99','Barh',-99,(null),5),(198,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BEGUSARAI','-99','Begusarai',-99,(null),5),(199,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BEHEA','-99','Behea',-99,(null),5),(200,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BETTIAH','-99','Bettiah',-99,(null),5),(201,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHABUA','-99','Bhabua',-99,(null),5),(202,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BHAGALPUR','-99','Bhagalpur',-99,(null),5),(203,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BIHAR_SHARIF','-99','Bihar Sharif',-99,(null),5),(204,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BIKRAMGANJ','-99','Bikramganj',-99,(null),5),(205,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BODH_GAYA','-99','Bodh Gaya',-99,(null),5),(206,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BUXAR','-99','Buxar',-99,(null),5),(207,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHANDAN_BARA','-99','Chandan Bara',-99,(null),5),(208,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHANPATIA','-99','Chanpatia',-99,(null),5),(209,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','CHHAPRA','-99','Chhapra',-99,(null),5),(210,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','COLGONG','-99','Colgong',-99,(null),5),(211,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DALSINGHSARAI','-99','Dalsinghsarai',-99,(null),5),(212,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DARBHANGA','-99','Darbhanga',-99,(null),5),(213,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DAUDNAGAR','-99','Daudnagar',-99,(null),5),(214,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DEHRI_ON_SONE','-99','Dehri-on-Sone',-99,(null),5),(215,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DHAKA','-99','Dhaka',-99,(null),5),(216,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DIGHWARA','-99','Dighwara',-99,(null),5),(217,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','DUMRAON','-99','Dumraon',-99,(null),5),(218,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','FATWAH','-99','Fatwah',-99,(null),5),(219,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','FORBESGANJ','-99','Forbesganj',-99,(null),5),(220,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GAYA','-99','Gaya',-99,(null),5),(221,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GOGRI_JAMALPUR','-99','Gogri Jamalpur',-99,(null),5),(222,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','GOPALGANJ','-99','Gopalganj',-99,(null),5),(223,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HAJIPUR','-99','Hajipur',-99,(null),5),(224,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HILSA','-99','Hilsa',-99,(null),5),(225,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','HISUA','-99','Hisua',-99,(null),5),(226,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','BR-ISLAMPUR','-99','Islampur',-99,(null),5),(227,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAGDISPUR','-99','Jagdispur',-99,(null),5),(228,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAMALPUR','-99','Jamalpur',-99,(null),5),(229,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JAMUI','-99','Jamui',-99,(null),5),(230,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','JEHANABAD','-99','Jehanabad',-99,(null),5),(231,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JHAJHA','-99','Jhajha',-99,(null),5),(232,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JHANJHARPUR','-99','Jhanjharpur',-99,(null),5),(233,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JOGABANI','-99','Jogabani',-99,(null),5),(234,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANTI','-99','Kanti',-99,(null),5),(235,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KATIHAR','-99','Katihar',-99,(null),5),(236,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHAGARIA','-99','Khagaria',-99,(null),5),(237,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BR-KHARAGPUR','-99','Kharagpur',-99,(null),5),(238,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KISHANGANJ','-99','Kishanganj',-99,(null),5),(239,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LAKHISARAI','-99','Lakhisarai',-99,(null),5),(240,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BR-LALGANJ','-99','Lalganj',-99,(null),5),(241,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADHEPURA','-99','Madhepura',-99,(null),5),(242,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADHUBANI','-99','Madhubani',-99,(null),5),(243,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHARAJGANJ','-99','Maharajganj',-99,(null),5),(244,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHNAR_BAZAR','-99','Mahnar Bazar',-99,(null),5),(245,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAKHDUMPUR','-99','Makhdumpur',-99,(null),5),(246,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANER','-99','Maner',-99,(null),5),(247,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANIHARI','-99','Manihari',-99,(null),5),(248,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MARHAURA','-99','Marhaura',-99,(null),5),(249,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MASAURHI','-99','Masaurhi',-99,(null),5),(250,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MIRGANJ','-99','Mirganj',-99,(null),5),(251,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOKAMEH','-99','Mokameh',-99,(null),5),(252,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOTIHARI','-99','Motihari',-99,(null),5),(253,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOTIPUR','-99','Motipur',-99,(null),5),(254,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUNGER','-99','Munger',-99,(null),5),(255,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MURLIGANJ','-99','Murliganj',-99,(null),5),(256,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUZAFFARPUR','-99','Muzaffarpur',-99,(null),5),(257,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARKATIAGANJ','-99','Narkatiaganj',-99,(null),5),(258,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAUGACHHIA','-99','Naugachhia',-99,(null),5),(259,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAWADA','-99','Nawada',-99,(null),5),(260,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BR-NOKHA','-99','Nokha',-99,(null),5),(261,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATNA','-99','Patna',-99,(null),5),(262,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PIRO','-99','Piro',-99,(null),5),(263,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PURNIA','-99','Purnia',-99,(null),5),(264,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAFIGANJ','-99','Rafiganj',-99,(null),5),(265,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJGIR','-99','Rajgir',-99,(null),5),(266,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BR-RAMNAGAR','-99','Ramnagar',-99,(null),5),(267,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAXAUL_BAZAR','-99','Raxaul Bazar',-99,(null),5),(268,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','REVELGANJ','-99','Revelganj',-99,(null),5),(269,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ROSERA','-99','Rosera',-99,(null),5),(270,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAHARSA','-99','Saharsa',-99,(null),5),(271,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAMASTIPUR','-99','Samastipur',-99,(null),5),(272,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SASARAM','-99','Sasaram',-99,(null),5),(273,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHEIKHPURA','-99','Sheikhpura',-99,(null),5),(274,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHEOHAR','-99','Sheohar',-99,(null),5),(275,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHERGHATI','-99','Sherghati',-99,(null),5),(276,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SILAO','-99','Silao',-99,(null),5),(277,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SITAMARHI','-99','Sitamarhi',-99,(null),5),(278,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIWAN','-99','Siwan',-99,(null),5),(279,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SONEPUR','-99','Sonepur',-99,(null),5),(280,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUGAULI','-99','Sugauli',-99,(null),5),(281,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SULTANGANJ','-99','Sultanganj',-99,(null),5),(282,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUPAUL','-99','Supaul',-99,(null),5),(283,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WARISALIGANJ','-99','Warisaliganj',-99,(null),5),(284,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AHIWARA','-99','Ahiwara',-99,(null),7),(285,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AKALTARA','-99','Akaltara',-99,(null),7),(286,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMBAGARH_CHOWKI','-99','Ambagarh Chowki',-99,(null),7),(287,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMBIKAPUR','-99','Ambikapur',-99,(null),7),(288,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARANG','-99','Arang',-99,(null),7),(289,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BADE_BACHELI','-99','Bade Bacheli',-99,(null),7),(290,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALOD','-99','Balod',-99,(null),7),(291,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALODA_BAZAR','-99','Baloda Bazar',-99,(null),7),(292,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BEMETRA','-99','Bemetra',-99,(null),7),(293,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHATAPARA','-99','Bhatapara',-99,(null),7),(294,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CT-BILASPUR','-99','Bilaspur',-99,(null),7),(295,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BIRGAON','-99','Birgaon',-99,(null),7),(296,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHAMPA','-99','Champa',-99,(null),7),(297,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHIRMIRI','-99','Chirmiri',-99,(null),7),(298,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DALLI_RAJHARA','-99','Dalli-Rajhara',-99,(null),7),(299,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHAMTARI','-99','Dhamtari',-99,(null),7),(300,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DIPKA','-99','Dipka',-99,(null),7),(301,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DONGARGARH','-99','Dongargarh',-99,(null),7),(302,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DURG_BHILAI_NAGAR','-99','Durg-Bhilai Nagar',-99,(null),7),(303,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GOBRANAWAPARA','-99','Gobranawapara',-99,(null),7),(304,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAGDALPUR','-99','Jagdalpur',-99,(null),7),(305,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JANJGIR','-99','Janjgir',-99,(null),7),(306,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JASHPURNAGAR','-99','Jashpurnagar',-99,(null),7),(307,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANKER','-99','Kanker',-99,(null),7),(308,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAWARDHA','-99','Kawardha',-99,(null),7),(309,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KONDAGAON','-99','Kondagaon',-99,(null),7),(310,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KORBA','-99','Korba',-99,(null),7),(311,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHASAMUND','-99','Mahasamund',-99,(null),7),(312,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CT-MAHENDRAGARH','-99','Mahendragarh',-99,(null),7),(313,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUNGELI','-99','Mungeli',-99,(null),7),(314,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAILA_JANJGIR','-99','Naila Janjgir',-99,(null),7),(315,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAIGARH','-99','Raigarh',-99,(null),7),(316,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAIPUR','-99','Raipur',-99,(null),7),(317,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJNANDGAON','-99','Rajnandgaon',-99,(null),7),(318,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAKTI','-99','Sakti',-99,(null),7),(319,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TILDA_NEWRA','-99','Tilda Newra',-99,(null),7),(320,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMLI','-99','Amli',-99,(null),8),(321,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SILVASSA','-99','Silvassa',-99,(null),8),(322,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DAMAN','-99','Daman',-99,(null),9),(323,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DIU','-99','Diu',-99,(null),9),(324,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASOLA','-99','Asola',-99,(null),10),(325,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DELHI','-99','Delhi',-99,(null),10),(326,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ALDONA','-99','Aldona',-99,(null),11),(327,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CURCHOREM_CACORA','-99','Curchorem Cacora',-99,(null),11),(328,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADGAON','-99','Madgaon',-99,(null),11),(329,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAPUSA','-99','Mapusa',-99,(null),11),(330,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MARGAO','-99','Margao',-99,(null),11),(331,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MARMAGAO','-99','Marmagao',-99,(null),11),(332,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANAJI','-99','Panaji',-99,(null),11),(333,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AHMEDABAD','-99','Ahmedabad',-99,(null),12),(334,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMRELI','-99','Amreli',-99,(null),12),(335,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANAND','-99','Anand',-99,(null),12),(336,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANKLESHWAR','-99','Ankleshwar',-99,(null),12),(337,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHARUCH','-99','Bharuch',-99,(null),12),(338,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHAVNAGAR','-99','Bhavnagar',-99,(null),12),(339,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHUJ','-99','Bhuj',-99,(null),12),(340,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CAMBAY','-99','Cambay',-99,(null),12),(341,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DAHOD','-99','Dahod',-99,(null),12),(342,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DEESA','-99','Deesa',-99,(null),12),(343,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHARAMPUR','-99','Dharampur',-99,(null),14),(344,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHOLKA','-99','Dholka',-99,(null),12),(345,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GANDHINAGAR','-99','Gandhinagar',-99,(null),12),(346,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GODHRA','-99','Godhra',-99,(null),12),(347,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HIMATNAGAR','-99','Himatnagar',-99,(null),12),(348,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','IDAR','-99','Idar',-99,(null),12),(349,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAMNAGAR','-99','Jamnagar',-99,(null),12),(350,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JUNAGADH','-99','Junagadh',-99,(null),12),(351,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KADI','-99','Kadi',-99,(null),12),(352,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALAVAD','-99','Kalavad',-99,(null),12),(353,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALOL','-99','Kalol',-99,(null),12),(354,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAPADVANJ','-99','Kapadvanj',-99,(null),12),(355,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARJAN','-99','Karjan',-99,(null),12),(356,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KESHOD','-99','Keshod',-99,(null),12),(357,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHAMBHALIA','-99','Khambhalia',-99,(null),12),(358,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHAMBHAT','-99','Khambhat',-99,(null),12),(359,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHEDA','-99','Kheda',-99,(null),12),(360,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHEDBRAHMA','-99','Khedbrahma',-99,(null),12),(361,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHERALU','-99','Kheralu',-99,(null),12),(362,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KODINAR','-99','Kodinar',-99,(null),12),(363,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LATHI','-99','Lathi',-99,(null),12),(364,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LIMBDI','-99','Limbdi',-99,(null),12),(365,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LUNAWADA','-99','Lunawada',-99,(null),12),(366,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHESANA','-99','Mahesana',-99,(null),12),(367,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHUVA','-99','Mahuva',-99,(null),12),(368,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANAVADAR','-99','Manavadar',-99,(null),12),(369,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDVI','-99','Mandvi',-99,(null),12),(370,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GJ-MANGROL','-99','Mangrol',-99,(null),12),(371,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GJ-MANSA','-99','Mansa',-99,(null),12),(372,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MEHMEDABAD','-99','Mehmedabad',-99,(null),12),(373,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MODASA','-99','Modasa',-99,(null),12),(374,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MORVI','-99','Morvi',-99,(null),12),(375,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NADIAD','-99','Nadiad',-99,(null),12),(376,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAVSARI','-99','Navsari',-99,(null),12),(377,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PADRA','-99','Padra',-99,(null),12),(378,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALANPUR','-99','Palanpur',-99,(null),12),(379,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALITANA','-99','Palitana',-99,(null),12),(380,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARDI','-99','Pardi',-99,(null),12),(381,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATAN','-99','Patan',-99,(null),12),(382,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PETLAD','-99','Petlad',-99,(null),12),(383,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PORBANDAR','-99','Porbandar',-99,(null),12),(384,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RADHANPUR','-99','Radhanpur',-99,(null),12),(385,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJKOT','-99','Rajkot',-99,(null),12),(386,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJPIPLA','-99','Rajpipla',-99,(null),12),(387,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJULA','-99','Rajula',-99,(null),12),(388,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RANAVAV','-99','Ranavav',-99,(null),12),(389,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAPAR','-99','Rapar',-99,(null),12),(390,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SALAYA','-99','Salaya',-99,(null),12),(391,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANAND','-99','Sanand',-99,(null),12),(392,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAVARKUNDLA','-99','Savarkundla',-99,(null),12),(393,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIDHPUR','-99','Sidhpur',-99,(null),12),(394,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIHOR','-99','Sihor',-99,(null),12),(395,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SONGADH','-99','Songadh',-99,(null),12),(396,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SURAT','-99','Surat',-99,(null),12),(397,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALAJA','-99','Talaja',-99,(null),12),(398,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THANGADH','-99','Thangadh',-99,(null),12),(399,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THARAD','-99','Tharad',-99,(null),12),(400,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMBERGAON','-99','Umbergaon',-99,(null),12),(401,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMRETH','-99','Umreth',-99,(null),12),(402,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UNA','-99','Una',-99,(null),12),(403,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UNJHA','-99','Unjha',-99,(null),12),(404,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UPLETA','-99','Upleta',-99,(null),12),(405,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VADNAGAR','-99','Vadnagar',-99,(null),12),(406,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VADODARA','-99','Vadodara',-99,(null),12),(407,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VALSAD','-99','Valsad',-99,(null),12),(408,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VAPI','-99','Vapi',-99,(null),12),(410,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VERAVAL','-99','Veraval',-99,(null),12),(411,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIJAPUR','-99','Vijapur',-99,(null),12),(412,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIRAMGAM','-99','Viramgam',-99,(null),12),(413,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VISNAGAR','-99','Visnagar',-99,(null),12),(414,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VYARA','-99','Vyara',-99,(null),12),(415,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WADHWAN','-99','Wadhwan',-99,(null),12),(416,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WANKANER','-99','Wankaner',-99,(null),12),(417,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ADALAJ','-99','Adalaj',-99,(null),12),(418,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ADITYANA','-99','Adityana',-99,(null),12),(419,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ALANG','-99','Alang',-99,(null),12),(420,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMBAJI','-99','Ambaji',-99,(null),12),(421,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMBALIYASAN','-99','Ambaliyasan',-99,(null),12),(422,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANDADA','-99','Andada',-99,(null),12),(423,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANJAR','-99','Anjar',-99,(null),12),(424,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANKLAV','-99','Anklav',-99,(null),12),(425,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANTALIYA','-99','Antaliya',-99,(null),12),(426,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARAMBHADA','-99','Arambhada',-99,(null),12),(427,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ATUL','-99','Atul',-99,(null),12),(428,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALLABHGARH','-99','Ballabhgarh',-99,(null),13),(429,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMBALA','-99','Ambala',-99,(null),13),(431,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASANKHURD','-99','Asankhurd',-99,(null),13),(432,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASSANDH','-99','Assandh',-99,(null),13),(433,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ATELI','-99','Ateli',-99,(null),13),(434,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BABIYAL','-99','Babiyal',-99,(null),13),(435,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BAHADURGARH','-99','Bahadurgarh',-99,(null),13),(436,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARWALA','-99','Barwala',-99,(null),13),(437,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHIWANI','-99','Bhiwani',-99,(null),13),(438,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHARKHI_DADRI','-99','Charkhi Dadri',-99,(null),13),(439,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHEEKA','-99','Cheeka',-99,(null),13),(440,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ELLENABAD_2','-99','Ellenabad 2',-99,(null),13),(441,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','FARIDABAD','-99','Faridabad',-99,(null),13),(442,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HR-FATEHABAD','-99','Fatehabad',-99,(null),13),(443,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GANAUR','-99','Ganaur',-99,(null),13),(444,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GHARAUNDA','-99','Gharaunda',-99,(null),13),(445,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GOHANA','-99','Gohana',-99,(null),13),(446,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GURGAON','-99','Gurgaon',-99,(null),13),(447,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HAIBAT(YAMUNA_NAGAR)','-99','Haibat(Yamuna Nagar)',-99,(null),13),(448,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HANSI','-99','Hansi',-99,(null),13),(449,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HISAR','-99','Hisar',-99,(null),13),(450,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HODAL','-99','Hodal',-99,(null),13),(451,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JHAJJAR','-99','Jhajjar',-99,(null),13),(452,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JIND','-99','Jind',-99,(null),13),(453,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAITHAL','-99','Kaithal',-99,(null),13),(454,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALAN_WALI','-99','Kalan Wali',-99,(null),13),(455,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALKA','-99','Kalka',-99,(null),13),(456,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARNAL','-99','Karnal',-99,(null),13),(457,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LADWA','-99','Ladwa',-99,(null),13),(458,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HR-MAHENDRAGARH','-99','Mahendragarh',-99,(null),13),(459,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDI_DABWALI','-99','Mandi Dabwali',-99,(null),13),(460,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARNAUL','-99','Narnaul',-99,(null),13),(461,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARWANA','-99','Narwana',-99,(null),13),(462,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALWAL','-99','Palwal',-99,(null),13),(463,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANCHKULA','-99','Panchkula',-99,(null),13),(464,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANIPAT','-99','Panipat',-99,(null),13),(465,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PEHOWA','-99','Pehowa',-99,(null),13),(466,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PINJORE','-99','Pinjore',-99,(null),13),(467,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RANIA','-99','Rania',-99,(null),13),(468,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RATIA','-99','Ratia',-99,(null),13),(469,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','REWARI','-99','Rewari',-99,(null),13),(470,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ROHTAK','-99','Rohtak',-99,(null),13),(471,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAFIDON','-99','Safidon',-99,(null),13),(472,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAMALKHA','-99','Samalkha',-99,(null),13),(473,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHBAD','-99','Shahbad',-99,(null),13),(474,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIRSA','-99','Sirsa',-99,(null),13),(475,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOHNA','-99','Sohna',-99,(null),13),(476,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SONIPAT','-99','Sonipat',-99,(null),13),(477,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TARAORI','-99','Taraori',-99,(null),13),(478,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THANESAR','-99','Thanesar',-99,(null),13),(479,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TOHANA','-99','Tohana',-99,(null),13),(480,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YAMUNANAGAR','-99','Yamunanagar',-99,(null),13),(481,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARKI','-99','Arki',-99,(null),14),(482,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BADDI','-99','Baddi',-99,(null),14),(483,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HP-BILASPUR','-99','Bilaspur',-99,(null),14),(484,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HP-CHAMBA','-99','Chamba',-99,(null),14),(485,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DALHOUSIE','-99','Dalhousie',-99,(null),14),(486,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHARAMSALA','-99','Dharamsala',-99,(null),14),(487,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HP-HAMIRPUR','-99','Hamirpur',-99,(null),14),(488,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDI','-99','Mandi',-99,(null),14),(489,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAHAN','-99','Nahan',-99,(null),14),(490,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIMLA','-99','Shimla',-99,(null),14),(491,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOLAN','-99','Solan',-99,(null),14),(492,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUNDARNAGAR','-99','Sundarnagar',-99,(null),14),(493,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAMMU','-99','Jammu',-99,(null),15),(494,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ACHABBAL','-99','Achabbal',-99,(null),15),(495,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AKHNOOR','-99','Akhnoor',-99,(null),15),(496,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANANTNAG','-99','Anantnag',-99,(null),15),(497,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARNIA','-99','Arnia',-99,(null),15),(498,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AWANTIPORA','-99','Awantipora',-99,(null),15),(499,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BANDIPORE','-99','Bandipore',-99,(null),15),(500,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARAMULA','-99','Baramula',-99,(null),15),(501,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KATHUA','-99','Kathua',-99,(null),15),(502,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LEH','-99','Leh',-99,(null),15),(503,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PUNCH','-99','Punch',-99,(null),15),(504,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJAURI','-99','Rajauri',-99,(null),15),(505,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOPORE','-99','Sopore',-99,(null),15),(506,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SRINAGAR','-99','Srinagar',-99,(null),15),(507,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UDHAMPUR','-99','Udhampur',-99,(null),15),(508,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMLABAD','-99','Amlabad',-99,(null),16),(509,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARA','-99','Ara',-99,(null),16),(510,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARUGHUTU','-99','Barughutu',-99,(null),16),(511,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BOKARO_STEEL_CITY','-99','Bokaro Steel City',-99,(null),16),(512,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHAIBASA','-99','Chaibasa',-99,(null),16),(513,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHAKRADHARPUR','-99','Chakradharpur',-99,(null),16),(514,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHANDRAPURA','-99','Chandrapura',-99,(null),16),(515,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHATRA','-99','Chatra',-99,(null),16),(516,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHIRKUNDA','-99','Chirkunda',-99,(null),16),(517,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHURI','-99','Churi',-99,(null),16),(518,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DALTONGANJ','-99','Daltonganj',-99,(null),16),(519,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DEOGHAR','-99','Deoghar',-99,(null),16),(520,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHANBAD','-99','Dhanbad',-99,(null),16),(521,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DUMKA','-99','Dumka',-99,(null),16),(522,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GARHWA','-99','Garhwa',-99,(null),16),(523,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GHATSHILA','-99','Ghatshila',-99,(null),16),(524,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GIRIDIH','-99','Giridih',-99,(null),16),(525,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GODDA','-99','Godda',-99,(null),16),(526,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GOMOH','-99','Gomoh',-99,(null),16),(527,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GUMIA','-99','Gumia',-99,(null),16),(528,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GUMLA','-99','Gumla',-99,(null),16),(529,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HAZARIBAG','-99','Hazaribag',-99,(null),16),(530,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HUSSAINABAD','-99','Hussainabad',-99,(null),16),(531,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAMSHEDPUR','-99','Jamshedpur',-99,(null),16),(532,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAMTARA','-99','Jamtara',-99,(null),16),(533,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JHUMRI_TILAIYA','-99','Jhumri Tilaiya',-99,(null),16),(534,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHUNTI','-99','Khunti',-99,(null),16),(535,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LOHARDAGA','-99','Lohardaga',-99,(null),16),(536,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADHUPUR','-99','Madhupur',-99,(null),16),(537,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MIHIJAM','-99','Mihijam',-99,(null),16),(538,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUSABANI','-99','Musabani',-99,(null),16),(539,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAKAUR','-99','Pakaur',-99,(null),16),(540,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATRATU','-99','Patratu',-99,(null),16),(541,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHUSRO','-99','Phusro',-99,(null),16),(542,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JH-RAMNGARH','-99','Ramngarh',-99,(null),16),(543,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RANCHI','-99','Ranchi',-99,(null),16),(544,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAHIBGANJ','-99','Sahibganj',-99,(null),16),(545,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAUNDA','-99','Saunda',-99,(null),16),(546,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIMDEGA','-99','Simdega',-99,(null),16),(547,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TENU_DAM_CUM_KATHHARA','-99','Tenu Dam-cum- Kathhara',-99,(null),16),(548,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARASIKERE','-99','Arasikere',-99,(null),17),(549,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BANGALORE','-99','Bangalore',-99,(null),17),(550,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BELGAUM','-99','Belgaum',-99,(null),17),(551,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BELLARY','-99','Bellary',-99,(null),17),(552,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHAMRAJNAGAR','-99','Chamrajnagar',-99,(null),17),(553,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHIKKABALLAPUR','-99','Chikkaballapur',-99,(null),17),(554,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHINTAMANI','-99','Chintamani',-99,(null),17),(555,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHITRADURGA','-99','Chitradurga',-99,(null),17),(556,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GULBARGA','-99','Gulbarga',-99,(null),17),(557,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GUNDLUPET','-99','Gundlupet',-99,(null),17),(558,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HASSAN','-99','Hassan',-99,(null),17),(559,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HOSPET','-99','Hospet',-99,(null),17),(560,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HUBLI','-99','Hubli',-99,(null),17),(561,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARKALA','-99','Karkala',-99,(null),17),(562,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARWAR','-99','Karwar',-99,(null),17),(563,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOLAR','-99','Kolar',-99,(null),17),(564,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KA-KOTA','-99','Kota',-99,(null),17),(565,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LAKSHMESHWAR','-99','Lakshmeshwar',-99,(null),17),(566,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LINGSUGUR','-99','Lingsugur',-99,(null),17),(567,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADDUR','-99','Maddur',-99,(null),17),(568,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADHUGIRI','-99','Madhugiri',-99,(null),17),(569,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MADIKERI','-99','Madikeri',-99,(null),17),(570,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAGADI','-99','Magadi',-99,(null),17),(571,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHALINGPUR','-99','Mahalingpur',-99,(null),17),(572,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALAVALLI','-99','Malavalli',-99,(null),17),(573,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALUR','-99','Malur',-99,(null),17),(574,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDYA','-99','Mandya',-99,(null),17),(575,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANGALORE','-99','Mangalore',-99,(null),17),(576,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANVI','-99','Manvi',-99,(null),17),(577,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUDALGI','-99','Mudalgi',-99,(null),17),(578,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUDBIDRI','-99','Mudbidri',-99,(null),17),(579,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUDDEBIHAL','-99','Muddebihal',-99,(null),17),(580,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUDHOL','-99','Mudhol',-99,(null),17),(581,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MULBAGAL','-99','Mulbagal',-99,(null),17),(582,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUNDARGI','-99','Mundargi',-99,(null),17),(583,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MYSORE','-99','Mysore',-99,(null),17),(584,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANJANGUD','-99','Nanjangud',-99,(null),17),(585,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAVAGADA','-99','Pavagada',-99,(null),17),(586,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KA-PUTTUR','-99','Puttur',-99,(null),17),(587,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RABKAVI_BANHATTI','-99','Rabkavi Banhatti',-99,(null),17),(588,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAICHUR','-99','Raichur',-99,(null),17),(589,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAMANAGARAM','-99','Ramanagaram',-99,(null),17),(590,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAMDURG','-99','Ramdurg',-99,(null),17),(591,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RANIBENNUR','-99','Ranibennur',-99,(null),17),(592,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ROBERTSON_PET','-99','Robertson Pet',-99,(null),17),(593,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RON','-99','Ron',-99,(null),17),(594,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SADALGI','-99','Sadalgi',-99,(null),17),(595,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KA-SAGAR','-99','Sagar',-99,(null),17),(596,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAKLESHPUR','-99','Sakleshpur',-99,(null),17),(597,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANDUR','-99','Sandur',-99,(null),17),(598,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANKESHWAR','-99','Sankeshwar',-99,(null),17),(599,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAUNDATTI_YELLAMMA','-99','Saundatti-Yellamma',-99,(null),17),(600,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAVANUR','-99','Savanur',-99,(null),17),(601,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SEDAM','-99','Sedam',-99,(null),17),(602,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHABAD','-99','Shahabad',-99,(null),17),(603,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHPUR','-99','Shahpur',-99,(null),17),(604,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIGGAON','-99','Shiggaon',-99,(null),17),(605,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIKAPUR','-99','Shikapur',-99,(null),17),(606,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIMOGA','-99','Shimoga',-99,(null),17),(607,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHORAPUR','-99','Shorapur',-99,(null),17),(608,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHRIRANGAPATTANA','-99','Shrirangapattana',-99,(null),17),(609,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIDLAGHATTA','-99','Sidlaghatta',-99,(null),17),(610,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SINDGI','-99','Sindgi',-99,(null),17),(611,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SINDHNUR','-99','Sindhnur',-99,(null),17),(612,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIRA','-99','Sira',-99,(null),17),(613,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KA-SIRSI','-99','Sirsi',-99,(null),17),(614,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIRUGUPPA','-99','Siruguppa',-99,(null),17),(615,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SRINIVASPUR','-99','Srinivaspur',-99,(null),17),(616,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALIKOTA','-99','Talikota',-99,(null),17),(617,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TARIKERE','-99','Tarikere',-99,(null),17),(618,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TEKKALAKOTA','-99','Tekkalakota',-99,(null),17),(619,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TERDAL','-99','Terdal',-99,(null),17),(620,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TIPTUR','-99','Tiptur',-99,(null),17),(621,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TUMKUR','-99','Tumkur',-99,(null),17),(622,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UDUPI','-99','Udupi',-99,(null),17),(623,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIJAYAPURA','-99','Vijayapura',-99,(null),17),(624,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WADI','-99','Wadi',-99,(null),17),(625,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YADGIR','-99','Yadgir',-99,(null),17),(626,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ADOOR','-99','Adoor',-99,(null),18),(627,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AKATHIYOOR','-99','Akathiyoor',-99,(null),18),(628,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ALAPPUZHA','-99','Alappuzha',-99,(null),18),(629,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANCHARAKANDY','-99','Ancharakandy',-99,(null),18),(630,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AROOR','-99','Aroor',-99,(null),18),(631,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASHTAMICHIRA','-99','Ashtamichira',-99,(null),18),(632,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ATTINGAL','-99','Attingal',-99,(null),18),(633,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AVINISSERY','-99','Avinissery',-99,(null),18),(634,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHALAKUDY','-99','Chalakudy',-99,(null),18),(635,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHANGANASSERY','-99','Changanassery',-99,(null),18),(636,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHENDAMANGALAM','-99','Chendamangalam',-99,(null),18),(637,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHENGANNUR','-99','Chengannur',-99,(null),18),(638,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHERTHALA','-99','Cherthala',-99,(null),18),(639,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHERUTHAZHAM','-99','Cheruthazham',-99,(null),18),(640,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHITTUR_THATHAMANGALAM','-99','Chittur-Thathamangalam',-99,(null),18),(641,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHOCKLI','-99','Chockli',-99,(null),18),(642,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ERATTUPETTA','-99','Erattupetta',-99,(null),18),(643,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GURUVAYOOR','-99','Guruvayoor',-99,(null),18),(644,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','IRINJALAKUDA','-99','Irinjalakuda',-99,(null),18),(645,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KADIRUR','-99','Kadirur',-99,(null),18),(646,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALLIASSERI','-99','Kalliasseri',-99,(null),18),(647,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALPETTA','-99','Kalpetta',-99,(null),18),(648,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANHANGAD','-99','Kanhangad',-99,(null),18),(649,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANJIKKUZHI','-99','Kanjikkuzhi',-99,(null),18),(650,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANNUR','-99','Kannur',-99,(null),18),(651,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KASARAGOD','-99','Kasaragod',-99,(null),18),(652,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAYAMKULAM','-99','Kayamkulam',-99,(null),18),(653,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOCHI','-99','Kochi',-99,(null),18),(654,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KODUNGALLUR','-99','Kodungallur',-99,(null),18),(655,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOLLAM','-99','Kollam',-99,(null),18),(656,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOOTHUPARAMBA','-99','Koothuparamba',-99,(null),18),(657,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOTHAMANGALAM','-99','Kothamangalam',-99,(null),18),(658,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOTTAYAM','-99','Kottayam',-99,(null),18),(659,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOZHIKODE','-99','Kozhikode',-99,(null),18),(660,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KUNNAMKULAM','-99','Kunnamkulam',-99,(null),18),(661,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALAPPURAM','-99','Malappuram',-99,(null),18),(662,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MATTANNUR','-99','Mattannur',-99,(null),18),(663,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAVELIKKARA','-99','Mavelikkara',-99,(null),18),(664,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAVOOR','-99','Mavoor',-99,(null),18),(665,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUVATTUPUZHA','-99','Muvattupuzha',-99,(null),18),(666,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NEDUMANGAD','-99','Nedumangad',-99,(null),18),(667,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NEYYATTINKARA','-99','Neyyattinkara',-99,(null),18),(668,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','OTTAPPALAM','-99','Ottappalam',-99,(null),18),(669,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALAI','-99','Palai',-99,(null),18),(670,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALAKKAD','-99','Palakkad',-99,(null),18),(671,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANNIYANNUR','-99','Panniyannur',-99,(null),18),(672,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAPPINISSERI','-99','Pappinisseri',-99,(null),18),(673,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARAVOOR','-99','Paravoor',-99,(null),18),(674,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATHANAMTHITTA','-99','Pathanamthitta',-99,(null),18),(675,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAYYANNUR','-99','Payyannur',-99,(null),18),(676,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PERINGATHUR','-99','Peringathur',-99,(null),18),(677,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PERINTHALMANNA','-99','Perinthalmanna',-99,(null),18),(678,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PERUMBAVOOR','-99','Perumbavoor',-99,(null),18),(679,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PONNANI','-99','Ponnani',-99,(null),18),(680,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PUNALUR','-99','Punalur',-99,(null),18),(681,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','QUILANDY','-99','Quilandy',-99,(null),18),(682,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHORANUR','-99','Shoranur',-99,(null),18),(683,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALIPARAMBA','-99','Taliparamba',-99,(null),18),(684,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THIRUVALLA','-99','Thiruvalla',-99,(null),18),(685,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THIRUVANANTHAPURAM','-99','Thiruvananthapuram',-99,(null),18),(686,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THODUPUZHA','-99','Thodupuzha',-99,(null),18),(687,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THRISSUR','-99','Thrissur',-99,(null),18),(688,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TIRUR','-99','Tirur',-99,(null),18),(689,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VADAKARA','-99','Vadakara',-99,(null),18),(690,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VAIKOM','-99','Vaikom',-99,(null),18),(691,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VARKALA','-99','Varkala',-99,(null),18),(692,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAVARATTI','-99','Kavaratti',-99,(null),19),(693,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASHOK_NAGAR','-99','Ashok Nagar',-99,(null),20),(694,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALAGHAT','-99','Balaghat',-99,(null),20),(695,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BETUL','-99','Betul',-99,(null),20),(696,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHOPAL','-99','Bhopal',-99,(null),20),(697,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BURHANPUR','-99','Burhanpur',-99,(null),20),(698,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHHATARPUR','-99','Chhatarpur',-99,(null),20),(699,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DABRA','-99','Dabra',-99,(null),20),(700,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DATIA','-99','Datia',-99,(null),20),(701,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DEWAS','-99','Dewas',-99,(null),20),(702,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHAR','-99','Dhar',-99,(null),20),(703,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MP-FATEHABAD','-99','Fatehabad',-99,(null),20),(704,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GWALIOR','-99','Gwalior',-99,(null),20),(705,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','INDORE','-99','Indore',-99,(null),20),(706,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ITARSI','-99','Itarsi',-99,(null),20),(707,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JABALPUR','-99','Jabalpur',-99,(null),20),(708,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KATNI','-99','Katni',-99,(null),20),(709,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOTMA','-99','Kotma',-99,(null),20),(710,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LAHAR','-99','Lahar',-99,(null),20),(711,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LUNDI','-99','Lundi',-99,(null),20),(712,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHARAJPUR','-99','Maharajpur',-99,(null),20),(713,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHIDPUR','-99','Mahidpur',-99,(null),20),(714,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAIHAR','-99','Maihar',-99,(null),20),(715,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALAJKHAND','-99','Malajkhand',-99,(null),20),(716,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANASA','-99','Manasa',-99,(null),20),(717,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANAWAR','-99','Manawar',-99,(null),20),(718,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDIDEEP','-99','Mandideep',-99,(null),20),(719,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDLA','-99','Mandla',-99,(null),20),(720,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDSAUR','-99','Mandsaur',-99,(null),20),(721,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAUGANJ','-99','Mauganj',-99,(null),20),(722,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MHOW_CANTONMENT','-99','Mhow Cantonment',-99,(null),20),(723,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MHOWGAON','-99','Mhowgaon',-99,(null),20),(724,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MORENA','-99','Morena',-99,(null),20),(725,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MULTAI','-99','Multai',-99,(null),20),(726,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MURWARA','-99','Murwara',-99,(null),20),(727,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAGDA','-99','Nagda',-99,(null),20),(728,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAINPUR','-99','Nainpur',-99,(null),20),(729,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARSINGHGARH','-99','Narsinghgarh',-99,(null),20),(731,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NEEMUCH','-99','Neemuch',-99,(null),20),(732,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NEPANAGAR','-99','Nepanagar',-99,(null),20),(733,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NIWARI','-99','Niwari',-99,(null),20),(734,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NOWGONG','-99','Nowgong',-99,(null),20),(735,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NOWROZABAD','-99','Nowrozabad',-99,(null),20),(736,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PACHORE','-99','Pachore',-99,(null),20),(737,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MP-PALI','-99','Pali',-99,(null),20),(738,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANAGAR','-99','Panagar',-99,(null),20),(739,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANDHURNA','-99','Pandhurna',-99,(null),20),(740,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANNA','-99','Panna',-99,(null),20),(741,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PASAN','-99','Pasan',-99,(null),20),(742,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PIPARIYA','-99','Pipariya',-99,(null),20),(743,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PITHAMPUR','-99','Pithampur',-99,(null),20),(744,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PORSA','-99','Porsa',-99,(null),20),(745,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PRITHVIPUR','-99','Prithvipur',-99,(null),20),(746,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAGHOGARH_VIJAYPUR','-99','Raghogarh-Vijaypur',-99,(null),20),(747,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAHATGARH','-99','Rahatgarh',-99,(null),20),(748,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAISEN','-99','Raisen',-99,(null),20),(749,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJGARH','-99','Rajgarh',-99,(null),20),(750,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RATLAM','-99','Ratlam',-99,(null),20),(751,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAU','-99','Rau',-99,(null),20),(752,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','REHLI','-99','Rehli',-99,(null),20),(753,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','REWA','-99','Rewa',-99,(null),20),(754,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SABALGARH','-99','Sabalgarh',-99,(null),20),(755,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MP-SAGAR','-99','Sagar',-99,(null),20),(756,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANAWAD','-99','Sanawad',-99,(null),20),(757,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SARANGPUR','-99','Sarangpur',-99,(null),20),(758,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SARNI','-99','Sarni',-99,(null),20),(759,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SATNA','-99','Satna',-99,(null),20),(760,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAUSAR','-99','Sausar',-99,(null),20),(761,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SEHORE','-99','Sehore',-99,(null),20),(762,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SENDHWA','-99','Sendhwa',-99,(null),20),(763,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SEONI','-99','Seoni',-99,(null),20),(764,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SEONI_MALWA','-99','Seoni-Malwa',-99,(null),20),(765,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHDOL','-99','Shahdol',-99,(null),20),(766,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAJAPUR','-99','Shajapur',-99,(null),20),(767,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAMGARH','-99','Shamgarh',-99,(null),20),(768,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHEOPUR','-99','Sheopur',-99,(null),20),(769,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIVPURI','-99','Shivpuri',-99,(null),20),(770,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHUJALPUR','-99','Shujalpur',-99,(null),20),(771,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIDHI','-99','Sidhi',-99,(null),20),(772,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIHORA','-99','Sihora',-99,(null),20),(773,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SINGRAULI','-99','Singrauli',-99,(null),20),(774,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIRONJ','-99','Sironj',-99,(null),20),(775,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOHAGPUR','-99','Sohagpur',-99,(null),20),(776,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TARANA','-99','Tarana',-99,(null),20),(777,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TIKAMGARH','-99','Tikamgarh',-99,(null),20),(778,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UJHANI','-99','Ujhani',-99,(null),20),(779,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UJJAIN','-99','Ujjain',-99,(null),20),(780,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMARIA','-99','Umaria',-99,(null),20),(781,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIDISHA','-99','Vidisha',-99,(null),20),(782,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WARA_SEONI','-99','Wara Seoni',-99,(null),20),(783,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AHMEDNAGAR','-99','Ahmednagar',-99,(null),21),(784,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AKOLA','-99','Akola',-99,(null),21),(785,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMRAVATI','-99','Amravati',-99,(null),21),(786,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MH-AURANGABAD','-99','Aurangabad',-99,(null),21),(787,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARAMATI','-99','Baramati',-99,(null),21),(788,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHALISGAON','-99','Chalisgaon',-99,(null),21),(789,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHINCHANI','-99','Chinchani',-99,(null),21),(790,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DEVGARH','-99','Devgarh',-99,(null),21),(791,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHULE','-99','Dhule',-99,(null),21),(792,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DOMBIVLI','-99','Dombivli',-99,(null),21),(793,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MH-DURGAPUR','-99','Durgapur',-99,(null),21),(794,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ICHALKARANJI','-99','Ichalkaranji',-99,(null),21),(795,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JALNA','-99','Jalna',-99,(null),21),(796,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KALYAN','-99','Kalyan',-99,(null),21),(797,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LATUR','-99','Latur',-99,(null),21),(798,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LOHA','-99','Loha',-99,(null),21),(799,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LONAR','-99','Lonar',-99,(null),21),(800,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LONAVLA','-99','Lonavla',-99,(null),21),(801,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHAD','-99','Mahad',-99,(null),21),(802,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHULI','-99','Mahuli',-99,(null),21),(803,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALEGAON','-99','Malegaon',-99,(null),21),(804,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALKAPUR','-99','Malkapur',-99,(null),21),(805,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANCHAR','-99','Manchar',-99,(null),21),(806,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANGALVEDHE','-99','Mangalvedhe',-99,(null),21),(807,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANGRULPIR','-99','Mangrulpir',-99,(null),21),(808,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANJLEGAON','-99','Manjlegaon',-99,(null),21),(809,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANMAD','-99','Manmad',-99,(null),21),(810,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANWATH','-99','Manwath',-99,(null),21),(811,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MEHKAR','-99','Mehkar',-99,(null),21),(812,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MHASWAD','-99','Mhaswad',-99,(null),21),(813,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MIRAJ','-99','Miraj',-99,(null),21),(814,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MORSHI','-99','Morshi',-99,(null),21),(815,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUKHED','-99','Mukhed',-99,(null),21),(816,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUL','-99','Mul',-99,(null),21),(817,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUMBAI','-99','Mumbai',-99,(null),21),(818,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MURTIJAPUR','-99','Murtijapur',-99,(null),21),(819,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAGPUR','-99','Nagpur',-99,(null),21),(820,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NALASOPARA','-99','Nalasopara',-99,(null),21),(821,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANDED_WAGHALA','-99','Nanded-Waghala',-99,(null),21),(822,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANDGAON','-99','Nandgaon',-99,(null),21),(823,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANDURA','-99','Nandura',-99,(null),21),(824,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANDURBAR','-99','Nandurbar',-99,(null),21),(825,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARKHED','-99','Narkhed',-99,(null),21),(826,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NASHIK','-99','Nashik',-99,(null),21),(827,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAVI_MUMBAI','-99','Navi Mumbai',-99,(null),21),(828,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAWAPUR','-99','Nawapur',-99,(null),21),(829,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NILANGA','-99','Nilanga',-99,(null),21),(830,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','OSMANABAD','-99','Osmanabad',-99,(null),21),(831,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','OZAR','-99','Ozar',-99,(null),21),(832,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PACHORA','-99','Pachora',-99,(null),21),(833,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAITHAN','-99','Paithan',-99,(null),21),(834,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PALGHAR','-99','Palghar',-99,(null),21),(835,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANDHARKAODA','-99','Pandharkaoda',-99,(null),21),(836,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANDHARPUR','-99','Pandharpur',-99,(null),21),(837,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PANVEL','-99','Panvel',-99,(null),21),(838,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARBHANI','-99','Parbhani',-99,(null),21),(839,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARLI','-99','Parli',-99,(null),21),(840,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAROLA','-99','Parola',-99,(null),21),(841,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARTUR','-99','Partur',-99,(null),21),(842,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATHARDI','-99','Pathardi',-99,(null),21),(843,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATHRI','-99','Pathri',-99,(null),21),(844,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATUR','-99','Patur',-99,(null),21),(845,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PAUNI','-99','Pauni',-99,(null),21),(846,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PEN','-99','Pen',-99,(null),21),(847,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHALTAN','-99','Phaltan',-99,(null),21),(848,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PULGAON','-99','Pulgaon',-99,(null),21),(849,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PUNE','-99','Pune',-99,(null),21),(850,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PURNA','-99','Purna',-99,(null),21),(851,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PUSAD','-99','Pusad',-99,(null),21),(852,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAHURI','-99','Rahuri',-99,(null),21),(853,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJURA','-99','Rajura',-99,(null),21),(854,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAMTEK','-99','Ramtek',-99,(null),21),(855,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RATNAGIRI','-99','Ratnagiri',-99,(null),21),(856,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAVER','-99','Raver',-99,(null),21),(857,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RISOD','-99','Risod',-99,(null),21),(858,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAILU','-99','Sailu',-99,(null),21),(859,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANGAMNER','-99','Sangamner',-99,(null),21),(860,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANGLI','-99','Sangli',-99,(null),21),(861,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANGOLE','-99','Sangole',-99,(null),21),(862,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SASVAD','-99','Sasvad',-99,(null),21),(863,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SATANA','-99','Satana',-99,(null),21),(864,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SATARA','-99','Satara',-99,(null),21),(865,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAVNER','-99','Savner',-99,(null),21),(866,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAWANTWADI','-99','Sawantwadi',-99,(null),21),(867,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHADE','-99','Shahade',-99,(null),21),(868,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHEGAON','-99','Shegaon',-99,(null),21),(869,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHENDURJANA','-99','Shendurjana',-99,(null),21),(870,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIRDI','-99','Shirdi',-99,(null),21),(871,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIRPUR_WARWADE','-99','Shirpur-Warwade',-99,(null),21),(872,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHIRUR','-99','Shirur',-99,(null),21),(873,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHRIGONDA','-99','Shrigonda',-99,(null),21),(874,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHRIRAMPUR','-99','Shrirampur',-99,(null),21),(875,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SILLOD','-99','Sillod',-99,(null),21),(876,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SINNAR','-99','Sinnar',-99,(null),21),(877,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOLAPUR','-99','Solapur',-99,(null),21),(878,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOYAGAON','-99','Soyagaon',-99,(null),21),(879,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALEGAON_DABHADE','-99','Talegaon Dabhade',-99,(null),21),(880,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALODE','-99','Talode',-99,(null),21),(881,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TASGAON','-99','Tasgaon',-99,(null),21),(882,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TIRORA','-99','Tirora',-99,(null),21),(883,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TULJAPUR','-99','Tuljapur',-99,(null),21),(884,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TUMSAR','-99','Tumsar',-99,(null),21),(885,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','URAN','-99','Uran',-99,(null),21),(886,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','URAN_ISLAMPUR','-99','Uran Islampur',-99,(null),21),(887,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WADGAON_ROAD','-99','Wadgaon Road',-99,(null),21),(888,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WAI','-99','Wai',-99,(null),21),(889,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WANI','-99','Wani',-99,(null),21),(890,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WARDHA','-99','Wardha',-99,(null),21),(891,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WARORA','-99','Warora',-99,(null),21),(892,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WARUD','-99','Warud',-99,(null),21),(893,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WASHIM','-99','Washim',-99,(null),21),(894,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YEVLA','-99','Yevla',-99,(null),21),(895,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UCHGAON','-99','Uchgaon',-99,(null),21),(896,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UDGIR','-99','Udgir',-99,(null),21),(897,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMARGA','-99','Umarga',-99,(null),21),(898,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMARKHED','-99','Umarkhed',-99,(null),21),(899,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMRED','-99','Umred',-99,(null),21),(900,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VADGAON_KASBA','-99','Vadgaon Kasba',-99,(null),21),(901,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VAIJAPUR','-99','Vaijapur',-99,(null),21),(902,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VASAI','-99','Vasai',-99,(null),21),(903,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIRAR','-99','Virar',-99,(null),21),(904,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VITA','-99','Vita',-99,(null),21),(905,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YAVATMAL','-99','Yavatmal',-99,(null),21),(906,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YAWAL','-99','Yawal',-99,(null),21),(907,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','IMPHAL','-99','Imphal',-99,(null),22),(908,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAKCHING','-99','Kakching',-99,(null),22),(909,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LILONG','-99','Lilong',-99,(null),22),(910,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAYANG_IMPHAL','-99','Mayang Imphal',-99,(null),22),(911,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','THOUBAL','-99','Thoubal',-99,(null),22),(912,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JOWAI','-99','Jowai',-99,(null),23),(913,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NONGSTOIN','-99','Nongstoin',-99,(null),23),(914,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHILLONG','-99','Shillong',-99,(null),23),(915,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TURA','-99','Tura',-99,(null),23),(916,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AIZAWL','-99','Aizawl',-99,(null),24),(917,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHAMPHAI','-99','Champhai',-99,(null),24),(918,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LUNGLEI','-99','Lunglei',-99,(null),24),(919,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAIHA','-99','Saiha',-99,(null),24),(920,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DIMAPUR','-99','Dimapur',-99,(null),25),(921,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOHIMA','-99','Kohima',-99,(null),25),(922,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOKOKCHUNG','-99','Mokokchung',-99,(null),25),(923,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TUENSANG','-99','Tuensang',-99,(null),25),(924,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','WOKHA','-99','Wokha',-99,(null),25),(925,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ZUNHEBOTO','-99','Zunheboto',-99,(null),25),(950,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANANDAPUR','-99','Anandapur',-99,(null),26),(951,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ANUGUL','-99','Anugul',-99,(null),26),(952,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ASIKA','-99','Asika',-99,(null),26),(953,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALANGIR','-99','Balangir',-99,(null),26),(954,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALASORE','-99','Balasore',-99,(null),26),(955,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALESHWAR','-99','Baleshwar',-99,(null),26),(956,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BAMRA','-99','Bamra',-99,(null),26),(957,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARBIL','-99','Barbil',-99,(null),26),(958,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARGARH','-99','Bargarh',-99,(null),26),(960,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARIPADA','-99','Baripada',-99,(null),26),(961,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BASUDEBPUR','-99','Basudebpur',-99,(null),26),(962,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BELPAHAR','-99','Belpahar',-99,(null),26),(963,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHADRAK','-99','Bhadrak',-99,(null),26),(964,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHAWANIPATNA','-99','Bhawanipatna',-99,(null),26),(965,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHUBAN','-99','Bhuban',-99,(null),26),(966,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHUBANESWAR','-99','Bhubaneswar',-99,(null),26),(967,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BIRAMITRAPUR','-99','Biramitrapur',-99,(null),26),(968,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BRAHMAPUR','-99','Brahmapur',-99,(null),26),(969,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BRAJRAJNAGAR','-99','Brajrajnagar',-99,(null),26),(970,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BYASANAGAR','-99','Byasanagar',-99,(null),26),(971,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CUTTACK','-99','Cuttack',-99,(null),26),(972,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DEBAGARH','-99','Debagarh',-99,(null),26),(973,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHENKANAL','-99','Dhenkanal',-99,(null),26),(974,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GUNUPUR','-99','Gunupur',-99,(null),26),(975,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HINJILICUT','-99','Hinjilicut',-99,(null),26),(976,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAGATSINGHAPUR','-99','Jagatsinghapur',-99,(null),26),(977,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAJAPUR','-99','Jajapur',-99,(null),26),(978,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JALESWAR','-99','Jaleswar',-99,(null),26),(979,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JATANI','-99','Jatani',-99,(null),26),(980,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JEYPUR','-99','Jeypur',-99,(null),26),(981,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JHARSUGUDA','-99','Jharsuguda',-99,(null),26),(982,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JODA','-99','Joda',-99,(null),26),(983,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KANTABANJI','-99','Kantabanji',-99,(null),26),(984,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARANJIA','-99','Karanjia',-99,(null),26),(985,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KENDRAPARA','-99','Kendrapara',-99,(null),26),(986,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KENDUJHAR','-99','Kendujhar',-99,(null),26),(987,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHORDHA','-99','Khordha',-99,(null),26),(988,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KORAPUT','-99','Koraput',-99,(null),26),(989,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALKANGIRI','-99','Malkangiri',-99,(null),26),(990,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NABARANGAPUR','-99','Nabarangapur',-99,(null),26),(991,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARADIP','-99','Paradip',-99,(null),26),(992,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PARLAKHEMUNDI','-99','Parlakhemundi',-99,(null),26),(993,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATTAMUNDAI','-99','Pattamundai',-99,(null),26),(994,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHULABANI','-99','Phulabani',-99,(null),26),(995,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PURI','-99','Puri',-99,(null),26),(996,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAIRANGPUR','-99','Rairangpur',-99,(null),26),(997,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJAGANGAPUR','-99','Rajagangapur',-99,(null),26),(998,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAURKELA','-99','Raurkela',-99,(null),26),(999,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAYAGADA','-99','Rayagada',-99,(null),26),(1000,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAMBALPUR','-99','Sambalpur',-99,(null),26),(1001,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SORO','-99','Soro',-99,(null),26),(1002,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUNABEDA','-99','Sunabeda',-99,(null),26),(1003,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUNDARGARH','-99','Sundargarh',-99,(null),26),(1004,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALCHER','-99','Talcher',-99,(null),26),(1005,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TITLAGARH','-99','Titlagarh',-99,(null),26),(1006,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UMARKOTE','-99','Umarkote',-99,(null),26),(1007,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARAIKAL','-99','Karaikal',-99,(null),27),(1008,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAHE','-99','Mahe',-99,(null),27),(1009,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PONDICHERRY','-99','Pondicherry',-99,(null),27),(1010,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','YANAM','-99','Yanam',-99,(null),27),(1011,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AHMEDGARH','-99','Ahmedgarh',-99,(null),28),(1012,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AMRITSAR','-99','Amritsar',-99,(null),28),(1013,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARNALA','-99','Barnala',-99,(null),28),(1014,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BATALA','-99','Batala',-99,(null),28),(1015,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BATHINDA','-99','Bathinda',-99,(null),28),(1016,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHAGHA_PURANA','-99','Bhagha Purana',-99,(null),28),(1017,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BUDHLADA','-99','Budhlada',-99,(null),28),(1018,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PUNJAB','-99','Punjab',-99,(null),28),(1019,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DASUA','-99','Dasua',-99,(null),28),(1020,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DHURI','-99','Dhuri',-99,(null),28),(1021,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','DINANAGAR','-99','Dinanagar',-99,(null),28),(1022,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','FARIDKOT','-99','Faridkot',-99,(null),28),(1023,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','FAZILKA','-99','Fazilka',-99,(null),28),(1024,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','FIROZPUR','-99','Firozpur',-99,(null),28),(1025,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','FIROZPUR_CANTT','-99','Firozpur Cantt.',-99,(null),28),(1026,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GIDDARBAHA','-99','Giddarbaha',-99,(null),28),(1027,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GOBINDGARH','-99','Gobindgarh',-99,(null),28),(1028,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GURDASPUR','-99','Gurdaspur',-99,(null),28),(1029,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','HOSHIARPUR','-99','Hoshiarpur',-99,(null),28),(1030,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAGRAON','-99','Jagraon',-99,(null),28),(1031,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAITU','-99','Jaitu',-99,(null),28),(1032,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JALALABAD','-99','Jalalabad',-99,(null),28),(1033,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JALANDHAR','-99','Jalandhar',-99,(null),28),(1034,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JALANDHAR_CANTT','-99','Jalandhar Cantt.',-99,(null),28),(1035,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JANDIALA','-99','Jandiala',-99,(null),28),(1036,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KAPURTHALA','-99','Kapurthala',-99,(null),28),(1037,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARORAN','-99','Karoran',-99,(null),28),(1038,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KARTARPUR','-99','Kartarpur',-99,(null),28),(1039,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHANNA','-99','Khanna',-99,(null),28),(1040,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KHARAR','-99','Kharar',-99,(null),28),(1041,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KOT_KAPURA','-99','Kot Kapura',-99,(null),28),(1042,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','KURALI','-99','Kurali',-99,(null),28),(1043,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LONGOWAL','-99','Longowal',-99,(null),28),(1044,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LUDHIANA','-99','Ludhiana',-99,(null),28),(1045,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALERKOTLA','-99','Malerkotla',-99,(null),28),(1046,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALOUT','-99','Malout',-99,(null),28),(1047,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PB-MANSA','-99','Mansa',-99,(null),28),(1048,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAUR','-99','Maur',-99,(null),28),(1049,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOGA','-99','Moga',-99,(null),28),(1050,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOHALI','-99','Mohali',-99,(null),28),(1051,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MORINDA','-99','Morinda',-99,(null),28),(1052,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUKERIAN','-99','Mukerian',-99,(null),28),(1053,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MUKTSAR','-99','Muktsar',-99,(null),28),(1054,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NABHA','-99','Nabha',-99,(null),28),(1055,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAKODAR','-99','Nakodar',-99,(null),28),(1056,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NANGAL','-99','Nangal',-99,(null),28),(1057,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAWANSHAHR','-99','Nawanshahr',-99,(null),28),(1058,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATHANKOT','-99','Pathankot',-99,(null),28),(1059,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATIALA','-99','Patiala',-99,(null),28),(1060,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATRAN','-99','Patran',-99,(null),28),(1061,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PATTI','-99','Patti',-99,(null),28),(1062,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHAGWARA','-99','Phagwara',-99,(null),28),(1063,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHILLAUR','-99','Phillaur',-99,(null),28),(1064,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','QADIAN','-99','Qadian',-99,(null),28),(1065,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAIKOT','-99','Raikot',-99,(null),28),(1066,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJPURA','-99','Rajpura',-99,(null),28),(1067,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAMPURA_PHUL','-99','Rampura Phul',-99,(null),28),(1068,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RUPNAGAR','-99','Rupnagar',-99,(null),28),(1069,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAMANA','-99','Samana',-99,(null),28),(1070,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANGRUR','-99','Sangrur',-99,(null),28),(1071,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIRHIND_FATEHGARH_SAHIB','-99','Sirhind Fatehgarh Sahib',-99,(null),28),(1072,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUJANPUR','-99','Sujanpur',-99,(null),28),(1073,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUNAM','-99','Sunam',-99,(null),28),(1074,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TALWARA','-99','Talwara',-99,(null),28),(1075,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TARN_TARAN','-99','Tarn Taran',-99,(null),28),(1076,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','URMAR_TANDA','-99','Urmar Tanda',-99,(null),28),(1077,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ZIRA','-99','Zira',-99,(null),28),(1078,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ZIRAKPUR','-99','Zirakpur',-99,(null),28),(1079,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BALI','-99','Bali',-99,(null),29),(1080,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BANSWARA','-99','Banswara',-99,(null),29),(1081,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','AJMER','-99','Ajmer',-99,(null),29),(1082,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ALWAR','-99','Alwar',-99,(null),29),(1083,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BANDIKUI','-99','Bandikui',-99,(null),29),(1084,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARAN','-99','Baran',-99,(null),29),(1085,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BARMER','-99','Barmer',-99,(null),29),(1086,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BIKANER','-99','Bikaner',-99,(null),29),(1087,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-FATEHPUR','-99','Fatehpur',-99,(null),29),(1088,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAIPUR','-99','Jaipur',-99,(null),29),(1089,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JAISALMER','-99','Jaisalmer',-99,(null),29),(1090,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','JODHPUR','-99','Jodhpur',-99,(null),29),(1091,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-KOTA','-99','Kota',-99,(null),29),(1092,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LACHHMANGARH','-99','Lachhmangarh',-99,(null),29),(1093,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LADNU','-99','Ladnu',-99,(null),29),(1094,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LAKHERI','-99','Lakheri',-99,(null),29),(1095,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LALSOT','-99','Lalsot',-99,(null),29),(1096,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','LOSAL','-99','Losal',-99,(null),29),(1097,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MAKRANA','-99','Makrana',-99,(null),29),(1098,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MALPURA','-99','Malpura',-99,(null),29),(1099,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDALGARH','-99','Mandalgarh',-99,(null),29),(1100,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MANDAWA','-99','Mandawa',-99,(null),29),(1101,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-MANGROL','-99','Mangrol',-99,(null),29),(1102,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MERTA_CITY','-99','Merta City',-99,(null),29),(1103,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','MOUNT_ABU','-99','Mount Abu',-99,(null),29),(1104,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NADBAI','-99','Nadbai',-99,(null),29),(1105,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAGAR','-99','Nagar',-99,(null),29),(1106,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAGAUR','-99','Nagaur',-99,(null),29),(1107,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NARGUND','-99','Nargund',-99,(null),29),(1108,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NASIRABAD','-99','Nasirabad',-99,(null),29),(1109,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NATHDWARA','-99','Nathdwara',-99,(null),29),(1110,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAVALGUND','-99','Navalgund',-99,(null),29),(1111,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NAWALGARH','-99','Nawalgarh',-99,(null),29),(1112,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NEEM_KA_THANA','-99','Neem-Ka-Thana',-99,(null),29),(1113,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NELAMANGALA','-99','Nelamangala',-99,(null),29),(1114,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NIMBAHERA','-99','Nimbahera',-99,(null),29),(1115,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NIPANI','-99','Nipani',-99,(null),29),(1116,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NIWAI','-99','Niwai',-99,(null),29),(1117,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','NOHAR','-99','Nohar',-99,(null),29),(1118,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-NOKHA','-99','Nokha',-99,(null),29),(1119,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-PALI','-99','Pali',-99,(null),29),(1120,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHALODI','-99','Phalodi',-99,(null),29),(1121,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PHULERA','-99','Phulera',-99,(null),29),(1122,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PILANI','-99','Pilani',-99,(null),29),(1123,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PILIBANGA','-99','Pilibanga',-99,(null),29),(1124,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PINDWARA','-99','Pindwara',-99,(null),29),(1125,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PIPAR_CITY','-99','Pipar City',-99,(null),29),(1126,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','PRANTIJ','-99','Prantij',-99,(null),29),(1127,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-PRATAPGARH','-99','Pratapgarh',-99,(null),29),(1128,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAISINGHNAGAR','-99','Raisinghnagar',-99,(null),29),(1129,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJAKHERA','-99','Rajakhera',-99,(null),29),(1130,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJALDESAR','-99','Rajaldesar',-99,(null),29),(1131,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJGARH_(ALWAR)','-99','Rajgarh (Alwar)',-99,(null),29),(1132,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJGARH_(CHURU)','-99','Rajgarh (Churu)',-99,(null),29),(1133,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAJSAMAND','-99','Rajsamand',-99,(null),29),(1134,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAMGANJ_MANDI','-99','Ramganj Mandi',-99,(null),29),(1135,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-RAMNGARH','-99','Ramngarh',-99,(null),29),(1136,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RATANGARH','-99','Ratangarh',-99,(null),29),(1137,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAWATBHATA','-99','Rawatbhata',-99,(null),29),(1138,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RAWATSAR','-99','Rawatsar',-99,(null),29),(1139,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','REENGUS','-99','Reengus',-99,(null),29),(1140,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SADRI','-99','Sadri',-99,(null),29),(1141,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SADULSHAHAR','-99','Sadulshahar',-99,(null),29),(1142,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAGWARA','-99','Sagwara',-99,(null),29),(1143,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAMBHAR','-99','Sambhar',-99,(null),29),(1144,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANCHORE','-99','Sanchore',-99,(null),29),(1145,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SANGARIA','-99','Sangaria',-99,(null),29),(1146,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SARDARSHAHAR','-99','Sardarshahar',-99,(null),29),(1147,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SAWAI_MADHOPUR','-99','Sawai Madhopur',-99,(null),29),(1148,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHAHPURA','-99','Shahpura',-99,(null),29),(1150,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SHEOGANJ','-99','Sheoganj',-99,(null),29),(1151,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIKAR','-99','Sikar',-99,(null),29),(1152,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SIROHI','-99','Sirohi',-99,(null),29),(1153,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SOJAT','-99','Sojat',-99,(null),29),(1154,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SRI_MADHOPUR','-99','Sri Madhopur',-99,(null),29),(1155,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SUJANGARH','-99','Sujangarh',-99,(null),29),(1156,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-SUMERPUR','-99','Sumerpur',-99,(null),29),(1157,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','SURATGARH','-99','Suratgarh',-99,(null),29),(1158,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TARANAGAR','-99','Taranagar',-99,(null),29),(1159,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TODABHIM','-99','Todabhim',-99,(null),29),(1160,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TODARAISINGH','-99','Todaraisingh',-99,(null),29),(1161,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','TONK','-99','Tonk',-99,(null),29),(1162,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','RJ-UDAIPUR','-99','Udaipur',-99,(null),29),(1163,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','UDAIPURWATI','-99','Udaipurwati',-99,(null),29),(1164,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','VIJAINAGAR','-99','Vijainagar',-99,(null),29),(1165,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','GANGTOK','-99','Gangtok',-99,(null),30),(1166,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CALCUTTA','-99','Calcutta',-99,(null),36),(1167,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARAKKONAM','-99','Arakkonam',-99,(null),31),(1168,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARCOT','-99','Arcot',-99,(null),31),(1169,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','ARUPPUKKOTTAI','-99','Aruppukkottai',-99,(null),31),(1170,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','BHAVANI','-99','Bhavani',-99,(null),31),(1171,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHENGALPATTU','-99','Chengalpattu',-99,(null),31),(1172,'2016-04-05 18:14:21','\0',0,'2016-04-05 18:14:21','CHENNAI','-99','Chennai',-99,(null),31),(1173,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CHINNA_SALEM','-99','Chinna salem',-99,(null),31),(1174,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','COIMBATORE','-99','Coimbatore',-99,(null),31),(1175,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','COONOOR','-99','Coonoor',-99,(null),31),(1176,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CUDDALORE','-99','Cuddalore',-99,(null),31),(1177,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DHARMAPURI','-99','Dharmapuri',-99,(null),31),(1178,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DINDIGUL','-99','Dindigul',-99,(null),31),(1179,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ERODE','-99','Erode',-99,(null),31),(1180,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','GUDALUR','-99','Gudalur',-99,(null),31),(1183,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KANCHIPURAM','-99','Kanchipuram',-99,(null),31),(1184,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KARAIKUDI','-99','Karaikudi',-99,(null),31),(1185,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KARUNGAL','-99','Karungal',-99,(null),31),(1186,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KARUR','-99','Karur',-99,(null),31),(1187,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KOLLANKODU','-99','Kollankodu',-99,(null),31),(1188,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LALGUDI','-99','Lalgudi',-99,(null),31),(1189,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MADURAI','-99','Madurai',-99,(null),31),(1190,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAGAPATTINAM','-99','Nagapattinam',-99,(null),31),(1191,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAGERCOIL','-99','Nagercoil',-99,(null),31),(1192,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAMAGIRIPETTAI','-99','Namagiripettai',-99,(null),31),(1193,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAMAKKAL','-99','Namakkal',-99,(null),31),(1194,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NANDIVARAM_GUDUVANCHERI','-99','Nandivaram-Guduvancheri',-99,(null),31),(1195,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NANJIKOTTAI','-99','Nanjikottai',-99,(null),31),(1196,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NATHAM','-99','Natham',-99,(null),31),(1197,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NELLIKUPPAM','-99','Nellikuppam',-99,(null),31),(1198,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NEYVELI','-99','Neyveli',-99,(null),31),(1199,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','O_VALLEY','-99','O Valley',-99,(null),31),(1200,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ODDANCHATRAM','-99','Oddanchatram',-99,(null),31),(1201,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','P_N_PATTI','-99','P.N.Patti',-99,(null),31),(1202,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PACODE','-99','Pacode',-99,(null),31),(1203,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PADMANABHAPURAM','-99','Padmanabhapuram',-99,(null),31),(1204,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PALANI','-99','Palani',-99,(null),31),(1205,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PALLADAM','-99','Palladam',-99,(null),31),(1206,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PALLAPATTI','-99','Pallapatti',-99,(null),31),(1207,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PALLIKONDA','-99','Pallikonda',-99,(null),31),(1208,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PANAGUDI','-99','Panagudi',-99,(null),31),(1209,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PANRUTI','-99','Panruti',-99,(null),31),(1210,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PARAMAKUDI','-99','Paramakudi',-99,(null),31),(1211,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PARANGIPETTAI','-99','Parangipettai',-99,(null),31),(1212,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PATTUKKOTTAI','-99','Pattukkottai',-99,(null),31),(1213,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PERAMBALUR','-99','Perambalur',-99,(null),31),(1214,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PERAVURANI','-99','Peravurani',-99,(null),31),(1215,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PERIYAKULAM','-99','Periyakulam',-99,(null),31),(1216,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PERIYASEMUR','-99','Periyasemur',-99,(null),31),(1217,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PERNAMPATTU','-99','Pernampattu',-99,(null),31),(1218,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','POLLACHI','-99','Pollachi',-99,(null),31),(1219,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','POLUR','-99','Polur',-99,(null),31),(1220,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PONNERI','-99','Ponneri',-99,(null),31),(1221,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PUDUKKOTTAI','-99','Pudukkottai',-99,(null),31),(1222,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PUDUPATTINAM','-99','Pudupattinam',-99,(null),31),(1223,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PULIYANKUDI','-99','Puliyankudi',-99,(null),31),(1224,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PUNJAIPUGALUR','-99','Punjaipugalur',-99,(null),31),(1225,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAJAPALAYAM','-99','Rajapalayam',-99,(null),31),(1226,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAMANATHAPURAM','-99','Ramanathapuram',-99,(null),31),(1227,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAMESHWARAM','-99','Rameshwaram',-99,(null),31),(1228,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RASIPURAM','-99','Rasipuram',-99,(null),31),(1229,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SALEM','-99','Salem',-99,(null),31),(1230,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SANKARANKOIL','-99','Sankarankoil',-99,(null),31),(1231,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SANKARI','-99','Sankari',-99,(null),31),(1232,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SATHYAMANGALAM','-99','Sathyamangalam',-99,(null),31),(1233,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SATTUR','-99','Sattur',-99,(null),31),(1234,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHENKOTTAI','-99','Shenkottai',-99,(null),31),(1235,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHOLAVANDAN','-99','Sholavandan',-99,(null),31),(1236,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHOLINGUR','-99','Sholingur',-99,(null),31),(1237,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIRKALI','-99','Sirkali',-99,(null),31),(1238,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIVAGANGA','-99','Sivaganga',-99,(null),31),(1239,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIVAGIRI','-99','Sivagiri',-99,(null),31),(1240,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIVAKASI','-99','Sivakasi',-99,(null),31),(1241,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SRIVILLIPUTHUR','-99','Srivilliputhur',-99,(null),31),(1242,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SURANDAI','-99','Surandai',-99,(null),31),(1243,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SURIYAMPALAYAM','-99','Suriyampalayam',-99,(null),31),(1244,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TENKASI','-99','Tenkasi',-99,(null),31),(1245,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THAMMAMPATTI','-99','Thammampatti',-99,(null),31),(1246,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THANJAVUR','-99','Thanjavur',-99,(null),31),(1247,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THARAMANGALAM','-99','Tharamangalam',-99,(null),31),(1248,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THARANGAMBADI','-99','Tharangambadi',-99,(null),31),(1249,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THENI_ALLINAGARAM','-99','Theni Allinagaram',-99,(null),31),(1250,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUMANGALAM','-99','Thirumangalam',-99,(null),31),(1251,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUNINDRAVUR','-99','Thirunindravur',-99,(null),31),(1252,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUPARAPPU','-99','Thiruparappu',-99,(null),31),(1253,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUPUVANAM','-99','Thirupuvanam',-99,(null),31),(1254,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUTHURAIPOONDI','-99','Thiruthuraipoondi',-99,(null),31),(1255,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUVALLUR','-99','Thiruvallur',-99,(null),31),(1256,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THIRUVARUR','-99','Thiruvarur',-99,(null),31),(1257,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THOOTHUKUDI','-99','Thoothukudi',-99,(null),31),(1258,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THURAIYUR','-99','Thuraiyur',-99,(null),31),(1259,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TINDIVANAM','-99','Tindivanam',-99,(null),31),(1260,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUCHENDUR','-99','Tiruchendur',-99,(null),31),(1261,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUCHENGODE','-99','Tiruchengode',-99,(null),31),(1262,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUCHIRAPPALLI','-99','Tiruchirappalli',-99,(null),31),(1263,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUKALUKUNDRAM','-99','Tirukalukundram',-99,(null),31),(1264,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUKKOYILUR','-99','Tirukkoyilur',-99,(null),31),(1265,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUNELVELI','-99','Tirunelveli',-99,(null),31),(1266,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUPATHUR','-99','Tirupathur',-99,(null),31),(1268,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUPPUR','-99','Tiruppur',-99,(null),31),(1269,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUTTANI','-99','Tiruttani',-99,(null),31),(1270,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUVANNAMALAI','-99','Tiruvannamalai',-99,(null),31),(1271,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRUVETHIPURAM','-99','Tiruvethipuram',-99,(null),31),(1272,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TITTAKUDI','-99','Tittakudi',-99,(null),31),(1273,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UDHAGAMANDALAM','-99','Udhagamandalam',-99,(null),31),(1274,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UDUMALAIPETTAI','-99','Udumalaipettai',-99,(null),31),(1275,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UNNAMALAIKADAI','-99','Unnamalaikadai',-99,(null),31),(1276,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','USILAMPATTI','-99','Usilampatti',-99,(null),31),(1277,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UTHAMAPALAYAM','-99','Uthamapalayam',-99,(null),31),(1278,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UTHIRAMERUR','-99','Uthiramerur',-99,(null),31),(1279,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VADAKKUVALLIYUR','-99','Vadakkuvalliyur',-99,(null),31),(1280,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VADALUR','-99','Vadalur',-99,(null),31),(1281,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VADIPATTI','-99','Vadipatti',-99,(null),31),(1282,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VALPARAI','-99','Valparai',-99,(null),31),(1283,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VANDAVASI','-99','Vandavasi',-99,(null),31),(1284,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VANIYAMBADI','-99','Vaniyambadi',-99,(null),31),(1285,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VEDARANYAM','-99','Vedaranyam',-99,(null),31),(1286,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VELLAKOIL','-99','Vellakoil',-99,(null),31),(1287,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VELLORE','-99','Vellore',-99,(null),31),(1288,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VIKRAMASINGAPURAM','-99','Vikramasingapuram',-99,(null),31),(1289,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VILUPPURAM','-99','Viluppuram',-99,(null),31),(1290,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VIRUDHACHALAM','-99','Virudhachalam',-99,(null),31),(1291,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VIRUDHUNAGAR','-99','Virudhunagar',-99,(null),31),(1292,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VISWANATHAM','-99','Viswanatham',-99,(null),31),(1293,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','AGARTALA','-99','Agartala',-99,(null),33),(1294,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BADHARGHAT','-99','Badharghat',-99,(null),33),(1295,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DHARMANAGAR','-99','Dharmanagar',-99,(null),33),(1296,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','INDRANAGAR','-99','Indranagar',-99,(null),33),(1297,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JOGENDRANAGAR','-99','Jogendranagar',-99,(null),33),(1298,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KAILASAHAR','-99','Kailasahar',-99,(null),33),(1299,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KHOWAI','-99','Khowai',-99,(null),33),(1300,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TR-PRATAPGARH','-99','Pratapgarh',-99,(null),33),(1301,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TR-UDAIPUR','-99','Udaipur',-99,(null),33),(1302,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ACHHNERA','-99','Achhnera',-99,(null),34),(1303,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ADARI','-99','Adari',-99,(null),34),(1304,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','AGRA','-99','Agra',-99,(null),34),(1305,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ALIGARH','-99','Aligarh',-99,(null),34),(1306,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ALLAHABAD','-99','Allahabad',-99,(null),34),(1307,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','AMROHA','-99','Amroha',-99,(null),34),(1308,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','AZAMGARH','-99','Azamgarh',-99,(null),34),(1309,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BAHRAICH','-99','Bahraich',-99,(null),34),(1310,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BALLIA','-99','Ballia',-99,(null),34),(1311,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BALRAMPUR','-99','Balrampur',-99,(null),34),(1312,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BANDA','-99','Banda',-99,(null),34),(1313,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BAREILLY','-99','Bareilly',-99,(null),34),(1314,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CHANDAUSI','-99','Chandausi',-99,(null),34),(1315,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DADRI','-99','Dadri',-99,(null),34),(1316,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DEORIA','-99','Deoria',-99,(null),34),(1317,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ETAWAH','-99','Etawah',-99,(null),34),(1318,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-FATEHABAD','-99','Fatehabad',-99,(null),34),(1319,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-FATEHPUR','-99','Fatehpur',-99,(null),34),(1321,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','GREATER_NOIDA','-99','Greater Noida',-99,(null),34),(1322,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-HAMIRPUR','-99','Hamirpur',-99,(null),34),(1323,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','HARDOI','-99','Hardoi',-99,(null),34),(1324,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JAJMAU','-99','Jajmau',-99,(null),34),(1325,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JAUNPUR','-99','Jaunpur',-99,(null),34),(1326,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JHANSI','-99','Jhansi',-99,(null),34),(1327,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KALPI','-99','Kalpi',-99,(null),34),(1328,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KANPUR','-99','Kanpur',-99,(null),34),(1329,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-KOTA','-99','Kota',-99,(null),34),(1330,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LAHARPUR','-99','Laharpur',-99,(null),34),(1331,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LAKHIMPUR','-99','Lakhimpur',-99,(null),34),(1332,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LAL_GOPALGANJ_NINDAURA','-99','Lal Gopalganj Nindaura',-99,(null),34),(1333,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-LALGANJ','-99','Lalganj',-99,(null),34),(1334,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LALITPUR','-99','Lalitpur',-99,(null),34),(1335,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LAR','-99','Lar',-99,(null),34),(1336,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LONI','-99','Loni',-99,(null),34),(1337,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','LUCKNOW','-99','Lucknow',-99,(null),34),(1338,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MATHURA','-99','Mathura',-99,(null),34),(1339,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MEERUT','-99','Meerut',-99,(null),34),(1340,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MODINAGAR','-99','Modinagar',-99,(null),34),(1341,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MURADNAGAR','-99','Muradnagar',-99,(null),34),(1342,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAGINA','-99','Nagina',-99,(null),34),(1343,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAJIBABAD','-99','Najibabad',-99,(null),34),(1344,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAKUR','-99','Nakur',-99,(null),34),(1345,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NANPARA','-99','Nanpara',-99,(null),34),(1346,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NARAURA','-99','Naraura',-99,(null),34),(1347,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAUGAWAN_SADAT','-99','Naugawan Sadat',-99,(null),34),(1348,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAUTANWA','-99','Nautanwa',-99,(null),34),(1349,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAWABGANJ','-99','Nawabganj',-99,(null),34),(1350,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NEHTAUR','-99','Nehtaur',-99,(null),34),(1351,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NOIDA','-99','NOIDA',-99,(null),34),(1352,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NOORPUR','-99','Noorpur',-99,(null),34),(1353,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','OBRA','-99','Obra',-99,(null),34),(1354,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ORAI','-99','Orai',-99,(null),34),(1355,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PADRAUNA','-99','Padrauna',-99,(null),34),(1356,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PALIA_KALAN','-99','Palia Kalan',-99,(null),34),(1357,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PARASI','-99','Parasi',-99,(null),34),(1358,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PHULPUR','-99','Phulpur',-99,(null),34),(1359,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PIHANI','-99','Pihani',-99,(null),34),(1360,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PILIBHIT','-99','Pilibhit',-99,(null),34),(1361,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PILKHUWA','-99','Pilkhuwa',-99,(null),34),(1362,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','POWAYAN','-99','Powayan',-99,(null),34),(1363,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PUKHRAYAN','-99','Pukhrayan',-99,(null),34),(1364,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PURANPUR','-99','Puranpur',-99,(null),34),(1365,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PURQUAZI','-99','Purquazi',-99,(null),34),(1366,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PURWA','-99','Purwa',-99,(null),34),(1367,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAE_BARELI','-99','Rae Bareli',-99,(null),34),(1368,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAMPUR','-99','Rampur',-99,(null),34),(1369,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAMPUR_MANIHARAN','-99','Rampur Maniharan',-99,(null),34),(1370,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RASRA','-99','Rasra',-99,(null),34),(1371,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RATH','-99','Rath',-99,(null),34),(1372,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RENUKOOT','-99','Renukoot',-99,(null),34),(1373,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','REOTI','-99','Reoti',-99,(null),34),(1374,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ROBERTSGANJ','-99','Robertsganj',-99,(null),34),(1375,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RUDAULI','-99','Rudauli',-99,(null),34),(1376,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-RUDRAPUR','-99','Rudrapur',-99,(null),34),(1377,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SADABAD','-99','Sadabad',-99,(null),34),(1378,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAFIPUR','-99','Safipur',-99,(null),34),(1379,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAHARANPUR','-99','Saharanpur',-99,(null),34),(1380,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAHASPUR','-99','Sahaspur',-99,(null),34),(1381,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAHASWAN','-99','Sahaswan',-99,(null),34),(1382,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAHAWAR','-99','Sahawar',-99,(null),34),(1383,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAHJANWA','-99','Sahjanwa',-99,(null),34),(1384,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAIDPUR_GHAZIPUR','-99','Saidpur, Ghazipur',-99,(null),34),(1385,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAMBHAL','-99','Sambhal',-99,(null),34),(1386,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAMDHAN','-99','Samdhan',-99,(null),34),(1387,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAMTHAR','-99','Samthar',-99,(null),34),(1388,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SANDI','-99','Sandi',-99,(null),34),(1389,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SANDILA','-99','Sandila',-99,(null),34),(1390,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SARDHANA','-99','Sardhana',-99,(null),34),(1391,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SEOHARA','-99','Seohara',-99,(null),34),(1392,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAHABAD_HARDOI','-99','Shahabad, Hardoi',-99,(null),34),(1393,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAHABAD_RAMPUR','-99','Shahabad, Rampur',-99,(null),34),(1394,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAHGANJ','-99','Shahganj',-99,(null),34),(1395,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAHJAHANPUR','-99','Shahjahanpur',-99,(null),34),(1396,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAMLI','-99','Shamli',-99,(null),34),(1397,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAMSABAD_AGRA','-99','Shamsabad, Agra',-99,(null),34),(1398,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHAMSABAD_FARRUKHABAD','-99','Shamsabad, Farrukhabad',-99,(null),34),(1399,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHERKOT','-99','Sherkot',-99,(null),34),(1400,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHIKARPUR_BULANDSHAHR','-99','Shikarpur, Bulandshahr',-99,(null),34),(1401,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHIKOHABAD','-99','Shikohabad',-99,(null),34),(1402,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SHISHGARH','-99','Shishgarh',-99,(null),34),(1403,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIANA','-99','Siana',-99,(null),34),(1404,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIKANDERPUR','-99','Sikanderpur',-99,(null),34),(1405,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIKANDRA_RAO','-99','Sikandra Rao',-99,(null),34),(1406,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIKANDRABAD','-99','Sikandrabad',-99,(null),34),(1407,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SIRSAGANJ','-99','Sirsaganj',-99,(null),34),(1408,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-SIRSI','-99','Sirsi',-99,(null),34),(1409,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SITAPUR','-99','Sitapur',-99,(null),34),(1410,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SORON','-99','Soron',-99,(null),34),(1411,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SUAR','-99','Suar',-99,(null),34),(1412,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SULTANPUR','-99','Sultanpur',-99,(null),34),(1413,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UP-SUMERPUR','-99','Sumerpur',-99,(null),34),(1414,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TANDA','-99','Tanda',-99,(null),34),(1416,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TETRI_BAZAR','-99','Tetri Bazar',-99,(null),34),(1417,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THAKURDWARA','-99','Thakurdwara',-99,(null),34),(1418,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','THANA_BHAWAN','-99','Thana Bhawan',-99,(null),34),(1419,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TILHAR','-99','Tilhar',-99,(null),34),(1420,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TIRWAGANJ','-99','Tirwaganj',-99,(null),34),(1421,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TULSIPUR','-99','Tulsipur',-99,(null),34),(1422,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TUNDLA','-99','Tundla',-99,(null),34),(1423,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UNNAO','-99','Unnao',-99,(null),34),(1424,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UTRAULA','-99','Utraula',-99,(null),34),(1425,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VARANASI','-99','Varanasi',-99,(null),34),(1426,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','VRINDAVAN','-99','Vrindavan',-99,(null),34),(1427,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','WARHAPUR','-99','Warhapur',-99,(null),34),(1428,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ZAIDPUR','-99','Zaidpur',-99,(null),34),(1429,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ZAMANIA','-99','Zamania',-99,(null),34),(1430,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ALMORA','-99','Almora',-99,(null),35),(1431,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BAZPUR','-99','Bazpur',-99,(null),35),(1432,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UT-CHAMBA','-99','Chamba',-99,(null),35),(1433,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DEHRADUN','-99','Dehradun',-99,(null),35),(1434,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','HALDWANI','-99','Haldwani',-99,(null),35),(1435,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','HARIDWAR','-99','Haridwar',-99,(null),35),(1436,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JASPUR','-99','Jaspur',-99,(null),35),(1437,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KASHIPUR','-99','Kashipur',-99,(null),35),(1438,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KICHHA','-99','kichha',-99,(null),35),(1439,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KOTDWARA','-99','Kotdwara',-99,(null),35),(1440,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MANGLAUR','-99','Manglaur',-99,(null),35),(1441,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MUSSOORIE','-99','Mussoorie',-99,(null),35),(1442,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAGLA','-99','Nagla',-99,(null),35),(1443,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAINITAL','-99','Nainital',-99,(null),35),(1444,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PAURI','-99','Pauri',-99,(null),35),(1445,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PITHORAGARH','-99','Pithoragarh',-99,(null),35),(1446,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UT-RAMNAGAR','-99','Ramnagar',-99,(null),35),(1447,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RISHIKESH','-99','Rishikesh',-99,(null),35),(1448,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ROORKEE','-99','Roorkee',-99,(null),35),(1449,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','UT-RUDRAPUR','-99','Rudrapur',-99,(null),35),(1450,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SITARGANJ','-99','Sitarganj',-99,(null),35),(1451,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TEHRI','-99','Tehri',-99,(null),35),(1452,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MUZAFFARNAGAR','-99','Muzaffarnagar',-99,(null),34),(1453,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ADRA_PURULIA','-99','Adra, Purulia',-99,(null),36),(1454,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ALIPURDUAR','-99','Alipurduar',-99,(null),36),(1455,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ARAMBAGH','-99','Arambagh',-99,(null),36),(1456,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ASANSOL','-99','Asansol',-99,(null),36),(1457,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BAHARAMPUR','-99','Baharampur',-99,(null),36),(1458,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BALLY','-99','Bally',-99,(null),36),(1459,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BALURGHAT','-99','Balurghat',-99,(null),36),(1460,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BANKURA','-99','Bankura',-99,(null),36),(1461,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BARAKAR','-99','Barakar',-99,(null),36),(1462,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BARASAT','-99','Barasat',-99,(null),36),(1463,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BARDHAMAN','-99','Bardhaman',-99,(null),36),(1464,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','BIDHAN_NAGAR','-99','Bidhan Nagar',-99,(null),36),(1465,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CHINSURA','-99','Chinsura',-99,(null),36),(1466,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CONTAI','-99','Contai',-99,(null),36),(1467,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','COOCH_BEHAR','-99','Cooch Behar',-99,(null),36),(1468,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DARJEELING','-99','Darjeeling',-99,(null),36),(1469,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','WB-DURGAPUR','-99','Durgapur',-99,(null),36),(1470,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','HALDIA','-99','Haldia',-99,(null),36),(1471,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','HOWRAH','-99','Howrah',-99,(null),36),(1472,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','WB-ISLAMPUR','-99','Islampur',-99,(null),36),(1473,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JHARGRAM','-99','Jhargram',-99,(null),36),(1474,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','WB-KHARAGPUR','-99','Kharagpur',-99,(null),36),(1475,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','KOLKATA','-99','Kolkata',-99,(null),36),(1476,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MAINAGURI','-99','Mainaguri',-99,(null),36),(1477,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MAL','-99','Mal',-99,(null),36),(1478,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MATHABHANGA','-99','Mathabhanga',-99,(null),36),(1479,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MEDINIPUR','-99','Medinipur',-99,(null),36),(1480,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MEMARI','-99','Memari',-99,(null),36),(1481,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MONOHARPUR','-99','Monoharpur',-99,(null),36),(1482,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','MURSHIDABAD','-99','Murshidabad',-99,(null),36),(1483,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NABADWIP','-99','Nabadwip',-99,(null),36),(1484,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','NAIHATI','-99','Naihati',-99,(null),36),(1485,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PANCHLA','-99','Panchla',-99,(null),36),(1486,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PANDUA','-99','Pandua',-99,(null),36),(1487,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PASCHIM_PUNROPARA','-99','Paschim Punropara',-99,(null),36),(1488,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','PURULIA','-99','Purulia',-99,(null),36),(1489,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAGHUNATHPUR','-99','Raghunathpur',-99,(null),36),(1490,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAIGANJ','-99','Raiganj',-99,(null),36),(1491,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RAMPURHAT','-99','Rampurhat',-99,(null),36),(1492,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','RANAGHAT','-99','Ranaghat',-99,(null),36),(1493,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SAINTHIA','-99','Sainthia',-99,(null),36),(1494,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SANTIPUR','-99','Santipur',-99,(null),36),(1495,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SILIGURI','-99','Siliguri',-99,(null),36),(1496,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SONAMUKHI','-99','Sonamukhi',-99,(null),36),(1497,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SRIRAMPORE','-99','Srirampore',-99,(null),36),(1498,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','SURI','-99','Suri',-99,(null),36),(1499,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TAKI','-99','Taki',-99,(null),36),(1500,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TAMLUK','-99','Tamluk',-99,(null),36),(1501,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','TARAKESWAR','','Tarakeswar',-99,-99,36),(1502,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CHIKMAGALUR','','Chikmagalur',-99,-99,17),(1503,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DAVANAGERE','','Davanagere',-99,-99,17),(1504,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','DHARWAD','','Dharwad',-99,-99,17),(1505,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','GADAG','','Gadag',-99,-99,17);

/*Table structure for table `country_master` */

drop table if exists `country_master`;

CREATE TABLE `country_master` (
  `country_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `country_code` varchar(255) NOT NULL,
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
  CONSTRAINT `FK8tiubpjw6wxxw6gqi9pa8xi7e` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKnqwslcrhnh5aeo4hjyl4fs6fk` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `country_master` */

insert into `country_master` values (1,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','IN','',356,'IND',356,'India',-99,-99);

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
  CONSTRAINT `FK3n3vccstyxg5eckhpia954q42` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK7uf1nog5qtg47853xibf4hl6s` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
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
  `currency_code` varchar(255) NOT NULL,
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
  CONSTRAINT `FK6c23ldweyo6gsc2oeqx62h6bn` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKfixkbbw48skffe9tf72rbvhiv` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `currency_master` */

insert into `currency_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','USD','US$',2,'','US',1,'Dollars',-99,-99),(2,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','EUR','€',2,'','FR',1,'Euro',-99,-99),(3,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','INR','Rs',2,'','IN',1,'Rupees',-99,-99);

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
  CONSTRAINT `FKffa4a89hvon9o5bqxgyixxoy4` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKp9fvm2l23kr74hqouqb3ymm6h` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
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
  `locale_code` varchar(255) NOT NULL,
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

insert into `locale_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','US','','en','en_US','English (United States)',-99,-99),(2,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','JP','','ja','ja_JP','Japanese (Japan)',-99,-99),(3,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','FR','','fr','fr_FR','French (France)',-99,-99);

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
  CONSTRAINT `FK4l028rfvhpas5pbawtfhvx6uj` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK5ds52cnxjw9c99ovccne0axk0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
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
  CONSTRAINT `FK20m958i30ouo7gy3ck0pn8m3l` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FK8ni8ibwqub3onr2ske9dbul7c` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa5cn8enghp7mpu9cb81i6dris` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKojf5alvt8fls7toem82bgkem9` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
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
  UNIQUE KEY `UK_126ow2y7dawpr4f0941nklho5` (`email`),
  KEY `FK1jywebg47fjoldsiwjl10hp6m` (`created_by`),
  KEY `FKqbl5qjb9i0iwnhqygndmylg6o` (`updated_by`),
  KEY `FKghoxu6nfy43d9jtenfspdyf6x` (`address_id`),
  CONSTRAINT `FK1jywebg47fjoldsiwjl10hp6m` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKghoxu6nfy43d9jtenfspdyf6x` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKqbl5qjb9i0iwnhqygndmylg6o` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `party` */

insert into `party` values ('O',-99,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','system@rsinc.com','RS Inc.','http://www.rsinc.in','','','','','',(null),'','','',(null),(null),(null));

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
  KEY `FKc3n7hxb7k9r710ybarimdubbb` (`payment_gateway_id`),
  CONSTRAINT `FK6b0nsdjjc7log0i74wrfp2coo` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `FKc3n7hxb7k9r710ybarimdubbb` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateway_master` (`payment_gateway_id`),
  CONSTRAINT `FKgbs5lh59ppbadqjobchtx16ka` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKhkjvcasylhrmn2nl66m26gdm8` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `payment_gateway_master` */

drop table if exists `payment_gateway_master`;

CREATE TABLE `payment_gateway_master` (
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
  UNIQUE KEY `UK_fkvnw92s7dnqdpfnli0yyc9dm` (`address_id`),
  KEY `FKqgas69u4jt5hh5dm4ow59jpe1` (`created_by`),
  KEY `FKpl38aqowc9d5d3d279rwqesx5` (`updated_by`),
  CONSTRAINT `FKd6l0hihc4biowyl0wmtbrwdxx` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKpl38aqowc9d5d3d279rwqesx5` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKqgas69u4jt5hh5dm4ow59jpe1` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment_gateway_master` */

insert into `payment_gateway_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','','InstaMojo Payment Gateway','https://www.instamojo.com/',-99,-99,2);

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
  CONSTRAINT `FKm487nw1d8758r379fmncojv46` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmy10wwkgtxmdglm6fix2ot3t3` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `FKqj97f8e903m1q0mscrtuwjlrl` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKs8kegd95jj2v0yc2ji80jbhmy` FOREIGN KEY (`bank_id`) REFERENCES `bank_master` (`bank_id`)
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
  CONSTRAINT `FKembuy3csd35id5jfbd8wyjvti` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKh9pcrnity3ljaiy561cbcil71` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
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
  CONSTRAINT `FK5p4sd3pv7062j966p36dlkfex` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKc7ph8vjy7ecvm8vj3mbubqtx4` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKd7c9mvquksfrovswjwtge9v45` FOREIGN KEY (`reviewed_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKqvf3tuvv6rw2jvxdx6e42uokd` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_review` */

/*Table structure for table `role_master` */

drop table if exists `role_master`;

CREATE TABLE `role_master` (
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
  UNIQUE KEY `UK_ermkbsp5njhawu0uk2bmj8lks` (`role_code`),
  KEY `FKcri8s4utpnjodj8cjsb9chg32` (`created_by`),
  KEY `FK1xka0fsq9jktvku8x1w02lq24` (`updated_by`),
  CONSTRAINT `FK1xka0fsq9jktvku8x1w02lq24` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKcri8s4utpnjodj8cjsb9chg32` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_master` */

insert into `role_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','ADMINISTRATOR','','System Administrator',-99,-99),(2,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','CUSTOMER','','Customer',-99,-99);

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
  CONSTRAINT `FK600up4ldg9kwpxij5ga4oll6r` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKe3yrjxa71pc41nhoupdu64sgi` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKef5d75re2hy4runnsne2f8vxg` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKgt6od477kct1jc5yqoad8367p` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_company_master` (`shipping_company_id`),
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

insert into `shipping_company_master` values (1,'2016-04-05 18:14:22','\0',0,'2016-04-05 18:14:22','','BLUE DART EXPRESS LTD','http://www.bluedart.com/maintracking.html',-99,-99,1);

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
  `state_code` varchar(255) NOT NULL,
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

insert into `state_master` values (1,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Andaman and Nicobar Island','IN-AN',-99,-99,1),(2,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Andhra Pradesh','IN-AP',-99,-99,1),(3,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Arunachal Pradesh','IN-AR',-99,-99,1),(4,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Assam','IN-AS',-99,-99,1),(5,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Bihar','IN-BR',-99,-99,1),(6,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Chandigarh','IN-CH',-99,-99,1),(7,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Chhattisgarh','IN-CT',-99,-99,1),(8,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Dadra and Nagar Haveli','IN-DN',-99,-99,1),(9,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Daman and Diu','IN-DD',-99,-99,1),(10,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Delhi','IN-DL',-99,-99,1),(11,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Goa','IN-GA',-99,-99,1),(12,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Gujarat','IN-GJ',-99,-99,1),(13,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Haryana','IN-HR',-99,-99,1),(14,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Himachal Pradesh','IN-HP',-99,-99,1),(15,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Jammu and Kashmir','IN-JK',-99,-99,1),(16,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Jharkhand','IN-JH',-99,-99,1),(17,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Karnataka','IN-KA',-99,-99,1),(18,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Kerala','IN-KL',-99,-99,1),(19,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Lakshadweep','IN-LD',-99,-99,1),(20,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Madhya Pradesh','IN-MP',-99,-99,1),(21,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Maharashtra','IN-MH',-99,-99,1),(22,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Manipur','IN-MN',-99,-99,1),(23,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Meghalaya','IN-ML',-99,-99,1),(24,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Mizoram','IN-MZ',-99,-99,1),(25,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Nagaland','IN-NL',-99,-99,1),(26,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Odisha','IN-OR',-99,-99,1),(27,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Puducherry','IN-PY',-99,-99,1),(28,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Punjab','IN-PB',-99,-99,1),(29,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Rajasthan','IN-RJ',-99,-99,1),(30,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Sikkim','IN-SK',-99,-99,1),(31,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Tamil Nadu','IN-TN',-99,-99,1),(32,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Telangana','IN-TG',-99,-99,1),(33,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Tripura','IN-TR',-99,-99,1),(34,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Uttar Pradesh','IN-UP',-99,-99,1),(35,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','Uttarakhand','IN-UT',-99,-99,1),(36,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','','','West Bengal','IN-WB',-99,-99,1);

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
  `currency_id` bigint(20) default NULL,
  `delivery_address_id` bigint(20) default NULL,
  `locale_id` bigint(20) default NULL,
  `party_id` bigint(20) NOT NULL,
  `user_image_id` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `UK_rywod31yq6w887do21arevxf0` (`user_authentication_id`),
  UNIQUE KEY `UK_fc1o1kw2nluxu6qq7aqpb8kaq` (`party_id`),
  UNIQUE KEY `UK_r10qcb2s6ga05opkd5o7oo9dk` (`user_image_id`),
  KEY `FKtgx1nsmw2irw5u69hibdx5t8b` (`created_by`),
  KEY `FKap4v54a63igjjm8tegdgji11m` (`updated_by`),
  KEY `FKpkrcgtfyvkdf78tj7fd6medi8` (`billing_address_id`),
  KEY `FK99fipwf47jm7lfsmo2o42jgx2` (`currency_id`),
  KEY `FK8bwha8q3caxqfsiqt5sec7226` (`delivery_address_id`),
  KEY `FK45qxm8u96j4wdqwf4v92e1661` (`locale_id`),
  CONSTRAINT `FK45qxm8u96j4wdqwf4v92e1661` FOREIGN KEY (`locale_id`) REFERENCES `locale_master` (`locale_id`),
  CONSTRAINT `FK60d9wb09cwhw9jl02hivauut8` FOREIGN KEY (`user_authentication_id`) REFERENCES `user_authentication` (`user_authentication_id`),
  CONSTRAINT `FK8bwha8q3caxqfsiqt5sec7226` FOREIGN KEY (`delivery_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK99fipwf47jm7lfsmo2o42jgx2` FOREIGN KEY (`currency_id`) REFERENCES `currency_master` (`currency_id`),
  CONSTRAINT `FKap4v54a63igjjm8tegdgji11m` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKhy48iskxm55vfu0nbyp588x36` FOREIGN KEY (`user_image_id`) REFERENCES `user_image` (`user_image_id`),
  CONSTRAINT `FKpkrcgtfyvkdf78tj7fd6medi8` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FKrrymbl2hd1lq7caftf3bqwhgd` FOREIGN KEY (`party_id`) REFERENCES `party` (`party_id`),
  CONSTRAINT `FKtgx1nsmw2irw5u69hibdx5t8b` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` values (-99,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20',0,2,'\0',(null),(null),-99,(null),(null),(null),(null),-99,(null));

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

insert into `user_authentication` values (-99,'2016-04-05 18:14:20','\0',0,'2016-04-05 18:14:20','system','system@rsinc.com',(null),(null));

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
  PRIMARY KEY  (`user_image_id`),
  KEY `FK8kl9e2mg0b7np6irvgy2ahu1x` (`created_by`),
  KEY `FK5ftr8fkhnv9eaowf6wo7fr3j6` (`updated_by`),
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
  `preference_data_type` varchar(255) default NULL,
  `preference_type` varchar(255) default NULL,
  PRIMARY KEY  (`user_preference_id`),
  KEY `FK1uw8qimmjidffif7bs458cgjw` (`created_by`),
  KEY `FK113ur38ky93jfx4tvqsje0hwx` (`updated_by`),
  KEY `FKdk2lgoernfqwsmmb947osbnao` (`user_id`),
  CONSTRAINT `FK113ur38ky93jfx4tvqsje0hwx` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK1uw8qimmjidffif7bs458cgjw` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKdk2lgoernfqwsmmb947osbnao` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_preference` */

/*Table structure for table `user_role` */

drop table if exists `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKeix8tfkqxqrk90pfowx5rmini` (`role_id`),
  KEY `FKhjx9nk20h4mo745tdqj8t8n9d` (`user_id`),
  CONSTRAINT `FKeix8tfkqxqrk90pfowx5rmini` FOREIGN KEY (`role_id`) REFERENCES `role_master` (`role_id`),
  CONSTRAINT `FKhjx9nk20h4mo745tdqj8t8n9d` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
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
  `input_device_ip_address` varchar(255) NOT NULL,
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
  CONSTRAINT `FK5ihqfvvlyiy3jep0rddnbykx0` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKgedfv6hl2myqcclqy624t29th` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`)
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
  CONSTRAINT `FK74at2rcnvmuno2vpv1k6qjark` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKex9mxwjdcjvc8ges1te1ncunt` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
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
  CONSTRAINT `FK6sxkmj5la4h0tho4mvpmxeels` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKeyrs1gr2kkgnyngi5cx7j43t6` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKi23hynyeuqodnr6ne6px1s200` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKi55vmh1sjochxekwpjtq4md4h` FOREIGN KEY (`wish_list_id`) REFERENCES `wish_list` (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wish_list_item` */
