/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : movie

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 21/10/2020 16:04:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall`  (
  `Hall_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '影厅ID',
  `Hall_Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影厅名字',
  `Hall_Seats` int(11) NULL DEFAULT NULL COMMENT '座位数量',
  `Hall_Row` int(255) NULL DEFAULT NULL COMMENT '行数',
  `Hall Column` int(255) NULL DEFAULT NULL COMMENT '列数',
  PRIMARY KEY (`Hall_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `Manager_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `Manager_Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员账号',
  `Manager_Password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`Manager_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for moive
-- ----------------------------
DROP TABLE IF EXISTS `moive`;
CREATE TABLE `moive`  (
  `Movie_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '电影主键',
  `Movie_Name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影名字',
  `Movie_MainActor` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影主演',
  `Movie_Director` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影导演',
  `Movie_Duraction` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影时长',
  `Movie_Class` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影类型',
  `Movie_Description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影描述',
  `Movie_Image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影图片',
  `Movie_Score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影评分',
  PRIMARY KEY (`Movie_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of moive
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `Schedule_ID` int(11) NULL DEFAULT NULL COMMENT '安排ID',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `Order_Price` decimal(10, 2) NULL DEFAULT NULL COMMENT '票价',
  `Order_Date` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `Order_state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`Order_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `Schedule_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '安排ID',
  `Movie_ID` int(11) NULL DEFAULT NULL COMMENT '电影ID',
  `Hall_ID` int(11) NULL DEFAULT NULL COMMENT '厅ID',
  `Schedule_Price` decimal(10, 2) NULL DEFAULT NULL COMMENT '电影票价',
  `Schedule_BeginDateTime` datetime(0) NULL DEFAULT NULL COMMENT '电影放映时间',
  `Schedule_EndDateTime` datetime(0) NULL DEFAULT NULL COMMENT '电影结束时间',
  PRIMARY KEY (`Schedule_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `Seat_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '座位ID',
  `Hall_ID` int(11) NULL DEFAULT NULL COMMENT '影厅ID',
  `Seat_Row` int(11) NULL DEFAULT NULL COMMENT '座位行号',
  `Seat_Column` int(11) NULL DEFAULT NULL COMMENT '座位列号',
  `Seat_Status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '座位状态',
  `Seat_Select` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '座位选中',
  `Schedule_ID` int(11) NULL DEFAULT NULL COMMENT '安排ID',
  PRIMARY KEY (`Seat_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名字',
  `phoneNumber` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户电话',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
