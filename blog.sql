/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-06-21 14:51:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_admin
-- ----------------------------
DROP TABLE IF EXISTS `blog_admin`;
CREATE TABLE `blog_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_phone` varchar(11) DEFAULT NULL,
  `admin_name` varchar(16) DEFAULT NULL,
  `admin_psd` varchar(32) DEFAULT NULL,
  `admin_role` varchar(32) DEFAULT NULL,
  `last_logintime` int(11) DEFAULT NULL,
  `rand` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1、待审核 2、正常 3、锁定 4、删除',
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_admin
-- ----------------------------
INSERT INTO `blog_admin` VALUES ('1', '13266667777', 'admin', 'fbb818e9df69f6a7d60f9bd00710aa13', '超级管理员', null, '2453', '2', null, null);
INSERT INTO `blog_admin` VALUES ('3', '13233334444', 'xiaoming', null, null, null, null, null, null, null);
INSERT INTO `blog_admin` VALUES ('5', '15022222222', 'fgssfa', null, null, null, null, null, null, null);
INSERT INTO `blog_admin` VALUES ('7', '29134844922', 'sdasdg', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tag_id` varchar(255) DEFAULT NULL COMMENT '文章关联的标签id  多个标签之间 英文逗号隔开',
  `auther_id` int(11) DEFAULT NULL COMMENT '作者的id  和管理员id关联',
  `publish_time` int(11) DEFAULT NULL COMMENT '发布时间',
  `click_count` int(11) DEFAULT '0' COMMENT '点击量 （ 阅读量）',
  `favour_count` int(11) DEFAULT '0' COMMENT '关注量',
  `status` tinyint(4) DEFAULT NULL COMMENT '1、 待审核  2、审核通过  3、审核不通过  4、删除',
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '2', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('3', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('5', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', '1527835771', '0', '0', '2', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('7', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', '1527835775', '0', '0', '2', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('9', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('11', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('13', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('15', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('17', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('19', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('21', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('23', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('25', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('27', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('29', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', '1528183465', '0', '0', '2', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('31', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('33', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('35', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('37', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('39', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('41', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('43', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('45', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('47', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('49', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('51', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('53', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('55', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('57', 'php AJAX分页', null, '阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面阿a瑟八十八放牛班奉命办事方面', '7', '1,7,9', '1', '1527816045', '0', '0', '2', '1527728619', '1527728619');
INSERT INTO `blog_article` VALUES ('59', 'php AJAX分页-2', null, '文章添加时间文章添加时间文章添加时间文章添加时间,文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间文章添加时间', '7', '1,3,5,7,9,11,13', '1', '1527816045', '0', '0', '2', '1527728667', '1527728667');
INSERT INTO `blog_article` VALUES ('61', 'MYSQL select', null, 'MYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL selectMYSQL select', '9', '3', '1', null, '0', '0', '1', '1527730959', '1527730959');
INSERT INTO `blog_article` VALUES ('63', 'HTML5+CSS3', null, 'HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3HTML5+CSS3', '11', '1,3', '1', null, '0', '0', '1', '1527732508', '1527732508');
INSERT INTO `blog_article` VALUES ('65', '阿斯大苏打', null, null, '7', '1,3', '1', null, '0', '0', '1', '1528035350', '1528035350');
INSERT INTO `blog_article` VALUES ('67', 'php AJAX分页', null, '&lt;p&gt;a撒旦撒旦&lt;/p&gt;', '7', '1,3', '1', null, '0', '0', '1', '1528035530', '1528035530');
INSERT INTO `blog_article` VALUES ('69', '我希望我的爱情是这样的', null, '&lt;p&gt;&lt;img src=&quot;/Upload/image/20180603/1528037829135167.jpg&quot; title=&quot;1528037829135167.jpg&quot; alt=&quot;-0-saturn_solar.jpg_220x220.jpg&quot;/&gt;我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。我希望我的爱情是这样的，相濡以沫，举案齐眉，平淡如水。我在岁月中找到他，依靠他，将一生交付给他。做他的妻子，他孩子的母亲，为他做饭，洗衣服，缝一颗掉了的纽扣。然后，我们一起在时光中变老。&lt;/p&gt;', '9', '1,3,7,9', '1', '1528037923', '17', '0', '2', '1528037888', '1528037888');
INSERT INTO `blog_article` VALUES ('71', 'php AJAX分页', null, '&lt;p style=&quot;text-indent: 2em;&quot;&gt;php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页&lt;/p&gt;&lt;p style=&quot;text-indent: 2em;&quot;&gt;&lt;img src=&quot;/Upload/image/20180604/1528072794874147.jpg&quot; title=&quot;1528072794874147.jpg&quot; alt=&quot;-0-saturn_solar.jpg_220x220.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 2em;&quot;&gt;php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页php AJAX分页&lt;/p&gt;', '7', '1,3,5,7,9,11', '1', '1528072842', '2', '0', '2', '1528072828', '1528072828');
INSERT INTO `blog_article` VALUES ('73', '测试文件上传', null, null, '7', '1,3', '1', null, '0', '0', '1', '1528076343', '1528076343');
INSERT INTO `blog_article` VALUES ('75', 'editorValue', null, '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: medium;&quot;&gt;editorValue&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: medium;&quot;&gt;editorValue&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: medium;&quot;&gt;editorValue&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: medium;&quot;&gt;editorValue&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: medium;&quot;&gt;editorValue&lt;/span&gt;&lt;img src=&quot;/Upload/ueditor/images/20180604/1528076492807878.jpg&quot; title=&quot;1528076492807878.jpg&quot; alt=&quot;-0-saturn_solar.jpg_220x220.jpg&quot;/&gt;&lt;/p&gt;', '11', '7', '1', null, '0', '0', '1', '1528076511', '1528076511');
INSERT INTO `blog_article` VALUES ('77', '我希望我的爱情是这样的', '/Upload//article/20180604/5b14a0457730d.jpg', '&lt;p style=&quot;text-indent: 2em;&quot;&gt;我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的&lt;/p&gt;&lt;p style=&quot;text-align: center; text-indent: 2em;&quot;&gt;&lt;img src=&quot;/Upload/ueditor/images/20180604/1528078374128187.jpg&quot; title=&quot;1528078374128187.jpg&quot; alt=&quot;-0-saturn_solar.jpg_220x220.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 2em;&quot;&gt;我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的我希望我的爱情是这样的&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '7', '1,3,5,7', '1', '1528078439', '1', '0', '2', '1528078405', '1528078405');
INSERT INTO `blog_article` VALUES ('79', '测试文件上传', '/Upload//article/20180604/5b14a1535ca7e.jpg', '&lt;p style=&quot;text-indent: 2em;&quot;&gt;测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传&lt;/p&gt;&lt;p style=&quot;text-align: center; text-indent: 2em;&quot;&gt;&lt;img src=&quot;/Upload/ueditor/images/20180604/1528078659455878.jpg&quot; title=&quot;1528078659455878.jpg&quot; alt=&quot;-0-saturn_solar.jpg_220x220.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-indent: 2em;&quot;&gt;测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传测试文件上传&lt;/p&gt;', '9', '1,5,7,9', '1', '1528078690', '61', '0', '2', '1528078675', '1528078675');

-- ----------------------------
-- Table structure for blog_article_favour
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_favour`;
CREATE TABLE `blog_article_favour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article_favour
-- ----------------------------
INSERT INTO `blog_article_favour` VALUES ('18', '79', '22', '1111111', null);
INSERT INTO `blog_article_favour` VALUES ('33', '79', '23', null, null);
INSERT INTO `blog_article_favour` VALUES ('35', '79', '83', null, null);
INSERT INTO `blog_article_favour` VALUES ('37', '5', '22', null, null);
INSERT INTO `blog_article_favour` VALUES ('59', '79', '1', '1528178972', null);
INSERT INTO `blog_article_favour` VALUES ('63', '5', '1', '1528178981', null);
INSERT INTO `blog_article_favour` VALUES ('65', '77', '1', '1528179060', null);
INSERT INTO `blog_article_favour` VALUES ('67', '71', '1', '1528179065', null);
INSERT INTO `blog_article_favour` VALUES ('69', '69', '1', '1528179308', null);

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(16) DEFAULT NULL,
  `nav_show` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) unsigned DEFAULT NULL COMMENT '1-100, 越大越先展示',
  `status` tinyint(4) DEFAULT NULL COMMENT '1:启用 2：不启用 3：删除',
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('7', 'PHP', '1', '100', '1', null, null);
INSERT INTO `blog_category` VALUES ('9', 'MYSQL', '1', '90', '1', '1527586294', '1527586294');
INSERT INTO `blog_category` VALUES ('11', 'HTML', '1', '80', '1', '1527586440', '1527586440');
INSERT INTO `blog_category` VALUES ('13', 'CSS', '1', '80', '1', '1527586560', '1527586560');
INSERT INTO `blog_category` VALUES ('15', 'MVC', '1', '77', '1', '1527586583', '1527586583');
INSERT INTO `blog_category` VALUES ('17', 'THINKPHP', '1', '22', '1', '1527586686', '1527586686');
INSERT INTO `blog_category` VALUES ('25', 'YII2.0', '1', '92', '1', '1527645232', '1527645232');
INSERT INTO `blog_category` VALUES ('27', 'laravel 5.5', '1', '80', '1', '1527645232', '1527645232');
INSERT INTO `blog_category` VALUES ('29', 'Redis', '1', '77', '1', '1527645232', '1527645232');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1、待审核 2、审核通过 3、删除',
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('7', '79', '1', '阿什顿阿什顿阿什顿', '2', '1528249073', '1528249073');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(32) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', 'PHP', '1', '1527661584', '1527661584');
INSERT INTO `blog_tag` VALUES ('3', 'MYSQL', '1', '1527661603', '1527661603');
INSERT INTO `blog_tag` VALUES ('5', 'JS', '1', '1527661615', '1527661615');
INSERT INTO `blog_tag` VALUES ('7', '后台技术', '1', '1527661627', '1527661627');
INSERT INTO `blog_tag` VALUES ('9', '技术博客', '1', '1527661638', '1527661638');
INSERT INTO `blog_tag` VALUES ('11', 'HTML', '1', '1527661671', '1527661671');
INSERT INTO `blog_tag` VALUES ('13', '人工智能', '1', '1527661694', '1527661694');
INSERT INTO `blog_tag` VALUES ('15', '大数据', '1', '1527662694', '1527662694');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) DEFAULT NULL,
  `psd` varchar(32) DEFAULT NULL,
  `rand` char(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1、 待审核 2、正常 3、锁定 4、删除',
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'zhangsan', 'ea3ca6646c34e53c7996013fb6cbe1fc', '1234', '2', '1527777888', null);
INSERT INTO `blog_user` VALUES ('2', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '1421', '1', '1427777888', null);
INSERT INTO `blog_user` VALUES ('3', 'wangwu', 'e10adc3949ba59abbe56e057f20f883e', '0912', '3', '1327777888', null);
INSERT INTO `blog_user` VALUES ('4', 'xiaoming', 'e10adc3949ba59abbe56e057f20f883e', '1232', '4', '1327777888', null);
INSERT INTO `blog_user` VALUES ('5', 'asda', null, null, '2', null, null);
INSERT INTO `blog_user` VALUES ('7', 'sadasda', null, null, '1', null, null);
INSERT INTO `blog_user` VALUES ('9', 'dddd', null, null, '1', null, null);
INSERT INTO `blog_user` VALUES ('11', 'sdasda2', null, null, '1', null, null);
