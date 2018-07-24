/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50145
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50145
File Encoding         : 65001

Date: 2017-10-10 15:22:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `userid` int(9) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('9', '4', '张三', '13888888888', 'zhongguo,上海');
INSERT INTO `address` VALUES ('8', '3', 'lily', '13555555555', '北京市海淀区100号');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `goodid` int(9) NOT NULL,
  `uid` int(9) DEFAULT NULL,
  `sum` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '10', '3', '1');
INSERT INTO `cart` VALUES ('2', '8', '3', '1');
INSERT INTO `cart` VALUES ('3', '12', '4', '1');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `cata` int(2) NOT NULL,
  `price` int(9) NOT NULL,
  `salesum` int(9) DEFAULT '0',
  `sum` int(9) NOT NULL,
  `imgurl` varchar(225) DEFAULT NULL,
  `addtime` decimal(16,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('7', '青岛纯生啤酒', '3', '8', '7', '93', 'images/image1469694044763.png', '1469694044779');
INSERT INTO `goods` VALUES ('8', '老坛酸菜牛肉面', '1', '6', '1', '99', 'images/image1470806868531.jpg', '1470806868562');
INSERT INTO `goods` VALUES ('9', '蒙牛酸酸乳', '2', '3', '0', '100', 'images/image1470806928218.jpg', '1470806928250');
INSERT INTO `goods` VALUES ('10', '美的小风扇', '4', '88', '1', '49', 'images/image1470806978593.jpg', '1470806978593');
INSERT INTO `goods` VALUES ('11', '雀巢咖啡', '5', '5', '0', '128', 'images/image1470807106078.jpg', '1470807106078');
INSERT INTO `goods` VALUES ('12', '火龙果', '7', '8', '1', '199', 'images/image1470807164125.jpg', '1470807164156');
INSERT INTO `goods` VALUES ('13', 'Java编程', '8', '38', '0', '22', 'images/image1470810362937.jpg', '1470810362968');

-- ----------------------------
-- Table structure for `orderext`
-- ----------------------------
DROP TABLE IF EXISTS `orderext`;
CREATE TABLE `orderext` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `orderid` int(9) NOT NULL,
  `goodid` int(9) DEFAULT NULL,
  `num` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderext
-- ----------------------------
INSERT INTO `orderext` VALUES ('11', '8', '7', '1');
INSERT INTO `orderext` VALUES ('12', '9', '7', '2');
INSERT INTO `orderext` VALUES ('13', '10', '7', '3');
INSERT INTO `orderext` VALUES ('14', '11', '7', '4');
INSERT INTO `orderext` VALUES ('15', '12', '10', '1');
INSERT INTO `orderext` VALUES ('16', '12', '8', '1');
INSERT INTO `orderext` VALUES ('17', '13', '12', '1');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `price` int(9) NOT NULL,
  `addtime` decimal(16,0) DEFAULT NULL,
  `userid` int(9) DEFAULT NULL,
  `addid` int(9) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('8', '8', '1469694666529', '3', '8', '3');
INSERT INTO `orders` VALUES ('9', '16', '1469696708169', '3', '8', '1');
INSERT INTO `orders` VALUES ('10', '1', '1469696993654', '3', '8', '1');
INSERT INTO `orders` VALUES ('11', '32', '1469697518279', '3', '8', '1');
INSERT INTO `orders` VALUES ('12', '94', '1470808047343', '3', '8', '1');
INSERT INTO `orders` VALUES ('13', '8', '1470813556875', '4', '9', '3');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zs', '15251811234', '123456');
INSERT INTO `user` VALUES ('2', 'admin', 'admin', '123456');
INSERT INTO `user` VALUES ('3', 'SC1469694603451', '13555555555', '123456');
INSERT INTO `user` VALUES ('4', 'SC1470813508171', '13888888888', '123456');
