-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-01-23 13:14:47
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tongbao`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL,
  `build_time` datetime DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`id`, `build_time`, `money`, `order_id`, `type`, `user_id`) VALUES
(1, '2016-01-15 17:33:28', 100, 0, 0, 5),
(2, '2016-01-19 19:09:03', 123, 0, 0, 1),
(3, '2016-01-19 19:09:49', 123, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `account_type_name_t`
--

CREATE TABLE IF NOT EXISTS `account_type_name_t` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `account_type_name_t`
--

INSERT INTO `account_type_name_t` (`type`, `name`) VALUES
(0, '充值'),
(1, '提现'),
(3, '支付'),
(4, '退款');

-- --------------------------------------------------------

--
-- 表的结构 `auth_state_name_t`
--

CREATE TABLE IF NOT EXISTS `auth_state_name_t` (
  `state` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_state_name_t`
--

INSERT INTO `auth_state_name_t` (`state`, `name`) VALUES
(0, '未验证'),
(1, '正在验证'),
(2, '验证成功'),
(3, '验证失败');

-- --------------------------------------------------------

--
-- 表的结构 `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `driver_to_shipper` tinyint(4) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `shipper_to_driver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `contacts`
--

INSERT INTO `contacts` (`id`, `driver_id`, `driver_to_shipper`, `shipper_id`, `shipper_to_driver`) VALUES
(1, 6, 1, 1, 0),
(2, 7, 1, 1, 1),
(3, 8, 1, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `driver_auth`
--

CREATE TABLE IF NOT EXISTS `driver_auth` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `driver_auth`
--

INSERT INTO `driver_auth` (`id`, `auth_state`, `driving_license`, `phone_num`, `real_name`, `truck_license`, `truck_num`, `truck_picture`, `type`, `user_id`, `head_picture`, `license_num`) VALUES
(1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(2, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 7, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, 4, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `frequent_address`
--

CREATE TABLE IF NOT EXISTS `frequent_address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `frequent_address`
--

INSERT INTO `frequent_address` (`id`, `address`, `shipper_id`, `lat`, `lng`) VALUES
(1, '江苏省南京市鼓楼汉口路22号', 1, 324.3, 23.5),
(2, '江苏省南京市栖霞区南大仙林校区', 5, 23.3, 24.4),
(3, '江苏省南京市将军大道16号', 3, 12.3, 3.4);

-- --------------------------------------------------------

--
-- 表的结构 `frequent_driver`
--

CREATE TABLE IF NOT EXISTS `frequent_driver` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `frequent_driver`
--

INSERT INTO `frequent_driver` (`id`, `driver_id`, `shipper_id`) VALUES
(1, 6, 1),
(2, 7, 5);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_read` tinyint(4) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `content`, `has_read`, `object_id`, `time`, `type`, `user_id`) VALUES
(1, '你吃了吗？', 0, 0, '2016-01-12 05:09:10', 3, 5);

-- --------------------------------------------------------

--
-- 表的结构 `message_type`
--

CREATE TABLE IF NOT EXISTS `message_type` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `message_type`
--

INSERT INTO `message_type` (`type`, `name`) VALUES
(0, '订单被抢到（通知货主）'),
(1, '订单完成（通知司机）'),
(2, '正在进行的订单被取消(通知司机)'),
(3, '其它消息');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
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
  `goods_type` tinyint(4) DEFAULT NULL,
  `goods_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `load_time` datetime DEFAULT NULL,
  `pay_type` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `to_contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `address_from`, `address_to`, `build_time`, `driver_id`, `evaluate_content`, `evaluate_point`, `from_contact_name`, `from_contact_phone`, `goods_size`, `goods_type`, `goods_weight`, `load_time`, `pay_type`, `price`, `remark`, `shipper_id`, `state`, `to_contact_name`, `to_contact_phone`) VALUES
(1, '南京市鼓楼区汉口路22号', '南京市栖霞区南大仙林校区', '2016-01-15 21:41:49', 6, '司机师傅很好！', 5, '小明', '15851813131', '3.0', 1, '2.0', '2015-11-09 00:00:00', 1, 100, '好好运哦！', 1, 2, '二哈', '123563494'),
(2, '南京市鼓楼区上海路10号', '南京市栖霞区南大仙林校区', '2016-01-15 21:57:54', 7, '挺好的，很满意', 5, '小明', '15851813131', '3.0', 1, '2.0', '2015-11-09 00:00:00', 1, 100, '箱子轻拿轻放', 1, 2, '三娃', '2348934543'),
(3, '上海市二哈路34号', '上海市金毛路5号', '2016-01-16 01:01:19', 0, NULL, NULL, '小白', '15851813133', '3.0', 1, '2.0', '2015-11-09 00:00:00', 1, 1000, '轻拿轻放', 5, 3, '翠花', '1235634435'),
(4, '上海市二哈路34号', '上海市金毛路5号', '2016-01-16 01:01:19', 0, NULL, NULL, '小白', '15851813133', '3.0', 1, '2.0', '2015-11-12 00:00:00', 1, 1000, '轻拿轻放', 5, 0, '翠花', '	\n1235634435');

-- --------------------------------------------------------

--
-- 表的结构 `order_state_name_t`
--

CREATE TABLE IF NOT EXISTS `order_state_name_t` (
  `state` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `order_state_name_t`
--

INSERT INTO `order_state_name_t` (`state`, `name`) VALUES
(0, '尚未被抢'),
(1, '已经被抢，正在进行'),
(2, '表示已经完成'),
(3, '表示被取消'),
(4, '进行中取消，正在等待司机确认'),
(5, '被货主删除'),
(6, '被司机删除'),
(7, '被司机和货主都删除');

-- --------------------------------------------------------

--
-- 表的结构 `order_truck_type`
--

CREATE TABLE IF NOT EXISTS `order_truck_type` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `truck_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `order_truck_type`
--

INSERT INTO `order_truck_type` (`id`, `order_id`, `truck_type`) VALUES
(28, 1, 1),
(29, 1, 2),
(30, 2, 3),
(31, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `truck_type`
--

CREATE TABLE IF NOT EXISTS `truck_type` (
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

--
-- 转存表中的数据 `truck_type`
--

INSERT INTO `truck_type` (`type`, `base_price`, `capacity`, `height`, `length`, `name`, `over_price`, `width`) VALUES
(0, 35, 1, 1, 1.7, '面包车', 3.5, 1.2),
(1, 60, 1.5, 1.1, 2.7, '金杯车', 4, 1.3),
(2, 70, 1.6, 1.3, 2.5, '依维柯', 5, 1.9),
(3, 70, 1.5, 1.5, 1.6, '小型厢货', 4, 1.6),
(4, 50, 1.5, 1.5, 2.8, '小型平板', 4, 1.6),
(5, 170, 1.8, 1.8, 4.2, '中型厢货', 5, 1.8),
(6, 100, 1.8, 1.8, 4.2, '中型平板', 5, 1.8),
(7, 230, 3, 2, 5.3, '大型厢货', 7, 2),
(8, 220, 3, 2, 5.3, '大型平板', 7, 2);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
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

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `icon_url`, `money`, `nick_name`, `password`, `phone_number`, `point`, `register_time`, `type`) VALUES
(1, 'http://img.soushai.com/2015/0211/1423633792438.jpg', 246, '小明', 'a', '15851813131', 323, '2016-01-09 21:09:09', 0),
(2, '', 234, 'admin', 'a', '12345', 0, '2016-01-18 07:21:23', 2),
(3, 'http://p6.qhimg.com/t019731ffa314c7017a.jpg', 345, '小华', 'a', '15851813132', 435, '2016-01-14 23:37:07', 0),
(5, 'http://img2.imgtn.bdimg.com/it/u=2006549077,211708273&fm=206&gp=0.jpg', 100, '小白', 'a', '15851813133', 234, '2016-01-15 16:42:56', 0),
(6, 'http://p7.qhimg.com/t01ea43374ea5a341b1.jpg', 50, '小军', 'a', '15851813134', 65, '2016-01-15 18:14:39', 1),
(7, 'http://img4.imgtn.bdimg.com/it/u=3271039496,1957949940&fm=206&gp=0.jpg', 40, '小天', 'a', '15851813135', 54, '2016-01-18 22:25:19', 1),
(8, 'http://img2.imgtn.bdimg.com/it/u=1589969395,1931618335&fm=206&gp=0.jpg', 123, '小花', 'a', '15851813136', 75, '2016-01-19 18:59:40', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user_type_name_t`
--

CREATE TABLE IF NOT EXISTS `user_type_name_t` (
  `type` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user_type_name_t`
--

INSERT INTO `user_type_name_t` (`type`, `name`) VALUES
(0, '货主'),
(1, '司机'),
(2, '管理员');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
