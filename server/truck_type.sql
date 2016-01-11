/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tongbao

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-01-11 12:41:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for truck_type
-- ----------------------------
DROP TABLE IF EXISTS `truck_type`;
CREATE TABLE `truck_type` (
  `type` tinyint(4) NOT NULL,
  `base_price` double DEFAULT NULL,
  `capacity` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `over_price` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of truck_type
-- ----------------------------
INSERT INTO `truck_type` VALUES ('0', '35', '1', '1', '1.7', '面包车', '3.5', '1.2');
INSERT INTO `truck_type` VALUES ('1', '60', '1.5', '1.1', '2.7', '金杯车', '4', '1.3');
INSERT INTO `truck_type` VALUES ('2', '70', '1.6', '1.3', '2.5', '依维柯', '5', '1.9');
INSERT INTO `truck_type` VALUES ('3', '70', '1.5', '1.5', '1.6', '小型厢货', '4', '1.6');
INSERT INTO `truck_type` VALUES ('4', '50', '1.5', '1.5', '2.8', '小型平板', '4', '1.6');
INSERT INTO `truck_type` VALUES ('5', '170', '1.8', '1.8', '4.2', '中型厢货', '5', '1.8');
INSERT INTO `truck_type` VALUES ('6', '100', '1.8', '1.8', '4.2', '中型平板', '5', '1.8');
INSERT INTO `truck_type` VALUES ('7', '230', '3', '2', '5.3', '大型厢货', '7', '2');
INSERT INTO `truck_type` VALUES ('8', '220', '3', '2', '5.3', '大型平板', '7', '2');
