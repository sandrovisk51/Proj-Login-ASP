/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : dblogin

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-10-02 16:56:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbusuarios`
-- ----------------------------
DROP TABLE IF EXISTS `tbusuarios`;
CREATE TABLE `tbusuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbusuarios
-- ----------------------------
INSERT INTO `tbusuarios` VALUES ('1', 'teste agora', 'teste@email.com', '123456', '2020-10-02 16:49:14');
