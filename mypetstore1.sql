/*
 Navicat Premium Data Transfer

 Source Server         : luyue
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : mypetstore1

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 20/11/2025 22:00:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `firstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addr2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('2', '2@2', 'weee2', '2', 'OK', '2', '2', '2', '2', '2', '中国', '44');
INSERT INTO `account` VALUES ('66', '2@2', '6666', '6666', 'OK', '6666', '6666', '6666', '6666', '6666', '6666', '6666');
INSERT INTO `account` VALUES ('6666', '2@2', '6666', '6666', 'OK', '6666', '6666', '6666', '6666', '6666', '6666', '6666');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('ASDF', '', '', '', NULL, '', '', '', '', '', '', '');
INSERT INTO `account` VALUES ('CCCC', 'CSU_Gql@csu.edu.com', 'anjfchiuw', 'uodsho', NULL, '', '', '', '', '', 'najfsbkaws', '19204260486');
INSERT INTO `account` VALUES ('GGG', '1378264698@qq.com', '156', '78', NULL, '456', '45', '456', '589', '89', '4589', '19204260486');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('jiangziqiang', '2761018317@qq.com', 'jiang', 'ziqiang', NULL, 'white', 'ppp', 'beijing', 'aaa', 'bbb', '中国', '15579150471');
INSERT INTO `account` VALUES ('luyue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account` VALUES ('moon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account` VALUES ('YilianFengyue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `account` VALUES ('Ylfmoonn', 'lapu2023@outlook.com', 'ylf', 'moonn', 'OK', '901 Changsha', '411 Nanyang', 'Luoyang', 'Henan', '473400', 'China', '1380000381');
INSERT INTO `account` VALUES ('迪迦', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata`  (
  `favcategory` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bannername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`favcategory`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `itemid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `num` int NULL DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('EST-15', 3, 'CCCC');
INSERT INTO `cart` VALUES ('EST-14', 12, 'CCCC');
INSERT INTO `cart` VALUES ('EST-18', 1, 'CCCC');
INSERT INTO `cart` VALUES ('EST-19', 2, 'ASDF');
INSERT INTO `cart` VALUES ('EST-18', 1, 'ASDF');
INSERT INTO `cart` VALUES ('EST-13', 1, 'GGG');
INSERT INTO `cart` VALUES ('EST-15', 1, 'GGG');
INSERT INTO `cart` VALUES ('EST-26', 1, 'GGG');
INSERT INTO `cart` VALUES ('EST-19', 1, 'GGG');
INSERT INTO `cart` VALUES ('EST-4', 10, 'j2ee');
INSERT INTO `cart` VALUES ('EST-18', 11, 'j2ee');
INSERT INTO `cart` VALUES ('EST-7', 13, 'j2ee');
INSERT INTO `cart` VALUES ('EST-19', 10, 'j2ee');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `catid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descn1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `productList` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>', './images/birds.jpg', 'Exotic Varieties');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>', './images/cats.jpg', 'Various Breeds, Exotic Varieties');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>', './images/dogs.jpg', 'Various Breeds');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>', './images/fish.jpg', 'Saltwater, Freshwater');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>', './images/reptiles.jpg', 'Lizards, Turtles, Snakes');

-- ----------------------------
-- Table structure for consignee
-- ----------------------------
DROP TABLE IF EXISTS `consignee`;
CREATE TABLE `consignee`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of consignee
-- ----------------------------
INSERT INTO `consignee` VALUES (1, 'j2ee', 'ABC', 'XYX', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', 10000);
INSERT INTO `inventory` VALUES ('EST-10', 10000);
INSERT INTO `inventory` VALUES ('EST-11', 10000);
INSERT INTO `inventory` VALUES ('EST-12', 10000);
INSERT INTO `inventory` VALUES ('EST-13', 10000);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 10000);
INSERT INTO `inventory` VALUES ('EST-16', 10000);
INSERT INTO `inventory` VALUES ('EST-17', 10000);
INSERT INTO `inventory` VALUES ('EST-18', 10000);
INSERT INTO `inventory` VALUES ('EST-19', 10000);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 10000);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 10000);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 10000);
INSERT INTO `inventory` VALUES ('EST-4', 10000);
INSERT INTO `inventory` VALUES ('EST-5', 10000);
INSERT INTO `inventory` VALUES ('EST-6', 10000);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 10000);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `productid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `listprice` decimal(10, 2) NULL DEFAULT NULL,
  `unitcost` decimal(10, 2) NULL DEFAULT NULL,
  `supplier` int NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr3` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr4` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attr5` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` int NULL DEFAULT NULL,
  `uploaded` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `fk_item_2`(`supplier` ASC) USING BTREE,
  INDEX `itemProd`(`productid` ASC) USING BTREE,
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL, 5, 0);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL, 5, 0);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 0);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL, 5, 1);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem`  (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `logUserId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `logInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('GGG', '2025-01-02 23:44:51     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-02 23:47:11     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('GGG', '2025-01-02 23:47:15     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-26 添加物品 (EST-26-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:13     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:25     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:28     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@72e5ee75');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:30     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:32     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:34     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:36     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:45     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:46     http://localhost:8080/mypetstore/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:53:47     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:55:55     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:22     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2517fbe');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:25     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:27     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2517fbe');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:30     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:31     http://localhost:8080/mypetstore/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:32     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:39     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:40     http://localhost:8080/mypetstore/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:41     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:56:49     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:57:00     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:57:01     http://localhost:8080/mypetstore/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2025-01-02 23:57:02     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:48:08     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:48:13     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@40163ca6');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:48:46     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-13 (EST-13-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:51:17     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:51:21     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@49aaa3d9');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:51:49     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:55:21     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:55:24     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@16df4abc');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:57:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:57:04     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@bf48121');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:57:10     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:57:13     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 00:57:17     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:06:59     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:07:03     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@4d01c9d5');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:08:18     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:08:20     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:08:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 01:08:55     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2bd6f2da');
INSERT INTO `log` VALUES ('', '2025-01-03 01:19:19     http://localhost:8080/mypetstore/newAccount?null 注册账号，验证码错误');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:21:28     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:21:32     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5259e3c3');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:21:38     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:22:10     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 更改收货地址');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:22:17     http://localhost:8080/mypetstore_war_exploded/shippingAddress?null 修改订单邮寄地址');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:22:20     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@56c1c119');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:22:43     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:22:51     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2ea7a646');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:23:29     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:23:34     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:13     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:16     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@50c7c2a7');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:26     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:27     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:29     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:33     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:34     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:34     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:34     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:34     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:34     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:35     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:37     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-12 (EST-12-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:42     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:51     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-26 (EST-26-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:51:57     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:00     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:04     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:10     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 17:52:11     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:20     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:25     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@68d7d677');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:30     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:35     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:36     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:36     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:37     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:38     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:38     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:39     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:39     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:39     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:39     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:39     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:40     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:50     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-13 (EST-13-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:03:59     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:04     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:10     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:12     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:16     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:18     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:22     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:04:28     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:15:10     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:15:13     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@70dcff6b');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:15:19     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:15:32     http://localhost:8080/mypetstore_war_exploded/updateCartQuantities?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:15:34     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-16 (EST-16-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:16:40     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:16:44     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@6457a4e0');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:16:59     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:17:04     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:17:09     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:25     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:28     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:30     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:31     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:32     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:18:49     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-11 (EST-11-null)数量+1 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:19:13     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:19:17     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@188f4a92');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:21:12     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:21:15     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1312b32e');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:22:17     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-15 (EST-15-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:22:20     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-11 (EST-11-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:09     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5dab562');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:13     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:18     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:20     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:29     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:33     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:25:36     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:32:30     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:32:39     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@61c5e500');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:57:49     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 18:57:55     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@5c84940');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:02:36     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:02:39     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@252772ed');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:04:19     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:04:22     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@49d2058');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:08     http://localhost:8080/mypetstore_war_exploded/signOnForm?null 用户进入登录界面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:13     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:17     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@77f71131');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:36     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@77f71131');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:06:36     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@77f71131');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:07:05     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:07:08     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@188f4a92');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:08:39     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:08:43     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@43bffa3a');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:21:23     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:21:27     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2deff208');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:24:50     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:24:53     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e2ce4ca');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:28:37     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e2ce4ca');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:28:44     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1e2ce4ca');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:33:05     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:33:11     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@632d33e3');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:41:06     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 19:41:10     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@248d9c0b');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:36:46     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:37:01     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:38:10     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:38:25     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@71a1731b');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:38:41     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@71a1731b');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:40:11     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:40:14     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@fcf47b5');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:45:41     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:45:58     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1bfafeca');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:56:20     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:57:55     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@1060dbe');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:58:09     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:58:14     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:58:18     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@1ac7f28d');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 20:59:03     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@1ac7f28d');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:01:44     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:01:50     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:01:56     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:01:59     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:02:36     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-18 (EST-18-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:09:25     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:09:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2bd6f2da');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:09:58     http://localhost:8080/mypetstore_war_exploded/removeItemFromCart?workingItemId=EST-12 (EST-12-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:12:37     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:12:43     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:12:43     http://localhost:8080/mypetstore_war_exploded/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:12:48     http://localhost:8080/mypetstore_war_exploded/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@45603bc');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:13:01     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@309d2c63');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:17:57     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:18:00     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:18:03     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:22:46     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:22:50     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@2bd6f2da');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:23:35     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:23:43     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-26 添加物品 (EST-26-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:23:54     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:23:59     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('GGG', '2025-01-03 21:24:02     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:14:57     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:15:04     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:01     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:01     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:01     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:01     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:03     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:16:45     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@15f50a5d');
INSERT INTO `log` VALUES ('GGG', '2025-01-04 00:17:11     http://localhost:8080/mypetstore_war_exploded/searchProduct?null 查找商品  [Finch]');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:04:54     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:04:55     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:04:56     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:04:57     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:04:59     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:00     http://localhost:8080/mypetstore/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:00     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:05     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:17     http://localhost:8080/mypetstore/searchProduct?null 查找商品  [Labrador Retriever]');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:23     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:24     http://localhost:8080/mypetstore/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:25     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:05:28     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@21e8c0f7');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:17:58     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:00     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@834f6c1');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:00     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@834f6c1');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:03     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:04     http://localhost:8080/mypetstore/viewProduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:06     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-14 添加物品 (EST-14-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:18:10     http://localhost:8080/mypetstore/removeItemFromCart?workingItemId=EST-14 (EST-14-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:03     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:04     http://localhost:8080/mypetstore/viewProduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:06     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:09     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:10     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:12     http://localhost:8080/mypetstore/viewOrder?null 查看订单 org.csu.mypetstore.domain.Order@767ea92c');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:19:14     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:23     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@79daade5');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:26     http://localhost:8080/mypetstore/viewCategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:28     http://localhost:8080/mypetstore/viewProduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:29     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:39     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:40     http://localhost:8080/mypetstore/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:28:41     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-17 添加物品 (EST-17-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:30:46     http://localhost:8080/mypetstore/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:31:17     http://localhost:8080/mypetstore/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@79daade5');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:31:20     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:31:21     http://localhost:8080/mypetstore/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:31:22     http://localhost:8080/mypetstore/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:31:23     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:38     http://localhost:8080/mypetstore/viewCategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:39     http://localhost:8080/mypetstore/viewProduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:40     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:41     http://localhost:8080/mypetstore/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:43     http://localhost:8080/mypetstore/viewProduct?productId=FI-FW-02 查看产品 Goldfish');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:33:44     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-21 添加物品 (EST-21-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:19     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:23     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:30     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@725916de');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:39     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:42     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:45     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-4 添加物品 (EST-4-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:54     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:35:57     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:01     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:04     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:08     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:33     http://localhost:8080/mypetstore_war_exploded/newOrderForm?itemId= 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:51     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@725916de');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 18:36:54     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 19:06:20     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-04 19:08:11     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:24:37     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:24:52     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:24:53     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:24:55     http://localhost:8080/mypetstore_war_exploded/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:01     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:02     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@54cd909e');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:09     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:10     http://localhost:8080/mypetstore_war_exploded/viewCategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:11     http://localhost:8080/mypetstore_war_exploded/viewProduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:13     http://localhost:8080/mypetstore_war_exploded/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:25:23     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:27:18     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 15:27:24     http://localhost:8080/mypetstore_war_exploded/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 16:02:09     http://localhost:8080/mypetstore_war_exploded/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 16:02:13     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 16:02:35     http://localhost:8080/mypetstore_war_exploded/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 16:02:36     http://localhost:8080/mypetstore_war_exploded/viewCart?null 查看购物车 org.csu.mypetstore.domain.Cart@433a0fec');
INSERT INTO `log` VALUES ('j2ee', '2025-01-11 16:02:37     http://localhost:8080/mypetstore_war_exploded/main?null 跳转到主界面');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `orderid` bigint NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `orderdate` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `totalprice` decimal(10, 2) NULL DEFAULT NULL,
  `addr1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addr2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order` VALUES (6, 'luyue', '2025-11-20 21:47:52', 'PAID', 5.29, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int NOT NULL,
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shipaddr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shipcity` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shipstate` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shipzip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shipcountry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billaddr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billaddr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `billcity` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billstate` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billzip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billcountry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `courier` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `totalprice` decimal(10, 2) NOT NULL,
  `billtofirstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billtolastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shiptofirstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shiptolastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creditcard` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `exprdate` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cardtype` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `locale` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (-932102143, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'American Express', 'CA');
INSERT INTO `orders` VALUES (-932089855, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (-330690558, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1000, 'LAPPAND', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1001, 'j2ee', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 789.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1003, 'GGG', '2024-11-05', '456789', '45', '456', '589', '89', '4589', '456', '45', '456', '589', '89', '4589', '4589', 193.50, '156', '78', '156', '78', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1004, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1005, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1006, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1007, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1008, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1009, 'GGG', '2024-11-05', '456', '45', '456', '589', '89', '4589', '456', '45', '456', '589', '89', '4589', 'UPS', 18.50, '156', '78', '156', '78', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1010, 'GGG', '2024-11-05', '456', '45', '456', '589', '89', '4589', '456', '45', '456', '589', '89', '4589', 'UPS', 15.50, '156', '78', '156', '78', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1011, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1012, 'ACID', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1013, 'j2ee', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 209.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1014, 'ACID', '2024-11-06', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1015, 'ACID', '2024-11-06', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1016, 'CCCC', '2024-11-06', '', '', '', '', '', 'najfsbkaws', '', '', '', '', '', 'najfsbkaws', 'najfsbkaws', 193.50, 'anjfchiuw', 'uodsho', 'anjfchiuw', 'uodsho', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1017, 'CCCC', '2024-11-06', '', '', '', '', '', 'najfsbkaws', '', '', '', '', '', 'najfsbkaws', 'UPS', 193.50, 'anjfchiuw', 'uodsho', 'anjfchiuw', 'uodsho', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1018, 'CCCC', '2024-11-11', '', '', '', '', '', 'najfsbkaws', '', '', '', '', '', 'najfsbkaws', 'UPS', 193.50, 'anjfchiuw', 'uodsho', 'anjfchiuw', 'uodsho', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1019, 'CCCC', '2024-11-12', '', '', '', '', '', 'najfsbkaws', '', '', '', '', '', 'najfsbkaws', 'UPS', 655.50, 'anjfchiuw', 'uodsho', 'anjfchiuw', 'uodsho', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (2025, 'LAPPAND', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (2028, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (53559298, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (313618433, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (686899202, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (884043777, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1223782402, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1668366338, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1727098882, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1831956481, 'Ylfmoonn', '2024-11-05', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'USA', 193.50, 'ylf', 'moonn', 'ylf', 'moonn', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES (1000, 1000, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1001, 1001, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1002, 1002, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1003, 1003, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1004, 1004, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1005, 1005, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1006, 1006, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1007, 1007, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1008, 1008, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1009, 1009, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1010, 1010, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1011, 1011, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1012, 1012, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1013, 1013, '2024-11-05', 'P');
INSERT INTO `orderstatus` VALUES (1014, 1014, '2024-11-06', 'P');
INSERT INTO `orderstatus` VALUES (1015, 1015, '2024-11-06', 'P');
INSERT INTO `orderstatus` VALUES (1016, 1016, '2024-11-06', 'P');
INSERT INTO `orderstatus` VALUES (1017, 1017, '2024-11-06', 'P');
INSERT INTO `orderstatus` VALUES (1018, 1018, '2024-11-11', 'P');
INSERT INTO `orderstatus` VALUES (1019, 1019, '2024-11-12', 'P');
INSERT INTO `orderstatus` VALUES (1020, 1020, '2024-11-12', 'P');
INSERT INTO `orderstatus` VALUES (1021, 1021, '2025-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1022, 1022, '2025-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1023, 1023, '2025-01-03', 'P');
INSERT INTO `orderstatus` VALUES (1024, 1024, '2025-01-03', 'P');
INSERT INTO `orderstatus` VALUES (1025, 1025, '2025-01-03', 'P');
INSERT INTO `orderstatus` VALUES (1026, 1026, '2025-01-03', 'P');
INSERT INTO `orderstatus` VALUES (1027, 1027, '2025-01-04', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descn1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`productid`) USING BTREE,
  INDEX `productCat`(`category` ASC) USING BTREE,
  INDEX `productName`(`name` ASC) USING BTREE,
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"../images/bird1.gif\">', './images/bird1.gif');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever', './images/bird1.gif');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan', './images/fish3.gif');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China', './images/fish2.gif');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia', './images/fish1.gif');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia', './images/fish4.gif');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess', './images/cat1.gif');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations', './images/cat2.gif');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England', './images/dog2.gif');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog', './images/dog4.gif');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station', './images/dog5.gif');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France', './images/dog6.gif');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog', './images/dog1.gif');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog', './images/dog5.gif');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend', './images/lizard1.gif');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"mages/snake1.gif\">Doubles as a watch dog', './images/snake1.gif');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `langpref` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `favcategory` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mylistopt` int NULL DEFAULT NULL,
  `banneropt` int NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('2', 'english', 'FISH', 1, 0);
INSERT INTO `profile` VALUES ('66', 'english', 'CATS', 1, 0);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('ASDF', 'english', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('CCCC', 'english', 'BIRDS', NULL, NULL);
INSERT INTO `profile` VALUES ('GGG', 'english', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('j2ee', 'english', 'DOGS', 1, 1);
INSERT INTO `profile` VALUES ('jiangziqiang', 'chinese', 'FISH', 0, 0);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nextid` int NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('ordernum', 1028);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `itemid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `productid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instock` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `listprice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `totalcost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `times` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('j2ee', 'EST-4', 'FI-FW-01', 'Spotted Koi', 'true', '7', '18.50', '129.50', NULL, '1');
INSERT INTO `shoppingcart` VALUES ('j2ee', 'EST-26', 'K9-CW-01', 'Adult Male Chihuahua', 'true', '1', '125.50', '125.50', NULL, '1');
INSERT INTO `shoppingcart` VALUES ('j2ee', 'EST-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-19', 'AV-SB-02', '', '', '1', '15.5', '15.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-19', 'AV-SB-02', '', '', '3', '15.5', '46.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '1', '193.5', '193.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '1', '193.5', '193.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '1', '193.5', '193.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-15', 'FL-DSH-01', '', '', '1', '23.5', '23.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-14', 'FL-DSH-01', '', '', '1', '58.5', '58.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-15', 'FL-DSH-01', '', '', '1', '23.5', '23.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '3', '193.5', '580.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-19', 'AV-SB-02', '', '', '1', '15.5', '15.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '1', '193.5', '193.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-21', 'FI-FW-02', '', '', '2', '5.29', '10.58', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '1', '193.5', '193.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-19', 'AV-SB-02', '', '', '1', '15.5', '15.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-15', 'FL-DSH-01', '', '', '5', '23.5', '117.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-14', 'FL-DSH-01', '', '', '3', '58.5', '175.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-1', 'FI-SW-01', '', '', '1', '16.5', '16.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-2', 'FI-SW-01', '', '', '1', '16.5', '16.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-3', 'FI-SW-02', '', '', '1', '18.5', '18.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-20', 'FI-FW-02', '', '', '1', '5.5', '5.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-21', 'FI-FW-02', '', '', '1', '5.29', '5.29', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-16', 'FL-DLH-02', '', '', '1', '93.5', '93.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-17', 'FL-DLH-02', '', '', '1', '93.5', '93.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-15', 'FL-DSH-01', '', '', '1', '23.5', '23.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-14', 'FL-DSH-01', '', '', '1', '58.5', '58.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-20', 'FI-FW-02', '', '', '5', '5.5', '27.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-21', 'FI-FW-02', '', '', '3', '5.29', '15.870000000000001', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-18', 'AV-CB-01', '', '', '12', '193.5', '2322', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-19', 'AV-SB-02', '', '', '2', '15.5', '31', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-20', 'FI-FW-02', '', '', '1', '5.5', '5.5', '', '');
INSERT INTO `shoppingcart` VALUES ('Ylfmoonn', 'EST-21', 'FI-FW-02', '', '', '3', '5.29', '15.870000000000001', '', '');

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon`  (
  `username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `github_uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('2', '1234', NULL, NULL);
INSERT INTO `signon` VALUES ('66', '1234', NULL, NULL);
INSERT INTO `signon` VALUES ('6666', '22', NULL, NULL);
INSERT INTO `signon` VALUES ('ACID', 'ACID', NULL, NULL);
INSERT INTO `signon` VALUES ('ASDF', 'ASDF', NULL, NULL);
INSERT INTO `signon` VALUES ('CCCC', 'CCCC', NULL, NULL);
INSERT INTO `signon` VALUES ('GGG', 'GGG', NULL, NULL);
INSERT INTO `signon` VALUES ('j2ee', 'j2ee', NULL, NULL);
INSERT INTO `signon` VALUES ('luyue', '123456', NULL, NULL);
INSERT INTO `signon` VALUES ('moon', '1234', NULL, NULL);
INSERT INTO `signon` VALUES ('STAR', 'STAR', NULL, NULL);
INSERT INTO `signon` VALUES ('YilianFengyue', 'default_password', '181093978', 'https://avatars.githubusercontent.com/u/181093978?v=4');
INSERT INTO `signon` VALUES ('Ylfmoonn', 'sfm12345', '', 'https://avatars.githubusercontent.com/u/181093978?v=4');
INSERT INTO `signon` VALUES ('迪迦', '123456', NULL, NULL);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `suppid` int NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `addr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`suppid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');

SET FOREIGN_KEY_CHECKS = 1;
