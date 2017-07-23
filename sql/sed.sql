/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : sed

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 05/13/2017 11:04:19 AM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `complaint`
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `complaint_ID` char(14) NOT NULL,
  `orders_ID` char(14) NOT NULL,
  `user_ID` char(10) DEFAULT NULL,
  `manager_ID` char(5) DEFAULT NULL,
  `complaint_type` char(2) DEFAULT NULL,
  `complaint_time` datetime DEFAULT NULL,
  `complaint_state` char(1) DEFAULT NULL,
  `complaint_information` char(200) DEFAULT NULL,
  `complaint_result` char(20) DEFAULT NULL,
  PRIMARY KEY (`complaint_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `credit_record`
-- ----------------------------
DROP TABLE IF EXISTS `credit_record`;
CREATE TABLE `credit_record` (
  `credit_ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` char(10) DEFAULT NULL,
  `user_event` char(40) DEFAULT NULL,
  `credit_change` int(11) DEFAULT NULL,
  `event_information` char(200) DEFAULT NULL,
  PRIMARY KEY (`credit_ID`),
  KEY `usercredit` (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `credit_record`
-- ----------------------------
BEGIN;
INSERT INTO `credit_record` VALUES ('1', '213124128', 'UserRegisterEvent', '100', null), ('2', '213124128', 'as', '-10', null), ('3', '213124129', 'UserRegisterEvent', '100', null), ('4', '1000000004', '注册', '100', '111'), ('5', '1000000005', '注册', '100', '111'), ('6', '1000000006', '注册', '100', '111'), ('7', '1000000007', '注册', '100', '111'), ('8', '1000000008', '注册', '100', '111'), ('9', '1000000009', '注册', '100', '111'), ('10', '1000000010', '注册', '100', '111'), ('11', '1000000011', '注册', '100', '111'), ('12', '1000000012', '注册', '100', '111'), ('13', '1000000013', '注册', '100', '111'), ('14', '1000000014', '注册', '100', '111'), ('15', '1000000015', '注册', '100', '111');
COMMIT;

-- ----------------------------
--  Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_ID` char(5) NOT NULL,
  `manager_name` char(20) DEFAULT NULL,
  `manager_identity` char(1) DEFAULT NULL,
  `manager_phone` char(20) DEFAULT NULL,
  PRIMARY KEY (`manager_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_ID` int(11) NOT NULL AUTO_INCREMENT,
  `message_send_ID` char(10) DEFAULT NULL,
  `message_receive_ID` char(10) DEFAULT NULL,
  `message_type` char(1) DEFAULT NULL,
  `messag
e_date` datetime DEFAULT NULL,
  `message_title` char(30) DEFAULT NULL,
  `message_information` char(200) DEFAULT NULL,
  `message_state` char(1) DEFAULT NULL,
  PRIMARY KEY (`message_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_ID` char(14) NOT NULL,
  `orders_createtime` datetime DEFAULT NULL,
  `orders_finishtime` datetime DEFAULT NULL,
  `orders_grade` char(1) DEFAULT NULL,
  `orders_cost` double DEFAULT NULL,
  `orders_remark` char(100) DEFAULT NULL,
  `orders_state` char(2) DEFAULT NULL,
  `recipient_ID` char(10) DEFAULT NULL,
  `replacement_ID` char(10) DEFAULT NULL,
  `express_name` char(20) DEFAULT NULL,
  `express_code` char(20) DEFAULT NULL,
  `pickup_time` datetime DEFAULT NULL,
  `pickup_address` char(60) DEFAULT NULL,
  `pickup_code` char(10) DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `delivery_address` char(60) DEFAULT NULL,
  PRIMARY KEY (`orders_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `orders`
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES ('100001', '2017-04-23 10:14:21', null, null, null, null, '1', '10001', null, 'sto', '14012984', '2017-04-28 14:59:59', '??????', null, '2017-04-28 14:59:59', '28??505'), ('100002', '2017-04-23 10:14:21', null, null, null, null, '1', '10002', null, 'yto', '3729792', '2017-04-28 14:59:59', '??????', null, '2017-04-28 14:59:59', '28??505'), ('100003', '2017-04-23 10:14:21', null, null, null, null, '1', '10003', null, 'sto', '3749273', '2017-04-28 14:59:59', '??????', null, '2017-04-28 14:59:59', '28??505'), ('100004', '2017-04-23 10:14:21', null, null, null, null, '1', '10004', null, 'yto', '32793792', '2017-04-28 14:59:59', '??????', null, '2017-04-28 14:59:59', '28??505'), ('100005', '2017-04-23 10:14:21', null, null, null, null, '1', '10005', null, 'sto', '32783728', null, '??????', null, '2017-04-28 14:59:59', '28??505'), ('20170423100000', '2017-04-23 10:13:39', null, null, null, '???', '3', '213124124', '213124127', '??', '14012412412', '2017-04-28 14:59:59', '??????', '124', '2017-04-28 14:59:59', '28??505'), ('20170423100001', '2017-04-23 10:14:21', null, null, null, '???', '1', '213124124', null, '??', '14012412412', '2017-04-28 14:59:59', '??????', '124', '2017-04-28 14:59:59', '28??505');
COMMIT;

-- ----------------------------
--  Table structure for `orders_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `orders_operation_log`;
CREATE TABLE `orders_operation_log` (
  `orders_log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `orders_ID` char(14) DEFAULT NULL,
  `state_type` char(2) DEFAULT NULL,
  `state_change_time` datetime DEFAULT NULL,
  PRIMARY KEY (`orders_log_ID`),
  KEY `orderid` (`orders_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `orders_operation_log`
-- ----------------------------
BEGIN;
INSERT INTO `orders_operation_log` VALUES ('1', '20170423100000', '1', '2017-04-23 10:13:39'), ('2', '20170423100001', '1', '2017-04-23 10:14:21'), ('3', '20170423100000', '2', '2017-04-23 11:14:06'), ('4', '20170423100000', '2', '2017-04-23 11:15:33'), ('5', '20170423100000', '2', '2017-04-23 11:17:56'), ('6', '20170423100000', '3', '2017-04-23 11:23:18'), ('7', '20170423100000', '3', '2017-04-23 11:28:38'), ('8', '20170423100000', '3', '2017-04-23 11:34:13');
COMMIT;

-- ----------------------------
--  Table structure for `payment_infomation`
-- ----------------------------
DROP TABLE IF EXISTS `payment_infomation`;
CREATE TABLE `payment_infomation` (
  `payment_ID` char(14) NOT NULL,
  `orders_id` char(14) DEFAULT NULL,
  `payment_type` char(1) DEFAULT NULL,
  `payment_cost` double DEFAULT NULL,
  `payment_state` char(1) DEFAULT NULL,
  `payment_ channels` char(1) DEFAULT NULL,
  `payment_information` char(100) DEFAULT NULL,
  PRIMARY KEY (`payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_ID` char(14) NOT NULL,
  `user_ID` char(10) DEFAULT NULL,
  `manager_ID` char(5) DEFAULT NULL,
  `review_type` char(2) DEFAULT NULL,
  `review_time` datetime DEFAULT NULL,
  `review_state` char(1) DEFAULT NULL,
  `review_information` char(200) DEFAULT NULL,
  PRIMARY KEY (`review_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `review`
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES ('2017051100000', '213124124', null, '0', '2017-05-11 23:46:49', '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_ID` char(10) NOT NULL,
  `user_name` char(20) DEFAULT NULL,
  `user_phone` char(20) NOT NULL,
  `user_password` char(15) DEFAULT NULL,
  `user_identity` char(1) DEFAULT NULL,
  `user_schoolcard` char(15) DEFAULT NULL,
  `user_idcard` char(18) DEFAULT NULL,
  `user_photo` char(200) DEFAULT NULL,
  `user_alipay` char(20) DEFAULT NULL,
  `user_sex` char(4) DEFAULT NULL,
  `user_schoolname` char(40) DEFAULT NULL,
  `user_schooladdress` char(80) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('0000001', null, 'qeqwe12', null, null, null, null, null, null, null, null, null), ('1000000001', 'test1', '18200000001', '123456', '1', '140153001', '3300001', 'asd1', 'qwer1', '女', 'shnu', 'sh'), ('1000000002', 'test2', '18200000002', '123456', '1', '140153002', '3300001', 'asd2', 'qwer2', '男', 'shnu', 'sh'), ('1000000003', 'test3', '18200000003', '123456', '1', '140153003', '3300001', 'asd3', 'qwer3', '女', 'shnu', 'sh'), ('1000000004', 'test4', '18200000004', '123456', '1', '140153004', '3300001', 'asd4', 'qwer4', '女', 'shnu', 'sh'), ('1000000005', 'test5', '18200000005', '123456', '1', '140153005', '3300001', 'asd5', 'qwer5', '男', 'shnu', 'sh'), ('1000000006', 'test6', '18200000006', '123456', '1', '140153006', '3300001', 'asd6', 'qwer6', '女', 'shnu', 'sh'), ('1000000007', 'test7', '18200000007', '123456', '1', '140153007', '3300001', 'asd7', 'qwer7', '男', 'shnu', 'sh'), ('1000000008', 'test8', '18200000008', '123456', '2', '140153008', '3300001', 'asd8', 'qwer8', '男', 'shnu', 'sh'), ('1000000009', 'test9', '18200000009', '123456', '2', '140153009', '3300001', 'asd9', 'qwer9', '女', 'shnu', 'sh'), ('1000000010', 'test10', '18200000010', '123456', '2', '140153010', '3300001', 'asd10', 'qwer10', '男', 'shnu', 'sh'), ('1000000011', 'test11', '18200000011', '123456', '2', '140153011', '3300001', 'asd11', 'qwer11', '女', 'shnu', 'sh'), ('1000000012', 'test12', '18200000012', '123456', '2', '140153012', '3300001', 'asd12', 'qwer12', '男', 'shnu', 'sh'), ('1000000013', 'test13', '18200000013', '123456', '2', '140153013', '3300001', 'asd13', 'qwer13', '女', 'shnu', 'sh'), ('1000000014', 'test14', '18200000014', '123456', '2', '140153014', '3300001', 'asd14', 'qwer14', '男', 'shnu', 'sh'), ('1000000015', 'test15', '18200000015', '123456', '2', '140153015', '3300001', 'asd15', 'qwer15', '男', 'shnu', 'sh'), ('10001', null, '14424223232', '123456', '1', null, null, null, null, '?', null, null), ('10002', null, '23242423233', '123456', '1', null, null, null, null, '?', null, null), ('10003', null, '23232324242', '123456', '2', null, null, null, null, '?', null, null), ('10004', null, '23232323232', '123456', '2', null, null, null, null, '?', null, null), ('10005', null, '24252324232', '123456', '2', null, null, null, null, '?', null, null), ('213124124', '???', '12345678901', '123456', '1', '1', '12', '1', '1332', '7', '6687', '686'), ('213124126', '???', '18217699894', '123456', '0', '123456789', null, null, null, '?', '?????', '????100?'), ('213124127', '???', '18217699895', '123456', '2', '123456789', null, null, null, '?', '?????', '????100?'), ('213124128', 'Ticknick', '18217699800', '123456', '1', '123456789', null, null, null, '?', '?????', '????100?'), ('213124129', 'steven', '13052116492', '1111', '1', '814', null, null, null, '?', '???', '???');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
