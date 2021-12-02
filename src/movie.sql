/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : easyproject

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 02/12/2021 18:49:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '007：无暇赴死 No Time to Die', '凯瑞·福永', '英国 / 美国', 2021);
INSERT INTO `movie` VALUES (2, '扬名立万', '刘循子墨', '中国', 2021);
INSERT INTO `movie` VALUES (3, '毒液2 Venom: Let There Be Carnage', '安迪·瑟金斯', '美国', 2021);

SET FOREIGN_KEY_CHECKS = 1;
