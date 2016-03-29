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
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) default NULL,
  `state` varchar(255) NOT NULL,
  `website_url` varchar(255) default NULL,
  `zip_code` varchar(255) NOT NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  PRIMARY KEY  (`address_id`),
  KEY `FKsv5dmo21p7mv80c4woffp1t1u` (`created_by`),
  KEY `FKo8ddvkhch69ylkk1a7oy0bkiu` (`updated_by`),
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
  `price` double NOT NULL,
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
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `state_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`city_id`),
  KEY `FKr16kow9h8gdn8sdtxwy0kvf4t` (`created_by`),
  KEY `FKp87ok4ab07hkc7grj0rx9xw8t` (`updated_by`),
  KEY `FK1uqoda8olxvuhk5qxk4achff6` (`state_id`),
  CONSTRAINT `FK1uqoda8olxvuhk5qxk4achff6` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`state_id`),
  CONSTRAINT `FKp87ok4ab07hkc7grj0rx9xw8t` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKr16kow9h8gdn8sdtxwy0kvf4t` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city_master` */

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
  `price` double NOT NULL,
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

/*Table structure for table `shipment` */

drop table if exists `shipment`;

CREATE TABLE `shipment` (
  `shipment_id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime NOT NULL,
  `deleted_yn` bit(1) default NULL,
  `record_version_no` int(11) default NULL,
  `updated_date` datetime NOT NULL,
  `expected_arrival_date` datetime default NULL,
  `shipment_charges` double default NULL,
  `shipment_tracking_no` int(11) default NULL,
  `shipping_date` datetime default NULL,
  `shipping_type` int(11) default NULL,
  `total_shipment_weight` double default NULL,
  `created_by` bigint(20) default NULL,
  `updated_by` bigint(20) default NULL,
  `invoice_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `shipping_address_id` bigint(20) NOT NULL,
  `shipping_company_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`shipment_id`),
  UNIQUE KEY `UK_p9yjq63uvhgudvpo0l9jx6vam` (`invoice_id`),
  UNIQUE KEY `UK_nbvrlwleg9u60pon83awjnluh` (`shipping_address_id`),
  UNIQUE KEY `UK_ddgp0moxu41kcajaaudykhyxv` (`shipping_company_id`),
  UNIQUE KEY `UK_p06cong2injx54ipykoegys3w` (`order_id`),
  KEY `FKe3yrjxa71pc41nhoupdu64sgi` (`created_by`),
  KEY `FK600up4ldg9kwpxij5ga4oll6r` (`updated_by`),
  CONSTRAINT `FKgt6od477kct1jc5yqoad8367p` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_company_master` (`shipping_company_id`),
  CONSTRAINT `FK600up4ldg9kwpxij5ga4oll6r` FOREIGN KEY (`updated_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKe3yrjxa71pc41nhoupdu64sgi` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKef5d75re2hy4runnsne2f8vxg` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`address_id`),
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
  `billing_address_id` bigint(20) NOT NULL,
  `currency_code` bigint(20) NOT NULL,
  `delivery_address_id` bigint(20) NOT NULL,
  `locale_code` bigint(20) NOT NULL,
  `party_id` bigint(20) NOT NULL,
  `user_image_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `UK_rywod31yq6w887do21arevxf0` (`user_authentication_id`),
  UNIQUE KEY `UK_ek03gt6j70l12raoyqwn1qcjk` (`billing_address_id`),
  UNIQUE KEY `UK_phtn88euiwlx2je8cgrwwykj2` (`currency_code`),
  UNIQUE KEY `UK_9anr5vhyl4xljgi0uxc6j85ul` (`delivery_address_id`),
  UNIQUE KEY `UK_1nu5a0f4iftljpg4k2lx23pxp` (`locale_code`),
  UNIQUE KEY `UK_fc1o1kw2nluxu6qq7aqpb8kaq` (`party_id`),
  UNIQUE KEY `UK_r10qcb2s6ga05opkd5o7oo9dk` (`user_image_id`),
  KEY `FKtgx1nsmw2irw5u69hibdx5t8b` (`created_by`),
  KEY `FKap4v54a63igjjm8tegdgji11m` (`updated_by`),
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
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_authentication_id`),
  UNIQUE KEY `UK_fr1f2tttqooe3goomjhebhb5a` (`user_id`),
  KEY `FKqk7ly7d6ydg01prj7cancpohg` (`created_by`),
  KEY `FKq8765o4u30slbqm3utdakkbby` (`updated_by`),
  CONSTRAINT `FK1m4aru0abohsm1ery9k7b6d4d` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
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
