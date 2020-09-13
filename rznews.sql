/*
Navicat MySQL Data Transfer

Source Server         : conndemo
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : rznews

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-10-29 19:21:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbassess`
-- ----------------------------
DROP TABLE IF EXISTS `tbassess`;
CREATE TABLE `tbassess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL COMMENT '评价',
  `isshow` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `creattime` varchar(255) DEFAULT NULL,
  `detil` varchar(255) DEFAULT NULL COMMENT '详细评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbassess
-- ----------------------------
INSERT INTO `tbassess` VALUES ('2', '111', 'on', '1', '', '2018-58-18 13:58:17', '11');
INSERT INTO `tbassess` VALUES ('3', '111', 'on', '1', '111', '2018-58-18 13:58:45', '1111');
INSERT INTO `tbassess` VALUES ('4', 'admin', '2', '1', 'ddd', '2018-33-22 14:33:04', 'ssaa啊啊啊啊啊啊啊啊啊啊');
INSERT INTO `tbassess` VALUES ('6', 'SaaS', '十分满意', '1', 'as', '2018-50-22 14:50:23', 'ass所所所所所');
INSERT INTO `tbassess` VALUES ('7', 'cc ', '较满意', '1', '125354588', '2018-06-23 15:06:13', 'aw d wawawd w dw');
INSERT INTO `tbassess` VALUES ('8', 'admin', '十分满意', '1', '54', '2018-14-25 15:14:03', '11');
INSERT INTO `tbassess` VALUES ('9', '', '十分满意', '0', '', '2018-18-25 17:18:38', '');
INSERT INTO `tbassess` VALUES ('10', '', '十分满意', '0', '', '2018-22-26 19:22:47', '');
INSERT INTO `tbassess` VALUES ('11', 'admin', '十分满意', '0', '54', '2018-09-26 22:09:22', '');
INSERT INTO `tbassess` VALUES ('12', 'admin', '较满意', '1', '111', '2018-12-26 22:12:20', '阿瓦达我的的的');

-- ----------------------------
-- Table structure for `tbcustomer`
-- ----------------------------
DROP TABLE IF EXISTS `tbcustomer`;
CREATE TABLE `tbcustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbname` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tbidnumber` varchar(255) DEFAULT NULL COMMENT '身份证',
  `tbroomnumber` varchar(255) DEFAULT NULL COMMENT '房间号',
  `tbcustomnumber` varchar(255) NOT NULL COMMENT '入住人数',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`tbcustomnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcustomer
-- ----------------------------
INSERT INTO `tbcustomer` VALUES ('6', '张三', '136136136', '4', '1人', '来瓶82年的拉菲');
INSERT INTO `tbcustomer` VALUES ('8', '', '', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('9', '', '', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('10', '111', '121212', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('11', '但是', '啊d', '1', '1人', '的');
INSERT INTO `tbcustomer` VALUES ('12', '1', '121212', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('13', '张三', '阿达', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('14', '张三', '121212', '1', '1人', '');
INSERT INTO `tbcustomer` VALUES ('15', '张三', '121212', '4', '2人', '来瓶等等 ');

-- ----------------------------
-- Table structure for `tbimg`
-- ----------------------------
DROP TABLE IF EXISTS `tbimg`;
CREATE TABLE `tbimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurlone` varchar(255) DEFAULT NULL,
  `imgurltwo` varchar(255) DEFAULT NULL,
  `imgurlthree` varchar(255) DEFAULT NULL,
  `typeid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbimg
-- ----------------------------
INSERT INTO `tbimg` VALUES ('1', '20181023094203178.JPG', '20181023094203178.JPG', '20181023094203178.JPG', '2');
INSERT INTO `tbimg` VALUES ('2', '20181023100806953.JPG', '20181023100806953.JPG', '20181023100806953.JPG', '');
INSERT INTO `tbimg` VALUES ('3', '20181023102048850.JPG', '20181023102048850.JPG', '20181023102048850.JPG', '');
INSERT INTO `tbimg` VALUES ('4', '20181023104111785.JPG', '20181023104111785.JPG', '20181023104111785.JPG', '');
INSERT INTO `tbimg` VALUES ('5', '20181023104128262.JPG', '20181023104128262.JPG', '20181023104128262.JPG', '');
INSERT INTO `tbimg` VALUES ('6', '20181023104430770.JPG', '20181023104430770.JPG', '20181023104430770.JPG', '1');
INSERT INTO `tbimg` VALUES ('7', '20181023104811460.JPG', '20181023104811460.JPG', '20181023104811460.JPG', '1');
INSERT INTO `tbimg` VALUES ('8', '20181023105106623.JPG', '20181023105106623.JPG', '20181023105106623.JPG', '1');
INSERT INTO `tbimg` VALUES ('9', '20181023112356201.JPG', '20181023112356201.JPG', '20181023112356201.JPG', '1');
INSERT INTO `tbimg` VALUES ('10', '', '20181023113130328.png', '20181023113130333.JPG', '1');
INSERT INTO `tbimg` VALUES ('11', '', '20181023113205215.JPG', '20181023113205247.JPG', '1');
INSERT INTO `tbimg` VALUES ('12', '', '', '20181023113251832.png', '1');
INSERT INTO `tbimg` VALUES ('13', '20181023113345324.JPG', '20181023113345314.png', '20181023113345320.JPG', '1');
INSERT INTO `tbimg` VALUES ('14', '', '', '20181023145250806.JPG', '1');
INSERT INTO `tbimg` VALUES ('15', '', '20181023145435692.JPG', '', '1');
INSERT INTO `tbimg` VALUES ('16', '20181023145452691.JPG', '20181023145452678.JPG', '20181023145452683.JPG', '1');
INSERT INTO `tbimg` VALUES ('17', '', '', '', '1');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------
INSERT INTO `tbnews` VALUES ('111', '是是是', '111', '我', '122', '1', '111');
INSERT INTO `tbnews` VALUES ('112', '习近平多封书信谈到的教育根本问题 ', 'ddddddd', '是是啊我的 的', '111', '1', '');
INSERT INTO `tbnews` VALUES ('113', '啊', '', '', '', '2', '');

-- ----------------------------
-- Table structure for `tbroom`
-- ----------------------------
DROP TABLE IF EXISTS `tbroom`;
CREATE TABLE `tbroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbroomnuber` varchar(255) DEFAULT NULL COMMENT '房间号',
  `tbroomtype` varchar(255) DEFAULT NULL COMMENT '房间类别',
  `tbroomprice` varchar(255) DEFAULT NULL COMMENT '房间价格',
  `tbroommark` varchar(255) DEFAULT NULL COMMENT '房间价格',
  `tbimgurl` varchar(255) DEFAULT NULL COMMENT '房间入住',
  `isshow` varchar(255) DEFAULT NULL COMMENT '是否显示首页',
  `tbroomname` varchar(255) DEFAULT NULL COMMENT '是否显示首页',
  `typeid` varchar(255) DEFAULT NULL COMMENT '推荐类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tbroom
-- ----------------------------
INSERT INTO `tbroom` VALUES ('7', '503', '2', '888', '0', '20181024155202954.jpg', '1', '花开花落', '1');
INSERT INTO `tbroom` VALUES ('9', '1314', '1', '1399', '0', '20181024162555926.jpg', '1', 'sda', '1');
INSERT INTO `tbroom` VALUES ('10', '4534', '1', '5454', '0', '20181024162611168.jpg', '1', '43', '1');
INSERT INTO `tbroom` VALUES ('11', '21', '1', '的', '0', '20181024162825927.jpg', '1', '广泛', '1');
INSERT INTO `tbroom` VALUES ('13', '寝室', '3', '啊啊阿达', '0', '20181024162825927.jpg', '1', 'sda', '2');
INSERT INTO `tbroom` VALUES ('15', '寝室', '1', '撒', '0', '20181024162839518.jpg', '1', 'sda', '2');
INSERT INTO `tbroom` VALUES ('16', '寝室', '1', '1111', '0', '20181024162900477.jpg', '1', 'sda', '3');
INSERT INTO `tbroom` VALUES ('17', '寝室', '1', '啊啊阿达', '0', '20181024162911620.jpg', '1', '43', '3');
INSERT INTO `tbroom` VALUES ('18', '寝室', '1', '撒', '1', '20181024162922998.jpg', '1', 'sda', '3');
INSERT INTO `tbroom` VALUES ('19', '寝室', '1', '啊啊阿达', '0', '20181024172900266.jpg', '1', '花开花落', '2');
INSERT INTO `tbroom` VALUES ('20', '101', '2', '299', '1', '20181025074756317.jpg', '1', '花开花落', '1');
INSERT INTO `tbroom` VALUES ('22', '250', '4', '888', '1', '20181025075031446.jpg', '1', '花开花落', '2');
INSERT INTO `tbroom` VALUES ('23', '撒', '1', '1111', '1', '20181025093335794.jpg', '0', 'sda', '3');
INSERT INTO `tbroom` VALUES ('24', '520', '3', '888', '1', '20181025161313451.jpg', '0', '花开花落', '1');
INSERT INTO `tbroom` VALUES ('25', '4', '1', '1111', '1', '20181025161458626.jpg', '0', '是是是', '2');
INSERT INTO `tbroom` VALUES ('26', '撒', '1', '11001', '0', '20181026173953586.jpg', '1', '花开花落', '1');
INSERT INTO `tbroom` VALUES ('27', '555', '1', '555', '0', '20181026175849869.jpg', '1', '花开花落', '2');
INSERT INTO `tbroom` VALUES ('28', '503', '1', '1111', '1', '20181026175906929.jpg', '1', '花开花落', '3');
INSERT INTO `tbroom` VALUES ('29', '555', '1', '999', '0', '20181026221450784.JPG', '0', '是是是', '1');

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('2', 'user', '111', '张三');
INSERT INTO `tbusers` VALUES ('3', 'test11', '123456', '测试员');
INSERT INTO `tbusers` VALUES ('4', 'test2', '123456', '测试员2');
INSERT INTO `tbusers` VALUES ('5', '111', '123456', '2222');
INSERT INTO `tbusers` VALUES ('8', 'admin', '111', '2222');
INSERT INTO `tbusers` VALUES ('9', '111', '22222222', '222222222222');
INSERT INTO `tbusers` VALUES ('10', '111', '123456', '2222');
INSERT INTO `tbusers` VALUES ('11', '111', '111', '水水水水');
INSERT INTO `tbusers` VALUES ('12', '18325292586', '111', '水水水水');
INSERT INTO `tbusers` VALUES ('13', 'admin', '111111', '111111');
INSERT INTO `tbusers` VALUES ('14', 'admin', '111111', '2222');
INSERT INTO `tbusers` VALUES ('15', 'admin', '111111', '1111');
INSERT INTO `tbusers` VALUES ('17', '', '', '');
INSERT INTO `tbusers` VALUES ('18', '1sdfsdf水电费', '', '');
INSERT INTO `tbusers` VALUES ('19', '', '', '');
INSERT INTO `tbusers` VALUES ('20', '1212', '', '');
INSERT INTO `tbusers` VALUES ('21', 'ss11', '1111', '1111');
