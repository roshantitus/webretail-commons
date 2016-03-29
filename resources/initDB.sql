/*
SQLyog v4.06 RC1
Host - 5.0.21-community-nt : Database - webretail
*********************************************************************
Server version : 5.0.21-community-nt
*/

/*Seed data for table `country_master` */

insert country_master 
(`country_id`,`country_code`, `name`, `description`, `eu_numeric_code`, `iso3_code`,`iso_numeric_code`,`created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(1, 'IN', 'India', null, 356, 'IND', 356, null, null, NOW(), 0, 0, NOW());


/*Seed data for table `country_master` */

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(1, 'Andaman and Nicobar Island', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(2, 'Andhra Pradesh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(3, 'Arunachal Pradesh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(4, 'Assam', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(5, 'Bihar', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(6, 'Chandigarh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(7, 'Chhattisgarh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(8, 'Dadra and Nagar Haveli', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(9, 'Daman and Diu', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(10, 'Delhi', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(11, 'Goa', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(12, 'Gujarat', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(13, 'Haryana', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(14, 'Himachal Pradesh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(15, 'Jammu and Kashmir', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(16, 'Jharkhand', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(17, 'Karnataka', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(18, 'Kerala', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(19, 'Lakshadweep', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(20, 'Madhya Pradesh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(21, 'Maharashtra', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(22, 'Manipur', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(23, 'Meghalaya', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(24, 'Mizoram', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(25, 'Nagaland', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(26, 'Odisha', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(27, 'Puducherry', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(28, 'Punjab', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(29, 'Rajasthan', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(30, 'Sikkim', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(31, 'Tamil Nadu', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(32, 'Telangana', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(33, 'Tripura', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(34, 'Uttar Pradesh', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(35, 'Uttarakhand', 1, null, null, null, null, NOW(), 0, 0, NOW());

insert state_master 
(`state_id`, `name`, `country_id`, `description`, `state_code`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(36, 'West Bengal', 1, null, null, null, null, NOW(), 0, 0, NOW());


/*Seed data for table `city_master` */
insert city_master 
(`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`)
values 
(1, 'Kolhapur', 21, null, null, null, NOW(), 0, 0, NOW());


insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (2, 'Port Blair', 1,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (3, 'Adilabad', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (4, 'Adoni', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (5, 'Amadalavalasa', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (6, 'Amalapuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (7, 'Anakapalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (8, 'Anantapur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (9, 'Badepalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (10, 'Banganapalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (11, 'Bapatla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (12, 'Bellampalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (13, 'Bethamcherla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (14, 'Bhadrachalam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (15, 'Bhainsa', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (16, 'Bheemunipatnam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (17, 'Bhimavaram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (18, 'Bhongir', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (19, 'Bobbili', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (20, 'Bodhan', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (21, 'Chilakaluripet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (22, 'Chirala', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (23, 'Chittoor', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (24, 'Cuddapah', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (25, 'Devarakonda', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (26, 'Dharmavaram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (27, 'Eluru', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (28, 'Farooqnagar', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (29, 'Gadwal', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (30, 'Gooty', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (31, 'Gudivada', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (32, 'Gudur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (33, 'Guntakal', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (34, 'Guntur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (35, 'Hanuman Junction', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (36, 'Hindupur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (37, 'Hyderabad', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (38, 'Ichchapuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (39, 'Jaggaiahpet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (40, 'Jagtial', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (41, 'Jammalamadugu', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (42, 'Jangaon', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (43, 'Kadapa', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (44, 'Kadiri', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (45, 'Kagaznagar', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (46, 'Kakinada', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (47, 'Kalyandurg', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (48, 'Kamareddy', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (49, 'Kandukur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (50, 'Karimnagar', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (51, 'Kavali', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (52, 'Khammam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (53, 'Koratla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (54, 'Kothagudem', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (55, 'Kothapeta', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (56, 'Kovvur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (57, 'Kurnool', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (58, 'Kyathampalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (59, 'Macherla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (60, 'Machilipatnam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (61, 'Madanapalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (62, 'Mahbubnagar', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (63, 'Mancherial', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (64, 'Mandamarri', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (65, 'Mandapeta', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (66, 'Manuguru', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (67, 'Markapur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (68, 'Medak', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (69, 'Miryalaguda', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (70, 'Mogalthur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (71, 'Nagari', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (72, 'Nagarkurnool', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (73, 'Nandyal', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (74, 'Narasapur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (75, 'Narasaraopet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (76, 'Narayanpet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (77, 'Narsipatnam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (78, 'Nellore', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (79, 'Nidadavole', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (80, 'Nirmal', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (81, 'Nizamabad', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (82, 'Nuzvid', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (83, 'Ongole', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (84, 'Palacole', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (85, 'Palasa Kasibugga', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (86, 'Palwancha', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (87, 'Parvathipuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (88, 'Pedana', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (89, 'Peddapuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (90, 'Pithapuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (91, 'Pondur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (92, 'Ponnur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (93, 'Proddatur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (94, 'Punganur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (95, 'Puttur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (96, 'Rajahmundry', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (97, 'Rajam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (98, 'Ramachandrapuram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (99, 'Ramagundam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (100, 'Rayachoti', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (101, 'Rayadurg', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (102, 'Renigunta', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (103, 'Repalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (104, 'Sadasivpet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (105, 'Salur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (106, 'Samalkot', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (107, 'Sangareddy', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (108, 'Sattenapalle', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (109, 'Siddipet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (110, 'Singapur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (111, 'Sircilla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (112, 'Srikakulam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (113, 'Srikalahasti', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (115, 'Suryapet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (116, 'Tadepalligudem', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (117, 'Tadpatri', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (118, 'Tandur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (119, 'Tanuku', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (120, 'Tenali', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (121, 'Tirupati', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (122, 'Tuni', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (123, 'Uravakonda', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (124, 'Venkatagiri', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (125, 'Vicarabad', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (126, 'Vijayawada', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (127, 'Vinukonda', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (128, 'Visakhapatnam', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (129, 'Vizianagaram', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (130, 'Wanaparthy', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (131, 'Warangal', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (132, 'Yellandu', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (133, 'Yemmiganur', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (134, 'Yerraguntla', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (135, 'Zahirabad', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (136, 'Rajampet', 2,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (137, 'Along', 3,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (138, 'Bomdila', 3,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (139, 'Itanagar', 3,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (140, 'Naharlagun', 3,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (141, 'Pasighat', 3,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (142, 'Abhayapuri', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (143, 'Amguri', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (144, 'Anandnagaar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (145, 'Barpeta', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (146, 'Barpeta Road', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (147, 'Bilasipara', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (148, 'Bongaigaon', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (149, 'Dhekiajuli', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (150, 'Dhubri', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (151, 'Dibrugarh', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (152, 'Digboi', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (153, 'Diphu', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (154, 'Dispur', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (156, 'Gauripur', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (157, 'Goalpara', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (158, 'Golaghat', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (159, 'Guwahati', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (160, 'Haflong', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (161, 'Hailakandi', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (162, 'Hojai', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (163, 'Jorhat', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (164, 'Karimganj', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (165, 'Kokrajhar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (166, 'Lanka', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (167, 'Lumding', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (168, 'Mangaldoi', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (169, 'Mankachar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (170, 'Margherita', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (171, 'Mariani', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (172, 'Marigaon', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (173, 'Nagaon', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (174, 'Nalbari', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (175, 'North Lakhimpur', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (176, 'Rangia', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (177, 'Sibsagar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (178, 'Silapathar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (179, 'Silchar', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (180, 'Tezpur', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (181, 'Tinsukia', 4,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (182, 'Amarpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (183, 'Araria', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (184, 'Areraj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (185, 'Arrah', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (186, 'Asarganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (187, 'Aurangabad', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (188, 'Bagaha', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (189, 'Bahadurganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (190, 'Bairgania', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (191, 'Bakhtiarpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (192, 'Banka', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (193, 'Banmankhi Bazar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (194, 'Barahiya', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (195, 'Barauli', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (196, 'Barbigha', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (197, 'Barh', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (198, 'Begusarai', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (199, 'Behea', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (200, 'Bettiah', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (201, 'Bhabua', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (202, 'Bhagalpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (203, 'Bihar Sharif', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (204, 'Bikramganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (205, 'Bodh Gaya', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (206, 'Buxar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (207, 'Chandan Bara', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (208, 'Chanpatia', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (209, 'Chhapra', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (210, 'Colgong', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (211, 'Dalsinghsarai', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (212, 'Darbhanga', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (213, 'Daudnagar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (214, 'Dehri-on-Sone', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (215, 'Dhaka', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (216, 'Dighwara', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (217, 'Dumraon', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (218, 'Fatwah', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (219, 'Forbesganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (220, 'Gaya', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (221, 'Gogri Jamalpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (222, 'Gopalganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (223, 'Hajipur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (224, 'Hilsa', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (225, 'Hisua', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (226, 'Islampur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (227, 'Jagdispur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (228, 'Jamalpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (229, 'Jamui', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (230, 'Jehanabad', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (231, 'Jhajha', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (232, 'Jhanjharpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (233, 'Jogabani', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (234, 'Kanti', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (235, 'Katihar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (236, 'Khagaria', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (237, 'Kharagpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (238, 'Kishanganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (239, 'Lakhisarai', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (240, 'Lalganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (241, 'Madhepura', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (242, 'Madhubani', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (243, 'Maharajganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (244, 'Mahnar Bazar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (245, 'Makhdumpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (246, 'Maner', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (247, 'Manihari', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (248, 'Marhaura', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (249, 'Masaurhi', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (250, 'Mirganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (251, 'Mokameh', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (252, 'Motihari', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (253, 'Motipur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (254, 'Munger', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (255, 'Murliganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (256, 'Muzaffarpur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (257, 'Narkatiaganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (258, 'Naugachhia', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (259, 'Nawada', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (260, 'Nokha', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (261, 'Patna', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (262, 'Piro', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (263, 'Purnia', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (264, 'Rafiganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (265, 'Rajgir', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (266, 'Ramnagar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (267, 'Raxaul Bazar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (268, 'Revelganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (269, 'Rosera', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (270, 'Saharsa', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (271, 'Samastipur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (272, 'Sasaram', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (273, 'Sheikhpura', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (274, 'Sheohar', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (275, 'Sherghati', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (276, 'Silao', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (277, 'Sitamarhi', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (278, 'Siwan', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (279, 'Sonepur', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (280, 'Sugauli', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (281, 'Sultanganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (282, 'Supaul', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (283, 'Warisaliganj', 5,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (284, 'Ahiwara', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (285, 'Akaltara', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (286, 'Ambagarh Chowki', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (287, 'Ambikapur', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (288, 'Arang', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (289, 'Bade Bacheli', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (290, 'Balod', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (291, 'Baloda Bazar', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (292, 'Bemetra', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (293, 'Bhatapara', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (294, 'Bilaspur', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (295, 'Birgaon', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (296, 'Champa', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (297, 'Chirmiri', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (298, 'Dalli-Rajhara', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (299, 'Dhamtari', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (300, 'Dipka', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (301, 'Dongargarh', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (302, 'Durg-Bhilai Nagar', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (303, 'Gobranawapara', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (304, 'Jagdalpur', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (305, 'Janjgir', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (306, 'Jashpurnagar', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (307, 'Kanker', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (308, 'Kawardha', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (309, 'Kondagaon', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (310, 'Korba', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (311, 'Mahasamund', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (312, 'Mahendragarh', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (313, 'Mungeli', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (314, 'Naila Janjgir', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (315, 'Raigarh', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (316, 'Raipur', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (317, 'Rajnandgaon', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (318, 'Sakti', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (319, 'Tilda Newra', 7,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (320, 'Amli', 8,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (321, 'Silvassa', 8,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (322, 'Daman', 9,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (323, 'Diu', 9,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (324, 'Asola', 10,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (325, 'Delhi', 10,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (326, 'Aldona', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (327, 'Curchorem Cacora', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (328, 'Madgaon', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (329, 'Mapusa', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (330, 'Margao', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (331, 'Marmagao', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (332, 'Panaji', 11,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (333, 'Ahmedabad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (334, 'Amreli', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (335, 'Anand', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (336, 'Ankleshwar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (337, 'Bharuch', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (338, 'Bhavnagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (339, 'Bhuj', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (340, 'Cambay', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (341, 'Dahod', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (342, 'Deesa', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (343, 'Dharampur', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (344, 'Dholka', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (345, 'Gandhinagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (346, 'Godhra', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (347, 'Himatnagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (348, 'Idar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (349, 'Jamnagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (350, 'Junagadh', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (351, 'Kadi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (352, 'Kalavad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (353, 'Kalol', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (354, 'Kapadvanj', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (355, 'Karjan', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (356, 'Keshod', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (357, 'Khambhalia', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (358, 'Khambhat', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (359, 'Kheda', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (360, 'Khedbrahma', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (361, 'Kheralu', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (362, 'Kodinar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (363, 'Lathi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (364, 'Limbdi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (365, 'Lunawada', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (366, 'Mahesana', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (367, 'Mahuva', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (368, 'Manavadar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (369, 'Mandvi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (370, 'Mangrol', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (371, 'Mansa', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (372, 'Mehmedabad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (373, 'Modasa', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (374, 'Morvi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (375, 'Nadiad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (376, 'Navsari', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (377, 'Padra', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (378, 'Palanpur', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (379, 'Palitana', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (380, 'Pardi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (381, 'Patan', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (382, 'Petlad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (383, 'Porbandar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (384, 'Radhanpur', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (385, 'Rajkot', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (386, 'Rajpipla', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (387, 'Rajula', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (388, 'Ranavav', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (389, 'Rapar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (390, 'Salaya', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (391, 'Sanand', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (392, 'Savarkundla', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (393, 'Sidhpur', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (394, 'Sihor', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (395, 'Songadh', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (396, 'Surat', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (397, 'Talaja', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (398, 'Thangadh', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (399, 'Tharad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (400, 'Umbergaon', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (401, 'Umreth', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (402, 'Una', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (403, 'Unjha', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (404, 'Upleta', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (405, 'Vadnagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (406, 'Vadodara', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (407, 'Valsad', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (408, 'Vapi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (409, 'Vapi', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (410, 'Veraval', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (411, 'Vijapur', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (412, 'Viramgam', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (413, 'Visnagar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (414, 'Vyara', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (415, 'Wadhwan', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (416, 'Wankaner', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (417, 'Adalaj', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (418, 'Adityana', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (419, 'Alang', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (420, 'Ambaji', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (421, 'Ambaliyasan', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (422, 'Andada', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (423, 'Anjar', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (424, 'Anklav', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (425, 'Antaliya', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (426, 'Arambhada', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (427, 'Atul', 12,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (428, 'Ballabhgarh', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (429, 'Ambala', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (430, 'Ambala', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (431, 'Asankhurd', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (432, 'Assandh', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (433, 'Ateli', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (434, 'Babiyal', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (435, 'Bahadurgarh', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (436, 'Barwala', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (437, 'Bhiwani', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (438, 'Charkhi Dadri', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (439, 'Cheeka', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (440, 'Ellenabad 2', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (441, 'Faridabad', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (442, 'Fatehabad', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (443, 'Ganaur', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (444, 'Gharaunda', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (445, 'Gohana', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (446, 'Gurgaon', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (447, 'Haibat(Yamuna Nagar)', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (448, 'Hansi', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (449, 'Hisar', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (450, 'Hodal', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (451, 'Jhajjar', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (452, 'Jind', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (453, 'Kaithal', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (454, 'Kalan Wali', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (455, 'Kalka', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (456, 'Karnal', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (457, 'Ladwa', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (458, 'Mahendragarh', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (459, 'Mandi Dabwali', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (460, 'Narnaul', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (461, 'Narwana', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (462, 'Palwal', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (463, 'Panchkula', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (464, 'Panipat', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (465, 'Pehowa', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (466, 'Pinjore', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (467, 'Rania', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (468, 'Ratia', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (469, 'Rewari', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (470, 'Rohtak', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (471, 'Safidon', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (472, 'Samalkha', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (473, 'Shahbad', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (474, 'Sirsa', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (475, 'Sohna', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (476, 'Sonipat', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (477, 'Taraori', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (478, 'Thanesar', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (479, 'Tohana', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (480, 'Yamunanagar', 13,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (481, 'Arki', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (482, 'Baddi', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (483, 'Bilaspur', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (484, 'Chamba', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (485, 'Dalhousie', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (486, 'Dharamsala', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (487, 'Hamirpur', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (488, 'Mandi', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (489, 'Nahan', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (490, 'Shimla', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (491, 'Solan', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (492, 'Sundarnagar', 14,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (493, 'Jammu', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (494, 'Achabbal', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (495, 'Akhnoor', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (496, 'Anantnag', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (497, 'Arnia', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (498, 'Awantipora', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (499, 'Bandipore', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (500, 'Baramula', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (501, 'Kathua', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (502, 'Leh', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (503, 'Punch', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (504, 'Rajauri', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (505, 'Sopore', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (506, 'Srinagar', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (507, 'Udhampur', 15,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (508, 'Amlabad', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (509, 'Ara', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (510, 'Barughutu', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (511, 'Bokaro Steel City', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (512, 'Chaibasa', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (513, 'Chakradharpur', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (514, 'Chandrapura', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (515, 'Chatra', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (516, 'Chirkunda', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (517, 'Churi', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (518, 'Daltonganj', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (519, 'Deoghar', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (520, 'Dhanbad', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (521, 'Dumka', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (522, 'Garhwa', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (523, 'Ghatshila', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (524, 'Giridih', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (525, 'Godda', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (526, 'Gomoh', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (527, 'Gumia', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (528, 'Gumla', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (529, 'Hazaribag', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (530, 'Hussainabad', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (531, 'Jamshedpur', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (532, 'Jamtara', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (533, 'Jhumri Tilaiya', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (534, 'Khunti', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (535, 'Lohardaga', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (536, 'Madhupur', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (537, 'Mihijam', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (538, 'Musabani', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (539, 'Pakaur', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (540, 'Patratu', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (541, 'Phusro', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (542, 'Ramngarh', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (543, 'Ranchi', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (544, 'Sahibganj', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (545, 'Saunda', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (546, 'Simdega', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (547, 'Tenu Dam-cum- Kathhara', 16,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (548, 'Arasikere', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (549, 'Bangalore', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (550, 'Belgaum', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (551, 'Bellary', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (552, 'Chamrajnagar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (553, 'Chikkaballapur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (554, 'Chintamani', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (555, 'Chitradurga', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (556, 'Gulbarga', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (557, 'Gundlupet', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (558, 'Hassan', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (559, 'Hospet', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (560, 'Hubli', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (561, 'Karkala', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (562, 'Karwar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (563, 'Kolar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (564, 'Kota', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (565, 'Lakshmeshwar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (566, 'Lingsugur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (567, 'Maddur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (568, 'Madhugiri', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (569, 'Madikeri', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (570, 'Magadi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (571, 'Mahalingpur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (572, 'Malavalli', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (573, 'Malur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (574, 'Mandya', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (575, 'Mangalore', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (576, 'Manvi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (577, 'Mudalgi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (578, 'Mudbidri', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (579, 'Muddebihal', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (580, 'Mudhol', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (581, 'Mulbagal', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (582, 'Mundargi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (583, 'Mysore', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (584, 'Nanjangud', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (585, 'Pavagada', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (586, 'Puttur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (587, 'Rabkavi Banhatti', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (588, 'Raichur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (589, 'Ramanagaram', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (590, 'Ramdurg', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (591, 'Ranibennur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (592, 'Robertson Pet', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (593, 'Ron', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (594, 'Sadalgi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (595, 'Sagar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (596, 'Sakleshpur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (597, 'Sandur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (598, 'Sankeshwar', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (599, 'Saundatti-Yellamma', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (600, 'Savanur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (601, 'Sedam', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (602, 'Shahabad', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (603, 'Shahpur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (604, 'Shiggaon', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (605, 'Shikapur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (606, 'Shimoga', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (607, 'Shorapur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (608, 'Shrirangapattana', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (609, 'Sidlaghatta', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (610, 'Sindgi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (611, 'Sindhnur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (612, 'Sira', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (613, 'Sirsi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (614, 'Siruguppa', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (615, 'Srinivaspur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (616, 'Talikota', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (617, 'Tarikere', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (618, 'Tekkalakota', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (619, 'Terdal', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (620, 'Tiptur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (621, 'Tumkur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (622, 'Udupi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (623, 'Vijayapura', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (624, 'Wadi', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (625, 'Yadgir', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (626, 'Adoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (627, 'Akathiyoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (628, 'Alappuzha', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (629, 'Ancharakandy', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (630, 'Aroor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (631, 'Ashtamichira', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (632, 'Attingal', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (633, 'Avinissery', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (634, 'Chalakudy', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (635, 'Changanassery', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (636, 'Chendamangalam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (637, 'Chengannur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (638, 'Cherthala', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (639, 'Cheruthazham', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (640, 'Chittur-Thathamangalam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (641, 'Chockli', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (642, 'Erattupetta', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (643, 'Guruvayoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (644, 'Irinjalakuda', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (645, 'Kadirur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (646, 'Kalliasseri', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (647, 'Kalpetta', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (648, 'Kanhangad', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (649, 'Kanjikkuzhi', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (650, 'Kannur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (651, 'Kasaragod', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (652, 'Kayamkulam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (653, 'Kochi', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (654, 'Kodungallur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (655, 'Kollam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (656, 'Koothuparamba', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (657, 'Kothamangalam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (658, 'Kottayam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (659, 'Kozhikode', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (660, 'Kunnamkulam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (661, 'Malappuram', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (662, 'Mattannur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (663, 'Mavelikkara', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (664, 'Mavoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (665, 'Muvattupuzha', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (666, 'Nedumangad', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (667, 'Neyyattinkara', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (668, 'Ottappalam', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (669, 'Palai', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (670, 'Palakkad', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (671, 'Panniyannur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (672, 'Pappinisseri', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (673, 'Paravoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (674, 'Pathanamthitta', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (675, 'Payyannur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (676, 'Peringathur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (677, 'Perinthalmanna', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (678, 'Perumbavoor', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (679, 'Ponnani', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (680, 'Punalur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (681, 'Quilandy', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (682, 'Shoranur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (683, 'Taliparamba', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (684, 'Thiruvalla', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (685, 'Thiruvananthapuram', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (686, 'Thodupuzha', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (687, 'Thrissur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (688, 'Tirur', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (689, 'Vadakara', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (690, 'Vaikom', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (691, 'Varkala', 18,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (692, 'Kavaratti', 19,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (693, 'Ashok Nagar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (694, 'Balaghat', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (695, 'Betul', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (696, 'Bhopal', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (697, 'Burhanpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (698, 'Chhatarpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (699, 'Dabra', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (700, 'Datia', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (701, 'Dewas', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (702, 'Dhar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (703, 'Fatehabad', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (704, 'Gwalior', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (705, 'Indore', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (706, 'Itarsi', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (707, 'Jabalpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (708, 'Katni', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (709, 'Kotma', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (710, 'Lahar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (711, 'Lundi', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (712, 'Maharajpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (713, 'Mahidpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (714, 'Maihar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (715, 'Malajkhand', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (716, 'Manasa', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (717, 'Manawar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (718, 'Mandideep', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (719, 'Mandla', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (720, 'Mandsaur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (721, 'Mauganj', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (722, 'Mhow Cantonment', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (723, 'Mhowgaon', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (724, 'Morena', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (725, 'Multai', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (726, 'Murwara', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (727, 'Nagda', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (728, 'Nainpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (729, 'Narsinghgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (730, 'Narsinghgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (731, 'Neemuch', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (732, 'Nepanagar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (733, 'Niwari', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (734, 'Nowgong', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (735, 'Nowrozabad', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (736, 'Pachore', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (737, 'Pali', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (738, 'Panagar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (739, 'Pandhurna', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (740, 'Panna', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (741, 'Pasan', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (742, 'Pipariya', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (743, 'Pithampur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (744, 'Porsa', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (745, 'Prithvipur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (746, 'Raghogarh-Vijaypur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (747, 'Rahatgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (748, 'Raisen', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (749, 'Rajgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (750, 'Ratlam', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (751, 'Rau', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (752, 'Rehli', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (753, 'Rewa', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (754, 'Sabalgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (755, 'Sagar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (756, 'Sanawad', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (757, 'Sarangpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (758, 'Sarni', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (759, 'Satna', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (760, 'Sausar', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (761, 'Sehore', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (762, 'Sendhwa', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (763, 'Seoni', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (764, 'Seoni-Malwa', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (765, 'Shahdol', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (766, 'Shajapur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (767, 'Shamgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (768, 'Sheopur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (769, 'Shivpuri', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (770, 'Shujalpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (771, 'Sidhi', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (772, 'Sihora', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (773, 'Singrauli', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (774, 'Sironj', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (775, 'Sohagpur', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (776, 'Tarana', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (777, 'Tikamgarh', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (778, 'Ujhani', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (779, 'Ujjain', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (780, 'Umaria', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (781, 'Vidisha', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (782, 'Wara Seoni', 20,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (783, 'Ahmednagar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (784, 'Akola', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (785, 'Amravati', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (786, 'Aurangabad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (787, 'Baramati', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (788, 'Chalisgaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (789, 'Chinchani', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (790, 'Devgarh', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (791, 'Dhule', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (792, 'Dombivli', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (793, 'Durgapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (794, 'Ichalkaranji', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (795, 'Jalna', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (796, 'Kalyan', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (797, 'Latur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (798, 'Loha', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (799, 'Lonar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (800, 'Lonavla', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (801, 'Mahad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (802, 'Mahuli', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (803, 'Malegaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (804, 'Malkapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (805, 'Manchar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (806, 'Mangalvedhe', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (807, 'Mangrulpir', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (808, 'Manjlegaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (809, 'Manmad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (810, 'Manwath', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (811, 'Mehkar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (812, 'Mhaswad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (813, 'Miraj', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (814, 'Morshi', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (815, 'Mukhed', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (816, 'Mul', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (817, 'Mumbai', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (818, 'Murtijapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (819, 'Nagpur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (820, 'Nalasopara', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (821, 'Nanded-Waghala', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (822, 'Nandgaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (823, 'Nandura', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (824, 'Nandurbar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (825, 'Narkhed', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (826, 'Nashik', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (827, 'Navi Mumbai', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (828, 'Nawapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (829, 'Nilanga', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (830, 'Osmanabad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (831, 'Ozar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (832, 'Pachora', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (833, 'Paithan', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (834, 'Palghar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (835, 'Pandharkaoda', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (836, 'Pandharpur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (837, 'Panvel', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (838, 'Parbhani', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (839, 'Parli', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (840, 'Parola', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (841, 'Partur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (842, 'Pathardi', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (843, 'Pathri', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (844, 'Patur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (845, 'Pauni', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (846, 'Pen', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (847, 'Phaltan', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (848, 'Pulgaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (849, 'Pune', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (850, 'Purna', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (851, 'Pusad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (852, 'Rahuri', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (853, 'Rajura', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (854, 'Ramtek', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (855, 'Ratnagiri', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (856, 'Raver', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (857, 'Risod', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (858, 'Sailu', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (859, 'Sangamner', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (860, 'Sangli', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (861, 'Sangole', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (862, 'Sasvad', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (863, 'Satana', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (864, 'Satara', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (865, 'Savner', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (866, 'Sawantwadi', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (867, 'Shahade', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (868, 'Shegaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (869, 'Shendurjana', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (870, 'Shirdi', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (871, 'Shirpur-Warwade', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (872, 'Shirur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (873, 'Shrigonda', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (874, 'Shrirampur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (875, 'Sillod', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (876, 'Sinnar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (877, 'Solapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (878, 'Soyagaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (879, 'Talegaon Dabhade', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (880, 'Talode', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (881, 'Tasgaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (882, 'Tirora', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (883, 'Tuljapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (884, 'Tumsar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (885, 'Uran', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (886, 'Uran Islampur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (887, 'Wadgaon Road', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (888, 'Wai', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (889, 'Wani', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (890, 'Wardha', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (891, 'Warora', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (892, 'Warud', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (893, 'Washim', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (894, 'Yevla', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (895, 'Uchgaon', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (896, 'Udgir', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (897, 'Umarga', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (898, 'Umarkhed', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (899, 'Umred', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (900, 'Vadgaon Kasba', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (901, 'Vaijapur', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (902, 'Vasai', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (903, 'Virar', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (904, 'Vita', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (905, 'Yavatmal', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (906, 'Yawal', 21,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (907, 'Imphal', 22,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (908, 'Kakching', 22,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (909, 'Lilong', 22,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (910, 'Mayang Imphal', 22,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (911, 'Thoubal', 22,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (912, 'Jowai', 23,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (913, 'Nongstoin', 23,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (914, 'Shillong', 23,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (915, 'Tura', 23,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (916, 'Aizawl', 24,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (917, 'Champhai', 24,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (918, 'Lunglei', 24,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (919, 'Saiha', 24,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (920, 'Dimapur', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (921, 'Kohima', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (922, 'Mokokchung', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (923, 'Tuensang', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (924, 'Wokha', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (925, 'Zunheboto', 25,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (950, 'Anandapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (951, 'Anugul', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (952, 'Asika', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (953, 'Balangir', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (954, 'Balasore', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (955, 'Baleshwar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (956, 'Bamra', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (957, 'Barbil', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (958, 'Bargarh', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (959, 'Bargarh', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (960, 'Baripada', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (961, 'Basudebpur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (962, 'Belpahar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (963, 'Bhadrak', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (964, 'Bhawanipatna', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (965, 'Bhuban', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (966, 'Bhubaneswar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (967, 'Biramitrapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (968, 'Brahmapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (969, 'Brajrajnagar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (970, 'Byasanagar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (971, 'Cuttack', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (972, 'Debagarh', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (973, 'Dhenkanal', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (974, 'Gunupur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (975, 'Hinjilicut', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (976, 'Jagatsinghapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (977, 'Jajapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (978, 'Jaleswar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (979, 'Jatani', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (980, 'Jeypur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (981, 'Jharsuguda', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (982, 'Joda', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (983, 'Kantabanji', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (984, 'Karanjia', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (985, 'Kendrapara', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (986, 'Kendujhar', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (987, 'Khordha', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (988, 'Koraput', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (989, 'Malkangiri', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (990, 'Nabarangapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (991, 'Paradip', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (992, 'Parlakhemundi', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (993, 'Pattamundai', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (994, 'Phulabani', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (995, 'Puri', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (996, 'Rairangpur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (997, 'Rajagangapur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (998, 'Raurkela', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (999, 'Rayagada', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1000, 'Sambalpur', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1001, 'Soro', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1002, 'Sunabeda', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1003, 'Sundargarh', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1004, 'Talcher', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1005, 'Titlagarh', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1006, 'Umarkote', 26,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1007, 'Karaikal', 27,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1008, 'Mahe', 27,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1009, 'Pondicherry', 27,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1010, 'Yanam', 27,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1011, 'Ahmedgarh', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1012, 'Amritsar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1013, 'Barnala', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1014, 'Batala', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1015, 'Bathinda', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1016, 'Bhagha Purana', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1017, 'Budhlada', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1018, 'Punjab', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1019, 'Dasua', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1020, 'Dhuri', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1021, 'Dinanagar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1022, 'Faridkot', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1023, 'Fazilka', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1024, 'Firozpur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1025, 'Firozpur Cantt.', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1026, 'Giddarbaha', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1027, 'Gobindgarh', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1028, 'Gurdaspur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1029, 'Hoshiarpur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1030, 'Jagraon', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1031, 'Jaitu', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1032, 'Jalalabad', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1033, 'Jalandhar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1034, 'Jalandhar Cantt.', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1035, 'Jandiala', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1036, 'Kapurthala', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1037, 'Karoran', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1038, 'Kartarpur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1039, 'Khanna', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1040, 'Kharar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1041, 'Kot Kapura', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1042, 'Kurali', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1043, 'Longowal', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1044, 'Ludhiana', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1045, 'Malerkotla', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1046, 'Malout', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1047, 'Mansa', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1048, 'Maur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1049, 'Moga', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1050, 'Mohali', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1051, 'Morinda', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1052, 'Mukerian', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1053, 'Muktsar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1054, 'Nabha', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1055, 'Nakodar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1056, 'Nangal', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1057, 'Nawanshahr', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1058, 'Pathankot', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1059, 'Patiala', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1060, 'Patran', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1061, 'Patti', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1062, 'Phagwara', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1063, 'Phillaur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1064, 'Qadian', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1065, 'Raikot', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1066, 'Rajpura', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1067, 'Rampura Phul', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1068, 'Rupnagar', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1069, 'Samana', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1070, 'Sangrur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1071, 'Sirhind Fatehgarh Sahib', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1072, 'Sujanpur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1073, 'Sunam', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1074, 'Talwara', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1075, 'Tarn Taran', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1076, 'Urmar Tanda', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1077, 'Zira', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1078, 'Zirakpur', 28,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1079, 'Bali', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1080, 'Banswara', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1081, 'Ajmer', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1082, 'Alwar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1083, 'Bandikui', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1084, 'Baran', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1085, 'Barmer', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1086, 'Bikaner', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1087, 'Fatehpur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1088, 'Jaipur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1089, 'Jaisalmer', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1090, 'Jodhpur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1091, 'Kota', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1092, 'Lachhmangarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1093, 'Ladnu', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1094, 'Lakheri', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1095, 'Lalsot', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1096, 'Losal', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1097, 'Makrana', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1098, 'Malpura', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1099, 'Mandalgarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1100, 'Mandawa', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1101, 'Mangrol', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1102, 'Merta City', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1103, 'Mount Abu', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1104, 'Nadbai', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1105, 'Nagar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1106, 'Nagaur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1107, 'Nargund', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1108, 'Nasirabad', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1109, 'Nathdwara', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1110, 'Navalgund', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1111, 'Nawalgarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1112, 'Neem-Ka-Thana', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1113, 'Nelamangala', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1114, 'Nimbahera', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1115, 'Nipani', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1116, 'Niwai', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1117, 'Nohar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1118, 'Nokha', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1119, 'Pali', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1120, 'Phalodi', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1121, 'Phulera', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1122, 'Pilani', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1123, 'Pilibanga', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1124, 'Pindwara', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1125, 'Pipar City', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1126, 'Prantij', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1127, 'Pratapgarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1128, 'Raisinghnagar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1129, 'Rajakhera', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1130, 'Rajaldesar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1131, 'Rajgarh (Alwar)', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1132, 'Rajgarh (Churu)', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1133, 'Rajsamand', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1134, 'Ramganj Mandi', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1135, 'Ramngarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1136, 'Ratangarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1137, 'Rawatbhata', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1138, 'Rawatsar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1139, 'Reengus', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1140, 'Sadri', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1141, 'Sadulshahar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1142, 'Sagwara', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1143, 'Sambhar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1144, 'Sanchore', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1145, 'Sangaria', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1146, 'Sardarshahar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1147, 'Sawai Madhopur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1148, 'Shahpura', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1149, 'Shahpura', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1150, 'Sheoganj', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1151, 'Sikar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1152, 'Sirohi', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1153, 'Sojat', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1154, 'Sri Madhopur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1155, 'Sujangarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1156, 'Sumerpur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1157, 'Suratgarh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1158, 'Taranagar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1159, 'Todabhim', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1160, 'Todaraisingh', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1161, 'Tonk', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1162, 'Udaipur', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1163, 'Udaipurwati', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1164, 'Vijainagar', 29,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1165, 'Gangtok', 30,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1166, 'Calcutta', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1167, 'Arakkonam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1168, 'Arcot', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1169, 'Aruppukkottai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1170, 'Bhavani', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1171, 'Chengalpattu', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1172, 'Chennai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1173, 'Chinna salem', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1174, 'Coimbatore', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1175, 'Coonoor', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1176, 'Cuddalore', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1177, 'Dharmapuri', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1178, 'Dindigul', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1179, 'Erode', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1180, 'Gudalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1181, 'Gudalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1182, 'Gudalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1183, 'Kanchipuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1184, 'Karaikudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1185, 'Karungal', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1186, 'Karur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1187, 'Kollankodu', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1188, 'Lalgudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1189, 'Madurai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1190, 'Nagapattinam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1191, 'Nagercoil', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1192, 'Namagiripettai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1193, 'Namakkal', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1194, 'Nandivaram-Guduvancheri', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1195, 'Nanjikottai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1196, 'Natham', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1197, 'Nellikuppam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1198, 'Neyveli', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1199, 'O Valley', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1200, 'Oddanchatram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1201, 'P.N.Patti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1202, 'Pacode', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1203, 'Padmanabhapuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1204, 'Palani', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1205, 'Palladam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1206, 'Pallapatti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1207, 'Pallikonda', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1208, 'Panagudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1209, 'Panruti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1210, 'Paramakudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1211, 'Parangipettai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1212, 'Pattukkottai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1213, 'Perambalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1214, 'Peravurani', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1215, 'Periyakulam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1216, 'Periyasemur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1217, 'Pernampattu', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1218, 'Pollachi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1219, 'Polur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1220, 'Ponneri', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1221, 'Pudukkottai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1222, 'Pudupattinam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1223, 'Puliyankudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1224, 'Punjaipugalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1225, 'Rajapalayam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1226, 'Ramanathapuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1227, 'Rameshwaram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1228, 'Rasipuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1229, 'Salem', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1230, 'Sankarankoil', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1231, 'Sankari', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1232, 'Sathyamangalam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1233, 'Sattur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1234, 'Shenkottai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1235, 'Sholavandan', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1236, 'Sholingur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1237, 'Sirkali', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1238, 'Sivaganga', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1239, 'Sivagiri', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1240, 'Sivakasi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1241, 'Srivilliputhur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1242, 'Surandai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1243, 'Suriyampalayam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1244, 'Tenkasi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1245, 'Thammampatti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1246, 'Thanjavur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1247, 'Tharamangalam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1248, 'Tharangambadi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1249, 'Theni Allinagaram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1250, 'Thirumangalam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1251, 'Thirunindravur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1252, 'Thiruparappu', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1253, 'Thirupuvanam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1254, 'Thiruthuraipoondi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1255, 'Thiruvallur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1256, 'Thiruvarur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1257, 'Thoothukudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1258, 'Thuraiyur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1259, 'Tindivanam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1260, 'Tiruchendur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1261, 'Tiruchengode', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1262, 'Tiruchirappalli', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1263, 'Tirukalukundram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1264, 'Tirukkoyilur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1265, 'Tirunelveli', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1266, 'Tirupathur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1267, 'Tirupathur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1268, 'Tiruppur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1269, 'Tiruttani', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1270, 'Tiruvannamalai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1271, 'Tiruvethipuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1272, 'Tittakudi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1273, 'Udhagamandalam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1274, 'Udumalaipettai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1275, 'Unnamalaikadai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1276, 'Usilampatti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1277, 'Uthamapalayam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1278, 'Uthiramerur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1279, 'Vadakkuvalliyur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1280, 'Vadalur', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1281, 'Vadipatti', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1282, 'Valparai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1283, 'Vandavasi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1284, 'Vaniyambadi', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1285, 'Vedaranyam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1286, 'Vellakoil', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1287, 'Vellore', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1288, 'Vikramasingapuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1289, 'Viluppuram', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1290, 'Virudhachalam', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1291, 'Virudhunagar', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1292, 'Viswanatham', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1293, 'Agartala', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1294, 'Badharghat', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1295, 'Dharmanagar', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1296, 'Indranagar', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1297, 'Jogendranagar', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1298, 'Kailasahar', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1299, 'Khowai', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1300, 'Pratapgarh', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1301, 'Udaipur', 33,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1302, 'Achhnera', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1303, 'Adari', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1304, 'Agra', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1305, 'Aligarh', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1306, 'Allahabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1307, 'Amroha', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1308, 'Azamgarh', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1309, 'Bahraich', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1310, 'Ballia', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1311, 'Balrampur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1312, 'Banda', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1313, 'Bareilly', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1314, 'Chandausi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1315, 'Dadri', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1316, 'Deoria', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1317, 'Etawah', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1318, 'Fatehabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1319, 'Fatehpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1320, 'Fatehpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1321, 'Greater Noida', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1322, 'Hamirpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1323, 'Hardoi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1324, 'Jajmau', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1325, 'Jaunpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1326, 'Jhansi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1327, 'Kalpi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1328, 'Kanpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1329, 'Kota', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1330, 'Laharpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1331, 'Lakhimpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1332, 'Lal Gopalganj Nindaura', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1333, 'Lalganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1334, 'Lalitpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1335, 'Lar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1336, 'Loni', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1337, 'Lucknow', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1338, 'Mathura', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1339, 'Meerut', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1340, 'Modinagar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1341, 'Muradnagar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1342, 'Nagina', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1343, 'Najibabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1344, 'Nakur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1345, 'Nanpara', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1346, 'Naraura', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1347, 'Naugawan Sadat', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1348, 'Nautanwa', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1349, 'Nawabganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1350, 'Nehtaur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1351, 'NOIDA', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1352, 'Noorpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1353, 'Obra', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1354, 'Orai', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1355, 'Padrauna', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1356, 'Palia Kalan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1357, 'Parasi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1358, 'Phulpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1359, 'Pihani', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1360, 'Pilibhit', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1361, 'Pilkhuwa', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1362, 'Powayan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1363, 'Pukhrayan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1364, 'Puranpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1365, 'Purquazi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1366, 'Purwa', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1367, 'Rae Bareli', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1368, 'Rampur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1369, 'Rampur Maniharan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1370, 'Rasra', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1371, 'Rath', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1372, 'Renukoot', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1373, 'Reoti', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1374, 'Robertsganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1375, 'Rudauli', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1376, 'Rudrapur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1377, 'Sadabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1378, 'Safipur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1379, 'Saharanpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1380, 'Sahaspur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1381, 'Sahaswan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1382, 'Sahawar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1383, 'Sahjanwa', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1384, 'Saidpur, Ghazipur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1385, 'Sambhal', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1386, 'Samdhan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1387, 'Samthar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1388, 'Sandi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1389, 'Sandila', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1390, 'Sardhana', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1391, 'Seohara', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1392, 'Shahabad, Hardoi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1393, 'Shahabad, Rampur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1394, 'Shahganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1395, 'Shahjahanpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1396, 'Shamli', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1397, 'Shamsabad, Agra', 34, 
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1398, 'Shamsabad, Farrukhabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1399, 'Sherkot', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1400, 'Shikarpur, Bulandshahr', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1401, 'Shikohabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1402, 'Shishgarh', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1403, 'Siana', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1404, 'Sikanderpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1405, 'Sikandra Rao', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1406, 'Sikandrabad', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1407, 'Sirsaganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1408, 'Sirsi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1409, 'Sitapur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1410, 'Soron', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1411, 'Suar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1412, 'Sultanpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1413, 'Sumerpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1414, 'Tanda', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1415, 'Tanda', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1416, 'Tetri Bazar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1417, 'Thakurdwara', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1418, 'Thana Bhawan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1419, 'Tilhar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1420, 'Tirwaganj', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1421, 'Tulsipur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1422, 'Tundla', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1423, 'Unnao', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1424, 'Utraula', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1425, 'Varanasi', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1426, 'Vrindavan', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1427, 'Warhapur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1428, 'Zaidpur', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1429, 'Zamania', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1430, 'Almora', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1431, 'Bazpur', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1432, 'Chamba', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1433, 'Dehradun', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1434, 'Haldwani', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1435, 'Haridwar', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1436, 'Jaspur', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1437, 'Kashipur', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1438, 'kichha', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1439, 'Kotdwara', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1440, 'Manglaur', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1441, 'Mussoorie', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1442, 'Nagla', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1443, 'Nainital', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1444, 'Pauri', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1445, 'Pithoragarh', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1446, 'Ramnagar', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1447, 'Rishikesh', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1448, 'Roorkee', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1449, 'Rudrapur', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1450, 'Sitarganj', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1451, 'Tehri', 35,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1452, 'Muzaffarnagar', 34,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1453, 'Adra, Purulia', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1454, 'Alipurduar', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1455, 'Arambagh', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1456, 'Asansol', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1457, 'Baharampur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1458, 'Bally', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1459, 'Balurghat', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1460, 'Bankura', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1461, 'Barakar', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1462, 'Barasat', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1463, 'Bardhaman', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1464, 'Bidhan Nagar', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1465, 'Chinsura', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1466, 'Contai', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1467, 'Cooch Behar', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1468, 'Darjeeling', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1469, 'Durgapur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1470, 'Haldia', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1471, 'Howrah', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1472, 'Islampur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1473, 'Jhargram', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1474, 'Kharagpur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1475, 'Kolkata', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1476, 'Mainaguri', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1477, 'Mal', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1478, 'Mathabhanga', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1479, 'Medinipur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1480, 'Memari', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1481, 'Monoharpur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1482, 'Murshidabad', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1483, 'Nabadwip', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1484, 'Naihati', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1485, 'Panchla', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1486, 'Pandua', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1487, 'Paschim Punropara', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1488, 'Purulia', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1489, 'Raghunathpur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1490, 'Raiganj', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1491, 'Rampurhat', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1492, 'Ranaghat', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1493, 'Sainthia', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1494, 'Santipur', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1495, 'Siliguri', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1496, 'Sonamukhi', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1497, 'Srirampore', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1498, 'Suri', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1499, 'Taki', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1500, 'Tamluk', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1501, 'Tarakeswar', 36,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1502, 'Chikmagalur', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1503, 'Davanagere', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1504, 'Dharwad', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1505, 'Gadag', 17,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1506, 'Chennai', 31,
 null, null, null, NOW(), 0, 0, NOW());
insert city_master (`city_id`, `name`, `state_id`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) values (1507, 'Coimbatore', 31,
 null, null, null, NOW(), 0, 0, NOW());
 
 
 /*Seed data for table `currency_master` */

insert currency_master (`currency_id`,`currency_code`,`currency_symbol`,`name`,`default_fraction_digit`,`issuing_country_code`,`min_accountable_amount`,`description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values 
(1, 'USD', 'US$', 'Dollars', 2, 'US', 1, null, null, null, NOW(), 0, 0, NOW());
  
insert currency_master (`currency_id`,`currency_code`,`currency_symbol`,`name`,`default_fraction_digit`,`issuing_country_code`,`min_accountable_amount`,`description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values 
(2, 'EUR', '€', 'Euro', 2, 'FR', 1, null, null, null, NOW(), 0, 0, NOW());

insert currency_master (`currency_id`,`currency_code`,`currency_symbol`,`name`,`default_fraction_digit`,`issuing_country_code`,`min_accountable_amount`,`description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values 
(3, 'INR', 'Rs', 'Rupees', 2, 'IN', 1, null, null, null, NOW(), 0, 0, NOW());  


/*Seed data for table `role` */
  
insert role (`role_id`, `role_code`, `role_name`, `role_description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values (1, 'ADMINISTRATOR', 'System Administrator', null, null, null, NOW(), 0, 0, NOW());

insert role (`role_id`, `role_code`, `role_name`, `role_description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values (2, 'CUSTOMER', 'Customer', null, null, null, NOW(), 0, 0, NOW());


/*Seed data for table `locale_master` */
insert locale_master (`locale_id`, `locale_code`, `language_code`, `country_code`, `name`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values (1, 'en_US', 'en', 'US', 'English (United States)', null, null, null, NOW(), 0, 0, NOW());

insert locale_master (`locale_id`, `locale_code`, `language_code`, `country_code`, `name`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values (2, 'ja_JP', 'ja', 'JP', 'Japanese (Japan)', null, null, null, NOW(), 0, 0, NOW());

insert locale_master (`locale_id`, `locale_code`, `language_code`, `country_code`, `name`, `description`, `created_by`, `updated_by`, `created_date`, `deleted_yn`,`record_version_no`,`updated_date`) 
values (3, 'fr_FR', 'fr', 'FR', 'French (France)', null, null, null, NOW(), 0, 0, NOW());

