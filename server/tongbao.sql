/*
Navicat MySQL Data Transfer

Source Server         : tongbao
Source Server Version : 50547
Source Host           : 120.27.112.9:3306
Source Database       : tongbao

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-04-15 00:55:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `build_time` datetime DEFAULT NULL,
  `money` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '2016-04-09 21:23:56', '1.3', '0', '0', '2');
INSERT INTO `account` VALUES ('2', '2016-04-09 21:24:23', '1.3', '0', '0', '2');
INSERT INTO `account` VALUES ('91', '2016-04-09 21:40:34', '1.1', '0', '0', '32');
INSERT INTO `account` VALUES ('146', '2016-04-09 23:49:33', '123.45', '0', '0', '34');
INSERT INTO `account` VALUES ('147', '2016-04-09 23:49:56', '12.34', '0', '1', '34');
INSERT INTO `account` VALUES ('162', '2016-04-10 18:45:52', '1.11', '0', '0', '12');
INSERT INTO `account` VALUES ('163', '2016-04-10 19:23:40', '52', '18', '4', '18');

-- ----------------------------
-- Table structure for account_type_name_t
-- ----------------------------
DROP TABLE IF EXISTS `account_type_name_t`;
CREATE TABLE `account_type_name_t` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of account_type_name_t
-- ----------------------------
INSERT INTO `account_type_name_t` VALUES ('0', '充值');
INSERT INTO `account_type_name_t` VALUES ('1', '提现');
INSERT INTO `account_type_name_t` VALUES ('2', '支付');
INSERT INTO `account_type_name_t` VALUES ('3', '退款');
INSERT INTO `account_type_name_t` VALUES ('4', '到帐');

-- ----------------------------
-- Table structure for auth_state_name_t
-- ----------------------------
DROP TABLE IF EXISTS `auth_state_name_t`;
CREATE TABLE `auth_state_name_t` (
  `state` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_state_name_t
-- ----------------------------
INSERT INTO `auth_state_name_t` VALUES ('0', '未验证');
INSERT INTO `auth_state_name_t` VALUES ('1', '正在验证');
INSERT INTO `auth_state_name_t` VALUES ('2', '验证成功');
INSERT INTO `auth_state_name_t` VALUES ('3', '验证失败');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `driver_to_shipper` tinyint(4) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `shipper_to_driver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', '12', '1', '2', '0');
INSERT INTO `contacts` VALUES ('2', '12', '0', '3', '1');
INSERT INTO `contacts` VALUES ('3', '12', '1', '4', '1');
INSERT INTO `contacts` VALUES ('4', '13', '1', '2', '1');
INSERT INTO `contacts` VALUES ('5', '14', '1', '2', '1');
INSERT INTO `contacts` VALUES ('6', '15', '1', '2', '1');
INSERT INTO `contacts` VALUES ('7', '15', '0', '2', '1');
INSERT INTO `contacts` VALUES ('8', '17', '1', '3', '1');
INSERT INTO `contacts` VALUES ('9', '18', '1', '2', '1');
INSERT INTO `contacts` VALUES ('10', '19', '1', '2', '1');
INSERT INTO `contacts` VALUES ('11', '17', '1', '2', '1');

-- ----------------------------
-- Table structure for driver_auth
-- ----------------------------
DROP TABLE IF EXISTS `driver_auth`;
CREATE TABLE `driver_auth` (
  `id` int(11) NOT NULL,
  `auth_state` tinyint(4) DEFAULT NULL,
  `driving_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truck_license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truck_num` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truck_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `head_picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `truck_num` (`truck_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of driver_auth
-- ----------------------------
INSERT INTO `driver_auth` VALUES ('1', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '小歪', 'http://120.27.112.9:8080/tongbao/user/picture?id=172', '12345', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '1', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=173', '123456');
INSERT INTO `driver_auth` VALUES ('2', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '12346', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '2', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12346');
INSERT INTO `driver_auth` VALUES ('3', '3', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '12347', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '3', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12347');
INSERT INTO `driver_auth` VALUES ('5', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '管登荣', 'http://120.27.112.9:8080/tongbao/user/picture?id=216', '123454', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '2', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=217', '54631875');
INSERT INTO `driver_auth` VALUES ('6', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '123465', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '1', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12346');
INSERT INTO `driver_auth` VALUES ('8', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '123482', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '3', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12348');
INSERT INTO `driver_auth` VALUES ('9', '3', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '123455', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '3', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12345');
INSERT INTO `driver_auth` VALUES ('10', '2', 'http://imgsrc.baidu.com/forum/pic/item/b646572c11dfa9ec8df3bcf962d0f703938fc190.jpg', '15851812313', '仝全', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '123467', 'http://imgsrc.baidu.com/forum/pic/item/d62a6059252dd42a404ade3e033b5bb5c8eab8e0.jpg', '4', '12', 'http://img4.duitang.com/uploads/item/201204/12/20120412114952_3LycR.jpeg', '12346');
INSERT INTO `driver_auth` VALUES ('14', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=161', '15950562922', '朱晨', 'http://120.27.112.9:8080/tongbao/user/picture?id=159', '苏B15706', 'http://120.27.112.9:8080/tongbao/user/picture?id=162', '0', '23', 'http://120.27.112.9:8080/tongbao/user/picture?id=160', '121250230');
INSERT INTO `driver_auth` VALUES ('15', '0', null, '15950562922', null, null, '苏B12508', null, '0', '12', null, null);
INSERT INTO `driver_auth` VALUES ('21', '0', null, '15950552222', null, null, '苏H12345', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('24', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=191', '15656563225', '朱晨', 'http://120.27.112.9:8080/tongbao/user/picture?id=189', '苏M15362', 'http://120.27.112.9:8080/tongbao/user/picture?id=192', '0', '23', 'http://120.27.112.9:8080/tongbao/user/picture?id=190', '125643');
INSERT INTO `driver_auth` VALUES ('26', '0', null, '15936362323', null, null, '苏G12345', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('27', '0', null, '15950563533', null, null, '苏P23232', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('28', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=187', '15950632584', '朱晨', 'http://120.27.112.9:8080/tongbao/user/picture?id=185', '苏F12356', 'http://120.27.112.9:8080/tongbao/user/picture?id=188', '0', '23', 'http://120.27.112.9:8080/tongbao/user/picture?id=186', '12345');
INSERT INTO `driver_auth` VALUES ('29', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=195', '15851962363', 'www', 'http://120.27.112.9:8080/tongbao/user/picture?id=193', '苏NJU5051', 'http://120.27.112.9:8080/tongbao/user/picture?id=196', '0', '23', 'http://120.27.112.9:8080/tongbao/user/picture?id=194', '55555');
INSERT INTO `driver_auth` VALUES ('30', '0', null, '15632638593', null, null, '苏NJU5052', null, '0', '22', null, null);
INSERT INTO `driver_auth` VALUES ('31', '0', null, '15632638593', null, null, '苏NJU5053', null, '0', '22', null, null);
INSERT INTO `driver_auth` VALUES ('32', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=221', '15950562922', '朱晨', 'http://120.27.112.9:8080/tongbao/user/picture?id=219', '苏W11111', 'http://120.27.112.9:8080/tongbao/user/picture?id=222', '0', '23', 'http://120.27.112.9:8080/tongbao/user/picture?id=220', '3162946');
INSERT INTO `driver_auth` VALUES ('33', '0', null, '15950562922', null, null, '苏P12345', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('34', '0', null, '15950552922', null, null, '苏L12356', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('41', '1', 'http://120.27.112.9:8080/tongbao/user/picture?id=271', '15950562922', '是假的吧', 'http://120.27.112.9:8080/tongbao/user/picture?id=269', '苏U13465', 'http://120.27.112.9:8080/tongbao/user/picture?id=272', '1', '13', 'http://120.27.112.9:8080/tongbao/user/picture?id=270', '437646');
INSERT INTO `driver_auth` VALUES ('42', '2', 'http://120.27.112.9:8080/tongbao/user/picture?id=251', '18602514017', '王啟', 'http://120.27.112.9:8080/tongbao/user/picture?id=253', '苏NJU505', 'http://120.27.112.9:8080/tongbao/user/picture?id=252', '0', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=254', '12');
INSERT INTO `driver_auth` VALUES ('43', '0', null, '15950562922', null, null, '苏U12345', null, '0', '12', null, null);
INSERT INTO `driver_auth` VALUES ('44', '2', 'http://120.27.112.9:8080/tongbao/user/picture?id=257', '18602514123', '王啟', 'http://120.27.112.9:8080/tongbao/user/picture?id=255', '苏NJU506', 'http://120.27.112.9:8080/tongbao/user/picture?id=258', '0', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=256', '13');
INSERT INTO `driver_auth` VALUES ('47', '0', null, '15950562922', null, null, '苏M12636', null, '0', '12', null, null);
INSERT INTO `driver_auth` VALUES ('48', '2', 'http://120.27.112.9:8080/tongbao/user/picture?id=261', '18602514013', '王啟', 'http://120.27.112.9:8080/tongbao/user/picture?id=259', '苏NJU508', 'http://120.27.112.9:8080/tongbao/user/picture?id=262', '0', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=260', '13');
INSERT INTO `driver_auth` VALUES ('49', '0', null, '15956592222', null, null, '苏P13464', null, '0', '12', null, null);
INSERT INTO `driver_auth` VALUES ('50', '0', null, '15950562222', null, null, '苏I00000', null, '0', '23', null, null);
INSERT INTO `driver_auth` VALUES ('51', '0', null, '18602536123', null, null, '苏NJU509', null, '0', '13', null, null);
INSERT INTO `driver_auth` VALUES ('52', '2', 'http://120.27.112.9:8080/tongbao/user/picture?id=289', '15853693258', '王啟', 'http://120.27.112.9:8080/tongbao/user/picture?id=287', '苏NJU529', 'http://120.27.112.9:8080/tongbao/user/picture?id=290', '0', '12', 'http://120.27.112.9:8080/tongbao/user/picture?id=288', '123');

-- ----------------------------
-- Table structure for driver_gps
-- ----------------------------
DROP TABLE IF EXISTS `driver_gps`;
CREATE TABLE `driver_gps` (
  `id` int(11) NOT NULL,
  `collect_time` datetime DEFAULT NULL,
  `driver_id` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3j1thang373dyj2kqtimmtjy4` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of driver_gps
-- ----------------------------
INSERT INTO `driver_gps` VALUES ('1', '2016-04-09 05:09:36', '13', '32.059920207', '118.773485766', '2016-04-09 17:09:36');
INSERT INTO `driver_gps` VALUES ('2', '2016-04-09 10:12:20', '12', '32.056012129', '118.776614893', '2016-04-09 22:12:20');
INSERT INTO `driver_gps` VALUES ('3', '2016-03-27 22:40:33', '14', '2', '324', '2016-04-03 22:46:42');
INSERT INTO `driver_gps` VALUES ('4', '2016-03-27 22:40:33', '16', '2', '324', '2016-04-04 00:03:38');
INSERT INTO `driver_gps` VALUES ('5', '2016-04-09 04:23:03', '23', '32.060476819', '118.772450547', '2016-04-09 16:23:03');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', '/store/picture/1457240495137.PNG');
INSERT INTO `file` VALUES ('2', '/store/picture/1457240812627.PNG');
INSERT INTO `file` VALUES ('3', '/store/picture/1457241005621.PNG');
INSERT INTO `file` VALUES ('4', '/store/picture/1457241116682.png');
INSERT INTO `file` VALUES ('5', '/store/picture/1457241216214.jpg');
INSERT INTO `file` VALUES ('6', '/store/picture/1457241520956.png');
INSERT INTO `file` VALUES ('7', '/store/picture/1457241922938.png');
INSERT INTO `file` VALUES ('8', '/store/picture/1457243019274.jpg');
INSERT INTO `file` VALUES ('9', '/store/picture/1457243189445.jpg');
INSERT INTO `file` VALUES ('10', '/store/picture/1457243579212.jpg');
INSERT INTO `file` VALUES ('11', '/store/picture/1457243719713.jpg');
INSERT INTO `file` VALUES ('12', '/store/picture/1457243982431.jpg');
INSERT INTO `file` VALUES ('13', '/store/picture/1457244190683.jpg');
INSERT INTO `file` VALUES ('14', '/store/picture/1457244203463.jpg');
INSERT INTO `file` VALUES ('15', '/store/picture/1457244489435.jpg');
INSERT INTO `file` VALUES ('16', '/store/picture/1457244500796.png');
INSERT INTO `file` VALUES ('17', '/store/picture/1457249863996.jpg');
INSERT INTO `file` VALUES ('18', '/store/picture/1457249888619.jpg');
INSERT INTO `file` VALUES ('19', '/store/picture/1457250020659.jpg');
INSERT INTO `file` VALUES ('20', '/store/picture/1457250069813.jpg');
INSERT INTO `file` VALUES ('21', '/store/picture/1457250104857.jpg');
INSERT INTO `file` VALUES ('22', '/store/picture/1457250588981.jpg');
INSERT INTO `file` VALUES ('23', '/store/picture/1457250694699.jpg');
INSERT INTO `file` VALUES ('24', '/store/picture/1457250874162.jpg');
INSERT INTO `file` VALUES ('25', '/store/picture/1457250890769.png');
INSERT INTO `file` VALUES ('26', '/store/picture/1457251062130.jpg');
INSERT INTO `file` VALUES ('27', '/store/picture/1457251181775.jpg');
INSERT INTO `file` VALUES ('28', '/store/picture/1457251273640.jpg');
INSERT INTO `file` VALUES ('29', '/store/picture/1457251388398.jpg');
INSERT INTO `file` VALUES ('30', '/store/picture/1457251577673.jpg');
INSERT INTO `file` VALUES ('31', '/store/picture/1457251825101.jpg');
INSERT INTO `file` VALUES ('32', '/store/picture/1457251842176.jpg');
INSERT INTO `file` VALUES ('33', '/store/picture/1457253794590.jpg');
INSERT INTO `file` VALUES ('34', '/store/picture/1457265961051.jpg');
INSERT INTO `file` VALUES ('35', '/store/picture/1457314904502.jpg');
INSERT INTO `file` VALUES ('36', '/store/picture/1457344508473.png');
INSERT INTO `file` VALUES ('37', '/store/picture/1457358199777.png');
INSERT INTO `file` VALUES ('38', '/store/picture/1457358366181.jpg');
INSERT INTO `file` VALUES ('39', '/store/picture/1457358434732.png');
INSERT INTO `file` VALUES ('40', '/store/picture/1457359056878.jpg');
INSERT INTO `file` VALUES ('41', '/store/picture/1457359137035.jpg');
INSERT INTO `file` VALUES ('42', '/store/picture/1457359142146.jpg');
INSERT INTO `file` VALUES ('43', '/store/picture/1457359565598.jpg');
INSERT INTO `file` VALUES ('44', '/store/picture/1457359674485.jpg');
INSERT INTO `file` VALUES ('45', '/store/picture/1457359679525.jpg');
INSERT INTO `file` VALUES ('46', '/store/picture/1457360120833.png');
INSERT INTO `file` VALUES ('47', '/store/picture/1457360179731.jpg');
INSERT INTO `file` VALUES ('48', '/store/picture/1457360208367.jpg');
INSERT INTO `file` VALUES ('49', '/store/picture/1457360215623.jpg');
INSERT INTO `file` VALUES ('50', '/store/picture/1457360343974.jpg');
INSERT INTO `file` VALUES ('51', '/store/picture/1457360799347.jpg');
INSERT INTO `file` VALUES ('52', '/store/picture/1457360979159.jpg');
INSERT INTO `file` VALUES ('53', '/store/picture/1457361242803.jpg');
INSERT INTO `file` VALUES ('54', '/store/picture/1457361247431.jpg');
INSERT INTO `file` VALUES ('55', '/store/picture/1457361275903.jpg');
INSERT INTO `file` VALUES ('56', '/store/picture/1457361280264.jpg');
INSERT INTO `file` VALUES ('57', '/store/picture/1457362963633.jpg');
INSERT INTO `file` VALUES ('58', '/store/picture/1457363737813.jpg');
INSERT INTO `file` VALUES ('59', '/store/picture/1457364870359.jpg');
INSERT INTO `file` VALUES ('60', '/store/picture/1457366421472.jpg');
INSERT INTO `file` VALUES ('61', '/store/picture/1457366427506.jpg');
INSERT INTO `file` VALUES ('62', '/store/picture/1457366440035.jpg');
INSERT INTO `file` VALUES ('63', '/store/picture/1457366445666.jpg');
INSERT INTO `file` VALUES ('64', '/store/picture/1457366585172.jpg');
INSERT INTO `file` VALUES ('65', '/store/picture/1457366590155.jpg');
INSERT INTO `file` VALUES ('66', '/store/picture/1457366599899.jpg');
INSERT INTO `file` VALUES ('67', '/store/picture/1457366605111.png');
INSERT INTO `file` VALUES ('68', '/store/picture/1457367110207.jpg');
INSERT INTO `file` VALUES ('69', '/store/picture/1457367114571.jpg');
INSERT INTO `file` VALUES ('70', '/store/picture/1457367123973.jpg');
INSERT INTO `file` VALUES ('71', '/store/picture/1457367128534.jpg');
INSERT INTO `file` VALUES ('72', '/store/picture/1457367343644.jpg');
INSERT INTO `file` VALUES ('73', '/store/picture/1457367347762.jpg');
INSERT INTO `file` VALUES ('74', '/store/picture/1457367354308.jpg');
INSERT INTO `file` VALUES ('75', '/store/picture/1457367358279.jpg');
INSERT INTO `file` VALUES ('76', '/store/picture/1457367417855.jpg');
INSERT INTO `file` VALUES ('77', '/store/picture/1457367421938.png');
INSERT INTO `file` VALUES ('78', '/store/picture/1457367430265.jpg');
INSERT INTO `file` VALUES ('79', '/store/picture/1457367435359.png');
INSERT INTO `file` VALUES ('80', '/store/picture/1457402439084.jpg');
INSERT INTO `file` VALUES ('81', '/store/picture/1457402443318.jpg');
INSERT INTO `file` VALUES ('82', '/store/picture/1457402451978.jpg');
INSERT INTO `file` VALUES ('83', '/store/picture/1457402456539.png');
INSERT INTO `file` VALUES ('84', '/store/picture/1457402682110.jpg');
INSERT INTO `file` VALUES ('85', '/store/picture/1457402687113.jpg');
INSERT INTO `file` VALUES ('86', '/store/picture/1457402695080.jpg');
INSERT INTO `file` VALUES ('87', '/store/picture/1457402698974.jpg');
INSERT INTO `file` VALUES ('88', '/store/picture/1457403454937.jpg');
INSERT INTO `file` VALUES ('89', '/store/picture/1457403461164.jpg');
INSERT INTO `file` VALUES ('90', '/store/picture/1457403472320.jpg');
INSERT INTO `file` VALUES ('91', '/store/picture/1457403476673.jpg');
INSERT INTO `file` VALUES ('92', '/store/picture/1457403786640.jpg');
INSERT INTO `file` VALUES ('93', '/store/picture/1457403792859.jpg');
INSERT INTO `file` VALUES ('94', '/store/picture/1457403804436.jpg');
INSERT INTO `file` VALUES ('95', '/store/picture/1457403811907.jpg');
INSERT INTO `file` VALUES ('96', '/store/picture/1457403936136.jpg');
INSERT INTO `file` VALUES ('97', '/store/picture/1457403942184.jpg');
INSERT INTO `file` VALUES ('98', '/store/picture/1457403953509.jpg');
INSERT INTO `file` VALUES ('99', '/store/picture/1457403957882.jpg');
INSERT INTO `file` VALUES ('100', '/store/picture/1457404029423.jpg');
INSERT INTO `file` VALUES ('101', '/store/picture/1457404034343.jpg');
INSERT INTO `file` VALUES ('102', '/store/picture/1457404047869.jpg');
INSERT INTO `file` VALUES ('103', '/store/picture/1457404053580.jpg');
INSERT INTO `file` VALUES ('104', '/store/picture/1457404168919.jpg');
INSERT INTO `file` VALUES ('105', '/store/picture/1457404173294.jpg');
INSERT INTO `file` VALUES ('106', '/store/picture/1457404180251.jpg');
INSERT INTO `file` VALUES ('107', '/store/picture/1457404185461.jpg');
INSERT INTO `file` VALUES ('108', '/store/picture/1457404571820.jpg');
INSERT INTO `file` VALUES ('109', '/store/picture/1457404576573.jpg');
INSERT INTO `file` VALUES ('110', '/store/picture/1457404583986.jpg');
INSERT INTO `file` VALUES ('111', '/store/picture/1457404588701.jpg');
INSERT INTO `file` VALUES ('112', '/store/picture/1457405035547.jpg');
INSERT INTO `file` VALUES ('113', '/store/picture/1457405040954.jpg');
INSERT INTO `file` VALUES ('114', '/store/picture/1457405047902.jpg');
INSERT INTO `file` VALUES ('115', '/store/picture/1457405052045.jpg');
INSERT INTO `file` VALUES ('116', '/store/picture/1457405149585.jpg');
INSERT INTO `file` VALUES ('117', '/store/picture/1457405155192.jpg');
INSERT INTO `file` VALUES ('118', '/store/picture/1457405162899.jpg');
INSERT INTO `file` VALUES ('119', '/store/picture/1457405167007.jpg');
INSERT INTO `file` VALUES ('120', '/store/picture/1457405574187.jpg');
INSERT INTO `file` VALUES ('121', '/store/picture/1457405586705.jpg');
INSERT INTO `file` VALUES ('122', '/store/picture/1457405593634.jpg');
INSERT INTO `file` VALUES ('123', '/store/picture/1457405598199.jpg');
INSERT INTO `file` VALUES ('124', '/store/picture/1457405834026.jpg');
INSERT INTO `file` VALUES ('125', '/store/picture/1457405843199.jpg');
INSERT INTO `file` VALUES ('126', '/store/picture/1457405851035.gif');
INSERT INTO `file` VALUES ('127', '/store/picture/1457405859923.jpg');
INSERT INTO `file` VALUES ('128', '/store/picture/1457405910907.jpg');
INSERT INTO `file` VALUES ('129', '/store/picture/1457406587819.jpg');
INSERT INTO `file` VALUES ('130', '/store/picture/1457406591784.jpg');
INSERT INTO `file` VALUES ('131', '/store/picture/1457406598533.jpg');
INSERT INTO `file` VALUES ('132', '/store/picture/1457406603745.jpg');
INSERT INTO `file` VALUES ('133', '/store/picture/1457410000875.jpg');
INSERT INTO `file` VALUES ('134', '/store/picture/1457410007102.jpg');
INSERT INTO `file` VALUES ('135', '/store/picture/1457410017736.jpg');
INSERT INTO `file` VALUES ('136', '/store/picture/1457410022070.jpg');
INSERT INTO `file` VALUES ('137', '/store/picture/1457410887252.jpg');
INSERT INTO `file` VALUES ('138', '/store/picture/1457410940406.jpg');
INSERT INTO `file` VALUES ('139', '/store/picture/1457410956622.jpg');
INSERT INTO `file` VALUES ('140', '/store/picture/1457410961516.jpg');
INSERT INTO `file` VALUES ('141', '/store/picture/1457411356739.jpg');
INSERT INTO `file` VALUES ('142', '/store/picture/1457411362591.jpg');
INSERT INTO `file` VALUES ('143', '/store/picture/1457411515648.jpg');
INSERT INTO `file` VALUES ('144', '/store/picture/1457411521496.jpg');
INSERT INTO `file` VALUES ('145', '/store/picture/1457411528447.jpg');
INSERT INTO `file` VALUES ('146', '/store/picture/1457411532265.jpg');
INSERT INTO `file` VALUES ('147', '/store/picture/1457412373776.jpg');
INSERT INTO `file` VALUES ('148', '/store/picture/1457412379436.jpg');
INSERT INTO `file` VALUES ('149', '/store/picture/1457412383963.jpg');
INSERT INTO `file` VALUES ('150', '/store/picture/1457412388642.png');
INSERT INTO `file` VALUES ('151', '/store/picture/1457412852257.png');
INSERT INTO `file` VALUES ('152', '/store/picture/1457412858822.jpg');
INSERT INTO `file` VALUES ('153', '/store/picture/1457412879269.jpg');
INSERT INTO `file` VALUES ('154', '/store/picture/1457412888424.jpg');
INSERT INTO `file` VALUES ('155', '/store/picture/1457412948748.jpg');
INSERT INTO `file` VALUES ('156', '/store/picture/1457412954433.jpg');
INSERT INTO `file` VALUES ('157', '/store/picture/1457412960285.jpg');
INSERT INTO `file` VALUES ('158', '/store/picture/1457412964968.jpg');
INSERT INTO `file` VALUES ('159', '/store/picture/1457419722317.jpg');
INSERT INTO `file` VALUES ('160', '/store/picture/1457419726770.jpg');
INSERT INTO `file` VALUES ('161', '/store/picture/1457419741159.jpg');
INSERT INTO `file` VALUES ('162', '/store/picture/1457419751383.jpg');
INSERT INTO `file` VALUES ('163', '/store/picture/1457421375415.jpg');
INSERT INTO `file` VALUES ('164', '/store/picture/1457438350106.jpg');
INSERT INTO `file` VALUES ('165', '/store/picture/1457438354553.jpg');
INSERT INTO `file` VALUES ('166', '/store/picture/1457438359539.jpg');
INSERT INTO `file` VALUES ('167', '/store/picture/1457438363982.jpg');
INSERT INTO `file` VALUES ('168', '/store/picture/1457451775007.jpg');
INSERT INTO `file` VALUES ('169', '/store/picture/1457527935361.jpg');
INSERT INTO `file` VALUES ('170', '/store/picture/1457527988103.jpg');
INSERT INTO `file` VALUES ('171', '/store/picture/1457527997275.jpg');
INSERT INTO `file` VALUES ('172', '/store/picture/1457528833510.jpg');
INSERT INTO `file` VALUES ('173', '/store/picture/1457528843712.jpg');
INSERT INTO `file` VALUES ('174', '/store/picture/1457528856605.jpg');
INSERT INTO `file` VALUES ('175', '/store/picture/1457528862410.jpg');
INSERT INTO `file` VALUES ('176', '/store/picture/1457529021489.jpg');
INSERT INTO `file` VALUES ('177', '/store/picture/1457529028269.jpg');
INSERT INTO `file` VALUES ('178', '/store/picture/1457529034242.jpg');
INSERT INTO `file` VALUES ('179', '/store/picture/1457529039096.jpg');
INSERT INTO `file` VALUES ('180', '/store/picture/1457530851843.jpg');
INSERT INTO `file` VALUES ('181', '/store/picture/1457536645045.jpg');
INSERT INTO `file` VALUES ('182', '/store/picture/1457536650436.jpg');
INSERT INTO `file` VALUES ('183', '/store/picture/1457536657479.jpg');
INSERT INTO `file` VALUES ('184', '/store/picture/1457536662624.jpg');
INSERT INTO `file` VALUES ('185', '/store/picture/1457536848195.jpg');
INSERT INTO `file` VALUES ('186', '/store/picture/1457536852504.jpg');
INSERT INTO `file` VALUES ('187', '/store/picture/1457536858685.jpg');
INSERT INTO `file` VALUES ('188', '/store/picture/1457536863353.jpg');
INSERT INTO `file` VALUES ('189', '/store/picture/1457536891633.png');
INSERT INTO `file` VALUES ('190', '/store/picture/1457536895583.png');
INSERT INTO `file` VALUES ('191', '/store/picture/1457536902558.png');
INSERT INTO `file` VALUES ('192', '/store/picture/1457536907417.png');
INSERT INTO `file` VALUES ('193', '/store/picture/1457537199209.jpg');
INSERT INTO `file` VALUES ('194', '/store/picture/1457537204194.jpg');
INSERT INTO `file` VALUES ('195', '/store/picture/1457537221787.jpg');
INSERT INTO `file` VALUES ('196', '/store/picture/1457537226258.jpg');
INSERT INTO `file` VALUES ('197', '/store/picture/1457537628368.jpg');
INSERT INTO `file` VALUES ('198', '/store/picture/1457537632665.jpg');
INSERT INTO `file` VALUES ('199', '/store/picture/1457537638609.jpg');
INSERT INTO `file` VALUES ('200', '/store/picture/1457537644444.jpg');
INSERT INTO `file` VALUES ('201', '/store/picture/1457704724413.png');
INSERT INTO `file` VALUES ('202', '/store/picture/1457704729738.jpg');
INSERT INTO `file` VALUES ('203', '/store/picture/1457704735218.jpg');
INSERT INTO `file` VALUES ('204', '/store/picture/1457704740281.jpg');
INSERT INTO `file` VALUES ('205', '/store/picture/1457704932448.jpg');
INSERT INTO `file` VALUES ('206', '/store/picture/1457706640193.jpg');
INSERT INTO `file` VALUES ('207', '/store/picture/1457780584989.jpg');
INSERT INTO `file` VALUES ('208', '/store/picture/1457781384347.png');
INSERT INTO `file` VALUES ('209', '/store/picture/1457781542044.png');
INSERT INTO `file` VALUES ('210', '/store/picture/1457781565127.png');
INSERT INTO `file` VALUES ('211', '/store/picture/1457787672731.jpg');
INSERT INTO `file` VALUES ('212', '/store/picture/1457845627063.jpg');
INSERT INTO `file` VALUES ('213', '/store/picture/1457946176849.jpg');
INSERT INTO `file` VALUES ('214', '/store/picture/1457946247842.jpg');
INSERT INTO `file` VALUES ('215', '/store/picture/1457946261344.jpg');
INSERT INTO `file` VALUES ('216', '/store/picture/1457946292626.png');
INSERT INTO `file` VALUES ('217', '/store/picture/1457946299736.jpg');
INSERT INTO `file` VALUES ('218', '/store/picture/1457946349921.jpg');
INSERT INTO `file` VALUES ('219', '/store/picture/1458105093085.jpeg');
INSERT INTO `file` VALUES ('220', '/store/picture/1458105097547.jpeg');
INSERT INTO `file` VALUES ('221', '/store/picture/1458105102327.jpeg');
INSERT INTO `file` VALUES ('222', '/store/picture/1458105106238.jpg');
INSERT INTO `file` VALUES ('223', '/store/picture/1458461465478.png');
INSERT INTO `file` VALUES ('224', '/store/picture/1458461542780.png');
INSERT INTO `file` VALUES ('225', '/store/picture/1458461665492.png');
INSERT INTO `file` VALUES ('226', '/store/picture/1458462005602.png');
INSERT INTO `file` VALUES ('227', '/store/picture/1458462239876.png');
INSERT INTO `file` VALUES ('228', '/store/picture/1458462378839.png');
INSERT INTO `file` VALUES ('229', '/store/picture/1458462564537.png');
INSERT INTO `file` VALUES ('230', '/store/picture/1458462774151.png');
INSERT INTO `file` VALUES ('231', '/store/picture/1458462848073.png');
INSERT INTO `file` VALUES ('232', '/store/picture/1458463048297.png');
INSERT INTO `file` VALUES ('233', '/store/picture/1458463205776.png');
INSERT INTO `file` VALUES ('234', '/store/picture/1458463479897.png');
INSERT INTO `file` VALUES ('235', '/store/picture/1458463522646.png');
INSERT INTO `file` VALUES ('236', '/store/picture/1458463569665.png');
INSERT INTO `file` VALUES ('237', '/store/picture/1458463825738.png');
INSERT INTO `file` VALUES ('238', '/store/picture/1458463842003.png');
INSERT INTO `file` VALUES ('239', '/store/picture/1458463893808.png');
INSERT INTO `file` VALUES ('240', '/store/picture/1458464260926.png');
INSERT INTO `file` VALUES ('241', '/store/picture/1458464378731.png');
INSERT INTO `file` VALUES ('242', '/store/picture/1458469191998.jpg');
INSERT INTO `file` VALUES ('243', '/store/picture/1458481495486.png');
INSERT INTO `file` VALUES ('244', '/store/picture/1458482010194.png');
INSERT INTO `file` VALUES ('245', '/store/picture/1458786631278.png');
INSERT INTO `file` VALUES ('246', '/store/picture/1459401732372.png');
INSERT INTO `file` VALUES ('247', '/store/picture/1459401749968.png');
INSERT INTO `file` VALUES ('248', '/store/picture/1459401766506.png');
INSERT INTO `file` VALUES ('249', '/store/picture/1459401857482.png');
INSERT INTO `file` VALUES ('250', '/store/picture/1459818471701.png');
INSERT INTO `file` VALUES ('251', '/store/picture/1459865515896.jpg');
INSERT INTO `file` VALUES ('252', '/store/picture/1459865522564.jpg');
INSERT INTO `file` VALUES ('253', '/store/picture/1459865541895.jpg');
INSERT INTO `file` VALUES ('254', '/store/picture/1459865549520.jpg');
INSERT INTO `file` VALUES ('255', '/store/picture/1459865569450.jpg');
INSERT INTO `file` VALUES ('256', '/store/picture/1459865575599.jpg');
INSERT INTO `file` VALUES ('257', '/store/picture/1459865581989.jpg');
INSERT INTO `file` VALUES ('258', '/store/picture/1459865588145.jpg');
INSERT INTO `file` VALUES ('259', '/store/picture/1459865610309.jpg');
INSERT INTO `file` VALUES ('260', '/store/picture/1459865616358.jpg');
INSERT INTO `file` VALUES ('261', '/store/picture/1459865622812.jpg');
INSERT INTO `file` VALUES ('262', '/store/picture/1459865631883.jpg');
INSERT INTO `file` VALUES ('263', '/store/picture/1460191729500.jpg');
INSERT INTO `file` VALUES ('264', '/store/picture/1460191775988.jpg');
INSERT INTO `file` VALUES ('265', '/store/picture/1460191787909.jpg');
INSERT INTO `file` VALUES ('266', '/store/picture/1460191967588.jpg');
INSERT INTO `file` VALUES ('267', '/store/picture/1460191978298.jpg');
INSERT INTO `file` VALUES ('268', '/store/picture/1460191985963.jpg');
INSERT INTO `file` VALUES ('269', '/store/picture/1460192045352.jpg');
INSERT INTO `file` VALUES ('270', '/store/picture/1460192049374.jpg');
INSERT INTO `file` VALUES ('271', '/store/picture/1460192054103.jpg');
INSERT INTO `file` VALUES ('272', '/store/picture/1460192057223.jpg');
INSERT INTO `file` VALUES ('273', '/store/picture/1460199584519.png');
INSERT INTO `file` VALUES ('274', '/store/picture/1460199630238.png');
INSERT INTO `file` VALUES ('275', '/store/picture/1460199682545.png');
INSERT INTO `file` VALUES ('276', '/store/picture/1460199756599.png');
INSERT INTO `file` VALUES ('277', '/store/picture/1460200227235.png');
INSERT INTO `file` VALUES ('278', '/store/picture/1460200626745.png');
INSERT INTO `file` VALUES ('279', '/store/picture/1460200864250.png');
INSERT INTO `file` VALUES ('280', '/store/picture/1460201360295.png');
INSERT INTO `file` VALUES ('281', '/store/picture/1460203896276.png');
INSERT INTO `file` VALUES ('282', '/store/picture/1460203915112.png');
INSERT INTO `file` VALUES ('283', '/store/picture/1460203933115.png');
INSERT INTO `file` VALUES ('284', '/store/picture/1460203974064.png');
INSERT INTO `file` VALUES ('285', '/store/picture/1460216621153.png');
INSERT INTO `file` VALUES ('286', '/store/picture/1460216657094.png');
INSERT INTO `file` VALUES ('287', '/store/picture/1460379960284.jpg');
INSERT INTO `file` VALUES ('288', '/store/picture/1460379967007.jpg');
INSERT INTO `file` VALUES ('289', '/store/picture/1460379978245.jpg');
INSERT INTO `file` VALUES ('290', '/store/picture/1460379986304.jpg');
INSERT INTO `file` VALUES ('291', '/store/picture/1460547019726.png');
INSERT INTO `file` VALUES ('292', '/store/picture/1460547032748.png');
INSERT INTO `file` VALUES ('293', '/store/picture/1460547189222.png');
INSERT INTO `file` VALUES ('294', '/store/picture/1460547447092.png');
INSERT INTO `file` VALUES ('295', '/store/picture/1460547460354.png');

-- ----------------------------
-- Table structure for frequent_address
-- ----------------------------
DROP TABLE IF EXISTS `frequent_address`;
CREATE TABLE `frequent_address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of frequent_address
-- ----------------------------
INSERT INTO `frequent_address` VALUES ('1', '江苏省南京市鼓楼汉口路22号', '2', '324.3', '23.5', null, null);
INSERT INTO `frequent_address` VALUES ('2', '江苏省南京市栖霞区南大仙林校区', '2', '23.3', '24.4', null, null);
INSERT INTO `frequent_address` VALUES ('3', '江苏省南京市将军大道16号', '2', '12.3', '3.4', null, null);
INSERT INTO `frequent_address` VALUES ('4', '江苏省南京市珠江路1号', '2', '32.4', '234.4', null, null);
INSERT INTO `frequent_address` VALUES ('5', '江苏省南京市珠江路5号', '2', '32.4', '234.4', null, null);
INSERT INTO `frequent_address` VALUES ('6', '江苏省南京市珠江路7号', '2', '32.4', '234.4', null, null);
INSERT INTO `frequent_address` VALUES ('7', '上海市滨涯路4号', '2', '12.3', '23.4', null, null);
INSERT INTO `frequent_address` VALUES ('8', '北京', '2', '56', '34.5', '蛤蛤', '21345589');
INSERT INTO `frequent_address` VALUES ('9', '上海市南京路4号', '2', '12.3', '23.4', null, null);
INSERT INTO `frequent_address` VALUES ('11', '南京市鼓楼区汉口路22号南京大学', '24', '0', '0', null, null);
INSERT INTO `frequent_address` VALUES ('12', '南京市鼓楼区汉口路22号南京大学', '24', '38.8', '114.8', null, null);
INSERT INTO `frequent_address` VALUES ('13', null, '29', '32.03369300388162', '118.7847854300005', null, null);
INSERT INTO `frequent_address` VALUES ('14', '中国江苏省南京市秦淮区洪武路街道西武学园', '29', '32.03369300388162', '118.7847854300005', null, null);
INSERT INTO `frequent_address` VALUES ('15', '中国江苏省南京市秦淮区洪武路街道西武学园', '30', '32.03369300388162', '118.7847854300005', null, null);
INSERT INTO `frequent_address` VALUES ('16', '中国江苏省南京市秦淮区洪武路街道棉鞋营43-3号', '30', '32.03202380953503', '118.7995347128096', null, null);
INSERT INTO `frequent_address` VALUES ('17', '', '30', '0', '0', null, null);
INSERT INTO `frequent_address` VALUES ('18', '中国山东省济南市天桥区南村街道汽车厂东路33-3号', '30', '36.68828398697731', '116.9901969804279', null, null);
INSERT INTO `frequent_address` VALUES ('19', '中国江苏省南京市鼓楼区华侨路街道龙蟠里18号', '30', '32.04613859041383', '118.7651417283669', null, null);
INSERT INTO `frequent_address` VALUES ('20', '', '30', '0', '0', null, null);
INSERT INTO `frequent_address` VALUES ('21', '', '30', '0', '0', null, null);
INSERT INTO `frequent_address` VALUES ('22', '南京市鼓楼区汉口路22号', '24', '32.3', '118.1', 'gdr', '15950570277');

-- ----------------------------
-- Table structure for frequent_driver
-- ----------------------------
DROP TABLE IF EXISTS `frequent_driver`;
CREATE TABLE `frequent_driver` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of frequent_driver
-- ----------------------------
INSERT INTO `frequent_driver` VALUES ('2', '13', '2');
INSERT INTO `frequent_driver` VALUES ('3', '14', '2');
INSERT INTO `frequent_driver` VALUES ('4', '15', '2');
INSERT INTO `frequent_driver` VALUES ('5', '16', '2');
INSERT INTO `frequent_driver` VALUES ('6', '17', '2');
INSERT INTO `frequent_driver` VALUES ('7', '18', '2');
INSERT INTO `frequent_driver` VALUES ('8', '8', '24');
INSERT INTO `frequent_driver` VALUES ('9', '18', '24');
INSERT INTO `frequent_driver` VALUES ('10', '13', '30');
INSERT INTO `frequent_driver` VALUES ('11', '17', '30');
INSERT INTO `frequent_driver` VALUES ('12', '15', '30');
INSERT INTO `frequent_driver` VALUES ('13', '19', '30');
INSERT INTO `frequent_driver` VALUES ('14', '23', '30');
INSERT INTO `frequent_driver` VALUES ('15', '18', '30');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_read` tinyint(4) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', '消息啊大事发生大幅', '1', '0', '2016-03-14 19:59:41', '3', '1');
INSERT INTO `message` VALUES ('7', '斯蒂芬斯蒂芬斯蒂芬斯蒂芬', '1', '0', '2016-03-14 23:23:23', '3', '23');
INSERT INTO `message` VALUES ('9', '斯蒂芬斯蒂芬斯蒂芬斯蒂芬', '1', '0', '2016-03-14 23:23:23', '3', '23');

-- ----------------------------
-- Table structure for message_type
-- ----------------------------
DROP TABLE IF EXISTS `message_type`;
CREATE TABLE `message_type` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message_type
-- ----------------------------
INSERT INTO `message_type` VALUES ('0', '订单被抢到（通知货主）');
INSERT INTO `message_type` VALUES ('1', '订单完成（通知司机）');
INSERT INTO `message_type` VALUES ('2', '正在进行的订单被取消(通知司机)');
INSERT INTO `message_type` VALUES ('3', '其它消息');

-- ----------------------------
-- Table structure for order_state_name_t
-- ----------------------------
DROP TABLE IF EXISTS `order_state_name_t`;
CREATE TABLE `order_state_name_t` (
  `state` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_state_name_t
-- ----------------------------
INSERT INTO `order_state_name_t` VALUES ('0', '尚未被抢');
INSERT INTO `order_state_name_t` VALUES ('1', '正在进行');
INSERT INTO `order_state_name_t` VALUES ('2', '已经完成');
INSERT INTO `order_state_name_t` VALUES ('3', '被取消');
INSERT INTO `order_state_name_t` VALUES ('4', '正在取消');
INSERT INTO `order_state_name_t` VALUES ('5', '被货主删除');
INSERT INTO `order_state_name_t` VALUES ('6', '被司机删除');
INSERT INTO `order_state_name_t` VALUES ('7', '被司机和货主都删除');

-- ----------------------------
-- Table structure for order_truck_type
-- ----------------------------
DROP TABLE IF EXISTS `order_truck_type`;
CREATE TABLE `order_truck_type` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `truck_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_truck_type
-- ----------------------------
INSERT INTO `order_truck_type` VALUES ('1', '1', '1');
INSERT INTO `order_truck_type` VALUES ('2', '2', '2');
INSERT INTO `order_truck_type` VALUES ('3', '3', '3');
INSERT INTO `order_truck_type` VALUES ('4', '4', '0');
INSERT INTO `order_truck_type` VALUES ('5', '5', '5');
INSERT INTO `order_truck_type` VALUES ('6', '6', '3');
INSERT INTO `order_truck_type` VALUES ('7', '7', '8');
INSERT INTO `order_truck_type` VALUES ('8', '9', '3');
INSERT INTO `order_truck_type` VALUES ('9', '9', '2');
INSERT INTO `order_truck_type` VALUES ('10', '10', '0');
INSERT INTO `order_truck_type` VALUES ('11', '10', '7');
INSERT INTO `order_truck_type` VALUES ('12', '10', '7');
INSERT INTO `order_truck_type` VALUES ('13', '10', '6');
INSERT INTO `order_truck_type` VALUES ('14', '10', '6');
INSERT INTO `order_truck_type` VALUES ('15', '10', '5');
INSERT INTO `order_truck_type` VALUES ('16', '10', '8');
INSERT INTO `order_truck_type` VALUES ('17', '10', '6');
INSERT INTO `order_truck_type` VALUES ('18', '10', '4');
INSERT INTO `order_truck_type` VALUES ('19', '11', '8');
INSERT INTO `order_truck_type` VALUES ('20', '11', '2');
INSERT INTO `order_truck_type` VALUES ('21', '11', '6');
INSERT INTO `order_truck_type` VALUES ('22', '11', '6');
INSERT INTO `order_truck_type` VALUES ('23', '11', '7');
INSERT INTO `order_truck_type` VALUES ('24', '12', '2');
INSERT INTO `order_truck_type` VALUES ('25', '12', '4');
INSERT INTO `order_truck_type` VALUES ('26', '12', '5');
INSERT INTO `order_truck_type` VALUES ('27', '12', '0');
INSERT INTO `order_truck_type` VALUES ('28', '13', '3');
INSERT INTO `order_truck_type` VALUES ('29', '13', '2');
INSERT INTO `order_truck_type` VALUES ('30', '13', '7');
INSERT INTO `order_truck_type` VALUES ('31', '13', '0');
INSERT INTO `order_truck_type` VALUES ('32', '13', '6');
INSERT INTO `order_truck_type` VALUES ('33', '13', '6');
INSERT INTO `order_truck_type` VALUES ('34', '13', '1');
INSERT INTO `order_truck_type` VALUES ('35', '14', '1');
INSERT INTO `order_truck_type` VALUES ('36', '14', '8');
INSERT INTO `order_truck_type` VALUES ('37', '15', '8');
INSERT INTO `order_truck_type` VALUES ('38', '15', '3');
INSERT INTO `order_truck_type` VALUES ('39', '16', '4');
INSERT INTO `order_truck_type` VALUES ('40', '16', '5');
INSERT INTO `order_truck_type` VALUES ('41', '16', '2');
INSERT INTO `order_truck_type` VALUES ('42', '16', '4');
INSERT INTO `order_truck_type` VALUES ('43', '16', '6');
INSERT INTO `order_truck_type` VALUES ('44', '17', '4');
INSERT INTO `order_truck_type` VALUES ('45', '17', '5');
INSERT INTO `order_truck_type` VALUES ('46', '17', '8');
INSERT INTO `order_truck_type` VALUES ('47', '17', '7');
INSERT INTO `order_truck_type` VALUES ('48', '17', '5');
INSERT INTO `order_truck_type` VALUES ('49', '17', '6');
INSERT INTO `order_truck_type` VALUES ('50', '17', '6');
INSERT INTO `order_truck_type` VALUES ('51', '17', '5');
INSERT INTO `order_truck_type` VALUES ('52', '17', '5');
INSERT INTO `order_truck_type` VALUES ('53', '18', '3');
INSERT INTO `order_truck_type` VALUES ('54', '18', '5');
INSERT INTO `order_truck_type` VALUES ('55', '18', '4');
INSERT INTO `order_truck_type` VALUES ('56', '18', '5');
INSERT INTO `order_truck_type` VALUES ('57', '18', '2');
INSERT INTO `order_truck_type` VALUES ('58', '18', '7');
INSERT INTO `order_truck_type` VALUES ('59', '19', '3');
INSERT INTO `order_truck_type` VALUES ('60', '20', '8');
INSERT INTO `order_truck_type` VALUES ('61', '20', '6');
INSERT INTO `order_truck_type` VALUES ('62', '21', '3');
INSERT INTO `order_truck_type` VALUES ('63', '22', '2');
INSERT INTO `order_truck_type` VALUES ('64', '22', '4');
INSERT INTO `order_truck_type` VALUES ('65', '22', '1');
INSERT INTO `order_truck_type` VALUES ('66', '22', '8');
INSERT INTO `order_truck_type` VALUES ('67', '22', '8');
INSERT INTO `order_truck_type` VALUES ('68', '22', '8');
INSERT INTO `order_truck_type` VALUES ('69', '22', '3');
INSERT INTO `order_truck_type` VALUES ('70', '22', '1');
INSERT INTO `order_truck_type` VALUES ('71', '22', '1');
INSERT INTO `order_truck_type` VALUES ('72', '23', '6');
INSERT INTO `order_truck_type` VALUES ('73', '23', '8');
INSERT INTO `order_truck_type` VALUES ('74', '23', '4');
INSERT INTO `order_truck_type` VALUES ('75', '23', '4');
INSERT INTO `order_truck_type` VALUES ('76', '24', '8');
INSERT INTO `order_truck_type` VALUES ('77', '24', '6');
INSERT INTO `order_truck_type` VALUES ('78', '25', '7');
INSERT INTO `order_truck_type` VALUES ('79', '25', '3');
INSERT INTO `order_truck_type` VALUES ('80', '26', '1');
INSERT INTO `order_truck_type` VALUES ('81', '26', '6');
INSERT INTO `order_truck_type` VALUES ('82', '26', '5');
INSERT INTO `order_truck_type` VALUES ('83', '26', '4');
INSERT INTO `order_truck_type` VALUES ('84', '26', '0');
INSERT INTO `order_truck_type` VALUES ('85', '26', '8');
INSERT INTO `order_truck_type` VALUES ('86', '26', '4');
INSERT INTO `order_truck_type` VALUES ('87', '26', '6');
INSERT INTO `order_truck_type` VALUES ('88', '26', '2');
INSERT INTO `order_truck_type` VALUES ('89', '27', '0');
INSERT INTO `order_truck_type` VALUES ('90', '27', '5');
INSERT INTO `order_truck_type` VALUES ('91', '27', '0');
INSERT INTO `order_truck_type` VALUES ('92', '27', '0');
INSERT INTO `order_truck_type` VALUES ('93', '27', '2');
INSERT INTO `order_truck_type` VALUES ('94', '27', '4');
INSERT INTO `order_truck_type` VALUES ('95', '27', '6');
INSERT INTO `order_truck_type` VALUES ('96', '27', '8');
INSERT INTO `order_truck_type` VALUES ('97', '27', '2');
INSERT INTO `order_truck_type` VALUES ('98', '28', '2');
INSERT INTO `order_truck_type` VALUES ('99', '28', '8');
INSERT INTO `order_truck_type` VALUES ('100', '28', '2');
INSERT INTO `order_truck_type` VALUES ('101', '28', '0');
INSERT INTO `order_truck_type` VALUES ('102', '28', '5');
INSERT INTO `order_truck_type` VALUES ('103', '28', '5');
INSERT INTO `order_truck_type` VALUES ('104', '29', '0');
INSERT INTO `order_truck_type` VALUES ('105', '29', '5');
INSERT INTO `order_truck_type` VALUES ('106', '29', '5');
INSERT INTO `order_truck_type` VALUES ('107', '30', '6');
INSERT INTO `order_truck_type` VALUES ('108', '30', '2');
INSERT INTO `order_truck_type` VALUES ('109', '30', '6');
INSERT INTO `order_truck_type` VALUES ('110', '30', '3');
INSERT INTO `order_truck_type` VALUES ('111', '31', '1');
INSERT INTO `order_truck_type` VALUES ('112', '31', '5');
INSERT INTO `order_truck_type` VALUES ('113', '31', '5');
INSERT INTO `order_truck_type` VALUES ('114', '31', '5');
INSERT INTO `order_truck_type` VALUES ('115', '31', '2');
INSERT INTO `order_truck_type` VALUES ('116', '31', '2');
INSERT INTO `order_truck_type` VALUES ('117', '32', '2');
INSERT INTO `order_truck_type` VALUES ('118', '32', '0');
INSERT INTO `order_truck_type` VALUES ('119', '32', '7');
INSERT INTO `order_truck_type` VALUES ('120', '32', '6');
INSERT INTO `order_truck_type` VALUES ('121', '32', '2');
INSERT INTO `order_truck_type` VALUES ('122', '32', '7');
INSERT INTO `order_truck_type` VALUES ('123', '33', '5');
INSERT INTO `order_truck_type` VALUES ('124', '33', '2');
INSERT INTO `order_truck_type` VALUES ('125', '33', '6');
INSERT INTO `order_truck_type` VALUES ('126', '33', '2');
INSERT INTO `order_truck_type` VALUES ('127', '33', '1');
INSERT INTO `order_truck_type` VALUES ('128', '33', '0');
INSERT INTO `order_truck_type` VALUES ('129', '33', '5');
INSERT INTO `order_truck_type` VALUES ('130', '33', '6');
INSERT INTO `order_truck_type` VALUES ('131', '33', '8');
INSERT INTO `order_truck_type` VALUES ('132', '34', '1');
INSERT INTO `order_truck_type` VALUES ('133', '34', '1');
INSERT INTO `order_truck_type` VALUES ('134', '34', '8');
INSERT INTO `order_truck_type` VALUES ('135', '34', '7');
INSERT INTO `order_truck_type` VALUES ('136', '35', '1');
INSERT INTO `order_truck_type` VALUES ('137', '35', '6');
INSERT INTO `order_truck_type` VALUES ('138', '36', '4');
INSERT INTO `order_truck_type` VALUES ('139', '36', '4');
INSERT INTO `order_truck_type` VALUES ('140', '37', '8');
INSERT INTO `order_truck_type` VALUES ('141', '37', '6');
INSERT INTO `order_truck_type` VALUES ('142', '37', '2');
INSERT INTO `order_truck_type` VALUES ('143', '37', '7');
INSERT INTO `order_truck_type` VALUES ('144', '37', '8');
INSERT INTO `order_truck_type` VALUES ('145', '38', '3');
INSERT INTO `order_truck_type` VALUES ('146', '38', '3');
INSERT INTO `order_truck_type` VALUES ('147', '38', '8');
INSERT INTO `order_truck_type` VALUES ('148', '38', '3');
INSERT INTO `order_truck_type` VALUES ('149', '38', '1');
INSERT INTO `order_truck_type` VALUES ('150', '39', '7');
INSERT INTO `order_truck_type` VALUES ('151', '39', '0');
INSERT INTO `order_truck_type` VALUES ('152', '39', '0');
INSERT INTO `order_truck_type` VALUES ('153', '39', '6');
INSERT INTO `order_truck_type` VALUES ('154', '39', '8');
INSERT INTO `order_truck_type` VALUES ('155', '39', '2');
INSERT INTO `order_truck_type` VALUES ('156', '39', '0');
INSERT INTO `order_truck_type` VALUES ('157', '39', '0');
INSERT INTO `order_truck_type` VALUES ('158', '40', '6');
INSERT INTO `order_truck_type` VALUES ('159', '40', '7');
INSERT INTO `order_truck_type` VALUES ('160', '40', '0');
INSERT INTO `order_truck_type` VALUES ('161', '40', '6');
INSERT INTO `order_truck_type` VALUES ('162', '41', '8');
INSERT INTO `order_truck_type` VALUES ('163', '41', '4');
INSERT INTO `order_truck_type` VALUES ('164', '41', '4');
INSERT INTO `order_truck_type` VALUES ('165', '41', '0');
INSERT INTO `order_truck_type` VALUES ('166', '41', '3');
INSERT INTO `order_truck_type` VALUES ('167', '42', '2');
INSERT INTO `order_truck_type` VALUES ('168', '42', '0');
INSERT INTO `order_truck_type` VALUES ('169', '42', '2');
INSERT INTO `order_truck_type` VALUES ('170', '42', '1');
INSERT INTO `order_truck_type` VALUES ('171', '42', '3');
INSERT INTO `order_truck_type` VALUES ('172', '42', '4');
INSERT INTO `order_truck_type` VALUES ('173', '42', '1');
INSERT INTO `order_truck_type` VALUES ('174', '43', '1');
INSERT INTO `order_truck_type` VALUES ('175', '43', '5');
INSERT INTO `order_truck_type` VALUES ('176', '43', '5');
INSERT INTO `order_truck_type` VALUES ('177', '43', '6');
INSERT INTO `order_truck_type` VALUES ('178', '43', '3');
INSERT INTO `order_truck_type` VALUES ('179', '43', '4');
INSERT INTO `order_truck_type` VALUES ('180', '44', '3');
INSERT INTO `order_truck_type` VALUES ('181', '44', '6');
INSERT INTO `order_truck_type` VALUES ('182', '44', '2');
INSERT INTO `order_truck_type` VALUES ('183', '44', '3');
INSERT INTO `order_truck_type` VALUES ('184', '44', '2');
INSERT INTO `order_truck_type` VALUES ('185', '45', '2');
INSERT INTO `order_truck_type` VALUES ('186', '45', '4');
INSERT INTO `order_truck_type` VALUES ('187', '46', '4');
INSERT INTO `order_truck_type` VALUES ('188', '46', '5');
INSERT INTO `order_truck_type` VALUES ('189', '46', '2');
INSERT INTO `order_truck_type` VALUES ('190', '46', '6');
INSERT INTO `order_truck_type` VALUES ('191', '47', '8');
INSERT INTO `order_truck_type` VALUES ('192', '47', '8');
INSERT INTO `order_truck_type` VALUES ('193', '47', '1');
INSERT INTO `order_truck_type` VALUES ('194', '47', '0');
INSERT INTO `order_truck_type` VALUES ('195', '47', '0');
INSERT INTO `order_truck_type` VALUES ('196', '47', '2');
INSERT INTO `order_truck_type` VALUES ('197', '47', '3');
INSERT INTO `order_truck_type` VALUES ('198', '48', '1');
INSERT INTO `order_truck_type` VALUES ('199', '48', '5');
INSERT INTO `order_truck_type` VALUES ('200', '48', '5');
INSERT INTO `order_truck_type` VALUES ('201', '48', '4');
INSERT INTO `order_truck_type` VALUES ('202', '48', '1');
INSERT INTO `order_truck_type` VALUES ('203', '49', '2');
INSERT INTO `order_truck_type` VALUES ('204', '49', '7');
INSERT INTO `order_truck_type` VALUES ('205', '49', '7');
INSERT INTO `order_truck_type` VALUES ('206', '49', '7');
INSERT INTO `order_truck_type` VALUES ('207', '49', '2');
INSERT INTO `order_truck_type` VALUES ('208', '49', '6');
INSERT INTO `order_truck_type` VALUES ('209', '49', '5');
INSERT INTO `order_truck_type` VALUES ('210', '49', '0');
INSERT INTO `order_truck_type` VALUES ('211', '50', '0');
INSERT INTO `order_truck_type` VALUES ('212', '50', '4');
INSERT INTO `order_truck_type` VALUES ('213', '50', '5');
INSERT INTO `order_truck_type` VALUES ('214', '50', '6');
INSERT INTO `order_truck_type` VALUES ('215', '51', '7');
INSERT INTO `order_truck_type` VALUES ('216', '51', '1');
INSERT INTO `order_truck_type` VALUES ('217', '51', '6');
INSERT INTO `order_truck_type` VALUES ('218', '51', '0');
INSERT INTO `order_truck_type` VALUES ('219', '52', '2');
INSERT INTO `order_truck_type` VALUES ('220', '52', '2');
INSERT INTO `order_truck_type` VALUES ('221', '52', '0');
INSERT INTO `order_truck_type` VALUES ('222', '52', '0');
INSERT INTO `order_truck_type` VALUES ('223', '52', '5');
INSERT INTO `order_truck_type` VALUES ('224', '53', '6');
INSERT INTO `order_truck_type` VALUES ('225', '53', '5');
INSERT INTO `order_truck_type` VALUES ('226', '53', '2');
INSERT INTO `order_truck_type` VALUES ('227', '53', '8');
INSERT INTO `order_truck_type` VALUES ('228', '53', '4');
INSERT INTO `order_truck_type` VALUES ('229', '53', '8');
INSERT INTO `order_truck_type` VALUES ('230', '53', '7');
INSERT INTO `order_truck_type` VALUES ('231', '54', '0');
INSERT INTO `order_truck_type` VALUES ('232', '54', '1');
INSERT INTO `order_truck_type` VALUES ('233', '54', '8');
INSERT INTO `order_truck_type` VALUES ('234', '55', '2');
INSERT INTO `order_truck_type` VALUES ('235', '55', '6');
INSERT INTO `order_truck_type` VALUES ('236', '55', '2');
INSERT INTO `order_truck_type` VALUES ('237', '55', '8');
INSERT INTO `order_truck_type` VALUES ('238', '56', '5');
INSERT INTO `order_truck_type` VALUES ('239', '56', '6');
INSERT INTO `order_truck_type` VALUES ('240', '56', '4');
INSERT INTO `order_truck_type` VALUES ('241', '56', '5');
INSERT INTO `order_truck_type` VALUES ('242', '56', '0');
INSERT INTO `order_truck_type` VALUES ('243', '56', '0');
INSERT INTO `order_truck_type` VALUES ('244', '56', '1');
INSERT INTO `order_truck_type` VALUES ('245', '56', '4');
INSERT INTO `order_truck_type` VALUES ('246', '56', '7');
INSERT INTO `order_truck_type` VALUES ('247', '57', '1');
INSERT INTO `order_truck_type` VALUES ('248', '57', '5');
INSERT INTO `order_truck_type` VALUES ('249', '57', '0');
INSERT INTO `order_truck_type` VALUES ('250', '58', '5');
INSERT INTO `order_truck_type` VALUES ('251', '58', '2');
INSERT INTO `order_truck_type` VALUES ('252', '58', '4');
INSERT INTO `order_truck_type` VALUES ('253', '58', '6');
INSERT INTO `order_truck_type` VALUES ('254', '58', '4');
INSERT INTO `order_truck_type` VALUES ('255', '59', '6');
INSERT INTO `order_truck_type` VALUES ('256', '59', '8');
INSERT INTO `order_truck_type` VALUES ('257', '59', '0');
INSERT INTO `order_truck_type` VALUES ('258', '59', '0');
INSERT INTO `order_truck_type` VALUES ('259', '59', '6');
INSERT INTO `order_truck_type` VALUES ('260', '59', '7');
INSERT INTO `order_truck_type` VALUES ('261', '59', '0');
INSERT INTO `order_truck_type` VALUES ('262', '60', '0');
INSERT INTO `order_truck_type` VALUES ('263', '61', '4');
INSERT INTO `order_truck_type` VALUES ('264', '61', '0');
INSERT INTO `order_truck_type` VALUES ('265', '61', '1');
INSERT INTO `order_truck_type` VALUES ('266', '61', '1');
INSERT INTO `order_truck_type` VALUES ('267', '61', '4');
INSERT INTO `order_truck_type` VALUES ('268', '61', '5');
INSERT INTO `order_truck_type` VALUES ('269', '61', '2');
INSERT INTO `order_truck_type` VALUES ('270', '61', '7');
INSERT INTO `order_truck_type` VALUES ('271', '62', '1');
INSERT INTO `order_truck_type` VALUES ('272', '62', '3');
INSERT INTO `order_truck_type` VALUES ('273', '62', '7');
INSERT INTO `order_truck_type` VALUES ('274', '62', '1');
INSERT INTO `order_truck_type` VALUES ('275', '62', '8');
INSERT INTO `order_truck_type` VALUES ('276', '63', '4');
INSERT INTO `order_truck_type` VALUES ('277', '63', '6');
INSERT INTO `order_truck_type` VALUES ('278', '63', '5');
INSERT INTO `order_truck_type` VALUES ('279', '63', '5');
INSERT INTO `order_truck_type` VALUES ('280', '63', '6');
INSERT INTO `order_truck_type` VALUES ('281', '63', '2');
INSERT INTO `order_truck_type` VALUES ('282', '63', '0');
INSERT INTO `order_truck_type` VALUES ('283', '63', '2');
INSERT INTO `order_truck_type` VALUES ('284', '64', '1');
INSERT INTO `order_truck_type` VALUES ('285', '64', '8');
INSERT INTO `order_truck_type` VALUES ('286', '64', '1');
INSERT INTO `order_truck_type` VALUES ('287', '65', '8');
INSERT INTO `order_truck_type` VALUES ('288', '65', '0');
INSERT INTO `order_truck_type` VALUES ('289', '65', '6');
INSERT INTO `order_truck_type` VALUES ('290', '65', '1');
INSERT INTO `order_truck_type` VALUES ('291', '65', '7');
INSERT INTO `order_truck_type` VALUES ('292', '66', '2');
INSERT INTO `order_truck_type` VALUES ('293', '66', '3');
INSERT INTO `order_truck_type` VALUES ('294', '66', '2');
INSERT INTO `order_truck_type` VALUES ('295', '66', '0');
INSERT INTO `order_truck_type` VALUES ('296', '66', '3');
INSERT INTO `order_truck_type` VALUES ('297', '66', '7');
INSERT INTO `order_truck_type` VALUES ('298', '66', '4');
INSERT INTO `order_truck_type` VALUES ('299', '66', '6');
INSERT INTO `order_truck_type` VALUES ('300', '67', '5');
INSERT INTO `order_truck_type` VALUES ('301', '67', '8');
INSERT INTO `order_truck_type` VALUES ('302', '67', '8');
INSERT INTO `order_truck_type` VALUES ('303', '67', '6');
INSERT INTO `order_truck_type` VALUES ('304', '67', '6');
INSERT INTO `order_truck_type` VALUES ('305', '68', '4');
INSERT INTO `order_truck_type` VALUES ('306', '69', '2');
INSERT INTO `order_truck_type` VALUES ('307', '69', '6');
INSERT INTO `order_truck_type` VALUES ('308', '69', '1');
INSERT INTO `order_truck_type` VALUES ('309', '69', '1');
INSERT INTO `order_truck_type` VALUES ('310', '70', '6');
INSERT INTO `order_truck_type` VALUES ('311', '70', '4');
INSERT INTO `order_truck_type` VALUES ('312', '70', '1');
INSERT INTO `order_truck_type` VALUES ('313', '70', '2');
INSERT INTO `order_truck_type` VALUES ('314', '70', '0');
INSERT INTO `order_truck_type` VALUES ('315', '71', '3');
INSERT INTO `order_truck_type` VALUES ('316', '71', '2');
INSERT INTO `order_truck_type` VALUES ('317', '71', '7');
INSERT INTO `order_truck_type` VALUES ('318', '71', '7');
INSERT INTO `order_truck_type` VALUES ('319', '71', '8');
INSERT INTO `order_truck_type` VALUES ('320', '72', '6');
INSERT INTO `order_truck_type` VALUES ('321', '72', '3');
INSERT INTO `order_truck_type` VALUES ('322', '72', '8');
INSERT INTO `order_truck_type` VALUES ('323', '72', '0');
INSERT INTO `order_truck_type` VALUES ('324', '73', '4');
INSERT INTO `order_truck_type` VALUES ('325', '73', '3');
INSERT INTO `order_truck_type` VALUES ('326', '73', '6');
INSERT INTO `order_truck_type` VALUES ('327', '73', '1');
INSERT INTO `order_truck_type` VALUES ('328', '74', '2');
INSERT INTO `order_truck_type` VALUES ('329', '74', '6');
INSERT INTO `order_truck_type` VALUES ('330', '74', '0');
INSERT INTO `order_truck_type` VALUES ('331', '74', '3');
INSERT INTO `order_truck_type` VALUES ('332', '74', '2');
INSERT INTO `order_truck_type` VALUES ('333', '74', '6');
INSERT INTO `order_truck_type` VALUES ('334', '74', '0');
INSERT INTO `order_truck_type` VALUES ('335', '74', '2');
INSERT INTO `order_truck_type` VALUES ('336', '75', '4');
INSERT INTO `order_truck_type` VALUES ('337', '75', '2');
INSERT INTO `order_truck_type` VALUES ('338', '75', '4');
INSERT INTO `order_truck_type` VALUES ('339', '75', '3');
INSERT INTO `order_truck_type` VALUES ('340', '75', '8');
INSERT INTO `order_truck_type` VALUES ('341', '75', '8');
INSERT INTO `order_truck_type` VALUES ('342', '76', '3');
INSERT INTO `order_truck_type` VALUES ('343', '76', '6');
INSERT INTO `order_truck_type` VALUES ('344', '76', '6');
INSERT INTO `order_truck_type` VALUES ('345', '76', '5');
INSERT INTO `order_truck_type` VALUES ('346', '76', '8');
INSERT INTO `order_truck_type` VALUES ('347', '76', '1');
INSERT INTO `order_truck_type` VALUES ('348', '77', '8');
INSERT INTO `order_truck_type` VALUES ('349', '77', '3');
INSERT INTO `order_truck_type` VALUES ('350', '77', '4');
INSERT INTO `order_truck_type` VALUES ('351', '77', '5');
INSERT INTO `order_truck_type` VALUES ('352', '77', '8');
INSERT INTO `order_truck_type` VALUES ('353', '77', '7');
INSERT INTO `order_truck_type` VALUES ('354', '78', '3');
INSERT INTO `order_truck_type` VALUES ('355', '78', '8');
INSERT INTO `order_truck_type` VALUES ('356', '78', '0');
INSERT INTO `order_truck_type` VALUES ('357', '78', '1');
INSERT INTO `order_truck_type` VALUES ('358', '79', '7');
INSERT INTO `order_truck_type` VALUES ('359', '79', '7');
INSERT INTO `order_truck_type` VALUES ('360', '79', '7');
INSERT INTO `order_truck_type` VALUES ('361', '79', '4');
INSERT INTO `order_truck_type` VALUES ('362', '79', '4');
INSERT INTO `order_truck_type` VALUES ('363', '80', '0');
INSERT INTO `order_truck_type` VALUES ('364', '80', '0');
INSERT INTO `order_truck_type` VALUES ('365', '80', '8');
INSERT INTO `order_truck_type` VALUES ('366', '80', '8');
INSERT INTO `order_truck_type` VALUES ('367', '80', '1');
INSERT INTO `order_truck_type` VALUES ('368', '81', '8');
INSERT INTO `order_truck_type` VALUES ('369', '81', '3');
INSERT INTO `order_truck_type` VALUES ('370', '81', '7');
INSERT INTO `order_truck_type` VALUES ('371', '81', '5');
INSERT INTO `order_truck_type` VALUES ('372', '82', '0');
INSERT INTO `order_truck_type` VALUES ('373', '82', '4');
INSERT INTO `order_truck_type` VALUES ('374', '82', '2');
INSERT INTO `order_truck_type` VALUES ('375', '82', '6');
INSERT INTO `order_truck_type` VALUES ('376', '82', '0');
INSERT INTO `order_truck_type` VALUES ('377', '82', '8');
INSERT INTO `order_truck_type` VALUES ('378', '82', '4');
INSERT INTO `order_truck_type` VALUES ('379', '83', '0');
INSERT INTO `order_truck_type` VALUES ('380', '83', '3');
INSERT INTO `order_truck_type` VALUES ('381', '83', '0');
INSERT INTO `order_truck_type` VALUES ('382', '83', '8');
INSERT INTO `order_truck_type` VALUES ('383', '83', '1');
INSERT INTO `order_truck_type` VALUES ('384', '84', '3');
INSERT INTO `order_truck_type` VALUES ('385', '85', '1');
INSERT INTO `order_truck_type` VALUES ('386', '85', '0');
INSERT INTO `order_truck_type` VALUES ('387', '85', '1');
INSERT INTO `order_truck_type` VALUES ('388', '85', '6');
INSERT INTO `order_truck_type` VALUES ('389', '85', '8');
INSERT INTO `order_truck_type` VALUES ('390', '85', '8');
INSERT INTO `order_truck_type` VALUES ('391', '86', '6');
INSERT INTO `order_truck_type` VALUES ('392', '86', '6');
INSERT INTO `order_truck_type` VALUES ('393', '86', '1');
INSERT INTO `order_truck_type` VALUES ('394', '86', '6');
INSERT INTO `order_truck_type` VALUES ('395', '86', '6');
INSERT INTO `order_truck_type` VALUES ('396', '87', '4');
INSERT INTO `order_truck_type` VALUES ('397', '87', '0');
INSERT INTO `order_truck_type` VALUES ('398', '87', '8');
INSERT INTO `order_truck_type` VALUES ('399', '88', '0');
INSERT INTO `order_truck_type` VALUES ('400', '88', '8');
INSERT INTO `order_truck_type` VALUES ('401', '88', '8');
INSERT INTO `order_truck_type` VALUES ('402', '89', '0');
INSERT INTO `order_truck_type` VALUES ('403', '89', '0');
INSERT INTO `order_truck_type` VALUES ('404', '89', '5');
INSERT INTO `order_truck_type` VALUES ('405', '89', '1');
INSERT INTO `order_truck_type` VALUES ('406', '89', '0');
INSERT INTO `order_truck_type` VALUES ('407', '89', '5');
INSERT INTO `order_truck_type` VALUES ('408', '89', '7');
INSERT INTO `order_truck_type` VALUES ('409', '90', '4');
INSERT INTO `order_truck_type` VALUES ('410', '90', '5');
INSERT INTO `order_truck_type` VALUES ('411', '90', '3');
INSERT INTO `order_truck_type` VALUES ('412', '91', '3');
INSERT INTO `order_truck_type` VALUES ('413', '91', '0');
INSERT INTO `order_truck_type` VALUES ('414', '91', '5');
INSERT INTO `order_truck_type` VALUES ('415', '91', '7');
INSERT INTO `order_truck_type` VALUES ('416', '91', '1');
INSERT INTO `order_truck_type` VALUES ('417', '91', '4');
INSERT INTO `order_truck_type` VALUES ('418', '91', '1');
INSERT INTO `order_truck_type` VALUES ('419', '92', '3');
INSERT INTO `order_truck_type` VALUES ('420', '93', '7');
INSERT INTO `order_truck_type` VALUES ('421', '93', '0');
INSERT INTO `order_truck_type` VALUES ('422', '93', '8');
INSERT INTO `order_truck_type` VALUES ('423', '93', '4');
INSERT INTO `order_truck_type` VALUES ('424', '94', '2');
INSERT INTO `order_truck_type` VALUES ('425', '94', '5');
INSERT INTO `order_truck_type` VALUES ('426', '95', '1');
INSERT INTO `order_truck_type` VALUES ('427', '95', '7');
INSERT INTO `order_truck_type` VALUES ('428', '95', '3');
INSERT INTO `order_truck_type` VALUES ('429', '95', '8');
INSERT INTO `order_truck_type` VALUES ('430', '95', '3');
INSERT INTO `order_truck_type` VALUES ('431', '96', '5');
INSERT INTO `order_truck_type` VALUES ('432', '96', '8');
INSERT INTO `order_truck_type` VALUES ('433', '96', '5');
INSERT INTO `order_truck_type` VALUES ('434', '97', '1');
INSERT INTO `order_truck_type` VALUES ('435', '97', '2');
INSERT INTO `order_truck_type` VALUES ('436', '97', '7');
INSERT INTO `order_truck_type` VALUES ('437', '97', '0');
INSERT INTO `order_truck_type` VALUES ('438', '98', '0');
INSERT INTO `order_truck_type` VALUES ('439', '98', '2');
INSERT INTO `order_truck_type` VALUES ('440', '99', '6');
INSERT INTO `order_truck_type` VALUES ('441', '99', '3');
INSERT INTO `order_truck_type` VALUES ('442', '99', '8');
INSERT INTO `order_truck_type` VALUES ('443', '99', '6');
INSERT INTO `order_truck_type` VALUES ('444', '100', '2');
INSERT INTO `order_truck_type` VALUES ('445', '100', '5');
INSERT INTO `order_truck_type` VALUES ('446', '101', '1');
INSERT INTO `order_truck_type` VALUES ('447', '102', '1');
INSERT INTO `order_truck_type` VALUES ('448', '103', '2');
INSERT INTO `order_truck_type` VALUES ('449', '104', '1');
INSERT INTO `order_truck_type` VALUES ('450', '105', '0');
INSERT INTO `order_truck_type` VALUES ('451', '106', '0');
INSERT INTO `order_truck_type` VALUES ('452', '107', '0');
INSERT INTO `order_truck_type` VALUES ('453', '108', '0');
INSERT INTO `order_truck_type` VALUES ('454', '109', '0');
INSERT INTO `order_truck_type` VALUES ('455', '110', '0');
INSERT INTO `order_truck_type` VALUES ('456', '111', '0');
INSERT INTO `order_truck_type` VALUES ('457', '112', '0');
INSERT INTO `order_truck_type` VALUES ('458', '113', '0');
INSERT INTO `order_truck_type` VALUES ('459', '114', '1');
INSERT INTO `order_truck_type` VALUES ('460', '115', '0');
INSERT INTO `order_truck_type` VALUES ('461', '115', '1');
INSERT INTO `order_truck_type` VALUES ('462', '115', '1');
INSERT INTO `order_truck_type` VALUES ('463', '115', '0');
INSERT INTO `order_truck_type` VALUES ('464', '115', '0');
INSERT INTO `order_truck_type` VALUES ('465', '116', '0');
INSERT INTO `order_truck_type` VALUES ('466', '117', '0');
INSERT INTO `order_truck_type` VALUES ('467', '117', '1');
INSERT INTO `order_truck_type` VALUES ('468', '117', '1');
INSERT INTO `order_truck_type` VALUES ('469', '117', '0');
INSERT INTO `order_truck_type` VALUES ('470', '117', '0');
INSERT INTO `order_truck_type` VALUES ('471', '118', '0');
INSERT INTO `order_truck_type` VALUES ('472', '118', '1');
INSERT INTO `order_truck_type` VALUES ('473', '118', '1');
INSERT INTO `order_truck_type` VALUES ('474', '118', '0');
INSERT INTO `order_truck_type` VALUES ('475', '118', '0');
INSERT INTO `order_truck_type` VALUES ('476', '119', '0');
INSERT INTO `order_truck_type` VALUES ('477', '119', '1');
INSERT INTO `order_truck_type` VALUES ('478', '119', '1');
INSERT INTO `order_truck_type` VALUES ('479', '119', '0');
INSERT INTO `order_truck_type` VALUES ('480', '119', '0');
INSERT INTO `order_truck_type` VALUES ('481', '120', '0');
INSERT INTO `order_truck_type` VALUES ('482', '120', '1');
INSERT INTO `order_truck_type` VALUES ('483', '120', '1');
INSERT INTO `order_truck_type` VALUES ('484', '120', '0');
INSERT INTO `order_truck_type` VALUES ('485', '120', '0');
INSERT INTO `order_truck_type` VALUES ('486', '121', '0');
INSERT INTO `order_truck_type` VALUES ('487', '121', '1');
INSERT INTO `order_truck_type` VALUES ('488', '121', '1');
INSERT INTO `order_truck_type` VALUES ('489', '121', '0');
INSERT INTO `order_truck_type` VALUES ('490', '121', '0');
INSERT INTO `order_truck_type` VALUES ('491', '122', '0');
INSERT INTO `order_truck_type` VALUES ('492', '122', '1');
INSERT INTO `order_truck_type` VALUES ('493', '122', '1');
INSERT INTO `order_truck_type` VALUES ('494', '122', '0');
INSERT INTO `order_truck_type` VALUES ('495', '122', '0');
INSERT INTO `order_truck_type` VALUES ('496', '123', '0');
INSERT INTO `order_truck_type` VALUES ('497', '123', '1');
INSERT INTO `order_truck_type` VALUES ('498', '123', '1');
INSERT INTO `order_truck_type` VALUES ('499', '123', '0');
INSERT INTO `order_truck_type` VALUES ('500', '123', '0');
INSERT INTO `order_truck_type` VALUES ('501', '124', '0');
INSERT INTO `order_truck_type` VALUES ('502', '125', '0');
INSERT INTO `order_truck_type` VALUES ('503', '126', '0');
INSERT INTO `order_truck_type` VALUES ('504', '127', '1');
INSERT INTO `order_truck_type` VALUES ('505', '128', '0');
INSERT INTO `order_truck_type` VALUES ('506', '128', '1');
INSERT INTO `order_truck_type` VALUES ('507', '128', '0');
INSERT INTO `order_truck_type` VALUES ('508', '128', '1');
INSERT INTO `order_truck_type` VALUES ('509', '128', '0');
INSERT INTO `order_truck_type` VALUES ('510', '128', '0');
INSERT INTO `order_truck_type` VALUES ('511', '129', '1');
INSERT INTO `order_truck_type` VALUES ('512', '130', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `build_time` datetime DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `evaluate_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evaluate_point` tinyint(4) DEFAULT NULL,
  `from_contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goods_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_time` datetime DEFAULT NULL,
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '0线上 1线下',
  `price` double(11,0) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `to_contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromLat` double DEFAULT NULL,
  `fromLng` double DEFAULT NULL,
  `toLat` double DEFAULT NULL,
  `tolng` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '南京市鼓楼区汉口路22号', '南京市栖霞区南大仙林校区', '2016-01-15 21:41:49', '12', '司机师傅很好！', '5', '小明', '15851813131', '3.0', '1', '2.0', '2015-11-09 00:00:00', '1', '100', '好好运哦！', '1', '6', '二哈', '123563494', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('2', '南京市鼓楼区上海路10号', '南京市栖霞区南大仙林校区', '2016-01-15 21:57:54', '12', '挺好的，很满意', '5', '小明', '15851813131', '3.0', '1', '2.0', '2015-11-09 00:00:00', '1', '100', '箱子轻拿轻放', '1', '2', '三娃', '2348934543', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('3', '南京市二哈路34号', '南京市金毛路5号', '2016-01-16 01:01:19', '12', '挺好的，很满意', '5', '小白', '15851813133', '3.0', '1', '2.0', '2015-11-09 00:00:00', '1', '1000', '轻拿轻放', '5', '2', '翠花', '1235634435', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('5', '南京市鼓楼区汉口路22号', '南京市栖霞区南大仙林校区', '2016-01-16 21:41:49', '12', null, '0', '小明', '15851813131', '3.0', '1', '2.0', '2015-11-09 00:00:00', '1', '100', '好好运哦！', '1', '2', '二哈', '123563494', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('6', '南京市鼓楼区上海路10号', '南京市栖霞区南大仙林校区', '2016-01-17 21:57:54', '12', null, '0', '小明', '15851813131', '3.0', '1', '2.0', '2015-11-09 00:00:00', '1', '100', '箱子轻拿轻放', '1', '2', '三娃', '2348934543', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('8', '南京市二哈路34号', '南京市金毛路5号', '2016-01-19 01:01:19', '12', null, '0', '小白', '15851813133', '3.0', '1', '2.0', '2015-11-12 00:00:00', '1', '1000', '轻拿轻放', '5', '2', '翠花', '	\n1235634435', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('9', '南京市玄武区莫愁路3号', '南京市秦淮区汉口路18号', '2016-03-15 11:23:43', '12', null, null, '联系人81号', '15950570277', '9.50592166832941', '食品', '3.1590145882121323', '2016-03-15 11:23:43', '0', '32', '轻拿轻放谢谢！', '3', '2', '联系人62号', '15850943849', '32.04899216233518', '118.47293881492362', '31.91347290793331', '118.33647207677564');
INSERT INTO `orders` VALUES ('10', '南京市秦淮区湖南路19号', '南京市秦淮区汉口路14号', '2016-03-15 11:23:43', '10', null, null, '联系人30号', '15950570277', '4.399102126297906', '食品', '4.480289980495299', '2016-03-15 11:23:43', '0', '30', '轻拿轻放谢谢！', '6', '2', '联系人43号', '15850943849', '32.4663127140497', '118.25878280299958', '32.504708967261735', '118.74005621904584');
INSERT INTO `orders` VALUES ('11', '南京市玄武区珠江路19号', '南京市栖霞区珠江路15号', '2016-03-15 11:23:44', '11', null, null, '联系人86号', '15950570277', '9.2318473866865', '食品', '0.4275979321510237', '2016-03-15 11:23:44', '0', '86', '轻拿轻放谢谢！', '10', '2', '联系人21号', '15850943849', '31.43321358640661', '118.88077806408546', '31.994132276446138', '118.34383583062305');
INSERT INTO `orders` VALUES ('12', '南京市江宁区北京东路12号', '南京市秦淮区湖南路2号', '2016-03-15 11:23:44', '12', null, null, '联系人54号', '15950570277', '1.1469230711332778', '食品', '5.376383575335825', '2016-03-15 11:23:44', '1', '89', '轻拿轻放谢谢！', '8', '2', '联系人62号', '15850943849', '32.38177686048563', '118.30904970582506', '31.89961858385496', '118.26683248722252');
INSERT INTO `orders` VALUES ('13', '南京市栖霞区北京东路14号', '南京市栖霞区北京东路7号', '2016-03-15 11:23:45', '13', null, null, '联系人71号', '15950570277', '3.0714042526041094', '食品', '1.6100084542251913', '2016-03-15 11:23:45', '0', '78', '轻拿轻放谢谢！', '8', '2', '联系人2号', '15850943849', '31.74263185273313', '118.24437524380325', '32.209164169220685', '118.88127525373103');
INSERT INTO `orders` VALUES ('14', '南京市雨花台区宁杭高速19号', '南京市秦淮区宁杭高速14号', '2016-03-15 11:23:45', '14', null, null, '联系人85号', '15950570277', '4.499844519618287', '食品', '9.231671793527594', '2016-03-15 11:23:45', '1', '10', '轻拿轻放谢谢！', '6', '2', '联系人38号', '15850943849', '32.33403863469334', '118.99935149918294', '32.209479451847045', '118.71477028976211');
INSERT INTO `orders` VALUES ('15', '南京市溧水区广州路15号', '南京市鼓楼区湖南路14号', '2016-03-15 11:23:45', '15', null, null, '联系人95号', '15950570277', '3.3206534975724056', '食品', '7.01690402322229', '2016-03-15 11:23:45', '1', '46', '轻拿轻放谢谢！', '9', '2', '联系人23号', '15850943849', '32.1129144801672', '118.29896779482111', '31.796284912703452', '118.88106804258926');
INSERT INTO `orders` VALUES ('16', '南京市高淳区宁杭高速16号', '南京市秦淮区中央路18号', '2016-03-15 11:23:46', '16', null, null, '联系人59号', '15950570277', '6.6677785675920065', '食品', '9.590773464193', '2016-03-15 11:23:46', '1', '66', '轻拿轻放谢谢！', '11', '2', '联系人76号', '15850943849', '31.858859144052428', '118.45131920051305', '32.00731538170058', '119.031010821871');
INSERT INTO `orders` VALUES ('17', '南京市六合区中央南路15号', '南京市六合区中央南路15号', '2016-03-15 11:23:46', '17', null, null, '联系人68号', '15950570277', '8.558535048260037', '食品', '6.413483278609177', '2016-03-15 11:23:46', '1', '55', '轻拿轻放谢谢！', '10', '2', '联系人73号', '15850943849', '31.482300155144763', '118.70459622507775', '31.75266859695171', '118.93577531539648');
INSERT INTO `orders` VALUES ('18', '南京市玄武区北京东路10号', '南京市鼓楼区上海路9号', '2016-03-15 11:23:47', '18', null, null, '联系人66号', '15950570277', '6.762479679267085', '食品', '7.5222456209297786', '2016-03-15 11:23:47', '0', '52', '轻拿轻放谢谢！', '5', '2', '联系人42号', '15850943849', '32.29521028788646', '119.02837638897459', '31.49489124621077', '118.9271944736275');
INSERT INTO `orders` VALUES ('19', '南京市江宁区宁杭高速7号', '南京市玄武区北京西路12号', '2016-03-15 11:23:47', '19', null, null, '联系人69号', '15950570277', '6.408311587140879', '食品', '3.7680353887371334', '2016-03-15 11:23:47', '1', '11', '轻拿轻放谢谢！', '9', '2', '联系人45号', '15850943849', '32.05755839980048', '118.27013273794824', '32.051002888599186', '118.26954704192111');
INSERT INTO `orders` VALUES ('20', '南京市六合区上海路17号', '南京市玄武区宁杭高速13号', '2016-03-15 11:23:47', '12', null, null, '联系人28号', '15950570277', '5.702756832091049', '食品', '3.4406503857277793', '2016-03-15 11:23:47', '1', '45', '轻拿轻放谢谢！', '10', '2', '联系人49号', '15850943849', '32.496644281167605', '118.46259974962511', '32.49712980217541', '118.92654813758197');
INSERT INTO `orders` VALUES ('21', '南京市鼓楼区上海路13号', '南京市栖霞区珠江路11号', '2016-03-15 11:23:48', '0', null, null, '联系人70号', '15950570277', '1.1029784853868208', '食品', '7.890268857431138', '2016-03-15 11:23:48', '0', '1', '轻拿轻放谢谢！', '9', '0', '联系人41号', '15850943849', '32.266406744515386', '118.9553746421805', '31.842484716668565', '118.43831943609601');
INSERT INTO `orders` VALUES ('22', '南京市鼓楼区中央路12号', '南京市高淳区中山北路9号', '2016-03-15 11:23:48', '0', null, null, '联系人88号', '15950570277', '3.8492504606401914', '食品', '8.191484336990925', '2016-03-15 11:23:48', '0', '81', '轻拿轻放谢谢！', '6', '0', '联系人63号', '15850943849', '32.160175961681716', '118.27742110888663', '32.127417102540456', '118.84246540348293');
INSERT INTO `orders` VALUES ('23', '南京市雨花台区中央路10号', '南京市六合区湖南路1号', '2016-03-15 11:23:48', '0', null, null, '联系人31号', '15950570277', '5.357550126440113', '食品', '4.433916437006279', '2016-03-15 11:23:48', '0', '58', '轻拿轻放谢谢！', '8', '0', '联系人10号', '15850943849', '32.28673039438297', '118.7073104872221', '32.62422826075054', '118.41648247989264');
INSERT INTO `orders` VALUES ('24', '南京市江宁区汉口路1号', '南京市浦口区北京东路12号', '2016-03-15 11:23:49', '0', null, null, '联系人9号', '15950570277', '6.106349667410815', '食品', '7.141824375655533', '2016-03-15 11:23:49', '1', '3', '轻拿轻放谢谢！', '2', '0', '联系人25号', '15850943849', '31.526853515737947', '119.13486547148248', '32.50798353933091', '118.31735277376394');
INSERT INTO `orders` VALUES ('25', '南京市栖霞区汉口路0号', '南京市溧水区北京西路13号', '2016-03-15 11:23:49', '0', null, null, '联系人59号', '15950570277', '7.183405650175385', '食品', '5.551459071254406', '2016-03-15 11:23:49', '0', '76', '轻拿轻放谢谢！', '4', '0', '联系人72号', '15850943849', '31.841136245372788', '119.12332011773553', '32.42494988387002', '118.94969007046903');
INSERT INTO `orders` VALUES ('26', '南京市雨花台区中央路14号', '南京市雨花台区中山北路8号', '2016-03-15 11:23:49', '0', null, null, '联系人57号', '15950570277', '5.039593948818925', '食品', '3.462977895955089', '2016-03-15 11:23:49', '1', '58', '轻拿轻放谢谢！', '5', '0', '联系人36号', '15850943849', '31.426100411006516', '118.7284603138087', '32.625050677121564', '118.28287236641671');
INSERT INTO `orders` VALUES ('27', '南京市高淳区北京东路17号', '南京市溧水区莫愁路19号', '2016-03-15 11:23:50', '0', null, null, '联系人48号', '15950570277', '1.8852331498313757', '食品', '3.4328971959091694', '2016-03-15 11:23:50', '1', '8', '轻拿轻放谢谢！', '6', '0', '联系人59号', '15850943849', '32.31534699601597', '118.26395146859147', '32.36843025363068', '118.86329313199377');
INSERT INTO `orders` VALUES ('28', '南京市六合区金桥路17号', '南京市溧水区中山北路18号', '2016-03-15 11:23:50', '0', null, null, '联系人64号', '15950570277', '9.480441120409155', '食品', '3.2257836265742155', '2016-03-15 11:23:50', '0', '18', '轻拿轻放谢谢！', '10', '0', '联系人53号', '15850943849', '31.600644320136468', '118.9244909633412', '31.586176259380473', '118.90206829118884');
INSERT INTO `orders` VALUES ('29', '南京市溧水区北京西路9号', '南京市建邺区上海路7号', '2016-03-15 11:23:51', '0', null, null, '联系人74号', '15950570277', '6.329700261733709', '食品', '4.360177156778649', '2016-03-15 11:23:51', '1', '80', '轻拿轻放谢谢！', '9', '0', '联系人69号', '15850943849', '31.665708112411597', '118.46335640328215', '31.679290996699752', '119.07937859021517');
INSERT INTO `orders` VALUES ('30', '南京市鼓楼区汉口路0号', '南京市鼓楼区汉口路7号', '2016-03-15 11:23:51', '0', null, null, '联系人2号', '15950570277', '1.1520968185749059', '食品', '8.897391018767786', '2016-03-15 11:23:51', '1', '28', '轻拿轻放谢谢！', '8', '0', '联系人15号', '15850943849', '31.899423233314078', '118.25625972049451', '32.21338651748134', '119.0953577362976');
INSERT INTO `orders` VALUES ('31', '南京市高淳区湖南路17号', '南京市鼓楼区汉口路18号', '2016-03-15 11:23:52', '0', null, null, '联系人67号', '15950570277', '1.7752532015054545', '食品', '9.74651534507697', '2016-03-15 11:23:52', '0', '62', '轻拿轻放谢谢！', '3', '0', '联系人73号', '15850943849', '32.50239543451943', '118.36645279275736', '32.257945943925705', '118.87034501978788');
INSERT INTO `orders` VALUES ('32', '南京市建邺区莫愁路14号', '南京市栖霞区金桥路11号', '2016-03-15 11:23:52', '0', null, null, '联系人88号', '15950570277', '6.206313394266928', '食品', '0.9942478398232946', '2016-03-15 11:23:52', '0', '87', '轻拿轻放谢谢！', '10', '0', '联系人10号', '15850943849', '32.52679926077594', '119.10405009526193', '32.51593268409425', '118.66950121690684');
INSERT INTO `orders` VALUES ('33', '南京市江宁区汉口路19号', '南京市鼓楼区北京西路18号', '2016-03-15 11:23:52', '0', null, null, '联系人32号', '15950570277', '1.9766255775241615', '食品', '1.5639425997280176', '2016-03-15 11:23:52', '0', '18', '轻拿轻放谢谢！', '10', '0', '联系人52号', '15850943849', '32.51248940003714', '118.67735720670251', '31.651843626546075', '119.03387114973431');
INSERT INTO `orders` VALUES ('34', '南京市建邺区宁杭高速11号', '南京市高淳区珠江路4号', '2016-03-15 11:23:53', '0', null, null, '联系人73号', '15950570277', '3.929865703648', '食品', '1.5592655950190604', '2016-03-15 11:23:53', '0', '39', '轻拿轻放谢谢！', '3', '0', '联系人73号', '15850943849', '31.837568827707894', '119.03392830869781', '32.01597558331428', '118.29090085709713');
INSERT INTO `orders` VALUES ('35', '南京市溧水区珠江路9号', '南京市江宁区中山北路16号', '2016-03-15 11:23:53', '0', null, null, '联系人7号', '15950570277', '5.718021249289728', '食品', '0.21601035827600756', '2016-03-15 11:23:53', '0', '29', '轻拿轻放谢谢！', '6', '0', '联系人89号', '15850943849', '31.537230259048677', '118.22745855480436', '31.900771711545076', '118.90897674225486');
INSERT INTO `orders` VALUES ('36', '南京市高淳区金桥路16号', '南京市雨花台区北京西路14号', '2016-03-15 11:23:54', '0', null, null, '联系人19号', '15950570277', '5.466728617918503', '食品', '5.130400776969798', '2016-03-15 11:23:54', '0', '67', '轻拿轻放谢谢！', '3', '0', '联系人84号', '15850943849', '32.36140988641138', '119.08776925305528', '32.26996358653522', '118.37468247023894');
INSERT INTO `orders` VALUES ('37', '南京市浦口区莫愁路6号', '南京市高淳区中央路7号', '2016-03-15 11:23:54', '0', null, null, '联系人16号', '15950570277', '4.5804454083432065', '食品', '9.24847584771844', '2016-03-15 11:23:54', '1', '11', '轻拿轻放谢谢！', '10', '0', '联系人70号', '15850943849', '31.576173828131758', '118.57893580894454', '31.688113656473547', '119.0106697169424');
INSERT INTO `orders` VALUES ('38', '南京市江宁区珠江路0号', '南京市溧水区上海路1号', '2016-03-15 11:23:54', '0', null, null, '联系人3号', '15950570277', '5.462412039674774', '食品', '8.419499332013244', '2016-03-15 11:23:54', '1', '56', '轻拿轻放谢谢！', '3', '0', '联系人47号', '15850943849', '31.588343908425685', '118.86141792586957', '31.597226385961033', '119.03709195446046');
INSERT INTO `orders` VALUES ('39', '南京市秦淮区珠江路0号', '南京市高淳区珠江路8号', '2016-03-15 11:23:55', '0', null, null, '联系人0号', '15950570277', '0.6392157110439478', '食品', '3.758644177032049', '2016-03-15 11:23:55', '1', '44', '轻拿轻放谢谢！', '8', '0', '联系人58号', '15850943849', '32.55705190587423', '118.28766849566723', '31.686660200319295', '118.46562893230234');
INSERT INTO `orders` VALUES ('40', '南京市秦淮区金桥路7号', '南京市鼓楼区珠江路0号', '2016-03-15 11:23:55', '0', null, null, '联系人83号', '15950570277', '4.952162291460651', '食品', '1.2960932614762832', '2016-03-15 11:23:55', '1', '10', '轻拿轻放谢谢！', '4', '0', '联系人32号', '15850943849', '31.957094772505872', '118.7379934915167', '31.43966601778061', '118.62592468090651');
INSERT INTO `orders` VALUES ('41', '南京市栖霞区金桥路3号', '南京市江宁区中央路2号', '2016-03-15 11:23:56', '0', null, null, '联系人6号', '15950570277', '7.693288508809552', '食品', '8.811671260468405', '2016-03-15 11:23:56', '0', '6', '轻拿轻放谢谢！', '2', '0', '联系人28号', '15850943849', '32.3739171586574', '119.04224381897278', '31.410165528094392', '118.75070305695786');
INSERT INTO `orders` VALUES ('42', '南京市建邺区北京东路10号', '南京市鼓楼区广州路4号', '2016-03-15 11:23:56', '0', null, null, '联系人11号', '15950570277', '0.03136665032545394', '食品', '2.7564525640779305', '2016-03-15 11:23:56', '1', '49', '轻拿轻放谢谢！', '9', '0', '联系人26号', '15850943849', '32.585272142580585', '119.08216927752736', '31.704829531208475', '118.40937706169824');
INSERT INTO `orders` VALUES ('43', '南京市建邺区金桥路4号', '南京市江宁区珠江路17号', '2016-03-15 11:23:56', '0', null, null, '联系人11号', '15950570277', '7.559796793515405', '食品', '4.7556404983604', '2016-03-15 11:23:56', '1', '57', '轻拿轻放谢谢！', '9', '0', '联系人97号', '15850943849', '31.87415587698994', '118.40890664988342', '31.51929128351741', '118.6337644111938');
INSERT INTO `orders` VALUES ('44', '南京市高淳区北京东路8号', '南京市雨花台区上海路5号', '2016-03-15 11:23:57', '0', null, null, '联系人8号', '15950570277', '0.8689480583688403', '食品', '7.228429807664986', '2016-03-15 11:23:57', '1', '47', '轻拿轻放谢谢！', '9', '0', '联系人36号', '15850943849', '31.421430974852154', '118.9379928043211', '31.583790718071107', '118.46854415311377');
INSERT INTO `orders` VALUES ('45', '南京市栖霞区湖南路10号', '南京市玄武区汉口路7号', '2016-03-15 11:23:57', '0', null, null, '联系人35号', '15950570277', '4.543581025628337', '食品', '8.588033810545957', '2016-03-15 11:23:57', '0', '18', '轻拿轻放谢谢！', '6', '0', '联系人65号', '15850943849', '31.638640498126485', '119.1248735975616', '32.37309759381034', '119.09489132325369');
INSERT INTO `orders` VALUES ('46', '南京市雨花台区珠江路3号', '南京市栖霞区北京西路6号', '2016-03-15 11:23:57', '0', null, null, '联系人36号', '15950570277', '6.683339537347212', '食品', '3.2774241861609745', '2016-03-15 11:23:57', '1', '78', '轻拿轻放谢谢！', '8', '0', '联系人29号', '15850943849', '32.61651139924282', '118.70320689146668', '32.41165574751953', '118.64867249877021');
INSERT INTO `orders` VALUES ('47', '南京市鼓楼区北京西路3号', '南京市玄武区中央路4号', '2016-03-15 11:23:58', '0', null, null, '联系人84号', '15950570277', '0.8825749012396722', '食品', '9.761248686539702', '2016-03-15 11:23:58', '1', '97', '轻拿轻放谢谢！', '4', '0', '联系人79号', '15850943849', '31.8667288114856', '118.62408144516556', '32.33128495640979', '118.99881392781231');
INSERT INTO `orders` VALUES ('48', '南京市秦淮区湖南路0号', '南京市建邺区宁杭高速15号', '2016-03-15 11:23:58', '0', null, null, '联系人36号', '15950570277', '8.248881913068658', '食品', '1.5033852543623794', '2016-03-15 11:23:58', '0', '88', '轻拿轻放谢谢！', '10', '0', '联系人51号', '15850943849', '32.223869954687395', '118.92696887277071', '31.725875850192683', '118.61715826549494');
INSERT INTO `orders` VALUES ('49', '南京市雨花台区中央路19号', '南京市雨花台区宁杭高速7号', '2016-03-15 11:23:59', '0', null, null, '联系人64号', '15950570277', '6.186002740790302', '食品', '2.5529803141526686', '2016-03-15 11:23:59', '1', '82', '轻拿轻放谢谢！', '6', '0', '联系人63号', '15850943849', '32.448007367048085', '119.11866629480129', '31.834620951654053', '118.30956512035216');
INSERT INTO `orders` VALUES ('50', '南京市秦淮区汉口路5号', '南京市溧水区北京西路9号', '2016-03-15 11:23:59', '0', null, null, '联系人82号', '15950570277', '3.80386328483573', '食品', '3.5667679422158374', '2016-03-15 11:23:59', '1', '88', '轻拿轻放谢谢！', '11', '0', '联系人41号', '15850943849', '32.479690065194454', '118.84832802547392', '32.360269753818926', '118.51783098123342');
INSERT INTO `orders` VALUES ('51', '南京市浦口区中央南路19号', '南京市建邺区中央路6号', '2016-03-15 11:24:00', '0', null, null, '联系人66号', '15950570277', '3.6054788826085318', '食品', '2.5687495954520623', '2016-03-15 11:24:00', '0', '7', '轻拿轻放谢谢！', '6', '0', '联系人49号', '15850943849', '32.25669029334134', '119.0574458637075', '32.6158043313109', '119.02237550874639');
INSERT INTO `orders` VALUES ('52', '南京市溧水区中山北路1号', '南京市秦淮区中央南路4号', '2016-03-15 11:24:00', '0', null, null, '联系人12号', '15950570277', '0.522710230813912', '食品', '1.3542625730009816', '2016-03-15 11:24:00', '1', '18', '轻拿轻放谢谢！', '7', '0', '联系人90号', '15850943849', '31.716253458267975', '118.27923810229562', '31.80867724677246', '118.60967517624252');
INSERT INTO `orders` VALUES ('53', '南京市秦淮区珠江路11号', '南京市溧水区汉口路5号', '2016-03-15 11:24:00', '0', null, null, '联系人27号', '15950570277', '4.534589964940126', '食品', '4.216826671626182', '2016-03-15 11:24:00', '0', '64', '轻拿轻放谢谢！', '2', '0', '联系人13号', '15850943849', '32.01999503152069', '118.42745938614708', '32.25399023565966', '118.924056313968');
INSERT INTO `orders` VALUES ('54', '南京市栖霞区中央南路17号', '南京市秦淮区北京东路7号', '2016-03-15 11:24:01', '0', null, null, '联系人46号', '15950570277', '9.731345338892332', '食品', '9.124292104314021', '2016-03-15 11:24:01', '1', '43', '轻拿轻放谢谢！', '10', '0', '联系人20号', '15850943849', '32.51318399780648', '118.28285769461667', '31.549101968144686', '118.65246454139583');
INSERT INTO `orders` VALUES ('55', '南京市浦口区北京东路12号', '南京市秦淮区宁杭高速9号', '2016-03-15 11:24:01', '0', null, null, '联系人97号', '15950570277', '8.359746204138599', '食品', '8.831807913448879', '2016-03-15 11:24:01', '1', '42', '轻拿轻放谢谢！', '11', '0', '联系人44号', '15850943849', '32.011279601120165', '118.95013460557901', '31.68370212140781', '118.85835763671264');
INSERT INTO `orders` VALUES ('56', '南京市浦口区珠江路2号', '南京市玄武区北京西路19号', '2016-03-15 11:24:01', '0', null, null, '联系人49号', '15950570277', '2.010993167966497', '食品', '8.832229935873128', '2016-03-15 11:24:01', '1', '19', '轻拿轻放谢谢！', '10', '0', '联系人70号', '15850943849', '32.06096867160221', '118.78865920085603', '32.365400372274785', '118.89806055719292');
INSERT INTO `orders` VALUES ('57', '南京市鼓楼区湖南路10号', '南京市建邺区珠江路13号', '2016-03-15 11:24:02', '0', null, null, '联系人10号', '15950570277', '7.865586760254395', '食品', '6.0441010690638866', '2016-03-15 11:24:02', '1', '24', '轻拿轻放谢谢！', '3', '0', '联系人2号', '15850943849', '31.494303051625927', '119.06230621639482', '31.914019818604608', '118.30789372746035');
INSERT INTO `orders` VALUES ('58', '南京市鼓楼区莫愁路3号', '南京市雨花台区金桥路6号', '2016-03-15 11:24:02', '0', null, null, '联系人71号', '15950570277', '9.885795926599217', '食品', '9.523874036998127', '2016-03-15 11:24:02', '1', '32', '轻拿轻放谢谢！', '7', '0', '联系人62号', '15850943849', '32.06260575877423', '118.35027415864403', '32.41552463220293', '118.78414846769554');
INSERT INTO `orders` VALUES ('59', '南京市玄武区广州路1号', '南京市江宁区北京东路15号', '2016-03-15 11:24:03', '0', null, null, '联系人60号', '15950570277', '9.905421478662662', '食品', '7.027150326083117', '2016-03-15 11:24:03', '1', '26', '轻拿轻放谢谢！', '2', '0', '联系人41号', '15850943849', '32.36153510939846', '118.5919400424791', '31.787816696663896', '118.29886561558337');
INSERT INTO `orders` VALUES ('60', '南京市玄武区莫愁路10号', '南京市建邺区北京西路18号', '2016-03-15 13:57:37', '0', null, null, '联系人10号', '15950570277', '7.248809363598719', '食品', '9.064460150570005', '2016-03-15 13:57:37', '1', '45', '轻拿轻放谢谢！', '4', '0', '联系人6号', '15850943849', '32.396423597019684', '118.78364673304246', '32.39864382299189', '118.97331272130553');
INSERT INTO `orders` VALUES ('61', '南京市高淳区珠江路8号', '南京市雨花台区北京东路1号', '2016-03-15 13:57:37', '0', null, null, '联系人93号', '15950570277', '8.088828973202343', '食品', '0.390058263185471', '2016-03-15 13:57:37', '1', '17', '轻拿轻放谢谢！', '11', '0', '联系人29号', '15850943849', '31.973444288550642', '119.02754589326274', '32.60323205929593', '118.42142433885715');
INSERT INTO `orders` VALUES ('62', '南京市建邺区中央路11号', '南京市栖霞区中央路17号', '2016-03-15 13:57:38', '0', null, null, '联系人8号', '15950570277', '4.599043089158327', '食品', '6.356206016893317', '2016-03-15 13:57:38', '0', '76', '轻拿轻放谢谢！', '8', '0', '联系人38号', '15850943849', '31.942293445663946', '118.84536839273517', '32.11902486025735', '119.06174904680937');
INSERT INTO `orders` VALUES ('63', '南京市高淳区珠江路7号', '南京市秦淮区珠江路13号', '2016-03-15 13:57:39', '0', null, null, '联系人84号', '15950570277', '8.462317557983114', '食品', '5.117886547128382', '2016-03-15 13:57:39', '1', '49', '轻拿轻放谢谢！', '5', '0', '联系人77号', '15850943849', '32.38343156688214', '118.86233542860184', '32.54980371746032', '118.38480150353028');
INSERT INTO `orders` VALUES ('64', '南京市栖霞区汉口路8号', '南京市高淳区上海路7号', '2016-03-15 13:57:39', '0', null, null, '联系人78号', '15950570277', '9.628144469569953', '食品', '5.024217567577245', '2016-03-15 13:57:39', '1', '5', '轻拿轻放谢谢！', '10', '0', '联系人48号', '15850943849', '32.56839268493043', '118.91654042922197', '31.432698112509705', '119.07820384097701');
INSERT INTO `orders` VALUES ('65', '南京市高淳区莫愁路14号', '南京市浦口区湖南路8号', '2016-03-15 13:57:40', '0', null, null, '联系人10号', '15950570277', '7.14239918954182', '食品', '9.939859238264406', '2016-03-15 13:57:40', '1', '35', '轻拿轻放谢谢！', '10', '0', '联系人15号', '15850943849', '32.41248969182766', '118.59918467519924', '32.6207593649797', '118.37765675138716');
INSERT INTO `orders` VALUES ('66', '南京市浦口区宁杭高速10号', '南京市高淳区金桥路2号', '2016-03-15 13:57:40', '0', null, null, '联系人58号', '15950570277', '2.1728272005395954', '食品', '4.43653929250782', '2016-03-15 13:57:40', '1', '73', '轻拿轻放谢谢！', '11', '0', '联系人32号', '15850943849', '32.15869652802572', '119.00980254148817', '31.966643315267817', '118.45427499754558');
INSERT INTO `orders` VALUES ('67', '南京市浦口区珠江路19号', '南京市雨花台区广州路1号', '2016-03-15 13:57:41', '0', null, null, '联系人25号', '15950570277', '8.889677003012693', '食品', '4.262731504539414', '2016-03-15 13:57:41', '1', '93', '轻拿轻放谢谢！', '3', '0', '联系人35号', '15850943849', '32.59131805124844', '118.28295721102907', '31.66008691252588', '118.5311079327492');
INSERT INTO `orders` VALUES ('68', '南京市六合区汉口路3号', '南京市六合区中央南路0号', '2016-03-15 13:57:41', '0', null, null, '联系人17号', '15950570277', '2.414692014236306', '食品', '2.264586060332545', '2016-03-15 13:57:41', '0', '57', '轻拿轻放谢谢！', '4', '0', '联系人85号', '15850943849', '32.621781019387605', '118.37521164198355', '32.3361448165313', '118.56930652058803');
INSERT INTO `orders` VALUES ('69', '南京市高淳区中央南路14号', '南京市鼓楼区金桥路2号', '2016-03-15 13:57:41', '0', null, null, '联系人10号', '15950570277', '3.7255274198610735', '食品', '4.698983031604343', '2016-03-15 13:57:41', '0', '60', '轻拿轻放谢谢！', '10', '0', '联系人20号', '15850943849', '31.42995648118431', '119.04671708020292', '32.62205984938864', '118.56318796351324');
INSERT INTO `orders` VALUES ('70', '南京市溧水区湖南路11号', '南京市秦淮区汉口路11号', '2016-03-15 13:57:42', '0', null, null, '联系人99号', '15950570277', '4.545404852783127', '食品', '4.43057076936361', '2016-03-15 13:57:42', '1', '68', '轻拿轻放谢谢！', '11', '0', '联系人15号', '15850943849', '32.58118552701923', '118.3962443897118', '31.883920476075176', '118.96283104667518');
INSERT INTO `orders` VALUES ('71', '南京市秦淮区宁杭高速11号', '南京市雨花台区湖南路3号', '2016-03-15 13:57:42', '0', null, null, '联系人23号', '15950570277', '1.5434340681934366', '食品', '3.779709000446023', '2016-03-15 13:57:42', '1', '36', '轻拿轻放谢谢！', '2', '0', '联系人73号', '15850943849', '32.5927012174164', '118.68871580295449', '32.06645730576011', '118.40795028862323');
INSERT INTO `orders` VALUES ('72', '南京市雨花台区北京西路12号', '南京市六合区北京西路9号', '2016-03-15 13:57:43', '0', null, null, '联系人29号', '15950570277', '4.322270542077381', '食品', '9.398860968888675', '2016-03-15 13:57:43', '1', '82', '轻拿轻放谢谢！', '10', '0', '联系人27号', '15850943849', '32.32871864856766', '118.49322725188429', '31.40090780862414', '118.22601070611155');
INSERT INTO `orders` VALUES ('73', '南京市溧水区上海路12号', '南京市玄武区莫愁路5号', '2016-03-15 13:57:43', '0', null, null, '联系人92号', '15950570277', '3.7112911119739334', '食品', '7.890998208865819', '2016-03-15 13:57:43', '1', '5', '轻拿轻放谢谢！', '2', '0', '联系人63号', '15850943849', '31.991951221962125', '118.37783720725184', '32.55457377773557', '118.23595793551193');
INSERT INTO `orders` VALUES ('74', '南京市秦淮区莫愁路8号', '南京市江宁区上海路4号', '2016-03-15 13:57:43', '0', null, null, '联系人55号', '15950570277', '3.738624479330382', '食品', '5.119000081439754', '2016-03-15 13:57:43', '1', '67', '轻拿轻放谢谢！', '5', '0', '联系人48号', '15850943849', '31.758475179545975', '118.68499242764578', '31.594986674432764', '118.87465433503927');
INSERT INTO `orders` VALUES ('75', '南京市雨花台区湖南路12号', '南京市高淳区湖南路8号', '2016-03-15 13:57:44', '0', null, null, '联系人38号', '15950570277', '3.3885209065317854', '食品', '4.313706092092398', '2016-03-15 13:57:44', '0', '99', '轻拿轻放谢谢！', '3', '0', '联系人29号', '15850943849', '32.44837592977214', '118.47292140425105', '32.482370020334535', '118.94262325474422');
INSERT INTO `orders` VALUES ('76', '南京市雨花台区莫愁路15号', '南京市栖霞区金桥路19号', '2016-03-15 13:57:44', '0', null, null, '联系人28号', '15950570277', '0.40449285066994967', '食品', '4.00793080499076', '2016-03-15 13:57:44', '1', '49', '轻拿轻放谢谢！', '5', '0', '联系人40号', '15850943849', '31.971104475697423', '119.02126357030112', '31.97056781128625', '118.61988010470732');
INSERT INTO `orders` VALUES ('77', '南京市雨花台区汉口路1号', '南京市江宁区广州路19号', '2016-03-15 13:57:45', '0', null, null, '联系人13号', '15950570277', '5.46889410414532', '食品', '0.4794420521425147', '2016-03-15 13:57:45', '0', '79', '轻拿轻放谢谢！', '6', '0', '联系人80号', '15850943849', '32.09134435666064', '118.2265660826557', '32.58009360053114', '119.04015628729486');
INSERT INTO `orders` VALUES ('78', '南京市秦淮区中央路15号', '南京市秦淮区莫愁路12号', '2016-03-15 13:57:46', '0', null, null, '联系人24号', '15950570277', '0.09572059688080281', '食品', '2.3208821325336295', '2016-03-15 13:57:46', '0', '44', '轻拿轻放谢谢！', '3', '0', '联系人84号', '15850943849', '32.303768881706645', '118.40762187915604', '31.43925409603208', '118.90456706908067');
INSERT INTO `orders` VALUES ('79', '南京市玄武区北京西路0号', '南京市玄武区莫愁路8号', '2016-03-15 13:57:47', '0', null, null, '联系人30号', '15950570277', '9.595589936612324', '食品', '0.5092800595703206', '2016-03-15 13:57:47', '1', '63', '轻拿轻放谢谢！', '8', '0', '联系人18号', '15850943849', '32.447787570120376', '118.24850629647007', '32.03182002237642', '118.44176508637138');
INSERT INTO `orders` VALUES ('80', '南京市溧水区宁杭高速2号', '南京市雨花台区中央路7号', '2016-03-15 13:57:47', '0', null, null, '联系人52号', '15950570277', '4.549285012626841', '食品', '1.2253698046880035', '2016-03-15 13:57:47', '1', '42', '轻拿轻放谢谢！', '11', '0', '联系人9号', '15850943849', '32.28477570809902', '118.52360332134164', '32.4256855515827', '119.07733383324916');
INSERT INTO `orders` VALUES ('81', '南京市秦淮区中山北路2号', '南京市高淳区湖南路13号', '2016-03-15 13:57:48', '0', null, null, '联系人3号', '15950570277', '6.066904662529039', '食品', '2.3301627256963453', '2016-03-15 13:57:48', '0', '34', '轻拿轻放谢谢！', '2', '0', '联系人66号', '15850943849', '32.1695189281729', '118.2409663528103', '31.749283142467355', '118.47894978430637');
INSERT INTO `orders` VALUES ('82', '南京市六合区宁杭高速3号', '南京市秦淮区上海路17号', '2016-03-15 13:57:48', '0', null, null, '联系人27号', '15950570277', '3.7139783534329105', '食品', '9.61921987764377', '2016-03-15 13:57:48', '1', '28', '轻拿轻放谢谢！', '10', '0', '联系人89号', '15850943849', '32.625396966828724', '118.71835928759148', '31.888925192929598', '118.6582868088943');
INSERT INTO `orders` VALUES ('83', '南京市秦淮区北京东路8号', '南京市玄武区中山北路2号', '2016-03-15 13:57:49', '0', null, null, '联系人13号', '15950570277', '6.380222984572055', '食品', '7.716902198361098', '2016-03-15 13:57:49', '1', '35', '轻拿轻放谢谢！', '9', '0', '联系人20号', '15850943849', '31.483516066814094', '118.96761489372054', '31.577722882485777', '118.43588581122403');
INSERT INTO `orders` VALUES ('84', '南京市秦淮区中央南路10号', '南京市高淳区上海路2号', '2016-03-15 13:57:49', '0', null, null, '联系人31号', '15950570277', '2.90102258735231', '食品', '9.714562374837746', '2016-03-15 13:57:49', '0', '96', '轻拿轻放谢谢！', '2', '0', '联系人56号', '15850943849', '31.58114959860277', '118.6648514137434', '31.786266569346147', '118.83327633786226');
INSERT INTO `orders` VALUES ('85', '南京市栖霞区中山北路0号', '南京市溧水区汉口路16号', '2016-03-15 13:57:49', '0', null, null, '联系人38号', '15950570277', '2.2870385735020413', '食品', '1.356789759848439', '2016-03-15 13:57:49', '1', '80', '轻拿轻放谢谢！', '5', '0', '联系人67号', '15850943849', '32.02338251613446', '118.68582798208652', '32.61677247251505', '119.06950730962417');
INSERT INTO `orders` VALUES ('86', '南京市秦淮区湖南路8号', '南京市江宁区中央路2号', '2016-03-15 13:57:50', '0', null, null, '联系人45号', '15950570277', '0.605069022927458', '食品', '3.489777325946315', '2016-03-15 13:57:50', '1', '48', '轻拿轻放谢谢！', '5', '0', '联系人66号', '15850943849', '32.50064318374622', '118.81606195836568', '32.19459828016218', '118.8765347584379');
INSERT INTO `orders` VALUES ('87', '南京市溧水区上海路19号', '南京市玄武区北京西路8号', '2016-03-15 13:57:50', '0', null, null, '联系人68号', '15950570277', '5.532709135667001', '食品', '3.84558388387942', '2016-03-15 13:57:50', '1', '54', '轻拿轻放谢谢！', '4', '0', '联系人20号', '15850943849', '31.452577267651357', '118.50049557602495', '32.357428979712374', '118.79435524935087');
INSERT INTO `orders` VALUES ('88', '南京市溧水区北京西路19号', '南京市雨花台区汉口路16号', '2016-03-15 13:57:51', '0', null, null, '联系人49号', '15950570277', '1.9150854686120977', '食品', '7.692817070038459', '2016-03-15 13:57:51', '0', '52', '轻拿轻放谢谢！', '3', '0', '联系人88号', '15850943849', '31.788857006442107', '119.11840963917655', '32.234331952920385', '118.92025760264102');
INSERT INTO `orders` VALUES ('89', '南京市鼓楼区宁杭高速1号', '南京市栖霞区广州路9号', '2016-03-15 13:57:51', '0', null, null, '联系人58号', '15950570277', '2.6338181525278803', '食品', '1.9416359422864227', '2016-03-15 13:57:51', '0', '71', '轻拿轻放谢谢！', '6', '0', '联系人64号', '15850943849', '31.7108993550337', '118.71487942211012', '32.48729345291957', '118.38935660191424');
INSERT INTO `orders` VALUES ('90', '南京市雨花台区中央南路11号', '南京市鼓楼区珠江路8号', '2016-03-15 13:57:52', '0', null, null, '联系人17号', '15950570277', '1.7822501350676867', '食品', '1.176331847013229', '2016-03-15 13:57:52', '0', '82', '轻拿轻放谢谢！', '11', '0', '联系人6号', '15850943849', '32.4531345219744', '118.88390344599114', '31.798829312407022', '118.76155869434841');
INSERT INTO `orders` VALUES ('91', '南京市浦口区中央南路2号', '南京市建邺区北京西路5号', '2016-03-15 13:57:53', '12', null, null, '联系人56号', '15950570277', '8.954329797247293', '食品', '4.708125481683897', '2016-03-15 13:57:53', '0', '17', '轻拿轻放谢谢！', '3', '2', '联系人93号', '15850943849', '31.455713462502164', '118.4522330104692', '32.56472040659414', '118.687248354112');
INSERT INTO `orders` VALUES ('92', '南京市溧水区北京东路19号', '南京市栖霞区中央路2号', '2016-03-15 13:57:53', '0', null, null, '联系人98号', '15950570277', '0.4458101677595083', '食品', '3.5202299521485534', '2016-03-15 13:57:53', '1', '59', '轻拿轻放谢谢！', '6', '0', '联系人30号', '15850943849', '31.99888712759802', '119.12014724878624', '32.20726680510562', '118.48939091392045');
INSERT INTO `orders` VALUES ('93', '南京市建邺区上海路13号', '南京市秦淮区湖南路3号', '2016-03-15 13:57:53', '12', null, null, '联系人42号', '15950570277', '7.011444634836722', '食品', '5.7264700595161875', '2016-03-15 13:57:53', '0', '100', '轻拿轻放谢谢！', '2', '2', '联系人25号', '15850943849', '31.871028802051683', '118.68640431377665', '31.493493084396817', '118.25787533188942');
INSERT INTO `orders` VALUES ('94', '南京市鼓楼区湖南路3号', '南京市浦口区广州路6号', '2016-03-15 13:57:54', '12', null, null, '联系人30号', '15950570277', '3.3026417943224775', '食品', '2.7998506962705685', '2016-03-15 13:57:54', '1', '38', '轻拿轻放谢谢！', '4', '2', '联系人65号', '15850943849', '31.909462025304038', '118.61652975192108', '32.058658567321004', '118.25918972448176');
INSERT INTO `orders` VALUES ('95', '南京市玄武区广州路1号', '南京市鼓楼区中山北路19号', '2016-03-15 13:57:54', '0', null, null, '联系人28号', '15950570277', '1.4254746077433988', '食品', '4.8513587983229804', '2016-03-15 13:57:54', '0', '48', '轻拿轻放谢谢！', '5', '0', '联系人88号', '15850943849', '31.660949521422907', '118.91242105570602', '31.50773923920893', '118.93279194231373');
INSERT INTO `orders` VALUES ('96', '南京市鼓楼区中央南路10号', '南京市溧水区湖南路5号', '2016-03-15 13:57:55', '0', null, null, '联系人85号', '15950570277', '2.491917247221659', '食品', '6.302732462546622', '2016-03-15 13:57:55', '1', '27', '轻拿轻放谢谢！', '6', '0', '联系人24号', '15850943849', '31.429438569823336', '118.3821051073624', '31.8131129631551', '119.0523231279267');
INSERT INTO `orders` VALUES ('97', '南京市溧水区广州路13号', '南京市浦口区汉口路0号', '2016-03-15 13:57:56', '0', null, null, '联系人41号', '15950570277', '3.6461657428949867', '食品', '4.171366212319959', '2016-03-15 13:57:56', '0', '0', '轻拿轻放谢谢！', '5', '0', '联系人91号', '15850943849', '32.01501381920934', '118.79164642901713', '32.02090246456825', '119.12430341974523');
INSERT INTO `orders` VALUES ('98', '南京市鼓楼区上海路15号', '南京市栖霞区北京东路2号', '2016-03-15 13:57:56', '0', null, null, '联系人67号', '15950570277', '2.4719824149185934', '食品', '8.914582853800242', '2016-03-15 13:57:56', '1', '83', '轻拿轻放谢谢！', '8', '0', '联系人54号', '15850943849', '31.53677154618774', '118.92524932015709', '31.728639851424845', '118.51452135935227');
INSERT INTO `orders` VALUES ('99', '南京市玄武区上海路14号', '南京市玄武区莫愁路4号', '2016-03-15 13:57:56', '0', null, null, '联系人35号', '15950570277', '7.804486486077089', '食品', '7.156389068263645', '2016-03-15 13:57:56', '1', '6', '轻拿轻放谢谢！', '4', '0', '联系人33号', '15850943849', '31.764440223865844', '118.91288625548337', '31.92129738670076', '118.4592096960692');
INSERT INTO `orders` VALUES ('100', '南京市高淳区中央路18号', '南京市江宁区中央路8号', '2016-03-15 13:57:57', '0', null, null, '联系人54号', '15950570277', '2.39411604991108', '食品', '7.5719164662841205', '2016-03-15 13:57:57', '1', '50', '轻拿轻放谢谢！', '5', '0', '联系人5号', '15850943849', '31.65806796563281', '118.52242827899062', '32.13749541541708', '118.30274083976185');
INSERT INTO `orders` VALUES ('101', '南京大学鼓楼校区', '东南大学鼓楼校区', '2016-03-15 14:25:48', '0', '', '0', '管登荣', '15950570277', '20.0', '食品', '100.0', '2015-11-01 00:00:00', '1', '60', '急需用车', '2', '0', '浮生更', '15172437489', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('102', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-03-31 17:27:15', '0', '', '0', '', '', '2.0', '', '233.0', '2016-04-06 17:27:07', '1', '60', '', '30', '5', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('103', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市玄武区梅园新村街道北安门街', '2016-04-04 21:51:18', '0', '', '0', 'zx', 'zx', '3.0', '食物 ', '300.0', '2016-04-05 21:51:16', '1', '80', '', '30', '5', '13545461336', 'gg', '32.03369300388162', '118.7847854300005', '32.05618911829593', '118.8184712269167');
INSERT INTO `orders` VALUES ('104', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市鼓楼区宁海路街道模范中路39号', '2016-04-04 21:58:59', '0', '', '0', 'zh', '1333223321', '2.0', '食物', '200.0', '2016-04-05 21:58:58', '1', '68', '', '30', '3', 'cc', '134432546', '32.03369300388162', '118.7847854300005', '32.07101417884738', '118.7602759805484');
INSERT INTO `orders` VALUES ('105', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:25:24', '0', '', '0', '1234', 'afd', '1.0', '112', '100.0', '2016-04-07 02:24:59', '1', '35', '', '30', '3', '1424213', '23', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('106', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:27:13', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-06 02:27:15', '1', '35', '', '30', '3', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('107', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:30:54', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-06 02:30:55', '1', '35', '', '30', '3', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('108', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:34:49', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-05 03:34:40', '1', '35', '', '30', '3', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('109', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:39:42', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-07 02:39:44', '1', '35', '', '30', '3', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('110', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-05 02:41:43', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-06 02:41:45', '1', '35', '', '30', '5', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('111', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市鼓楼区华侨路街道大锏银巷17号', '2016-04-05 12:17:25', '0', '', '0', 'zx', '18557761136', '1.0', 'food', '100.0', '2016-04-07 12:17:27', '1', '35', '', '30', '3', 'df', '17652995166', '32.03369300388162', '118.7847854300005', '32.04398546791923', '118.7781450138978');
INSERT INTO `orders` VALUES ('112', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市鼓楼区华侨路街道大锏银巷12号', '2016-04-06 00:08:07', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-07 00:07:58', '1', '35', '', '30', '0', '', '', '32.03369300388162', '118.7847854300005', '32.04317913809747', '118.777827180912');
INSERT INTO `orders` VALUES ('113', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-06 21:21:08', '0', '', '0', '', '', '15.0', '', '1000.0', '2016-04-08 21:21:01', '1', '35', '', '30', '3', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('114', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市秦淮区洪武路街道西武学园', '2016-04-06 21:21:32', '0', '', '0', '', '', '15.0', '', '1000.0', '2016-04-08 21:21:01', '1', '60', '', '30', '0', '', '', '32.03369300388162', '118.7847854300005', '32.03369300388162', '118.7847854300005');
INSERT INTO `orders` VALUES ('115', '中国江苏省南京市玄武区玄武门街道玄武巷', '中国江苏省南京市秦淮区朝天宫街道莫愁路416-2临', '2016-04-06 22:11:24', '0', '', '0', '', '', '20.0', '', '2000.0', '2016-04-07 22:11:09', '1', '244', '', '30', '0', '', '', '32.0756630620651', '118.7859513360957', '32.04054981247553', '118.7760920109747');
INSERT INTO `orders` VALUES ('116', '中国江苏省南京市秦淮区朝天宫街道三茅巷', '中国江苏省南京市玄武区玄武门街道', '2016-04-06 22:17:32', '0', '', '0', '', '', '15.0', '', '1000.0', '2016-04-14 22:17:23', '1', '63', '', '30', '0', '', '', '32.03893529502488', '118.7765276564148', '32.0753461597549', '118.7893987778511');
INSERT INTO `orders` VALUES ('117', '中国江苏省南京市秦淮区朝天宫街道三茅巷', '中国江苏省南京市玄武区玄武门街道', '2016-04-06 22:17:48', '0', '', '0', '', '', '15.0', '', '1000.0', '2016-04-14 22:17:23', '1', '373', '', '30', '0', '', '', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('118', '中国江苏省南京市', '中国江苏省南京市鼓楼区湖南路街道汉口路52-2号', '2016-04-06 22:31:05', '0', '', '0', '', '', '10.0', '', '1000.0', '2016-04-07 22:30:53', '1', '225', '', '30', '0', '', '', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('119', '中国江苏省南京市', '中国江苏省南京市', '2016-04-06 22:46:03', '0', '', '0', '', '', '12.0', '', '1000.0', '2016-04-08 22:43:07', '1', '225', '', '30', '0', '', '', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('120', '中国江苏省南京市', '中国江苏省南京市', '2016-04-06 22:48:04', '0', '', '0', '', '', '12.0', '', '1000.0', '2016-04-08 22:43:07', '1', '225', '', '30', '0', '', '', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('121', 'adgfadgsadsgfdagf', 'adfadsfasafsfaadsf', '2016-04-06 22:52:46', '0', '', '0', 'sf', '123432564236', '12.0', 'food', '1200.0', '2016-04-09 16:00:00', '1', '318', 'hi', '30', '5', 'zx', '186345252435', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('122', 'adgfadgsadsgfdagf', 'adfadsfasafsfaadsf', '2016-04-06 22:53:14', '0', '', '0', 'sf', '123432564236', '12.0', 'food', '1200.0', '2016-04-09 16:00:00', '1', '318', 'hi', '30', '5', 'zx', '186345252435', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('123', 'adgfadgsadsgfdagf', 'adfadsfasafsfaadsf', '2016-04-06 22:53:25', '0', '', '0', 'sf', '123432564236', '12.0', 'food', '1200.0', '2016-04-09 16:00:00', '1', '318', 'hi', '30', '5', 'zx', '186345252435', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('124', '中国江苏省南京市', '中国江苏省南京市', '2016-04-06 23:07:38', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-07 23:07:33', '1', '35', '', '30', '0', '', '', '32.041544', '118.767413', '32.041544', '118.767413');
INSERT INTO `orders` VALUES ('125', '中国江苏省南京市', '中国江苏省南京市', '2016-04-06 23:09:48', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-08 23:09:41', '1', '35', '', '30', '0', '', '', '32.041544', '118.767413', '32.041544', '118.767413');
INSERT INTO `orders` VALUES ('126', '中国江苏省南京市秦淮区五老村街道西祠堂巷3-1号', '中国江苏省南京市', '2016-04-09 09:52:14', '12', '', '0', '', '', '1.0', '', '100.0', '2016-04-10 09:52:08', '1', '35', '', '30', '2', '', '', '32.03990169166603', '118.7903919234199', '32.041544', '118.767413');
INSERT INTO `orders` VALUES ('127', '中国江苏省南京市玄武区新街口街道碑亭巷', '中国江苏省南京市建邺区南苑街道集庆门大街', '2016-04-13 16:24:14', '0', '', '0', '', '', '2.0', '', '1000.0', '2016-04-14 16:24:05', '1', '64', '', '30', '0', '', '', '32.04290644851843', '118.7937852635792', '32.02197216177865', '118.7601284686565');
INSERT INTO `orders` VALUES ('128', '中国江苏省南京市秦淮区五老村街道王府大街12号', '中国江苏省南京市玄武区锁金村街道', '2016-04-13 16:29:27', '0', '', '0', '', '', '5.0', '', '1000.0', '2016-04-15 16:29:16', '1', '304', '', '30', '0', '', '', '0', '0', '0', '0');
INSERT INTO `orders` VALUES ('129', '中国江苏省南京市秦淮区五老村街道王府大街12号', '中国江苏省南京市玄武区锁金村街道', '2016-04-13 16:30:05', '0', '', '0', '', '', '5.0', '', '1000.0', '2016-04-15 16:29:16', '1', '68', '', '30', '0', '', '', '32.04116361156257', '118.780685818685', '32.06419927354023', '118.8195781496916');
INSERT INTO `orders` VALUES ('130', '中国江苏省南京市秦淮区洪武路街道西武学园', '中国江苏省南京市玄武区新街口街道廊后街33号', '2016-04-14 15:31:52', '0', '', '0', '', '', '1.0', '', '100.0', '2016-04-16 15:31:46', '1', '35', '', '30', '0', '', '', '32.03369300388162', '118.7847854300005', '32.04845665732183', '118.786784951062');

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
  `base_distance` int(11) DEFAULT NULL COMMENT '起步公里数',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of truck_type
-- ----------------------------
INSERT INTO `truck_type` VALUES ('0', '35', '1', '1', '1.7', '面包车', '3.5', '1.2', '5');
INSERT INTO `truck_type` VALUES ('1', '60', '1.5', '1.1', '2.7', '金杯车', '4', '1.3', '5');
INSERT INTO `truck_type` VALUES ('2', '70', '1.6', '1.3', '2.5', '依维柯', '5', '1.9', '5');
INSERT INTO `truck_type` VALUES ('3', '70', '1.5', '1.5', '1.6', '小型厢货', '4', '1.6', '5');
INSERT INTO `truck_type` VALUES ('4', '50', '1.5', '1.5', '2.8', '小型平板', '4', '1.6', '5');
INSERT INTO `truck_type` VALUES ('5', '170', '1.8', '1.8', '4.2', '中型厢货', '5', '1.8', '5');
INSERT INTO `truck_type` VALUES ('6', '100', '1.8', '1.8', '4.2', '中型平板', '5', '1.8', '5');
INSERT INTO `truck_type` VALUES ('7', '230', '3', '2', '5.3', '大型厢货', '7', '2', '5');
INSERT INTO `truck_type` VALUES ('8', '220', '3', '2', '5.3', '大型平板', '7', '2', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` double DEFAULT NULL,
  `nick_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` double DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4bgmpi98dylab6qdvf9xyaxu4` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '', '234', 'admin', '12345678', '12345', '0', '2016-01-18 07:21:23', '2');
INSERT INTO `user` VALUES ('2', 'http://img.soushai.com/2015/0211/1423633792438.jpg', '355.1000000000001', '小明', '12345678', '15851813131', '323', '2016-01-09 21:09:09', '0');
INSERT INTO `user` VALUES ('3', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '345', '小华', '12345678', '15851813132', '435', '2016-01-10 23:37:07', '0');
INSERT INTO `user` VALUES ('4', 'http://img.soushai.com/2015/0211/1423633792438.jpg', '246', '阿猫', '12345678', '15851813134', '323', '2016-01-13 21:09:09', '0');
INSERT INTO `user` VALUES ('5', 'http://img2.imgtn.bdimg.com/it/u=2006549077,211708273&fm=206&gp=0.jpg', '100', '小白', '12345678', '15851813133', '234', '2016-01-15 16:42:56', '0');
INSERT INTO `user` VALUES ('6', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '234', '阿狗', '12345678', '15851813135', '0', '2016-01-18 07:21:23', '0');
INSERT INTO `user` VALUES ('7', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '345', '小鸡', '12345678', '15851813136', '435', '2016-01-19 23:37:07', '0');
INSERT INTO `user` VALUES ('8', 'http://img.soushai.com/2015/0211/1423633792438.jpg', '246', '小鸭', '12345678', '15851813137', '323', '2016-01-20 21:09:09', '0');
INSERT INTO `user` VALUES ('10', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '375', '小猪', '12345678', '15851813139', '435', '2016-01-22 23:37:07', '0');
INSERT INTO `user` VALUES ('11', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '431', '小天', '12345678', '15851813140', '435', '2016-01-23 23:37:07', '0');
INSERT INTO `user` VALUES ('12', 'http://120.27.112.9:8080/tongbao/user/picture?id=213', '82.11', '小妖', '12345678', '15851813141', '65', '2016-01-15 18:14:39', '1');
INSERT INTO `user` VALUES ('13', 'http://120.27.112.9:8080/tongbao/user/picture?id=268', '773', '小天', '12345678', '15851813142', '54', '2016-01-18 22:25:19', '1');
INSERT INTO `user` VALUES ('14', 'http://img2.imgtn.bdimg.com/it/u=1589969395,1931618335&fm=206&gp=0.jpg', '123', '小花', '12345678', '15851813143', '75', '2016-01-19 18:59:40', '1');
INSERT INTO `user` VALUES ('15', 'http://img.soushai.com/2015/0211/1423633792438.jpg', '246', '二猫', '12345678', '15851813144', '323', '2016-01-23 21:09:09', '1');
INSERT INTO `user` VALUES ('16', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '234', '二狗', '12345678', '15851813145', '0', '2016-01-24 07:21:23', '1');
INSERT INTO `user` VALUES ('17', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '345', '二鸡', '12345678', '15851813146', '435', '2016-01-25 23:37:07', '1');
INSERT INTO `user` VALUES ('18', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '397', '山鸡', '12345678', '15851813147', '435', '2016-01-26 23:37:07', '1');
INSERT INTO `user` VALUES ('19', 'http://img.soushai.com/2015/0211/1423633792438.jpg', '246', '三猫', '12345678', '15851813148', '323', '2016-01-27 21:09:09', '1');
INSERT INTO `user` VALUES ('20', 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', '234', '三狗', '12345678', '15851813149', '0', '2016-01-28 07:21:23', '1');
INSERT INTO `user` VALUES ('22', null, '0', null, '291418291418', '15951961585', '0', '2016-03-04 17:39:19', '1');
INSERT INTO `user` VALUES ('23', 'http://120.27.112.9:8080/tongbao/user/picture?id=211', '3', '小旋风', '11111111', '15950562922', '0', '2016-03-04 17:57:00', '1');
INSERT INTO `user` VALUES ('24', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '1200', '管登荣', '123456789', '15950570277', '0', '2016-03-07 09:22:13', '0');
INSERT INTO `user` VALUES ('25', 'http://120.27.112.9:8080/tongbao/user/picture?id=248', '10050', '我是乔妹', '12345678', '15950562632', '0', '2016-03-17 16:07:43', '0');
INSERT INTO `user` VALUES ('27', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', '我是货主', '12345678', '15950563228', '0', '2016-03-17 16:21:50', '0');
INSERT INTO `user` VALUES ('28', 'http://120.27.112.9:8080/tongbao/user/picture?id=234', '0', 'woshisha', '19940731', '15950563220', '0', '2016-03-17 16:23:19', '0');
INSERT INTO `user` VALUES ('29', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', 'itsjoox', '12345678', '18652052039', '0', '2016-03-24 20:16:10', '0');
INSERT INTO `user` VALUES ('30', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '1000', '我是货主SAMA', '12345678', '13645161476', '0', '2016-03-25 16:18:41', '0');
INSERT INTO `user` VALUES ('31', 'http://120.27.112.9:8080/tongbao/user/picture?id=249', '0', '我是货主SAMA', '12345678', '15950562803', '0', '2016-03-31 13:23:59', '0');
INSERT INTO `user` VALUES ('32', 'http://120.27.112.9:8080/tongbao/user/picture?id=285', '313.3', '通宝', '12345678', '15850775808', '0', '2016-04-03 21:19:02', '0');
INSERT INTO `user` VALUES ('33', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', '我是货主SAMA', '12345567', '15950562222', '0', '2016-04-05 13:11:31', '0');
INSERT INTO `user` VALUES ('34', 'http://120.27.112.9:8080/tongbao/user/picture?id=286', '111.11', '胡光延', '12345678', '15850775809', '0', '2016-04-06 02:16:47', '0');
INSERT INTO `user` VALUES ('35', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', '我是货主SAMA', '123456789', '15850775807', '0', '2016-04-06 23:22:50', '0');
INSERT INTO `user` VALUES ('36', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', '我是货主SAMA', '123123123', '15252647407', '0', '2016-04-06 23:30:36', '0');
INSERT INTO `user` VALUES ('37', 'http://120.27.112.9:8080/tongbao/user/picture?id=35', '0', 'dota', '12345678', '15850775810', '0', '2016-04-08 23:14:38', '0');

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dsueu4oggfo11n7trivi7vvyt` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_token
-- ----------------------------
INSERT INTO `user_token` VALUES ('1', '2016-04-03 23:59:23', 'zibgjdl77ks7k9qj', '18', '1');
INSERT INTO `user_token` VALUES ('2', '2016-04-04 00:03:29', 'becjtxada27lg8ln', '16', '1');
INSERT INTO `user_token` VALUES ('3', '2016-04-03 23:59:31', 'pz3ak3uskgsrwa0i', '14', '1');
INSERT INTO `user_token` VALUES ('4', '2016-04-11 01:32:56', 'jjwz242yb2fg78i3', '2', '0');
INSERT INTO `user_token` VALUES ('5', '2016-04-12 18:38:45', 'o38jz3umyilwla86', '12', '1');
INSERT INTO `user_token` VALUES ('6', '2016-04-14 13:16:06', 'myk0sjtc7phlqt68', '32', '0');
INSERT INTO `user_token` VALUES ('7', '2016-04-04 01:31:30', 'ex1kbrmesglg6rsl', '31', '0');
INSERT INTO `user_token` VALUES ('8', '2016-04-06 22:30:16', 'g4imh17mr8vxzr2y', '25', '0');
INSERT INTO `user_token` VALUES ('9', '2016-04-13 18:48:50', 'okam1g2floa97vik', '30', '0');
INSERT INTO `user_token` VALUES ('10', '2016-04-09 23:50:27', '4swyis2ifq9svdf7', '34', '0');
INSERT INTO `user_token` VALUES ('11', '2016-04-13 21:21:07', '2jvirm0v0rafu20h', '23', '1');
INSERT INTO `user_token` VALUES ('12', '2016-04-09 17:00:38', 'ltgmbqrwzq8sddzj', '13', '1');
INSERT INTO `user_token` VALUES ('13', '2016-04-10 19:30:28', 'ryolrcn7dajyq0zr', '24', '0');

-- ----------------------------
-- Table structure for user_type_name_t
-- ----------------------------
DROP TABLE IF EXISTS `user_type_name_t`;
CREATE TABLE `user_type_name_t` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_type_name_t
-- ----------------------------
INSERT INTO `user_type_name_t` VALUES ('0', '货主');
INSERT INTO `user_type_name_t` VALUES ('1', '司机');
INSERT INTO `user_type_name_t` VALUES ('2', '管理员');
