/*
Navicat MySQL Data Transfer

Source Server         : 1710
Source Server Version : 50518
Source Host           : 127.0.0.1:3306
Source Database       : ldlsc

Target Server Type    : MYSQL
Target Server Version : 50518
File Encoding         : 65001

Date: 2018-04-27 16:19:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bio`
-- ----------------------------
DROP TABLE IF EXISTS `bio`;
CREATE TABLE `bio` (
  `bio_id` varchar(32) NOT NULL,
  `bio_no` varchar(16) DEFAULT NULL,
  `bio_name` varchar(64) DEFAULT NULL,
  `bio_shortname` varchar(32) DEFAULT NULL,
  `bio_orgtype` varchar(2) DEFAULT NULL,
  `cdg_regtype` varchar(3) DEFAULT NULL,
  `bio_industry` varchar(5) DEFAULT NULL,
  `bio_rga_regioncode` varchar(12) DEFAULT NULL,
  `bio_bua_postcode` varchar(6) DEFAULT NULL,
  `bio_con_fax` varchar(32) DEFAULT NULL,
  `bio_con_mail` varchar(32) DEFAULT NULL,
  `bio_bua_address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bio
-- ----------------------------

-- ----------------------------
-- Table structure for `bip`
-- ----------------------------
DROP TABLE IF EXISTS `bip`;
CREATE TABLE `bip` (
  `bip_id` varchar(32) NOT NULL,
  `bip_citizenid` varchar(18) DEFAULT NULL,
  `bip_sex` varchar(1) DEFAULT NULL,
  `bip_age` varchar(3) DEFAULT NULL,
  `bip_name` varchar(32) DEFAULT NULL,
  `bip_birthday` varchar(8) DEFAULT NULL,
  `bip_minzu` varchar(2) DEFAULT NULL,
  `bip_zzmm` varchar(2) DEFAULT NULL,
  `bip_hyzk` varchar(2) DEFAULT NULL,
  `bip_hjxz` varchar(2) DEFAULT NULL,
  `bip_rylb` varchar(2) DEFAULT NULL,
  `bip_jkzk` varchar(1) DEFAULT NULL,
  `bip_cjqk` varchar(2) DEFAULT NULL,
  `bip_eyesightleft` varchar(4) DEFAULT NULL,
  `bip_eyesightright` varchar(4) DEFAULT NULL,
  `bip_long` varchar(4) DEFAULT NULL,
  `bip_weight` varchar(4) DEFAULT NULL,
  `bip_hkszd` varchar(12) DEFAULT NULL,
  `bip_whcd` varchar(2) DEFAULT NULL,
  `bip_subject` varchar(64) DEFAULT NULL,
  `bip_graduateschool` varchar(64) DEFAULT NULL,
  `bip_bysj` varchar(8) DEFAULT NULL,
  `bip_educationallevel2` varchar(255) DEFAULT NULL,
  `bip_con_telephone` varchar(32) DEFAULT NULL,
  `bip_con_mobile` varchar(32) DEFAULT NULL,
  `bip_con_email` varchar(32) DEFAULT NULL,
  `bip_con_postcode` varchar(8) DEFAULT NULL,
  `bip_con_contact` varchar(32) DEFAULT NULL,
  `bip_con_contacttel` varchar(32) DEFAULT NULL,
  `bip_res_address` varchar(64) DEFAULT NULL,
  `bip_t_lowersecurity` varchar(1) DEFAULT NULL,
  `bip_t_criminal` varchar(1) DEFAULT NULL,
  `bip_t_destitute` varchar(1) DEFAULT NULL,
  `bip_t_peasant` varchar(1) DEFAULT NULL,
  `bip_t_veteran` varchar(1) DEFAULT NULL,
  `bip_t_othercities` varchar(1) DEFAULT NULL,
  `bip_t_czjyyhz` varchar(1) DEFAULT NULL,
  `bip_t_rhfl` varchar(1) DEFAULT NULL,
  `bip_t_newgraduate` varchar(1) DEFAULT NULL,
  `bip_pc_dj` varchar(2) DEFAULT NULL,
  `bip_pc_slcd` varchar(2) DEFAULT NULL,
  `bip_resume` varchar(4000) DEFAULT NULL,
  `bip_qtsm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bip
-- ----------------------------

-- ----------------------------
-- Table structure for `bip_foreignlanguage`
-- ----------------------------
DROP TABLE IF EXISTS `bip_foreignlanguage`;
CREATE TABLE `bip_foreignlanguage` (
  `bip_fl_id` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `bip_fl_years` varchar(2) DEFAULT NULL,
  `bip_fl_jywy` varchar(2) DEFAULT NULL,
  `bip_fl_wysm` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`bip_fl_id`),
  KEY `FK_BIP_FORE_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_BIP_FORE_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bip_foreignlanguage
-- ----------------------------

-- ----------------------------
-- Table structure for `bip_skill`
-- ----------------------------
DROP TABLE IF EXISTS `bip_skill`;
CREATE TABLE `bip_skill` (
  `bip_s_id` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `bip_s_years` varchar(2) DEFAULT NULL,
  `bip_s_zyjn` varchar(7) DEFAULT NULL,
  `bip_s_jsdj` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`bip_s_id`),
  KEY `FK_BIP_SKIL_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_BIP_SKIL_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bip_skill
-- ----------------------------

-- ----------------------------
-- Table structure for `cdg_deformity`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_deformity`;
CREATE TABLE `cdg_deformity` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_deformity
-- ----------------------------
INSERT INTO `cdg_deformity` VALUES ('11', '视力残疾-一级盲', '1', '1');
INSERT INTO `cdg_deformity` VALUES ('12', '视力残疾-二级盲', '1', '2');
INSERT INTO `cdg_deformity` VALUES ('13', '视力残疾-一级低视力', '1', '3');
INSERT INTO `cdg_deformity` VALUES ('14', '视力残疾-二级低视力', '1', '4');
INSERT INTO `cdg_deformity` VALUES ('21', '听力残疾-一级', '1', '5');
INSERT INTO `cdg_deformity` VALUES ('22', '听力残疾-二级', '1', '6');
INSERT INTO `cdg_deformity` VALUES ('23', '听力残疾-三级', '1', '7');
INSERT INTO `cdg_deformity` VALUES ('24', '听力残疾-四级', '1', '8');
INSERT INTO `cdg_deformity` VALUES ('31', '言语残疾-一级', '1', '9');
INSERT INTO `cdg_deformity` VALUES ('32', '言语残疾-二级', '1', '10');
INSERT INTO `cdg_deformity` VALUES ('33', '言语残疾-三级', '1', '11');
INSERT INTO `cdg_deformity` VALUES ('34', '言语残疾-四级', '1', '12');
INSERT INTO `cdg_deformity` VALUES ('41', '智力残疾-重度一级(极度缺陷)', '1', '13');
INSERT INTO `cdg_deformity` VALUES ('42', '智力残疾-重度二级(重度缺陷)', '1', '14');
INSERT INTO `cdg_deformity` VALUES ('43', '智力残疾-中度三级(中度缺陷)', '1', '15');
INSERT INTO `cdg_deformity` VALUES ('44', '智力残疾-轻度四级(轻度缺陷)', '1', '16');
INSERT INTO `cdg_deformity` VALUES ('51', '肢体残疾-重度(一级)', '1', '17');
INSERT INTO `cdg_deformity` VALUES ('52', '肢体残疾-中度(二级)', '1', '18');
INSERT INTO `cdg_deformity` VALUES ('53', '肢体残疾-轻度(三级)', '1', '19');
INSERT INTO `cdg_deformity` VALUES ('61', '精神残疾-重度(一级)', '1', '20');
INSERT INTO `cdg_deformity` VALUES ('62', '精神残疾-中度(二级)', '1', '21');
INSERT INTO `cdg_deformity` VALUES ('63', '精神残疾-轻度(三级)', '1', '22');

-- ----------------------------
-- Table structure for `cdg_educationallevel`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_educationallevel`;
CREATE TABLE `cdg_educationallevel` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_educationallevel
-- ----------------------------
INSERT INTO `cdg_educationallevel` VALUES ('10', '研究生', '1', '1');
INSERT INTO `cdg_educationallevel` VALUES ('11', '研究生毕业', '1', '2');
INSERT INTO `cdg_educationallevel` VALUES ('19', '研究生肄业', '1', '3');
INSERT INTO `cdg_educationallevel` VALUES ('20', '大学本科', '1', '4');
INSERT INTO `cdg_educationallevel` VALUES ('21', '大学毕业', '1', '5');
INSERT INTO `cdg_educationallevel` VALUES ('28', '相当大学毕业', '1', '6');
INSERT INTO `cdg_educationallevel` VALUES ('29', '大学肄业', '1', '7');
INSERT INTO `cdg_educationallevel` VALUES ('30', '大学专科和专科学校', '1', '8');
INSERT INTO `cdg_educationallevel` VALUES ('31', '专科毕业', '1', '9');
INSERT INTO `cdg_educationallevel` VALUES ('38', '相当专科毕业', '1', '10');
INSERT INTO `cdg_educationallevel` VALUES ('39', '专科肄业', '1', '11');
INSERT INTO `cdg_educationallevel` VALUES ('40', '中专或中技', '1', '12');
INSERT INTO `cdg_educationallevel` VALUES ('41', '中专毕业', '1', '13');
INSERT INTO `cdg_educationallevel` VALUES ('42', '中技毕业', '1', '14');
INSERT INTO `cdg_educationallevel` VALUES ('48', '相当中专或中技毕业', '1', '15');
INSERT INTO `cdg_educationallevel` VALUES ('49', '中专或中技肄业', '1', '16');
INSERT INTO `cdg_educationallevel` VALUES ('50', '技工学校', '1', '17');
INSERT INTO `cdg_educationallevel` VALUES ('51', '技工学校毕业', '1', '18');
INSERT INTO `cdg_educationallevel` VALUES ('59', '技工学校肄业', '1', '19');
INSERT INTO `cdg_educationallevel` VALUES ('60', '高中', '1', '20');
INSERT INTO `cdg_educationallevel` VALUES ('61', '高中毕业', '1', '21');
INSERT INTO `cdg_educationallevel` VALUES ('62', '职业高中毕业', '1', '22');
INSERT INTO `cdg_educationallevel` VALUES ('68', '相当高中毕业', '1', '23');
INSERT INTO `cdg_educationallevel` VALUES ('69', '高中肄业', '1', '24');
INSERT INTO `cdg_educationallevel` VALUES ('70', '初中', '1', '25');
INSERT INTO `cdg_educationallevel` VALUES ('71', '初中毕业', '1', '26');
INSERT INTO `cdg_educationallevel` VALUES ('72', '职业初中毕业', '1', '27');
INSERT INTO `cdg_educationallevel` VALUES ('73', '农业初中毕业', '1', '28');
INSERT INTO `cdg_educationallevel` VALUES ('78', '相当初中毕业', '1', '29');
INSERT INTO `cdg_educationallevel` VALUES ('79', '初中肄业', '1', '30');
INSERT INTO `cdg_educationallevel` VALUES ('80', '小学', '1', '31');
INSERT INTO `cdg_educationallevel` VALUES ('81', '小学毕业', '1', '32');
INSERT INTO `cdg_educationallevel` VALUES ('88', '相当小学毕业', '1', '33');
INSERT INTO `cdg_educationallevel` VALUES ('89', '小学肄业', '1', '34');
INSERT INTO `cdg_educationallevel` VALUES ('90', '文盲或半文盲', '1', '35');

-- ----------------------------
-- Table structure for `cdg_healthstate`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_healthstate`;
CREATE TABLE `cdg_healthstate` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_healthstate
-- ----------------------------
INSERT INTO `cdg_healthstate` VALUES ('1', '健康或良好', '1', '1');
INSERT INTO `cdg_healthstate` VALUES ('2', '一般或较弱', '1', '2');
INSERT INTO `cdg_healthstate` VALUES ('3', '有病', '1', '3');
INSERT INTO `cdg_healthstate` VALUES ('4', '有生理缺陷', '1', '4');
INSERT INTO `cdg_healthstate` VALUES ('5', '有残疾', '1', '5');
INSERT INTO `cdg_healthstate` VALUES ('9', '其它', '1', '6');

-- ----------------------------
-- Table structure for `cdg_industry`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_industry`;
CREATE TABLE `cdg_industry` (
  `cd_id` varchar(5) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_industry
-- ----------------------------
INSERT INTO `cdg_industry` VALUES ('A0100', '农业', '1', '2');
INSERT INTO `cdg_industry` VALUES ('A0200', '林业', '1', '3');
INSERT INTO `cdg_industry` VALUES ('A0300', '畜牧业', '1', '4');
INSERT INTO `cdg_industry` VALUES ('A0400', '渔业', '1', '5');
INSERT INTO `cdg_industry` VALUES ('B0000', '采矿业', '1', '6');
INSERT INTO `cdg_industry` VALUES ('C0000', '制造业', '1', '7');
INSERT INTO `cdg_industry` VALUES ('D0000', '电力、燃气及水的生产和供应业', '1', '8');
INSERT INTO `cdg_industry` VALUES ('E0000', '建筑业', '1', '9');
INSERT INTO `cdg_industry` VALUES ('F0000', '交通运输、仓储和邮政业', '1', '10');
INSERT INTO `cdg_industry` VALUES ('G0100', '信息传输业', '1', '11');
INSERT INTO `cdg_industry` VALUES ('G0200', '计算机服务和软件业', '1', '12');
INSERT INTO `cdg_industry` VALUES ('H0000', '批发和零售业', '1', '13');
INSERT INTO `cdg_industry` VALUES ('I0000', '住宿和餐饮业', '1', '14');
INSERT INTO `cdg_industry` VALUES ('J0000', '金融业', '1', '15');
INSERT INTO `cdg_industry` VALUES ('K0000', '房地产业', '1', '16');
INSERT INTO `cdg_industry` VALUES ('L0000', '租赁和商务服务业', '1', '17');
INSERT INTO `cdg_industry` VALUES ('M0100', '科学研究、技术服务业', '1', '18');
INSERT INTO `cdg_industry` VALUES ('M0200', '地质勘查业', '1', '19');
INSERT INTO `cdg_industry` VALUES ('N0000', '水利、环境和公共设施管理业', '1', '20');
INSERT INTO `cdg_industry` VALUES ('O0000', '居民服务和其它服务业', '1', '21');
INSERT INTO `cdg_industry` VALUES ('P0000', '教育业', '1', '22');
INSERT INTO `cdg_industry` VALUES ('Q0000', '卫生、社会保障和社会福利业', '1', '23');
INSERT INTO `cdg_industry` VALUES ('R0000', '文化、体育和娱乐业', '1', '24');
INSERT INTO `cdg_industry` VALUES ('S0000', '公共管理和社会组织', '1', '25');
INSERT INTO `cdg_industry` VALUES ('T0000', '国际组织', '1', '26');

-- ----------------------------
-- Table structure for `cdg_language`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_language`;
CREATE TABLE `cdg_language` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_language
-- ----------------------------
INSERT INTO `cdg_language` VALUES ('01', '英语', '1', '1');
INSERT INTO `cdg_language` VALUES ('02', '日语', '1', '2');
INSERT INTO `cdg_language` VALUES ('03', '俄语', '1', '3');
INSERT INTO `cdg_language` VALUES ('04', '法语', '1', '4');
INSERT INTO `cdg_language` VALUES ('05', '意大利语', '1', '5');
INSERT INTO `cdg_language` VALUES ('06', '德语', '1', '6');
INSERT INTO `cdg_language` VALUES ('07', '韩语', '1', '7');
INSERT INTO `cdg_language` VALUES ('08', '蒙古语', '1', '8');
INSERT INTO `cdg_language` VALUES ('09', '葡萄牙语', '1', '9');
INSERT INTO `cdg_language` VALUES ('10', '西班牙语', '1', '10');
INSERT INTO `cdg_language` VALUES ('11', '巴士克语', '1', '11');
INSERT INTO `cdg_language` VALUES ('12', '冰岛语', '1', '12');
INSERT INTO `cdg_language` VALUES ('13', '丹麦语', '1', '13');
INSERT INTO `cdg_language` VALUES ('14', '法罗语', '1', '14');
INSERT INTO `cdg_language` VALUES ('15', '芬兰语', '1', '15');
INSERT INTO `cdg_language` VALUES ('16', '荷兰语', '1', '16');
INSERT INTO `cdg_language` VALUES ('17', '加泰隆语', '1', '17');
INSERT INTO `cdg_language` VALUES ('18', '马来语', '1', '18');
INSERT INTO `cdg_language` VALUES ('19', '南非语', '1', '19');
INSERT INTO `cdg_language` VALUES ('20', '挪威语', '1', '20');
INSERT INTO `cdg_language` VALUES ('21', '瑞典语', '1', '21');
INSERT INTO `cdg_language` VALUES ('22', '斯瓦希里语', '1', '22');
INSERT INTO `cdg_language` VALUES ('23', '印度尼西亚语', '1', '23');
INSERT INTO `cdg_language` VALUES ('24', '汉语', '1', '24');
INSERT INTO `cdg_language` VALUES ('90', '其它语种', '1', '25');

-- ----------------------------
-- Table structure for `cdg_marriage`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_marriage`;
CREATE TABLE `cdg_marriage` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_marriage
-- ----------------------------
INSERT INTO `cdg_marriage` VALUES ('1', '未婚', '1', '1');
INSERT INTO `cdg_marriage` VALUES ('2', '已婚', '1', '2');
INSERT INTO `cdg_marriage` VALUES ('3', '丧偶', '1', '3');
INSERT INTO `cdg_marriage` VALUES ('4', '离婚', '1', '4');
INSERT INTO `cdg_marriage` VALUES ('9', '其他', '1', '5');

-- ----------------------------
-- Table structure for `cdg_nation`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_nation`;
CREATE TABLE `cdg_nation` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_nation
-- ----------------------------
INSERT INTO `cdg_nation` VALUES ('01', '汉族', '1', '1');
INSERT INTO `cdg_nation` VALUES ('02', '蒙古族', '1', '2');
INSERT INTO `cdg_nation` VALUES ('03', '回族', '1', '3');
INSERT INTO `cdg_nation` VALUES ('04', '藏族', '1', '4');
INSERT INTO `cdg_nation` VALUES ('05', '维吾尔族', '1', '5');
INSERT INTO `cdg_nation` VALUES ('06', '苗族', '1', '6');
INSERT INTO `cdg_nation` VALUES ('07', '彝族', '1', '7');
INSERT INTO `cdg_nation` VALUES ('08', '壮族', '1', '8');
INSERT INTO `cdg_nation` VALUES ('09', '布依族', '1', '9');
INSERT INTO `cdg_nation` VALUES ('10', '朝鲜族', '1', '10');
INSERT INTO `cdg_nation` VALUES ('11', '满族', '1', '11');
INSERT INTO `cdg_nation` VALUES ('12', '侗族', '1', '12');
INSERT INTO `cdg_nation` VALUES ('13', '瑶族', '1', '13');
INSERT INTO `cdg_nation` VALUES ('14', '白族', '1', '14');
INSERT INTO `cdg_nation` VALUES ('15', '土家族', '1', '15');
INSERT INTO `cdg_nation` VALUES ('16', '哈尼族', '1', '16');
INSERT INTO `cdg_nation` VALUES ('17', '哈萨克族', '1', '17');
INSERT INTO `cdg_nation` VALUES ('18', '傣族', '1', '18');
INSERT INTO `cdg_nation` VALUES ('19', '黎族', '1', '19');
INSERT INTO `cdg_nation` VALUES ('20', '傈傈族', '1', '20');
INSERT INTO `cdg_nation` VALUES ('21', '佤族', '1', '21');
INSERT INTO `cdg_nation` VALUES ('22', '畲族', '1', '22');
INSERT INTO `cdg_nation` VALUES ('23', '高山族', '1', '23');
INSERT INTO `cdg_nation` VALUES ('24', '拉祜族', '1', '24');
INSERT INTO `cdg_nation` VALUES ('25', '水族', '1', '25');
INSERT INTO `cdg_nation` VALUES ('26', '东乡族', '1', '26');
INSERT INTO `cdg_nation` VALUES ('27', '纳西族', '1', '27');
INSERT INTO `cdg_nation` VALUES ('28', '景颇族', '1', '28');
INSERT INTO `cdg_nation` VALUES ('29', '柯尔克孜族', '1', '29');
INSERT INTO `cdg_nation` VALUES ('30', '土族', '1', '30');
INSERT INTO `cdg_nation` VALUES ('31', '达翰尔族', '1', '31');
INSERT INTO `cdg_nation` VALUES ('32', '仫佬族', '1', '32');
INSERT INTO `cdg_nation` VALUES ('33', '羌族', '1', '33');
INSERT INTO `cdg_nation` VALUES ('34', '布朗族', '1', '34');
INSERT INTO `cdg_nation` VALUES ('35', '撒拉族', '1', '35');
INSERT INTO `cdg_nation` VALUES ('36', '毛南族', '1', '36');
INSERT INTO `cdg_nation` VALUES ('37', '仡佬族', '1', '37');
INSERT INTO `cdg_nation` VALUES ('38', '锡伯族', '1', '38');
INSERT INTO `cdg_nation` VALUES ('39', '阿昌族', '1', '39');
INSERT INTO `cdg_nation` VALUES ('40', '普米族', '1', '40');
INSERT INTO `cdg_nation` VALUES ('41', '塔吉克族', '1', '41');
INSERT INTO `cdg_nation` VALUES ('42', '怒族', '1', '42');
INSERT INTO `cdg_nation` VALUES ('43', '乌孜别克族', '1', '43');
INSERT INTO `cdg_nation` VALUES ('44', '俄罗斯族', '1', '44');
INSERT INTO `cdg_nation` VALUES ('45', '鄂温克族', '1', '45');
INSERT INTO `cdg_nation` VALUES ('46', '德昂族', '1', '46');
INSERT INTO `cdg_nation` VALUES ('47', '保安族', '1', '47');
INSERT INTO `cdg_nation` VALUES ('48', '裕固族', '1', '48');
INSERT INTO `cdg_nation` VALUES ('49', '京族', '1', '49');
INSERT INTO `cdg_nation` VALUES ('50', '塔塔尔族', '1', '50');
INSERT INTO `cdg_nation` VALUES ('51', '独龙族', '1', '51');
INSERT INTO `cdg_nation` VALUES ('52', '鄂伦春族', '1', '52');
INSERT INTO `cdg_nation` VALUES ('53', '赫哲族', '1', '53');
INSERT INTO `cdg_nation` VALUES ('54', '门巴族', '1', '54');
INSERT INTO `cdg_nation` VALUES ('55', '珞巴族', '1', '55');
INSERT INTO `cdg_nation` VALUES ('56', '基诺族', '1', '56');
INSERT INTO `cdg_nation` VALUES ('90', '外籍人士', '1', '57');

-- ----------------------------
-- Table structure for `cdg_politicsaspect`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_politicsaspect`;
CREATE TABLE `cdg_politicsaspect` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_politicsaspect
-- ----------------------------
INSERT INTO `cdg_politicsaspect` VALUES ('01', '中共党员', '1', '1');
INSERT INTO `cdg_politicsaspect` VALUES ('02', '中共预备党员', '1', '2');
INSERT INTO `cdg_politicsaspect` VALUES ('03', '共青团员', '1', '3');
INSERT INTO `cdg_politicsaspect` VALUES ('04', '民革会员', '1', '4');
INSERT INTO `cdg_politicsaspect` VALUES ('05', '民盟盟员', '1', '5');
INSERT INTO `cdg_politicsaspect` VALUES ('06', '民建会员', '1', '6');
INSERT INTO `cdg_politicsaspect` VALUES ('07', '民进会员', '1', '7');
INSERT INTO `cdg_politicsaspect` VALUES ('08', '农工党党员', '1', '8');
INSERT INTO `cdg_politicsaspect` VALUES ('09', '致工党党员', '1', '9');
INSERT INTO `cdg_politicsaspect` VALUES ('10', '九三学社社员', '1', '10');
INSERT INTO `cdg_politicsaspect` VALUES ('11', '台盟盟员', '1', '11');
INSERT INTO `cdg_politicsaspect` VALUES ('12', '无党派民主人士', '1', '12');
INSERT INTO `cdg_politicsaspect` VALUES ('13', '群众', '1', '13');

-- ----------------------------
-- Table structure for `cdg_regioncode`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_regioncode`;
CREATE TABLE `cdg_regioncode` (
  `cd_id` varchar(12) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_regioncode
-- ----------------------------
INSERT INTO `cdg_regioncode` VALUES ('110000000000', '北京市', '1', '1');
INSERT INTO `cdg_regioncode` VALUES ('110101000000', '东城区', '1', '2');
INSERT INTO `cdg_regioncode` VALUES ('110101001000', '东华门街道', '1', '3');
INSERT INTO `cdg_regioncode` VALUES ('110101002000', '景山街道', '1', '4');
INSERT INTO `cdg_regioncode` VALUES ('110101003000', '交道口街道', '1', '5');
INSERT INTO `cdg_regioncode` VALUES ('110101004000', '安定门街道', '1', '6');
INSERT INTO `cdg_regioncode` VALUES ('110101005000', '北新桥街道', '1', '7');
INSERT INTO `cdg_regioncode` VALUES ('110101006000', '东四街道', '1', '8');
INSERT INTO `cdg_regioncode` VALUES ('110101007000', '朝阳门街道', '1', '9');
INSERT INTO `cdg_regioncode` VALUES ('110101008000', '建国门街道', '1', '10');
INSERT INTO `cdg_regioncode` VALUES ('110101009000', '东直门街道', '1', '11');
INSERT INTO `cdg_regioncode` VALUES ('110101010000', '和平门街道', '1', '12');
INSERT INTO `cdg_regioncode` VALUES ('110102000000', '西城区', '1', '13');
INSERT INTO `cdg_regioncode` VALUES ('110102001000', '西长安街街道', '1', '14');
INSERT INTO `cdg_regioncode` VALUES ('110102003000', '新街口街道', '1', '15');
INSERT INTO `cdg_regioncode` VALUES ('110102007000', '月坛街道', '1', '16');
INSERT INTO `cdg_regioncode` VALUES ('110102009000', '展览路街道', '1', '17');
INSERT INTO `cdg_regioncode` VALUES ('110102010000', '德胜街道', '1', '18');
INSERT INTO `cdg_regioncode` VALUES ('110102011000', '金融街街道', '1', '19');
INSERT INTO `cdg_regioncode` VALUES ('110102012000', '什刹海街道', '1', '20');
INSERT INTO `cdg_regioncode` VALUES ('110103000000', '崇文区', '1', '21');
INSERT INTO `cdg_regioncode` VALUES ('110103001000', '前门街道', '1', '22');
INSERT INTO `cdg_regioncode` VALUES ('110103002000', '崇文门外街道', '1', '23');
INSERT INTO `cdg_regioncode` VALUES ('110103003000', '东花市街道', '1', '24');
INSERT INTO `cdg_regioncode` VALUES ('110103004000', '龙潭街道', '1', '25');
INSERT INTO `cdg_regioncode` VALUES ('110103005000', '体育馆路街道', '1', '26');
INSERT INTO `cdg_regioncode` VALUES ('110103006000', '天坛街道', '1', '27');
INSERT INTO `cdg_regioncode` VALUES ('110103007000', '永定门外街道', '1', '28');
INSERT INTO `cdg_regioncode` VALUES ('110104000000', '宣武区', '1', '29');
INSERT INTO `cdg_regioncode` VALUES ('110104001000', '大栅栏街道', '1', '30');
INSERT INTO `cdg_regioncode` VALUES ('110104002000', '天桥街道', '1', '31');
INSERT INTO `cdg_regioncode` VALUES ('110104003000', '椿树街道', '1', '32');
INSERT INTO `cdg_regioncode` VALUES ('110104004000', '陶然亭街道', '1', '33');
INSERT INTO `cdg_regioncode` VALUES ('110104005000', '广安门内街道', '1', '34');
INSERT INTO `cdg_regioncode` VALUES ('110104006000', '牛街街道', '1', '35');
INSERT INTO `cdg_regioncode` VALUES ('110104007000', '白纸坊街道', '1', '36');
INSERT INTO `cdg_regioncode` VALUES ('110104008000', '广安门外街道', '1', '37');
INSERT INTO `cdg_regioncode` VALUES ('110105000000', '朝阳区', '1', '38');
INSERT INTO `cdg_regioncode` VALUES ('110105001000', '建外街道', '1', '39');
INSERT INTO `cdg_regioncode` VALUES ('110105002000', '朝外街道', '1', '40');
INSERT INTO `cdg_regioncode` VALUES ('110105003000', '呼家楼街道', '1', '41');
INSERT INTO `cdg_regioncode` VALUES ('110105004000', '三里屯街道', '1', '42');
INSERT INTO `cdg_regioncode` VALUES ('110105005000', '左家庄街道', '1', '43');
INSERT INTO `cdg_regioncode` VALUES ('110105006000', '香河园街道', '1', '44');
INSERT INTO `cdg_regioncode` VALUES ('110105007000', '和平街街道', '1', '45');
INSERT INTO `cdg_regioncode` VALUES ('110105008000', '安贞街道', '1', '46');
INSERT INTO `cdg_regioncode` VALUES ('110105009000', '亚运村街道', '1', '47');
INSERT INTO `cdg_regioncode` VALUES ('110105010000', '小关街道', '1', '48');
INSERT INTO `cdg_regioncode` VALUES ('110105011000', '酒仙桥街道', '1', '49');
INSERT INTO `cdg_regioncode` VALUES ('110105012000', '麦子店街道', '1', '50');
INSERT INTO `cdg_regioncode` VALUES ('110105013000', '团结湖街道', '1', '51');
INSERT INTO `cdg_regioncode` VALUES ('110105014000', '六里屯街道', '1', '52');
INSERT INTO `cdg_regioncode` VALUES ('110105015000', '八里庄街道', '1', '53');
INSERT INTO `cdg_regioncode` VALUES ('110105016000', '双井街道', '1', '54');
INSERT INTO `cdg_regioncode` VALUES ('110105017000', '劲松街道', '1', '55');
INSERT INTO `cdg_regioncode` VALUES ('110105018000', '潘家园街道', '1', '56');
INSERT INTO `cdg_regioncode` VALUES ('110105019000', '垡头街道', '1', '57');
INSERT INTO `cdg_regioncode` VALUES ('110105021000', '南磨房地区', '1', '58');
INSERT INTO `cdg_regioncode` VALUES ('110105022000', '高碑店地区', '1', '59');
INSERT INTO `cdg_regioncode` VALUES ('110105023000', '将台地区', '1', '60');
INSERT INTO `cdg_regioncode` VALUES ('110105024000', '太阳宫地区', '1', '61');
INSERT INTO `cdg_regioncode` VALUES ('110105025000', '大屯街道', '1', '62');
INSERT INTO `cdg_regioncode` VALUES ('110105026000', '望京街道', '1', '63');
INSERT INTO `cdg_regioncode` VALUES ('110105027000', '小红门地区', '1', '64');
INSERT INTO `cdg_regioncode` VALUES ('110105028000', '十八里店地区', '1', '65');
INSERT INTO `cdg_regioncode` VALUES ('110105029000', '平房地区', '1', '66');
INSERT INTO `cdg_regioncode` VALUES ('110105030000', '东风地区', '1', '67');
INSERT INTO `cdg_regioncode` VALUES ('110105031000', '奥运村地区', '1', '68');
INSERT INTO `cdg_regioncode` VALUES ('110105032000', '来广营地区', '1', '69');
INSERT INTO `cdg_regioncode` VALUES ('110105033000', '常营地区', '1', '70');
INSERT INTO `cdg_regioncode` VALUES ('110105034000', '三间房地区', '1', '71');
INSERT INTO `cdg_regioncode` VALUES ('110105035000', '管庄地区', '1', '72');
INSERT INTO `cdg_regioncode` VALUES ('110105036000', '金盏地区', '1', '73');
INSERT INTO `cdg_regioncode` VALUES ('110105037000', '孙河地区', '1', '74');
INSERT INTO `cdg_regioncode` VALUES ('110105038000', '崔各庄地区', '1', '75');
INSERT INTO `cdg_regioncode` VALUES ('110105039000', '东坝地区', '1', '76');
INSERT INTO `cdg_regioncode` VALUES ('110105040000', '黑庄户地区', '1', '77');
INSERT INTO `cdg_regioncode` VALUES ('110105041000', '豆各庄地区', '1', '78');
INSERT INTO `cdg_regioncode` VALUES ('110105042000', '王四营地区', '1', '79');
INSERT INTO `cdg_regioncode` VALUES ('110105400000', '首都机场街道', '1', '80');
INSERT INTO `cdg_regioncode` VALUES ('110106000000', '丰台区', '1', '81');
INSERT INTO `cdg_regioncode` VALUES ('110106001000', '右安门街道', '1', '82');
INSERT INTO `cdg_regioncode` VALUES ('110106002000', '太平桥街道', '1', '83');
INSERT INTO `cdg_regioncode` VALUES ('110106003000', '西罗园街道', '1', '84');
INSERT INTO `cdg_regioncode` VALUES ('110106004000', '大红门街道', '1', '85');
INSERT INTO `cdg_regioncode` VALUES ('110106005000', '南苑街道', '1', '86');
INSERT INTO `cdg_regioncode` VALUES ('110106006000', '东高地街道', '1', '87');
INSERT INTO `cdg_regioncode` VALUES ('110106007000', '东铁匠营街道', '1', '88');
INSERT INTO `cdg_regioncode` VALUES ('110106008000', '卢沟桥街道', '1', '89');
INSERT INTO `cdg_regioncode` VALUES ('110106009000', '丰台街道', '1', '90');
INSERT INTO `cdg_regioncode` VALUES ('110106010000', '新村街道', '1', '91');
INSERT INTO `cdg_regioncode` VALUES ('110106011000', '长辛店街道', '1', '92');
INSERT INTO `cdg_regioncode` VALUES ('110106012000', '云岗街道', '1', '93');
INSERT INTO `cdg_regioncode` VALUES ('110106013000', '方庄地区', '1', '94');
INSERT INTO `cdg_regioncode` VALUES ('110106014000', '宛平城地区', '1', '95');
INSERT INTO `cdg_regioncode` VALUES ('110106015000', '马家堡街道', '1', '96');
INSERT INTO `cdg_regioncode` VALUES ('110106016000', '和义街道', '1', '97');
INSERT INTO `cdg_regioncode` VALUES ('110106100000', '长辛店镇', '1', '98');
INSERT INTO `cdg_regioncode` VALUES ('110106101000', '王佐镇', '1', '99');
INSERT INTO `cdg_regioncode` VALUES ('110107011000', '鲁谷街道', '1', '112');
INSERT INTO `cdg_regioncode` VALUES ('110108000000', '海淀区', '1', '113');
INSERT INTO `cdg_regioncode` VALUES ('110108001000', '万寿路街道', '1', '114');
INSERT INTO `cdg_regioncode` VALUES ('110108002000', '永定路街道', '1', '115');
INSERT INTO `cdg_regioncode` VALUES ('110108003000', '羊坊店街道', '1', '116');
INSERT INTO `cdg_regioncode` VALUES ('110108004000', '甘家口街道', '1', '117');
INSERT INTO `cdg_regioncode` VALUES ('110108005000', '八里庄街道', '1', '118');
INSERT INTO `cdg_regioncode` VALUES ('110108006000', '紫竹院街道', '1', '119');
INSERT INTO `cdg_regioncode` VALUES ('110108007000', '北下关街道', '1', '120');
INSERT INTO `cdg_regioncode` VALUES ('110108008000', '北太平庄街道', '1', '121');
INSERT INTO `cdg_regioncode` VALUES ('110108010000', '学院路街道', '1', '122');
INSERT INTO `cdg_regioncode` VALUES ('110108011000', '中关村街道', '1', '123');
INSERT INTO `cdg_regioncode` VALUES ('110108012000', '海淀街道', '1', '124');
INSERT INTO `cdg_regioncode` VALUES ('110108013000', '青龙桥街道', '1', '125');
INSERT INTO `cdg_regioncode` VALUES ('110108014000', '清华园街道', '1', '126');
INSERT INTO `cdg_regioncode` VALUES ('110108015000', '燕园街道', '1', '127');
INSERT INTO `cdg_regioncode` VALUES ('110108016000', '香山街道', '1', '128');
INSERT INTO `cdg_regioncode` VALUES ('110108017000', '清河街道', '1', '129');
INSERT INTO `cdg_regioncode` VALUES ('110108018000', '花园路街道', '1', '130');
INSERT INTO `cdg_regioncode` VALUES ('110108019000', '西三旗街道', '1', '131');
INSERT INTO `cdg_regioncode` VALUES ('110108020000', '马连洼街道', '1', '132');
INSERT INTO `cdg_regioncode` VALUES ('110108021000', '田村路街道', '1', '133');
INSERT INTO `cdg_regioncode` VALUES ('110108022000', '上地街道', '1', '134');
INSERT INTO `cdg_regioncode` VALUES ('110108023000', '万柳地区', '1', '135');
INSERT INTO `cdg_regioncode` VALUES ('110108024000', '东升地区', '1', '136');
INSERT INTO `cdg_regioncode` VALUES ('110108025000', '曙光街道', '1', '137');
INSERT INTO `cdg_regioncode` VALUES ('110108101000', '温泉镇', '1', '138');
INSERT INTO `cdg_regioncode` VALUES ('110108102000', '四季青镇', '1', '139');
INSERT INTO `cdg_regioncode` VALUES ('110108103000', '西北旺镇', '1', '140');
INSERT INTO `cdg_regioncode` VALUES ('110108104000', '苏家坨镇', '1', '141');
INSERT INTO `cdg_regioncode` VALUES ('110108105000', '上庄镇', '1', '142');
INSERT INTO `cdg_regioncode` VALUES ('110109000000', '门头沟区', '1', '143');
INSERT INTO `cdg_regioncode` VALUES ('110109001000', '大峪街道', '1', '144');
INSERT INTO `cdg_regioncode` VALUES ('110109002000', '城子街道', '1', '145');
INSERT INTO `cdg_regioncode` VALUES ('110109003000', '东辛房街道', '1', '146');
INSERT INTO `cdg_regioncode` VALUES ('110109004000', '大台街道', '1', '147');
INSERT INTO `cdg_regioncode` VALUES ('110109005000', '王平地区', '1', '148');
INSERT INTO `cdg_regioncode` VALUES ('110109101000', '潭柘寺镇', '1', '149');
INSERT INTO `cdg_regioncode` VALUES ('110109102000', '永定镇', '1', '150');
INSERT INTO `cdg_regioncode` VALUES ('110109103000', '龙泉镇', '1', '151');
INSERT INTO `cdg_regioncode` VALUES ('110109104000', '军庄镇', '1', '152');
INSERT INTO `cdg_regioncode` VALUES ('110109105000', '雁翅镇', '1', '153');
INSERT INTO `cdg_regioncode` VALUES ('110109106000', '斋堂镇', '1', '154');
INSERT INTO `cdg_regioncode` VALUES ('110109107000', '清水镇', '1', '155');
INSERT INTO `cdg_regioncode` VALUES ('110109108000', '妙峰山镇', '1', '156');
INSERT INTO `cdg_regioncode` VALUES ('110111000000', '房山区', '1', '157');
INSERT INTO `cdg_regioncode` VALUES ('110111001000', '城关街道', '1', '158');
INSERT INTO `cdg_regioncode` VALUES ('110111002000', '新镇街道', '1', '159');
INSERT INTO `cdg_regioncode` VALUES ('110111004000', '向阳街道', '1', '160');
INSERT INTO `cdg_regioncode` VALUES ('110111005000', '东风街道', '1', '161');
INSERT INTO `cdg_regioncode` VALUES ('110111006000', '迎风街道', '1', '162');
INSERT INTO `cdg_regioncode` VALUES ('110111007000', '星城街道', '1', '163');
INSERT INTO `cdg_regioncode` VALUES ('110111008000', '良乡地区', '1', '164');
INSERT INTO `cdg_regioncode` VALUES ('110111009000', '周口店地区', '1', '165');
INSERT INTO `cdg_regioncode` VALUES ('110111010000', '琉璃河地区', '1', '166');
INSERT INTO `cdg_regioncode` VALUES ('110111011000', '拱辰街道', '1', '167');
INSERT INTO `cdg_regioncode` VALUES ('110111012000', '西潞街道', '1', '168');
INSERT INTO `cdg_regioncode` VALUES ('110111101000', '闫村镇', '1', '169');
INSERT INTO `cdg_regioncode` VALUES ('110111103000', '窦店镇', '1', '170');
INSERT INTO `cdg_regioncode` VALUES ('110111104000', '石楼镇', '1', '171');
INSERT INTO `cdg_regioncode` VALUES ('110111105000', '长阳镇', '1', '172');
INSERT INTO `cdg_regioncode` VALUES ('110111107000', '河北镇', '1', '173');
INSERT INTO `cdg_regioncode` VALUES ('110111108000', '长沟镇', '1', '174');
INSERT INTO `cdg_regioncode` VALUES ('110111109000', '大石窝镇', '1', '175');
INSERT INTO `cdg_regioncode` VALUES ('110111110000', '张坊镇', '1', '176');
INSERT INTO `cdg_regioncode` VALUES ('110111111000', '十渡镇', '1', '177');
INSERT INTO `cdg_regioncode` VALUES ('110111112000', '青龙湖镇', '1', '178');
INSERT INTO `cdg_regioncode` VALUES ('110111115000', '韩村河镇', '1', '179');
INSERT INTO `cdg_regioncode` VALUES ('110111208000', '霞云岭乡', '1', '180');
INSERT INTO `cdg_regioncode` VALUES ('110111209000', '南窖乡', '1', '181');
INSERT INTO `cdg_regioncode` VALUES ('110111210000', '佛子庄乡', '1', '182');
INSERT INTO `cdg_regioncode` VALUES ('110111211000', '大安山乡', '1', '183');
INSERT INTO `cdg_regioncode` VALUES ('110111212000', '史家营乡', '1', '184');
INSERT INTO `cdg_regioncode` VALUES ('110111213000', '蒲洼乡', '1', '185');
INSERT INTO `cdg_regioncode` VALUES ('110112000000', '通州区', '1', '186');
INSERT INTO `cdg_regioncode` VALUES ('110112001000', '中仓街道', '1', '187');
INSERT INTO `cdg_regioncode` VALUES ('110112002000', '新华街道', '1', '188');
INSERT INTO `cdg_regioncode` VALUES ('110112003000', '北苑街道', '1', '189');
INSERT INTO `cdg_regioncode` VALUES ('110112004000', '玉桥街道', '1', '190');
INSERT INTO `cdg_regioncode` VALUES ('110112005000', '永顺地区', '1', '191');
INSERT INTO `cdg_regioncode` VALUES ('110112006000', '梨园地区', '1', '192');
INSERT INTO `cdg_regioncode` VALUES ('110112104000', '宋庄镇', '1', '193');
INSERT INTO `cdg_regioncode` VALUES ('110112105000', '张家湾镇', '1', '194');
INSERT INTO `cdg_regioncode` VALUES ('110112106000', '漷县镇', '1', '195');
INSERT INTO `cdg_regioncode` VALUES ('110112109000', '马驹桥镇', '1', '196');
INSERT INTO `cdg_regioncode` VALUES ('110112110000', '西集镇', '1', '197');
INSERT INTO `cdg_regioncode` VALUES ('110112114000', '台湖镇', '1', '198');
INSERT INTO `cdg_regioncode` VALUES ('110112117000', '永乐店镇', '1', '199');
INSERT INTO `cdg_regioncode` VALUES ('110112119000', '潞城镇', '1', '200');
INSERT INTO `cdg_regioncode` VALUES ('110112209000', '于家务回族乡', '1', '201');
INSERT INTO `cdg_regioncode` VALUES ('110113000000', '顺义区', '1', '202');
INSERT INTO `cdg_regioncode` VALUES ('110113001000', '胜利街道', '1', '203');
INSERT INTO `cdg_regioncode` VALUES ('110113002000', '光明街道', '1', '204');
INSERT INTO `cdg_regioncode` VALUES ('110113003000', '仁和地区', '1', '205');
INSERT INTO `cdg_regioncode` VALUES ('110113004000', '后沙峪地区', '1', '206');
INSERT INTO `cdg_regioncode` VALUES ('110113005000', '天竺地区', '1', '207');
INSERT INTO `cdg_regioncode` VALUES ('110113006000', '杨镇地区', '1', '208');
INSERT INTO `cdg_regioncode` VALUES ('110113007000', '牛栏山地区', '1', '209');
INSERT INTO `cdg_regioncode` VALUES ('110113008000', '南法信地区', '1', '210');
INSERT INTO `cdg_regioncode` VALUES ('110113009000', '马坡地区', '1', '211');
INSERT INTO `cdg_regioncode` VALUES ('110113010000', '石园街道', '1', '212');
INSERT INTO `cdg_regioncode` VALUES ('110113101000', '高丽营镇', '1', '213');
INSERT INTO `cdg_regioncode` VALUES ('110113104000', '李桥镇', '1', '214');
INSERT INTO `cdg_regioncode` VALUES ('110113105000', '李遂镇', '1', '215');
INSERT INTO `cdg_regioncode` VALUES ('110113106000', '南彩镇', '1', '216');
INSERT INTO `cdg_regioncode` VALUES ('110113108000', '北务镇', '1', '217');
INSERT INTO `cdg_regioncode` VALUES ('110113109000', '大孙各庄镇', '1', '218');
INSERT INTO `cdg_regioncode` VALUES ('110113110000', '张镇', '1', '219');
INSERT INTO `cdg_regioncode` VALUES ('110113111000', '龙湾屯镇', '1', '220');
INSERT INTO `cdg_regioncode` VALUES ('110113112000', '木林镇', '1', '221');
INSERT INTO `cdg_regioncode` VALUES ('110113113000', '北小营镇', '1', '222');
INSERT INTO `cdg_regioncode` VALUES ('110113115000', '北石槽镇', '1', '223');
INSERT INTO `cdg_regioncode` VALUES ('110113116000', '赵全营镇', '1', '224');
INSERT INTO `cdg_regioncode` VALUES ('110114000000', '昌平区', '1', '225');
INSERT INTO `cdg_regioncode` VALUES ('110114001000', '城北街道', '1', '226');
INSERT INTO `cdg_regioncode` VALUES ('110114002000', '南口地区', '1', '227');
INSERT INTO `cdg_regioncode` VALUES ('110114003000', '马池口地区', '1', '228');
INSERT INTO `cdg_regioncode` VALUES ('110114004000', '沙河地区', '1', '229');
INSERT INTO `cdg_regioncode` VALUES ('110114005000', '城南街道', '1', '230');
INSERT INTO `cdg_regioncode` VALUES ('110114006000', '回龙观地区', '1', '231');
INSERT INTO `cdg_regioncode` VALUES ('110114007000', '东小口地区', '1', '232');
INSERT INTO `cdg_regioncode` VALUES ('110114104000', '阳坊镇', '1', '233');
INSERT INTO `cdg_regioncode` VALUES ('110114110000', '小汤山镇', '1', '234');
INSERT INTO `cdg_regioncode` VALUES ('110114111000', '南邵镇', '1', '235');
INSERT INTO `cdg_regioncode` VALUES ('110114112000', '崔村镇', '1', '236');
INSERT INTO `cdg_regioncode` VALUES ('110114113000', '百善镇', '1', '237');
INSERT INTO `cdg_regioncode` VALUES ('110114115000', '北七家镇', '1', '238');
INSERT INTO `cdg_regioncode` VALUES ('110114116000', '兴寿镇', '1', '239');
INSERT INTO `cdg_regioncode` VALUES ('110114117000', '长陵镇', '1', '240');
INSERT INTO `cdg_regioncode` VALUES ('110114118000', '流村镇', '1', '241');
INSERT INTO `cdg_regioncode` VALUES ('110114119000', '十三陵镇', '1', '242');
INSERT INTO `cdg_regioncode` VALUES ('110115000000', '大兴区', '1', '243');
INSERT INTO `cdg_regioncode` VALUES ('110115001000', '兴丰街道', '1', '244');
INSERT INTO `cdg_regioncode` VALUES ('110115002000', '林校路街道', '1', '245');
INSERT INTO `cdg_regioncode` VALUES ('110115003000', '清源街道', '1', '246');
INSERT INTO `cdg_regioncode` VALUES ('110115004000', '亦庄地区', '1', '247');
INSERT INTO `cdg_regioncode` VALUES ('110115005000', '黄村地区', '1', '248');
INSERT INTO `cdg_regioncode` VALUES ('110115006000', '旧宫地区', '1', '249');
INSERT INTO `cdg_regioncode` VALUES ('110115007000', '西红门地区', '1', '250');
INSERT INTO `cdg_regioncode` VALUES ('110115103000', '青云店镇', '1', '251');
INSERT INTO `cdg_regioncode` VALUES ('110115104000', '采育镇', '1', '252');
INSERT INTO `cdg_regioncode` VALUES ('110115105000', '安定镇', '1', '253');
INSERT INTO `cdg_regioncode` VALUES ('110115106000', '礼贤镇', '1', '254');
INSERT INTO `cdg_regioncode` VALUES ('110115107000', '榆垡镇', '1', '255');
INSERT INTO `cdg_regioncode` VALUES ('110115108000', '庞各庄镇', '1', '256');
INSERT INTO `cdg_regioncode` VALUES ('110115109000', '北臧村镇', '1', '257');
INSERT INTO `cdg_regioncode` VALUES ('110115110000', '魏善庄镇', '1', '258');
INSERT INTO `cdg_regioncode` VALUES ('110115111000', '长子营镇', '1', '259');
INSERT INTO `cdg_regioncode` VALUES ('110115112000', '瀛海镇', '1', '260');
INSERT INTO `cdg_regioncode` VALUES ('110116000000', '怀柔', '1', '261');
INSERT INTO `cdg_regioncode` VALUES ('110116001000', '泉河街道', '1', '262');
INSERT INTO `cdg_regioncode` VALUES ('110116002000', '龙山街道', '1', '263');
INSERT INTO `cdg_regioncode` VALUES ('110116003000', '怀柔地区', '1', '264');
INSERT INTO `cdg_regioncode` VALUES ('110116004000', '雁栖地区', '1', '265');
INSERT INTO `cdg_regioncode` VALUES ('110116005000', '庙城地区', '1', '266');
INSERT INTO `cdg_regioncode` VALUES ('110116102000', '北房镇', '1', '267');
INSERT INTO `cdg_regioncode` VALUES ('110116103000', '杨宋镇', '1', '268');
INSERT INTO `cdg_regioncode` VALUES ('110116105000', '桥梓镇', '1', '269');
INSERT INTO `cdg_regioncode` VALUES ('110116106000', '怀北镇', '1', '270');
INSERT INTO `cdg_regioncode` VALUES ('110116107000', '汤河口镇', '1', '271');
INSERT INTO `cdg_regioncode` VALUES ('110116108000', '渤海镇', '1', '272');
INSERT INTO `cdg_regioncode` VALUES ('110116109000', '九渡河镇', '1', '273');
INSERT INTO `cdg_regioncode` VALUES ('110116110000', '琉璃庙镇', '1', '274');
INSERT INTO `cdg_regioncode` VALUES ('110116111000', '宝山镇', '1', '275');
INSERT INTO `cdg_regioncode` VALUES ('110116211000', '长哨营满族乡', '1', '276');
INSERT INTO `cdg_regioncode` VALUES ('110116213000', '喇叭沟门满族乡', '1', '277');
INSERT INTO `cdg_regioncode` VALUES ('110117000000', '平谷区', '1', '278');
INSERT INTO `cdg_regioncode` VALUES ('110117001000', '滨河街道', '1', '279');
INSERT INTO `cdg_regioncode` VALUES ('110117002000', '兴谷街道', '1', '280');
INSERT INTO `cdg_regioncode` VALUES ('110117003000', '渔阳地区', '1', '281');
INSERT INTO `cdg_regioncode` VALUES ('110117004000', '峪口地区', '1', '282');
INSERT INTO `cdg_regioncode` VALUES ('110117005000', '马坊地区', '1', '283');
INSERT INTO `cdg_regioncode` VALUES ('110117006000', '金海湖地区', '1', '284');
INSERT INTO `cdg_regioncode` VALUES ('110117101000', '东高村镇', '1', '285');
INSERT INTO `cdg_regioncode` VALUES ('110117102000', '山东庄镇', '1', '286');
INSERT INTO `cdg_regioncode` VALUES ('110117104000', '南独乐河镇', '1', '287');
INSERT INTO `cdg_regioncode` VALUES ('110117105000', '大华山镇', '1', '288');
INSERT INTO `cdg_regioncode` VALUES ('110117106000', '夏各庄镇', '1', '289');
INSERT INTO `cdg_regioncode` VALUES ('110117108000', '马昌营镇', '1', '290');
INSERT INTO `cdg_regioncode` VALUES ('110117110000', '王辛庄镇', '1', '291');
INSERT INTO `cdg_regioncode` VALUES ('110117111000', '大兴庄镇', '1', '292');
INSERT INTO `cdg_regioncode` VALUES ('110117112000', '刘家店镇', '1', '293');
INSERT INTO `cdg_regioncode` VALUES ('110117114000', '镇罗营镇', '1', '294');
INSERT INTO `cdg_regioncode` VALUES ('110117213000', '黄松峪乡', '1', '295');
INSERT INTO `cdg_regioncode` VALUES ('110117214000', '熊儿寨乡', '1', '296');
INSERT INTO `cdg_regioncode` VALUES ('110228000000', '密云县', '1', '297');
INSERT INTO `cdg_regioncode` VALUES ('110228001000', '鼓楼街道', '1', '298');
INSERT INTO `cdg_regioncode` VALUES ('110228002000', '果园街道', '1', '299');
INSERT INTO `cdg_regioncode` VALUES ('110228110000', '冯家峪镇', '1', '311');
INSERT INTO `cdg_regioncode` VALUES ('110228111000', '古北口镇', '1', '312');
INSERT INTO `cdg_regioncode` VALUES ('110228112000', '大城子镇', '1', '313');
INSERT INTO `cdg_regioncode` VALUES ('110228113000', '东邵渠镇', '1', '314');
INSERT INTO `cdg_regioncode` VALUES ('110228114000', '北庄镇', '1', '315');
INSERT INTO `cdg_regioncode` VALUES ('110228115000', '新城子镇', '1', '316');
INSERT INTO `cdg_regioncode` VALUES ('110228116000', '石城镇', '1', '317');
INSERT INTO `cdg_regioncode` VALUES ('110229000000', '延庆县', '1', '318');
INSERT INTO `cdg_regioncode` VALUES ('110229100000', '延庆镇', '1', '319');
INSERT INTO `cdg_regioncode` VALUES ('110229101000', '康庄镇', '1', '320');
INSERT INTO `cdg_regioncode` VALUES ('110229102000', '八达岭镇', '1', '321');
INSERT INTO `cdg_regioncode` VALUES ('110229103000', '永宁镇', '1', '322');
INSERT INTO `cdg_regioncode` VALUES ('110229104000', '旧县镇', '1', '323');
INSERT INTO `cdg_regioncode` VALUES ('110229105000', '张山营镇', '1', '324');
INSERT INTO `cdg_regioncode` VALUES ('110229106000', '四海镇', '1', '325');
INSERT INTO `cdg_regioncode` VALUES ('110229107000', '千家店镇', '1', '326');
INSERT INTO `cdg_regioncode` VALUES ('110229108000', '沈家营镇', '1', '327');
INSERT INTO `cdg_regioncode` VALUES ('110229109000', '大榆树镇', '1', '328');
INSERT INTO `cdg_regioncode` VALUES ('110229110000', '井庄镇', '1', '329');
INSERT INTO `cdg_regioncode` VALUES ('110229207000', '大庄科乡', '1', '330');
INSERT INTO `cdg_regioncode` VALUES ('110229209000', '刘斌堡乡', '1', '331');
INSERT INTO `cdg_regioncode` VALUES ('110229210000', '香营乡', '1', '332');
INSERT INTO `cdg_regioncode` VALUES ('110229214000', '珍珠泉乡', '1', '333');
INSERT INTO `cdg_regioncode` VALUES ('120000000000', '天津市', '1', '334');
INSERT INTO `cdg_regioncode` VALUES ('120100000000', '天津市市辖区', '1', '335');
INSERT INTO `cdg_regioncode` VALUES ('120101000000', '天津市和平区', '1', '336');
INSERT INTO `cdg_regioncode` VALUES ('120102000000', '天津市河东区', '1', '337');
INSERT INTO `cdg_regioncode` VALUES ('120103000000', '天津市河西区', '1', '338');
INSERT INTO `cdg_regioncode` VALUES ('120104000000', '天津市南开区', '1', '339');
INSERT INTO `cdg_regioncode` VALUES ('120105000000', '天津市河北区', '1', '340');
INSERT INTO `cdg_regioncode` VALUES ('120106000000', '天津市红桥区', '1', '341');
INSERT INTO `cdg_regioncode` VALUES ('120107000000', '天津市塘沽区', '1', '342');
INSERT INTO `cdg_regioncode` VALUES ('120108000000', '天津市汉沽区', '1', '343');
INSERT INTO `cdg_regioncode` VALUES ('120109000000', '天津市大港区', '1', '344');
INSERT INTO `cdg_regioncode` VALUES ('120110000000', '天津市东丽区', '1', '345');
INSERT INTO `cdg_regioncode` VALUES ('120111000000', '天津市西青区', '1', '346');
INSERT INTO `cdg_regioncode` VALUES ('120112000000', '天津市津南区', '1', '347');
INSERT INTO `cdg_regioncode` VALUES ('120113000000', '天津市北辰区', '1', '348');
INSERT INTO `cdg_regioncode` VALUES ('120114000000', '天津市武清区', '1', '349');
INSERT INTO `cdg_regioncode` VALUES ('120115000000', '天津市宝坻区', '1', '350');
INSERT INTO `cdg_regioncode` VALUES ('120200000000', '天津市县', '1', '351');
INSERT INTO `cdg_regioncode` VALUES ('120221000000', '天津市宁河县', '1', '352');
INSERT INTO `cdg_regioncode` VALUES ('120223000000', '天津市静海县', '1', '353');
INSERT INTO `cdg_regioncode` VALUES ('120225000000', '天津市蓟县', '1', '354');
INSERT INTO `cdg_regioncode` VALUES ('130000000000', '河北省', '1', '355');
INSERT INTO `cdg_regioncode` VALUES ('130100000000', '河北省石家庄市', '1', '356');
INSERT INTO `cdg_regioncode` VALUES ('130101000000', '河北省石家庄市市辖区', '1', '357');
INSERT INTO `cdg_regioncode` VALUES ('130102000000', '河北省石家庄市长安区', '1', '358');
INSERT INTO `cdg_regioncode` VALUES ('130103000000', '河北省石家庄市桥东区', '1', '359');
INSERT INTO `cdg_regioncode` VALUES ('130104000000', '河北省石家庄市桥西区', '1', '360');
INSERT INTO `cdg_regioncode` VALUES ('130105000000', '河北省石家庄市新华区', '1', '361');
INSERT INTO `cdg_regioncode` VALUES ('130107000000', '河北省石家庄市井陉矿区', '1', '362');
INSERT INTO `cdg_regioncode` VALUES ('130108000000', '河北省石家庄市裕华区', '1', '363');
INSERT INTO `cdg_regioncode` VALUES ('130121000000', '河北省井陉县', '1', '364');
INSERT INTO `cdg_regioncode` VALUES ('130123000000', '河北省正定县', '1', '365');
INSERT INTO `cdg_regioncode` VALUES ('130124000000', '河北省栾城县', '1', '366');
INSERT INTO `cdg_regioncode` VALUES ('130125000000', '河北省行唐县', '1', '367');
INSERT INTO `cdg_regioncode` VALUES ('130126000000', '河北省灵寿县', '1', '368');
INSERT INTO `cdg_regioncode` VALUES ('130127000000', '河北省高邑县', '1', '369');
INSERT INTO `cdg_regioncode` VALUES ('130128000000', '河北省深泽县', '1', '370');
INSERT INTO `cdg_regioncode` VALUES ('130129000000', '河北省赞皇县', '1', '371');
INSERT INTO `cdg_regioncode` VALUES ('130130000000', '河北省无极县', '1', '372');
INSERT INTO `cdg_regioncode` VALUES ('130131000000', '河北省平山县', '1', '373');
INSERT INTO `cdg_regioncode` VALUES ('130132000000', '河北省元氏县', '1', '374');
INSERT INTO `cdg_regioncode` VALUES ('130133000000', '河北省赵县', '1', '375');
INSERT INTO `cdg_regioncode` VALUES ('130181000000', '河北省辛集市', '1', '376');
INSERT INTO `cdg_regioncode` VALUES ('130182000000', '河北省藁城市', '1', '377');
INSERT INTO `cdg_regioncode` VALUES ('130183000000', '河北省晋州市', '1', '378');
INSERT INTO `cdg_regioncode` VALUES ('130184000000', '河北省新乐市', '1', '379');
INSERT INTO `cdg_regioncode` VALUES ('130185000000', '河北省鹿泉市', '1', '380');
INSERT INTO `cdg_regioncode` VALUES ('130200000000', '河北省唐山市', '1', '381');
INSERT INTO `cdg_regioncode` VALUES ('130201000000', '河北省唐山市市辖区', '1', '382');
INSERT INTO `cdg_regioncode` VALUES ('130202000000', '河北省唐山市路南区', '1', '383');
INSERT INTO `cdg_regioncode` VALUES ('130203000000', '河北省唐山市路北区', '1', '384');
INSERT INTO `cdg_regioncode` VALUES ('130204000000', '河北省唐山市古冶区', '1', '385');
INSERT INTO `cdg_regioncode` VALUES ('130205000000', '河北省唐山市开平区', '1', '386');
INSERT INTO `cdg_regioncode` VALUES ('130207000000', '河北省唐山市丰南区', '1', '387');
INSERT INTO `cdg_regioncode` VALUES ('130208000000', '河北唐山市省丰润区', '1', '388');
INSERT INTO `cdg_regioncode` VALUES ('130223000000', '河北省滦县', '1', '389');
INSERT INTO `cdg_regioncode` VALUES ('130224000000', '河北省滦南县', '1', '390');
INSERT INTO `cdg_regioncode` VALUES ('130225000000', '河北省乐亭县', '1', '391');
INSERT INTO `cdg_regioncode` VALUES ('130227000000', '河北省迁西县', '1', '392');
INSERT INTO `cdg_regioncode` VALUES ('130229000000', '河北省玉田县', '1', '393');
INSERT INTO `cdg_regioncode` VALUES ('130230000000', '河北省唐海县', '1', '394');
INSERT INTO `cdg_regioncode` VALUES ('130281000000', '河北省遵化市', '1', '395');
INSERT INTO `cdg_regioncode` VALUES ('130283000000', '河北省迁安市', '1', '396');
INSERT INTO `cdg_regioncode` VALUES ('130300000000', '河北省秦皇岛市', '1', '397');
INSERT INTO `cdg_regioncode` VALUES ('130301000000', '河北省市秦皇岛市辖区', '1', '398');
INSERT INTO `cdg_regioncode` VALUES ('130302000000', '河北省秦皇岛市海港区', '1', '399');
INSERT INTO `cdg_regioncode` VALUES ('130404000000', '河北省邯郸市复兴区', '1', '410');
INSERT INTO `cdg_regioncode` VALUES ('130406000000', '河北省邯郸市峰峰矿区', '1', '411');
INSERT INTO `cdg_regioncode` VALUES ('130421000000', '河北省邯郸县', '1', '412');
INSERT INTO `cdg_regioncode` VALUES ('130423000000', '河北省临漳县', '1', '413');
INSERT INTO `cdg_regioncode` VALUES ('130424000000', '河北省成安县', '1', '414');
INSERT INTO `cdg_regioncode` VALUES ('130425000000', '河北省大名县', '1', '415');
INSERT INTO `cdg_regioncode` VALUES ('130426000000', '河北省涉县', '1', '416');
INSERT INTO `cdg_regioncode` VALUES ('130427000000', '河北省磁县', '1', '417');
INSERT INTO `cdg_regioncode` VALUES ('130428000000', '河北省肥乡县', '1', '418');
INSERT INTO `cdg_regioncode` VALUES ('130429000000', '河北省永年县', '1', '419');
INSERT INTO `cdg_regioncode` VALUES ('130430000000', '河北省邱县', '1', '420');
INSERT INTO `cdg_regioncode` VALUES ('130431000000', '河北省鸡泽县', '1', '421');
INSERT INTO `cdg_regioncode` VALUES ('130432000000', '河北省广平县', '1', '422');
INSERT INTO `cdg_regioncode` VALUES ('130433000000', '河北省馆陶县', '1', '423');
INSERT INTO `cdg_regioncode` VALUES ('130434000000', '河北省魏县', '1', '424');
INSERT INTO `cdg_regioncode` VALUES ('130435000000', '河北省曲周县', '1', '425');
INSERT INTO `cdg_regioncode` VALUES ('130481000000', '河北省武安市', '1', '426');
INSERT INTO `cdg_regioncode` VALUES ('130500000000', '河北省邢台市', '1', '427');
INSERT INTO `cdg_regioncode` VALUES ('130501000000', '河北省邢台市市辖区', '1', '428');
INSERT INTO `cdg_regioncode` VALUES ('130502000000', '河北省邢台市桥东区', '1', '429');
INSERT INTO `cdg_regioncode` VALUES ('130503000000', '河北省邢台市桥西区', '1', '430');
INSERT INTO `cdg_regioncode` VALUES ('130521000000', '河北省邢台县', '1', '431');
INSERT INTO `cdg_regioncode` VALUES ('130522000000', '河北省临城县', '1', '432');
INSERT INTO `cdg_regioncode` VALUES ('130523000000', '河北省内丘县', '1', '433');
INSERT INTO `cdg_regioncode` VALUES ('130524000000', '河北省柏乡县', '1', '434');
INSERT INTO `cdg_regioncode` VALUES ('130525000000', '河北省隆尧县', '1', '435');
INSERT INTO `cdg_regioncode` VALUES ('130526000000', '河北省任县', '1', '436');
INSERT INTO `cdg_regioncode` VALUES ('130527000000', '河北省南和县', '1', '437');
INSERT INTO `cdg_regioncode` VALUES ('130528000000', '河北省宁晋县', '1', '438');
INSERT INTO `cdg_regioncode` VALUES ('130529000000', '河北省巨鹿县', '1', '439');
INSERT INTO `cdg_regioncode` VALUES ('130530000000', '河北省新河县', '1', '440');
INSERT INTO `cdg_regioncode` VALUES ('130531000000', '河北省广宗县', '1', '441');
INSERT INTO `cdg_regioncode` VALUES ('130532000000', '河北省平乡县', '1', '442');
INSERT INTO `cdg_regioncode` VALUES ('130533000000', '河北省威县', '1', '443');
INSERT INTO `cdg_regioncode` VALUES ('130534000000', '河北省清河县', '1', '444');
INSERT INTO `cdg_regioncode` VALUES ('130535000000', '河北省临西县', '1', '445');
INSERT INTO `cdg_regioncode` VALUES ('130581000000', '河北省南宫市', '1', '446');
INSERT INTO `cdg_regioncode` VALUES ('130582000000', '河北省沙河市', '1', '447');
INSERT INTO `cdg_regioncode` VALUES ('130600000000', '河北省保定市', '1', '448');
INSERT INTO `cdg_regioncode` VALUES ('130601000000', '河北省保定市市辖区', '1', '449');
INSERT INTO `cdg_regioncode` VALUES ('130602000000', '河北省保定市新市区', '1', '450');
INSERT INTO `cdg_regioncode` VALUES ('130603000000', '河北省保定市北市区', '1', '451');
INSERT INTO `cdg_regioncode` VALUES ('130604000000', '河北省保定市南市区', '1', '452');
INSERT INTO `cdg_regioncode` VALUES ('130621000000', '河北省满城县', '1', '453');
INSERT INTO `cdg_regioncode` VALUES ('130622000000', '河北省清苑县', '1', '454');
INSERT INTO `cdg_regioncode` VALUES ('130623000000', '河北省涞水县', '1', '455');
INSERT INTO `cdg_regioncode` VALUES ('130624000000', '河北省阜平县', '1', '456');
INSERT INTO `cdg_regioncode` VALUES ('130625000000', '河北省徐水县', '1', '457');
INSERT INTO `cdg_regioncode` VALUES ('130626000000', '河北省定兴县', '1', '458');
INSERT INTO `cdg_regioncode` VALUES ('130627000000', '河北省唐县', '1', '459');
INSERT INTO `cdg_regioncode` VALUES ('130628000000', '河北省高阳县', '1', '460');
INSERT INTO `cdg_regioncode` VALUES ('130629000000', '河北省容城县', '1', '461');
INSERT INTO `cdg_regioncode` VALUES ('130630000000', '河北省涞源县', '1', '462');
INSERT INTO `cdg_regioncode` VALUES ('130631000000', '河北省望都县', '1', '463');
INSERT INTO `cdg_regioncode` VALUES ('130632000000', '河北省安新县', '1', '464');
INSERT INTO `cdg_regioncode` VALUES ('130633000000', '河北省易县', '1', '465');
INSERT INTO `cdg_regioncode` VALUES ('130634000000', '河北省曲阳县', '1', '466');
INSERT INTO `cdg_regioncode` VALUES ('130635000000', '河北省蠡县', '1', '467');
INSERT INTO `cdg_regioncode` VALUES ('130636000000', '河北省顺平县', '1', '468');
INSERT INTO `cdg_regioncode` VALUES ('130637000000', '河北省博野县', '1', '469');
INSERT INTO `cdg_regioncode` VALUES ('130638000000', '河北省雄县', '1', '470');
INSERT INTO `cdg_regioncode` VALUES ('130681000000', '河北省涿州市', '1', '471');
INSERT INTO `cdg_regioncode` VALUES ('130682000000', '河北省定州市', '1', '472');
INSERT INTO `cdg_regioncode` VALUES ('130683000000', '河北省安国市', '1', '473');
INSERT INTO `cdg_regioncode` VALUES ('130684000000', '河北省高碑店市', '1', '474');
INSERT INTO `cdg_regioncode` VALUES ('130700000000', '河北省张家口市', '1', '475');
INSERT INTO `cdg_regioncode` VALUES ('130701000000', '河北省张家口市市辖区', '1', '476');
INSERT INTO `cdg_regioncode` VALUES ('130702000000', '河北省张家口市桥东区', '1', '477');
INSERT INTO `cdg_regioncode` VALUES ('130703000000', '河北省张家口市桥西区', '1', '478');
INSERT INTO `cdg_regioncode` VALUES ('130705000000', '河北省张家口市宣化区', '1', '479');
INSERT INTO `cdg_regioncode` VALUES ('130706000000', '河北省张家口市下花园区', '1', '480');
INSERT INTO `cdg_regioncode` VALUES ('130721000000', '河北省宣化县', '1', '481');
INSERT INTO `cdg_regioncode` VALUES ('130722000000', '河北省张北县', '1', '482');
INSERT INTO `cdg_regioncode` VALUES ('130723000000', '河北省康保县', '1', '483');
INSERT INTO `cdg_regioncode` VALUES ('130724000000', '河北省沽源县', '1', '484');
INSERT INTO `cdg_regioncode` VALUES ('130725000000', '河北省尚义县', '1', '485');
INSERT INTO `cdg_regioncode` VALUES ('130726000000', '河北省蔚县', '1', '486');
INSERT INTO `cdg_regioncode` VALUES ('130727000000', '河北省阳原县', '1', '487');
INSERT INTO `cdg_regioncode` VALUES ('130728000000', '河北省怀安县', '1', '488');
INSERT INTO `cdg_regioncode` VALUES ('130729000000', '河北省万全县', '1', '489');
INSERT INTO `cdg_regioncode` VALUES ('130730000000', '河北省怀来县', '1', '490');
INSERT INTO `cdg_regioncode` VALUES ('130731000000', '河北省涿鹿县', '1', '491');
INSERT INTO `cdg_regioncode` VALUES ('130732000000', '河北省赤城县', '1', '492');
INSERT INTO `cdg_regioncode` VALUES ('130733000000', '河北省崇礼县', '1', '493');
INSERT INTO `cdg_regioncode` VALUES ('130800000000', '河北省承德市', '1', '494');
INSERT INTO `cdg_regioncode` VALUES ('130801000000', '河北省承德市市辖区', '1', '495');
INSERT INTO `cdg_regioncode` VALUES ('130802000000', '河北省承德市双桥区', '1', '496');
INSERT INTO `cdg_regioncode` VALUES ('130803000000', '河北省承德市双滦区', '1', '497');
INSERT INTO `cdg_regioncode` VALUES ('130804000000', '河北省承德市鹰手营子矿区', '1', '498');
INSERT INTO `cdg_regioncode` VALUES ('130821000000', '河北省承德县', '1', '499');
INSERT INTO `cdg_regioncode` VALUES ('130902000000', '河北省沧州市新华区', '1', '509');
INSERT INTO `cdg_regioncode` VALUES ('130903000000', '河北省沧州市运河区', '1', '510');
INSERT INTO `cdg_regioncode` VALUES ('130921000000', '河北省沧县', '1', '511');
INSERT INTO `cdg_regioncode` VALUES ('130922000000', '河北省青县', '1', '512');
INSERT INTO `cdg_regioncode` VALUES ('130923000000', '河北省东光县', '1', '513');
INSERT INTO `cdg_regioncode` VALUES ('130924000000', '河北省海兴县', '1', '514');
INSERT INTO `cdg_regioncode` VALUES ('130925000000', '河北省盐山县', '1', '515');
INSERT INTO `cdg_regioncode` VALUES ('130926000000', '河北省肃宁县', '1', '516');
INSERT INTO `cdg_regioncode` VALUES ('130927000000', '河北省南皮县', '1', '517');
INSERT INTO `cdg_regioncode` VALUES ('130928000000', '河北省吴桥县', '1', '518');
INSERT INTO `cdg_regioncode` VALUES ('130929000000', '河北省献县', '1', '519');
INSERT INTO `cdg_regioncode` VALUES ('130930000000', '河北省孟村回族自治县', '1', '520');
INSERT INTO `cdg_regioncode` VALUES ('130981000000', '河北省泊头市', '1', '521');
INSERT INTO `cdg_regioncode` VALUES ('130982000000', '河北省任丘市', '1', '522');
INSERT INTO `cdg_regioncode` VALUES ('130983000000', '河北省黄骅市', '1', '523');
INSERT INTO `cdg_regioncode` VALUES ('130984000000', '河北省河间市', '1', '524');
INSERT INTO `cdg_regioncode` VALUES ('131000000000', '河北省廊坊市', '1', '525');
INSERT INTO `cdg_regioncode` VALUES ('131001000000', '河北省廊坊市市辖区', '1', '526');
INSERT INTO `cdg_regioncode` VALUES ('131002000000', '河北省廊坊市安次区', '1', '527');
INSERT INTO `cdg_regioncode` VALUES ('131003000000', '河北省廊坊市广阳区', '1', '528');
INSERT INTO `cdg_regioncode` VALUES ('131022000000', '河北省固安县', '1', '529');
INSERT INTO `cdg_regioncode` VALUES ('131023000000', '河北省永清县', '1', '530');
INSERT INTO `cdg_regioncode` VALUES ('131024000000', '河北省香河县', '1', '531');
INSERT INTO `cdg_regioncode` VALUES ('131025000000', '河北省大城县', '1', '532');
INSERT INTO `cdg_regioncode` VALUES ('131026000000', '河北省文安县', '1', '533');
INSERT INTO `cdg_regioncode` VALUES ('131028000000', '河北省大厂回族自治县', '1', '534');
INSERT INTO `cdg_regioncode` VALUES ('131081000000', '河北省霸州市', '1', '535');
INSERT INTO `cdg_regioncode` VALUES ('131082000000', '河北省三河市', '1', '536');
INSERT INTO `cdg_regioncode` VALUES ('131100000000', '河北省衡水市', '1', '537');
INSERT INTO `cdg_regioncode` VALUES ('131101000000', '河北省衡水市市辖区', '1', '538');
INSERT INTO `cdg_regioncode` VALUES ('131102000000', '河北省衡水市桃城区', '1', '539');
INSERT INTO `cdg_regioncode` VALUES ('131121000000', '河北省枣强县', '1', '540');
INSERT INTO `cdg_regioncode` VALUES ('131122000000', '河北省武邑县', '1', '541');
INSERT INTO `cdg_regioncode` VALUES ('131123000000', '河北省武强县', '1', '542');
INSERT INTO `cdg_regioncode` VALUES ('131124000000', '河北省饶阳县', '1', '543');
INSERT INTO `cdg_regioncode` VALUES ('131125000000', '河北省安平县', '1', '544');
INSERT INTO `cdg_regioncode` VALUES ('131126000000', '河北省故城县', '1', '545');
INSERT INTO `cdg_regioncode` VALUES ('131127000000', '河北省景县', '1', '546');
INSERT INTO `cdg_regioncode` VALUES ('131128000000', '河北省阜城县', '1', '547');
INSERT INTO `cdg_regioncode` VALUES ('131181000000', '河北省冀州市', '1', '548');
INSERT INTO `cdg_regioncode` VALUES ('131182000000', '河北省深州市', '1', '549');
INSERT INTO `cdg_regioncode` VALUES ('140000000000', '山西省', '1', '550');
INSERT INTO `cdg_regioncode` VALUES ('140100000000', '山西省太原市', '1', '551');
INSERT INTO `cdg_regioncode` VALUES ('140101000000', '山西省太原市市辖区', '1', '552');
INSERT INTO `cdg_regioncode` VALUES ('140105000000', '山西省太原市小店区', '1', '553');
INSERT INTO `cdg_regioncode` VALUES ('140106000000', '山西省太原市迎泽区', '1', '554');
INSERT INTO `cdg_regioncode` VALUES ('140107000000', '山西省太原市杏花岭区', '1', '555');
INSERT INTO `cdg_regioncode` VALUES ('140108000000', '山西省太原市尖草坪区', '1', '556');
INSERT INTO `cdg_regioncode` VALUES ('140109000000', '山西省太原市万柏林区', '1', '557');
INSERT INTO `cdg_regioncode` VALUES ('140110000000', '山西省太原市晋源区', '1', '558');
INSERT INTO `cdg_regioncode` VALUES ('140121000000', '山西省清徐县', '1', '559');
INSERT INTO `cdg_regioncode` VALUES ('140122000000', '山西省阳曲县', '1', '560');
INSERT INTO `cdg_regioncode` VALUES ('140123000000', '山西省娄烦县', '1', '561');
INSERT INTO `cdg_regioncode` VALUES ('140181000000', '山西省古交市', '1', '562');
INSERT INTO `cdg_regioncode` VALUES ('140200000000', '山西省大同市', '1', '563');
INSERT INTO `cdg_regioncode` VALUES ('140201000000', '山西省大同市市辖区', '1', '564');
INSERT INTO `cdg_regioncode` VALUES ('140202000000', '山西省大同市城区', '1', '565');
INSERT INTO `cdg_regioncode` VALUES ('140203000000', '山西省大同市矿区', '1', '566');
INSERT INTO `cdg_regioncode` VALUES ('140211000000', '山西省大同市南郊区', '1', '567');
INSERT INTO `cdg_regioncode` VALUES ('140212000000', '山西省大同市新荣区', '1', '568');
INSERT INTO `cdg_regioncode` VALUES ('140221000000', '山西省阳高县', '1', '569');
INSERT INTO `cdg_regioncode` VALUES ('140222000000', '山西省天镇县', '1', '570');
INSERT INTO `cdg_regioncode` VALUES ('140223000000', '山西省广灵县', '1', '571');
INSERT INTO `cdg_regioncode` VALUES ('140224000000', '山西省灵丘县', '1', '572');
INSERT INTO `cdg_regioncode` VALUES ('140225000000', '山西省浑源县', '1', '573');
INSERT INTO `cdg_regioncode` VALUES ('140226000000', '山西省左云县', '1', '574');
INSERT INTO `cdg_regioncode` VALUES ('140227000000', '山西省大同县', '1', '575');
INSERT INTO `cdg_regioncode` VALUES ('140300000000', '山西省阳泉市', '1', '576');
INSERT INTO `cdg_regioncode` VALUES ('140301000000', '山西省阳泉市市辖区', '1', '577');
INSERT INTO `cdg_regioncode` VALUES ('140302000000', '山西省阳泉市城区', '1', '578');
INSERT INTO `cdg_regioncode` VALUES ('140303000000', '山西省阳泉市矿区', '1', '579');
INSERT INTO `cdg_regioncode` VALUES ('140311000000', '山西省阳泉市郊区', '1', '580');
INSERT INTO `cdg_regioncode` VALUES ('140321000000', '山西省平定县', '1', '581');
INSERT INTO `cdg_regioncode` VALUES ('140322000000', '山西省盂县', '1', '582');
INSERT INTO `cdg_regioncode` VALUES ('140400000000', '山西省长治市', '1', '583');
INSERT INTO `cdg_regioncode` VALUES ('140401000000', '山西省长治市市辖区', '1', '584');
INSERT INTO `cdg_regioncode` VALUES ('140402000000', '山西省长治市城区', '1', '585');
INSERT INTO `cdg_regioncode` VALUES ('140411000000', '山西省长治市郊区', '1', '586');
INSERT INTO `cdg_regioncode` VALUES ('140421000000', '山西省长治县', '1', '587');
INSERT INTO `cdg_regioncode` VALUES ('140423000000', '山西省襄垣县', '1', '588');
INSERT INTO `cdg_regioncode` VALUES ('140424000000', '山西省屯留县', '1', '589');
INSERT INTO `cdg_regioncode` VALUES ('140425000000', '山西省平顺县', '1', '590');
INSERT INTO `cdg_regioncode` VALUES ('140426000000', '山西省黎城县', '1', '591');
INSERT INTO `cdg_regioncode` VALUES ('140427000000', '山西省壶关县', '1', '592');
INSERT INTO `cdg_regioncode` VALUES ('140428000000', '山西省长子县', '1', '593');
INSERT INTO `cdg_regioncode` VALUES ('140429000000', '山西省武乡县', '1', '594');
INSERT INTO `cdg_regioncode` VALUES ('140430000000', '山西省沁县', '1', '595');
INSERT INTO `cdg_regioncode` VALUES ('140431000000', '山西省沁源县', '1', '596');
INSERT INTO `cdg_regioncode` VALUES ('140481000000', '山西省潞城市', '1', '597');
INSERT INTO `cdg_regioncode` VALUES ('140500000000', '山西省晋城市', '1', '598');
INSERT INTO `cdg_regioncode` VALUES ('140501000000', '山西省晋城市市辖区', '1', '599');
INSERT INTO `cdg_regioncode` VALUES ('140602000000', '山西省朔州市朔城区', '1', '608');
INSERT INTO `cdg_regioncode` VALUES ('140603000000', '山西省朔州市平鲁区', '1', '609');
INSERT INTO `cdg_regioncode` VALUES ('140621000000', '山西省山阴县', '1', '610');
INSERT INTO `cdg_regioncode` VALUES ('140622000000', '山西省应县', '1', '611');
INSERT INTO `cdg_regioncode` VALUES ('140623000000', '山西省右玉县', '1', '612');
INSERT INTO `cdg_regioncode` VALUES ('140624000000', '山西省怀仁县', '1', '613');
INSERT INTO `cdg_regioncode` VALUES ('140700000000', '山西省晋中市', '1', '614');
INSERT INTO `cdg_regioncode` VALUES ('140701000000', '山西省晋中市市辖区', '1', '615');
INSERT INTO `cdg_regioncode` VALUES ('140702000000', '山西省晋中市榆次区', '1', '616');
INSERT INTO `cdg_regioncode` VALUES ('140721000000', '山西省榆社县', '1', '617');
INSERT INTO `cdg_regioncode` VALUES ('140722000000', '山西省左权县', '1', '618');
INSERT INTO `cdg_regioncode` VALUES ('140723000000', '山西省和顺县', '1', '619');
INSERT INTO `cdg_regioncode` VALUES ('140724000000', '山西省昔阳县', '1', '620');
INSERT INTO `cdg_regioncode` VALUES ('140725000000', '山西省寿阳县', '1', '621');
INSERT INTO `cdg_regioncode` VALUES ('140726000000', '山西省太谷县', '1', '622');
INSERT INTO `cdg_regioncode` VALUES ('140727000000', '山西省祁县', '1', '623');
INSERT INTO `cdg_regioncode` VALUES ('140728000000', '山西省平遥县', '1', '624');
INSERT INTO `cdg_regioncode` VALUES ('140729000000', '山西省灵石县', '1', '625');
INSERT INTO `cdg_regioncode` VALUES ('140781000000', '山西省介休市', '1', '626');
INSERT INTO `cdg_regioncode` VALUES ('140800000000', '山西省运城市', '1', '627');
INSERT INTO `cdg_regioncode` VALUES ('140801000000', '山西省运城市市辖区', '1', '628');
INSERT INTO `cdg_regioncode` VALUES ('140802000000', '山西省运城市盐湖区', '1', '629');
INSERT INTO `cdg_regioncode` VALUES ('140821000000', '山西省临猗县', '1', '630');
INSERT INTO `cdg_regioncode` VALUES ('140822000000', '山西省万荣县', '1', '631');
INSERT INTO `cdg_regioncode` VALUES ('140823000000', '山西省闻喜县', '1', '632');
INSERT INTO `cdg_regioncode` VALUES ('140824000000', '山西省稷山县', '1', '633');
INSERT INTO `cdg_regioncode` VALUES ('140825000000', '山西省新绛县', '1', '634');
INSERT INTO `cdg_regioncode` VALUES ('140826000000', '山西省绛县', '1', '635');
INSERT INTO `cdg_regioncode` VALUES ('140827000000', '山西省垣曲县', '1', '636');
INSERT INTO `cdg_regioncode` VALUES ('140828000000', '山西省夏县', '1', '637');
INSERT INTO `cdg_regioncode` VALUES ('140829000000', '山西省平陆县', '1', '638');
INSERT INTO `cdg_regioncode` VALUES ('140830000000', '山西省芮城县', '1', '639');
INSERT INTO `cdg_regioncode` VALUES ('140881000000', '山西省永济市', '1', '640');
INSERT INTO `cdg_regioncode` VALUES ('140882000000', '山西省河津市', '1', '641');
INSERT INTO `cdg_regioncode` VALUES ('140900000000', '山西省忻州市', '1', '642');
INSERT INTO `cdg_regioncode` VALUES ('140901000000', '山西省忻州市市辖区', '1', '643');
INSERT INTO `cdg_regioncode` VALUES ('140902000000', '山西省忻州市忻府区', '1', '644');
INSERT INTO `cdg_regioncode` VALUES ('140921000000', '山西省定襄县', '1', '645');
INSERT INTO `cdg_regioncode` VALUES ('140922000000', '山西省五台县', '1', '646');
INSERT INTO `cdg_regioncode` VALUES ('140923000000', '山西省代县', '1', '647');
INSERT INTO `cdg_regioncode` VALUES ('140924000000', '山西省繁峙县', '1', '648');
INSERT INTO `cdg_regioncode` VALUES ('140925000000', '山西省宁武县', '1', '649');
INSERT INTO `cdg_regioncode` VALUES ('140926000000', '山西省静乐县', '1', '650');
INSERT INTO `cdg_regioncode` VALUES ('140927000000', '山西省神池县', '1', '651');
INSERT INTO `cdg_regioncode` VALUES ('140928000000', '山西省五寨县', '1', '652');
INSERT INTO `cdg_regioncode` VALUES ('140929000000', '山西省岢岚县', '1', '653');
INSERT INTO `cdg_regioncode` VALUES ('140930000000', '山西省河曲县', '1', '654');
INSERT INTO `cdg_regioncode` VALUES ('140931000000', '山西省保德县', '1', '655');
INSERT INTO `cdg_regioncode` VALUES ('140932000000', '山西省偏关县', '1', '656');
INSERT INTO `cdg_regioncode` VALUES ('140981000000', '山西省原平市', '1', '657');
INSERT INTO `cdg_regioncode` VALUES ('141000000000', '山西省临汾市', '1', '658');
INSERT INTO `cdg_regioncode` VALUES ('141001000000', '山西省临汾市市辖区', '1', '659');
INSERT INTO `cdg_regioncode` VALUES ('141002000000', '山西省临汾市尧都区', '1', '660');
INSERT INTO `cdg_regioncode` VALUES ('141021000000', '山西省曲沃县', '1', '661');
INSERT INTO `cdg_regioncode` VALUES ('141022000000', '山西省翼城县', '1', '662');
INSERT INTO `cdg_regioncode` VALUES ('141023000000', '山西省襄汾县', '1', '663');
INSERT INTO `cdg_regioncode` VALUES ('141024000000', '山西省洪洞县', '1', '664');
INSERT INTO `cdg_regioncode` VALUES ('141025000000', '山西省古县', '1', '665');
INSERT INTO `cdg_regioncode` VALUES ('141026000000', '山西省安泽县', '1', '666');
INSERT INTO `cdg_regioncode` VALUES ('141027000000', '山西省浮山县', '1', '667');
INSERT INTO `cdg_regioncode` VALUES ('141028000000', '山西省吉县', '1', '668');
INSERT INTO `cdg_regioncode` VALUES ('141029000000', '山西省乡宁县', '1', '669');
INSERT INTO `cdg_regioncode` VALUES ('141030000000', '山西省大宁县', '1', '670');
INSERT INTO `cdg_regioncode` VALUES ('141031000000', '山西省隰县', '1', '671');
INSERT INTO `cdg_regioncode` VALUES ('141032000000', '山西省永和县', '1', '672');
INSERT INTO `cdg_regioncode` VALUES ('141033000000', '山西省蒲县', '1', '673');
INSERT INTO `cdg_regioncode` VALUES ('141034000000', '山西省汾西县', '1', '674');
INSERT INTO `cdg_regioncode` VALUES ('141081000000', '山西省侯马市', '1', '675');
INSERT INTO `cdg_regioncode` VALUES ('141082000000', '山西省霍州市', '1', '676');
INSERT INTO `cdg_regioncode` VALUES ('141100000000', '山西省吕梁市', '1', '677');
INSERT INTO `cdg_regioncode` VALUES ('141101000000', '山西省吕梁市市辖区', '1', '678');
INSERT INTO `cdg_regioncode` VALUES ('141102000000', '山西省吕梁市离石区', '1', '679');
INSERT INTO `cdg_regioncode` VALUES ('141121000000', '山西省文水县', '1', '680');
INSERT INTO `cdg_regioncode` VALUES ('141122000000', '山西省交城县', '1', '681');
INSERT INTO `cdg_regioncode` VALUES ('141123000000', '山西省兴县', '1', '682');
INSERT INTO `cdg_regioncode` VALUES ('141124000000', '山西省临县', '1', '683');
INSERT INTO `cdg_regioncode` VALUES ('141125000000', '山西省柳林县', '1', '684');
INSERT INTO `cdg_regioncode` VALUES ('141126000000', '山西省石楼县', '1', '685');
INSERT INTO `cdg_regioncode` VALUES ('141127000000', '山西省岚县', '1', '686');
INSERT INTO `cdg_regioncode` VALUES ('141128000000', '山西省方山县', '1', '687');
INSERT INTO `cdg_regioncode` VALUES ('141129000000', '山西省中阳县', '1', '688');
INSERT INTO `cdg_regioncode` VALUES ('141130000000', '山西省交口县', '1', '689');
INSERT INTO `cdg_regioncode` VALUES ('141181000000', '山西省孝义市', '1', '690');
INSERT INTO `cdg_regioncode` VALUES ('141182000000', '山西省汾阳市', '1', '691');
INSERT INTO `cdg_regioncode` VALUES ('150000000000', '内蒙古自治区', '1', '692');
INSERT INTO `cdg_regioncode` VALUES ('150100000000', '内蒙古呼和浩特市', '1', '693');
INSERT INTO `cdg_regioncode` VALUES ('150101000000', '内蒙古呼和浩特市市辖区', '1', '694');
INSERT INTO `cdg_regioncode` VALUES ('150102000000', '内蒙古呼和浩特市新城区', '1', '695');
INSERT INTO `cdg_regioncode` VALUES ('150103000000', '内蒙古呼和浩特市回民区', '1', '696');
INSERT INTO `cdg_regioncode` VALUES ('150104000000', '内蒙古呼和浩特市玉泉区', '1', '697');
INSERT INTO `cdg_regioncode` VALUES ('150105000000', '内蒙古呼和浩特市赛罕区', '1', '698');
INSERT INTO `cdg_regioncode` VALUES ('150121000000', '内蒙古土默特左旗', '1', '699');
INSERT INTO `cdg_regioncode` VALUES ('150203000000', '内蒙古包头市昆都仑区', '1', '707');
INSERT INTO `cdg_regioncode` VALUES ('150204000000', '内蒙古包头市青山区', '1', '708');
INSERT INTO `cdg_regioncode` VALUES ('150205000000', '内蒙古包头市石拐区', '1', '709');
INSERT INTO `cdg_regioncode` VALUES ('150206000000', '内蒙古包头市白云矿区', '1', '710');
INSERT INTO `cdg_regioncode` VALUES ('150207000000', '内蒙古包头市九原区', '1', '711');
INSERT INTO `cdg_regioncode` VALUES ('150221000000', '内蒙古土默特右旗', '1', '712');
INSERT INTO `cdg_regioncode` VALUES ('150222000000', '内蒙古固阳县', '1', '713');
INSERT INTO `cdg_regioncode` VALUES ('150223000000', '内蒙古达尔罕茂明安联合旗', '1', '714');
INSERT INTO `cdg_regioncode` VALUES ('150300000000', '内蒙古乌海市', '1', '715');
INSERT INTO `cdg_regioncode` VALUES ('150301000000', '内蒙古乌海市市辖区', '1', '716');
INSERT INTO `cdg_regioncode` VALUES ('150302000000', '内蒙古乌海市海勃湾区', '1', '717');
INSERT INTO `cdg_regioncode` VALUES ('150303000000', '内蒙古乌海市海南区', '1', '718');
INSERT INTO `cdg_regioncode` VALUES ('150304000000', '内蒙古乌海市乌达区', '1', '719');
INSERT INTO `cdg_regioncode` VALUES ('150400000000', '内蒙古赤峰市', '1', '720');
INSERT INTO `cdg_regioncode` VALUES ('150401000000', '内蒙古赤峰市市辖区', '1', '721');
INSERT INTO `cdg_regioncode` VALUES ('150402000000', '内蒙古赤峰市红山区', '1', '722');
INSERT INTO `cdg_regioncode` VALUES ('150403000000', '内蒙古赤峰市元宝山区', '1', '723');
INSERT INTO `cdg_regioncode` VALUES ('150404000000', '内蒙古赤峰市松山区', '1', '724');
INSERT INTO `cdg_regioncode` VALUES ('150421000000', '内蒙古阿鲁科尔沁旗', '1', '725');
INSERT INTO `cdg_regioncode` VALUES ('150422000000', '内蒙古巴林左旗', '1', '726');
INSERT INTO `cdg_regioncode` VALUES ('150423000000', '内蒙古巴林右旗', '1', '727');
INSERT INTO `cdg_regioncode` VALUES ('150424000000', '内蒙古林西县', '1', '728');
INSERT INTO `cdg_regioncode` VALUES ('150425000000', '内蒙古克什克腾旗', '1', '729');
INSERT INTO `cdg_regioncode` VALUES ('150426000000', '内蒙古翁牛特旗', '1', '730');
INSERT INTO `cdg_regioncode` VALUES ('150428000000', '内蒙古喀喇沁旗', '1', '731');
INSERT INTO `cdg_regioncode` VALUES ('150429000000', '内蒙古宁城县', '1', '732');
INSERT INTO `cdg_regioncode` VALUES ('150430000000', '内蒙古敖汉旗', '1', '733');
INSERT INTO `cdg_regioncode` VALUES ('150500000000', '内蒙古通辽市', '1', '734');
INSERT INTO `cdg_regioncode` VALUES ('150501000000', '内蒙古通辽市市辖区', '1', '735');
INSERT INTO `cdg_regioncode` VALUES ('150502000000', '内蒙古通辽市科尔沁区', '1', '736');
INSERT INTO `cdg_regioncode` VALUES ('150521000000', '内蒙古科尔沁左翼中旗', '1', '737');
INSERT INTO `cdg_regioncode` VALUES ('150522000000', '内蒙古科尔沁左翼后旗', '1', '738');
INSERT INTO `cdg_regioncode` VALUES ('150523000000', '内蒙古开鲁县', '1', '739');
INSERT INTO `cdg_regioncode` VALUES ('150524000000', '内蒙古库伦旗', '1', '740');
INSERT INTO `cdg_regioncode` VALUES ('150525000000', '内蒙古奈曼旗', '1', '741');
INSERT INTO `cdg_regioncode` VALUES ('150526000000', '内蒙古扎鲁特旗', '1', '742');
INSERT INTO `cdg_regioncode` VALUES ('150581000000', '内蒙古霍林郭勒市', '1', '743');
INSERT INTO `cdg_regioncode` VALUES ('150600000000', '内蒙古鄂尔多斯市', '1', '744');
INSERT INTO `cdg_regioncode` VALUES ('150602000000', '内蒙古东胜区', '1', '745');
INSERT INTO `cdg_regioncode` VALUES ('150621000000', '内蒙古达拉特旗', '1', '746');
INSERT INTO `cdg_regioncode` VALUES ('150622000000', '内蒙古准格尔旗', '1', '747');
INSERT INTO `cdg_regioncode` VALUES ('150623000000', '内蒙古鄂托克前旗', '1', '748');
INSERT INTO `cdg_regioncode` VALUES ('150624000000', '内蒙古鄂托克旗', '1', '749');
INSERT INTO `cdg_regioncode` VALUES ('150625000000', '内蒙古杭锦旗', '1', '750');
INSERT INTO `cdg_regioncode` VALUES ('150626000000', '内蒙古乌审旗', '1', '751');
INSERT INTO `cdg_regioncode` VALUES ('150627000000', '内蒙古伊金霍洛旗', '1', '752');
INSERT INTO `cdg_regioncode` VALUES ('150700000000', '内蒙古呼伦贝尔市', '1', '753');
INSERT INTO `cdg_regioncode` VALUES ('150701000000', '内蒙古呼伦贝尔市市辖区', '1', '754');
INSERT INTO `cdg_regioncode` VALUES ('150702000000', '内蒙古呼伦贝尔市海拉尔区', '1', '755');
INSERT INTO `cdg_regioncode` VALUES ('150721000000', '内蒙古阿荣旗', '1', '756');
INSERT INTO `cdg_regioncode` VALUES ('150722000000', '内蒙古莫力达瓦达斡尔族自治旗', '1', '757');
INSERT INTO `cdg_regioncode` VALUES ('150723000000', '内蒙古鄂伦春自治旗', '1', '758');
INSERT INTO `cdg_regioncode` VALUES ('150724000000', '内蒙古鄂温克族自治旗', '1', '759');
INSERT INTO `cdg_regioncode` VALUES ('150725000000', '内蒙古陈巴尔虎旗', '1', '760');
INSERT INTO `cdg_regioncode` VALUES ('150726000000', '内蒙古新巴尔虎左旗', '1', '761');
INSERT INTO `cdg_regioncode` VALUES ('150727000000', '内蒙古新巴尔虎右旗', '1', '762');
INSERT INTO `cdg_regioncode` VALUES ('150781000000', '内蒙古满洲里市', '1', '763');
INSERT INTO `cdg_regioncode` VALUES ('150782000000', '内蒙古牙克石市', '1', '764');
INSERT INTO `cdg_regioncode` VALUES ('150783000000', '内蒙古扎兰屯市', '1', '765');
INSERT INTO `cdg_regioncode` VALUES ('150784000000', '内蒙古额尔古纳市', '1', '766');
INSERT INTO `cdg_regioncode` VALUES ('150785000000', '内蒙古根河市', '1', '767');
INSERT INTO `cdg_regioncode` VALUES ('150800000000', '内蒙古巴彦淖尔市', '1', '768');
INSERT INTO `cdg_regioncode` VALUES ('150801000000', '内蒙古巴彦淖尔市市辖区', '1', '769');
INSERT INTO `cdg_regioncode` VALUES ('150802000000', '内蒙古巴彦淖尔市临河区', '1', '770');
INSERT INTO `cdg_regioncode` VALUES ('150821000000', '内蒙古五原县', '1', '771');
INSERT INTO `cdg_regioncode` VALUES ('150822000000', '内蒙古磴口县', '1', '772');
INSERT INTO `cdg_regioncode` VALUES ('150823000000', '内蒙古乌拉特前旗', '1', '773');
INSERT INTO `cdg_regioncode` VALUES ('150824000000', '内蒙古乌拉特中旗', '1', '774');
INSERT INTO `cdg_regioncode` VALUES ('150825000000', '内蒙古乌拉特后旗', '1', '775');
INSERT INTO `cdg_regioncode` VALUES ('150826000000', '内蒙古杭锦后旗', '1', '776');
INSERT INTO `cdg_regioncode` VALUES ('150900000000', '内蒙古乌兰察布市', '1', '777');
INSERT INTO `cdg_regioncode` VALUES ('150901000000', '内蒙古乌兰察布市市辖区', '1', '778');
INSERT INTO `cdg_regioncode` VALUES ('150902000000', '内蒙古乌兰察布市集宁区', '1', '779');
INSERT INTO `cdg_regioncode` VALUES ('150921000000', '内蒙古卓资县', '1', '780');
INSERT INTO `cdg_regioncode` VALUES ('150922000000', '内蒙古化德县', '1', '781');
INSERT INTO `cdg_regioncode` VALUES ('150923000000', '内蒙古商都县', '1', '782');
INSERT INTO `cdg_regioncode` VALUES ('150924000000', '内蒙古兴和县', '1', '783');
INSERT INTO `cdg_regioncode` VALUES ('150925000000', '内蒙古凉城县', '1', '784');
INSERT INTO `cdg_regioncode` VALUES ('150926000000', '内蒙古察哈尔右翼前旗', '1', '785');
INSERT INTO `cdg_regioncode` VALUES ('150927000000', '内蒙古察哈尔右翼中旗', '1', '786');
INSERT INTO `cdg_regioncode` VALUES ('150928000000', '内蒙古察哈尔右翼后旗', '1', '787');
INSERT INTO `cdg_regioncode` VALUES ('150929000000', '内蒙古四子王旗', '1', '788');
INSERT INTO `cdg_regioncode` VALUES ('150981000000', '内蒙古丰镇市', '1', '789');
INSERT INTO `cdg_regioncode` VALUES ('152200000000', '内蒙古兴安盟', '1', '790');
INSERT INTO `cdg_regioncode` VALUES ('152201000000', '内蒙古乌兰浩特市', '1', '791');
INSERT INTO `cdg_regioncode` VALUES ('152202000000', '内蒙古阿尔山市', '1', '792');
INSERT INTO `cdg_regioncode` VALUES ('152221000000', '内蒙古科尔沁右翼前旗', '1', '793');
INSERT INTO `cdg_regioncode` VALUES ('152222000000', '内蒙古科尔沁右翼中旗', '1', '794');
INSERT INTO `cdg_regioncode` VALUES ('152223000000', '内蒙古扎赉特旗', '1', '795');
INSERT INTO `cdg_regioncode` VALUES ('152224000000', '内蒙古突泉县', '1', '796');
INSERT INTO `cdg_regioncode` VALUES ('152500000000', '内蒙古锡林郭勒盟', '1', '797');
INSERT INTO `cdg_regioncode` VALUES ('152501000000', '内蒙古二连浩特市', '1', '798');
INSERT INTO `cdg_regioncode` VALUES ('152502000000', '内蒙古锡林浩特市', '1', '799');
INSERT INTO `cdg_regioncode` VALUES ('152528000000', '内蒙古镶黄旗', '1', '806');
INSERT INTO `cdg_regioncode` VALUES ('152529000000', '内蒙古正镶白旗', '1', '807');
INSERT INTO `cdg_regioncode` VALUES ('152530000000', '内蒙古正蓝旗', '1', '808');
INSERT INTO `cdg_regioncode` VALUES ('152531000000', '内蒙古多伦县', '1', '809');
INSERT INTO `cdg_regioncode` VALUES ('152600000000', '内蒙古乌兰察布盟', '1', '810');
INSERT INTO `cdg_regioncode` VALUES ('152900000000', '内蒙古阿拉善盟', '1', '811');
INSERT INTO `cdg_regioncode` VALUES ('152921000000', '内蒙古阿拉善左旗', '1', '812');
INSERT INTO `cdg_regioncode` VALUES ('152922000000', '内蒙古阿拉善右旗', '1', '813');
INSERT INTO `cdg_regioncode` VALUES ('152923000000', '内蒙古额济纳旗', '1', '814');
INSERT INTO `cdg_regioncode` VALUES ('210000000000', '辽宁省', '1', '815');
INSERT INTO `cdg_regioncode` VALUES ('210100000000', '辽宁省沈阳市', '1', '816');
INSERT INTO `cdg_regioncode` VALUES ('210101000000', '辽宁省沈阳市市辖区', '1', '817');
INSERT INTO `cdg_regioncode` VALUES ('210102000000', '辽宁省沈阳市和平区', '1', '818');
INSERT INTO `cdg_regioncode` VALUES ('210103000000', '辽宁省沈阳市沈河区', '1', '819');
INSERT INTO `cdg_regioncode` VALUES ('210104000000', '辽宁省沈阳市大东区', '1', '820');
INSERT INTO `cdg_regioncode` VALUES ('210105000000', '辽宁省沈阳市皇姑区', '1', '821');
INSERT INTO `cdg_regioncode` VALUES ('210106000000', '辽宁省沈阳市铁西区', '1', '822');
INSERT INTO `cdg_regioncode` VALUES ('210111000000', '辽宁省沈阳市苏家屯区', '1', '823');
INSERT INTO `cdg_regioncode` VALUES ('210112000000', '辽宁省沈阳市东陵区', '1', '824');
INSERT INTO `cdg_regioncode` VALUES ('210113000000', '辽宁省沈阳市新城子区', '1', '825');
INSERT INTO `cdg_regioncode` VALUES ('210114000000', '辽宁省沈阳市于洪区', '1', '826');
INSERT INTO `cdg_regioncode` VALUES ('210122000000', '辽宁省辽中县', '1', '827');
INSERT INTO `cdg_regioncode` VALUES ('210123000000', '辽宁省康平县', '1', '828');
INSERT INTO `cdg_regioncode` VALUES ('210124000000', '辽宁省法库县', '1', '829');
INSERT INTO `cdg_regioncode` VALUES ('210181000000', '辽宁省新民市', '1', '830');
INSERT INTO `cdg_regioncode` VALUES ('210200000000', '辽宁省大连市', '1', '831');
INSERT INTO `cdg_regioncode` VALUES ('210201000000', '辽宁省大连市市辖区', '1', '832');
INSERT INTO `cdg_regioncode` VALUES ('210202000000', '辽宁省大连市中山区', '1', '833');
INSERT INTO `cdg_regioncode` VALUES ('210203000000', '辽宁省大连市西岗区', '1', '834');
INSERT INTO `cdg_regioncode` VALUES ('210204000000', '辽宁省大连市沙河口区', '1', '835');
INSERT INTO `cdg_regioncode` VALUES ('210211000000', '辽宁省大连市甘井子区', '1', '836');
INSERT INTO `cdg_regioncode` VALUES ('210212000000', '辽宁省大连市旅顺口区', '1', '837');
INSERT INTO `cdg_regioncode` VALUES ('210213000000', '辽宁省大连市金州区', '1', '838');
INSERT INTO `cdg_regioncode` VALUES ('210224000000', '辽宁省长海县', '1', '839');
INSERT INTO `cdg_regioncode` VALUES ('210281000000', '辽宁省瓦房店市', '1', '840');
INSERT INTO `cdg_regioncode` VALUES ('210282000000', '辽宁省普兰店市', '1', '841');
INSERT INTO `cdg_regioncode` VALUES ('210283000000', '辽宁省庄河市', '1', '842');
INSERT INTO `cdg_regioncode` VALUES ('210300000000', '辽宁省鞍山市', '1', '843');
INSERT INTO `cdg_regioncode` VALUES ('210301000000', '辽宁省鞍山市市辖区', '1', '844');
INSERT INTO `cdg_regioncode` VALUES ('210302000000', '辽宁省鞍山市铁东区', '1', '845');
INSERT INTO `cdg_regioncode` VALUES ('210303000000', '辽宁省鞍山市铁西区', '1', '846');
INSERT INTO `cdg_regioncode` VALUES ('210304000000', '辽宁省鞍山市立山区', '1', '847');
INSERT INTO `cdg_regioncode` VALUES ('210311000000', '辽宁省鞍山市千山区', '1', '848');
INSERT INTO `cdg_regioncode` VALUES ('210321000000', '辽宁省台安县', '1', '849');
INSERT INTO `cdg_regioncode` VALUES ('210323000000', '辽宁省岫岩满族自治县', '1', '850');
INSERT INTO `cdg_regioncode` VALUES ('210381000000', '辽宁省海城市', '1', '851');
INSERT INTO `cdg_regioncode` VALUES ('210400000000', '辽宁省抚顺市', '1', '852');
INSERT INTO `cdg_regioncode` VALUES ('210401000000', '辽宁省抚顺市市辖区', '1', '853');
INSERT INTO `cdg_regioncode` VALUES ('210402000000', '辽宁省抚顺市新抚区', '1', '854');
INSERT INTO `cdg_regioncode` VALUES ('210403000000', '辽宁省抚顺市东洲区', '1', '855');
INSERT INTO `cdg_regioncode` VALUES ('210404000000', '辽宁省抚顺市望花区', '1', '856');
INSERT INTO `cdg_regioncode` VALUES ('210411000000', '辽宁省抚顺市顺城区', '1', '857');
INSERT INTO `cdg_regioncode` VALUES ('210421000000', '辽宁省抚顺县', '1', '858');
INSERT INTO `cdg_regioncode` VALUES ('210422000000', '辽宁省新宾满族自治县', '1', '859');
INSERT INTO `cdg_regioncode` VALUES ('210423000000', '辽宁省清原满族自治县', '1', '860');
INSERT INTO `cdg_regioncode` VALUES ('210500000000', '辽宁省本溪市', '1', '861');
INSERT INTO `cdg_regioncode` VALUES ('210501000000', '辽宁省本溪市市辖区', '1', '862');
INSERT INTO `cdg_regioncode` VALUES ('210502000000', '辽宁省本溪市平山区', '1', '863');
INSERT INTO `cdg_regioncode` VALUES ('210503000000', '辽宁省本溪市溪湖区', '1', '864');
INSERT INTO `cdg_regioncode` VALUES ('210504000000', '辽宁省本溪市明山区', '1', '865');
INSERT INTO `cdg_regioncode` VALUES ('210505000000', '辽宁省本溪市南芬区', '1', '866');
INSERT INTO `cdg_regioncode` VALUES ('210521000000', '辽宁省本溪满族自治县', '1', '867');
INSERT INTO `cdg_regioncode` VALUES ('210522000000', '辽宁省桓仁满族自治县', '1', '868');
INSERT INTO `cdg_regioncode` VALUES ('210600000000', '辽宁省丹东市', '1', '869');
INSERT INTO `cdg_regioncode` VALUES ('210601000000', '辽宁省丹东市市辖区', '1', '870');
INSERT INTO `cdg_regioncode` VALUES ('210602000000', '辽宁省丹东市元宝区', '1', '871');
INSERT INTO `cdg_regioncode` VALUES ('210603000000', '辽宁省丹东市振兴区', '1', '872');
INSERT INTO `cdg_regioncode` VALUES ('210604000000', '辽宁省丹东市振安区', '1', '873');
INSERT INTO `cdg_regioncode` VALUES ('210624000000', '辽宁省宽甸满族自治县', '1', '874');
INSERT INTO `cdg_regioncode` VALUES ('210681000000', '辽宁省东港市', '1', '875');
INSERT INTO `cdg_regioncode` VALUES ('210682000000', '辽宁省凤城市', '1', '876');
INSERT INTO `cdg_regioncode` VALUES ('210700000000', '辽宁省锦州市', '1', '877');
INSERT INTO `cdg_regioncode` VALUES ('210701000000', '辽宁省锦州市市辖区', '1', '878');
INSERT INTO `cdg_regioncode` VALUES ('210702000000', '辽宁省锦州市古塔区', '1', '879');
INSERT INTO `cdg_regioncode` VALUES ('210703000000', '辽宁省锦州市凌河区', '1', '880');
INSERT INTO `cdg_regioncode` VALUES ('210711000000', '辽宁省锦州市太和区', '1', '881');
INSERT INTO `cdg_regioncode` VALUES ('210726000000', '辽宁省黑山县', '1', '882');
INSERT INTO `cdg_regioncode` VALUES ('210727000000', '辽宁省义县', '1', '883');
INSERT INTO `cdg_regioncode` VALUES ('210781000000', '辽宁省凌海市', '1', '884');
INSERT INTO `cdg_regioncode` VALUES ('210782000000', '辽宁省北宁市', '1', '885');
INSERT INTO `cdg_regioncode` VALUES ('210800000000', '辽宁省营口市', '1', '886');
INSERT INTO `cdg_regioncode` VALUES ('210801000000', '辽宁省营口市市辖区', '1', '887');
INSERT INTO `cdg_regioncode` VALUES ('210802000000', '辽宁省营口市站前区', '1', '888');
INSERT INTO `cdg_regioncode` VALUES ('210803000000', '辽宁省营口市西市区', '1', '889');
INSERT INTO `cdg_regioncode` VALUES ('210804000000', '辽宁省营口市鲅鱼圈区', '1', '890');
INSERT INTO `cdg_regioncode` VALUES ('210811000000', '辽宁省营口市老边区', '1', '891');
INSERT INTO `cdg_regioncode` VALUES ('210881000000', '辽宁省盖州市', '1', '892');
INSERT INTO `cdg_regioncode` VALUES ('210882000000', '辽宁省大石桥市', '1', '893');
INSERT INTO `cdg_regioncode` VALUES ('210900000000', '辽宁省阜新市', '1', '894');
INSERT INTO `cdg_regioncode` VALUES ('210901000000', '辽宁省阜新市市辖区', '1', '895');
INSERT INTO `cdg_regioncode` VALUES ('210902000000', '辽宁省阜新市海州区', '1', '896');
INSERT INTO `cdg_regioncode` VALUES ('210903000000', '辽宁省阜新市新邱区', '1', '897');
INSERT INTO `cdg_regioncode` VALUES ('210904000000', '辽宁省阜新市太平区', '1', '898');
INSERT INTO `cdg_regioncode` VALUES ('210905000000', '辽宁省阜新市清河门区', '1', '899');
INSERT INTO `cdg_regioncode` VALUES ('211002000000', '辽宁省辽阳市白塔区', '1', '905');
INSERT INTO `cdg_regioncode` VALUES ('211003000000', '辽宁省辽阳市文圣区', '1', '906');
INSERT INTO `cdg_regioncode` VALUES ('211004000000', '辽宁省辽阳市宏伟区', '1', '907');
INSERT INTO `cdg_regioncode` VALUES ('211005000000', '辽宁省辽阳市弓长岭区', '1', '908');
INSERT INTO `cdg_regioncode` VALUES ('211011000000', '辽宁省辽阳市太子河区', '1', '909');
INSERT INTO `cdg_regioncode` VALUES ('211021000000', '辽宁省辽阳县', '1', '910');
INSERT INTO `cdg_regioncode` VALUES ('211081000000', '辽宁省灯塔市', '1', '911');
INSERT INTO `cdg_regioncode` VALUES ('211100000000', '辽宁省盘锦市', '1', '912');
INSERT INTO `cdg_regioncode` VALUES ('211101000000', '辽宁省盘锦市市辖区', '1', '913');
INSERT INTO `cdg_regioncode` VALUES ('211102000000', '辽宁省盘锦市双台子区', '1', '914');
INSERT INTO `cdg_regioncode` VALUES ('211103000000', '辽宁省盘锦市兴隆台区', '1', '915');
INSERT INTO `cdg_regioncode` VALUES ('211121000000', '辽宁省大洼县', '1', '916');
INSERT INTO `cdg_regioncode` VALUES ('211122000000', '辽宁省盘山县', '1', '917');
INSERT INTO `cdg_regioncode` VALUES ('211200000000', '辽宁省铁岭市', '1', '918');
INSERT INTO `cdg_regioncode` VALUES ('211201000000', '辽宁省铁岭市市辖区', '1', '919');
INSERT INTO `cdg_regioncode` VALUES ('211202000000', '辽宁省铁岭市银州区', '1', '920');
INSERT INTO `cdg_regioncode` VALUES ('211204000000', '辽宁省铁岭市清河区', '1', '921');
INSERT INTO `cdg_regioncode` VALUES ('211221000000', '辽宁省铁岭县', '1', '922');
INSERT INTO `cdg_regioncode` VALUES ('211223000000', '辽宁省西丰县', '1', '923');
INSERT INTO `cdg_regioncode` VALUES ('211224000000', '辽宁省昌图县', '1', '924');
INSERT INTO `cdg_regioncode` VALUES ('211281000000', '辽宁省调兵山市', '1', '925');
INSERT INTO `cdg_regioncode` VALUES ('211282000000', '辽宁省开原市', '1', '926');
INSERT INTO `cdg_regioncode` VALUES ('211300000000', '辽宁省朝阳市', '1', '927');
INSERT INTO `cdg_regioncode` VALUES ('211301000000', '辽宁省朝阳市市辖区', '1', '928');
INSERT INTO `cdg_regioncode` VALUES ('211302000000', '辽宁省朝阳市双塔区', '1', '929');
INSERT INTO `cdg_regioncode` VALUES ('211303000000', '辽宁省朝阳市龙城区', '1', '930');
INSERT INTO `cdg_regioncode` VALUES ('211321000000', '辽宁省朝阳县', '1', '931');
INSERT INTO `cdg_regioncode` VALUES ('211322000000', '辽宁省建平县', '1', '932');
INSERT INTO `cdg_regioncode` VALUES ('211324000000', '辽宁省喀喇沁左翼蒙古族自治县', '1', '933');
INSERT INTO `cdg_regioncode` VALUES ('211381000000', '辽宁省北票市', '1', '934');
INSERT INTO `cdg_regioncode` VALUES ('211382000000', '辽宁省凌源市', '1', '935');
INSERT INTO `cdg_regioncode` VALUES ('211400000000', '辽宁省葫芦岛市', '1', '936');
INSERT INTO `cdg_regioncode` VALUES ('211401000000', '辽宁省葫芦岛市市辖区', '1', '937');
INSERT INTO `cdg_regioncode` VALUES ('211402000000', '辽宁省葫芦岛市连山区', '1', '938');
INSERT INTO `cdg_regioncode` VALUES ('211403000000', '辽宁省葫芦岛市龙港区', '1', '939');
INSERT INTO `cdg_regioncode` VALUES ('211404000000', '辽宁省葫芦岛市南票区', '1', '940');
INSERT INTO `cdg_regioncode` VALUES ('211421000000', '辽宁省绥中县', '1', '941');
INSERT INTO `cdg_regioncode` VALUES ('211422000000', '辽宁省建昌县', '1', '942');
INSERT INTO `cdg_regioncode` VALUES ('211481000000', '辽宁省兴城市', '1', '943');
INSERT INTO `cdg_regioncode` VALUES ('220000000000', '吉林省', '1', '944');
INSERT INTO `cdg_regioncode` VALUES ('220100000000', '吉林省长春市', '1', '945');
INSERT INTO `cdg_regioncode` VALUES ('220101000000', '吉林省长春市市辖区', '1', '946');
INSERT INTO `cdg_regioncode` VALUES ('220102000000', '吉林省长春市南关区', '1', '947');
INSERT INTO `cdg_regioncode` VALUES ('220103000000', '吉林省长春市宽城区', '1', '948');
INSERT INTO `cdg_regioncode` VALUES ('220104000000', '吉林省长春市朝阳区', '1', '949');
INSERT INTO `cdg_regioncode` VALUES ('220105000000', '吉林省长春市二道区', '1', '950');
INSERT INTO `cdg_regioncode` VALUES ('220106000000', '吉林省长春市绿园区', '1', '951');
INSERT INTO `cdg_regioncode` VALUES ('220112000000', '吉林省长春市双阳区', '1', '952');
INSERT INTO `cdg_regioncode` VALUES ('220122000000', '吉林省农安县', '1', '953');
INSERT INTO `cdg_regioncode` VALUES ('220181000000', '吉林省九台市', '1', '954');
INSERT INTO `cdg_regioncode` VALUES ('220182000000', '吉林省榆树市', '1', '955');
INSERT INTO `cdg_regioncode` VALUES ('220183000000', '吉林省德惠市', '1', '956');
INSERT INTO `cdg_regioncode` VALUES ('220200000000', '吉林省吉林市', '1', '957');
INSERT INTO `cdg_regioncode` VALUES ('220201000000', '吉林省吉林市市辖区', '1', '958');
INSERT INTO `cdg_regioncode` VALUES ('220202000000', '吉林省吉林市昌邑区', '1', '959');
INSERT INTO `cdg_regioncode` VALUES ('220203000000', '吉林省吉林市龙潭区', '1', '960');
INSERT INTO `cdg_regioncode` VALUES ('220204000000', '吉林省吉林市船营区', '1', '961');
INSERT INTO `cdg_regioncode` VALUES ('220211000000', '吉林省吉林市丰满区', '1', '962');
INSERT INTO `cdg_regioncode` VALUES ('220221000000', '吉林省永吉县', '1', '963');
INSERT INTO `cdg_regioncode` VALUES ('220281000000', '吉林省蛟河市', '1', '964');
INSERT INTO `cdg_regioncode` VALUES ('220282000000', '吉林省桦甸市', '1', '965');
INSERT INTO `cdg_regioncode` VALUES ('220283000000', '吉林省舒兰市', '1', '966');
INSERT INTO `cdg_regioncode` VALUES ('220284000000', '吉林省磐石市', '1', '967');
INSERT INTO `cdg_regioncode` VALUES ('220300000000', '吉林省四平市', '1', '968');
INSERT INTO `cdg_regioncode` VALUES ('220301000000', '吉林省四平市市辖区', '1', '969');
INSERT INTO `cdg_regioncode` VALUES ('220302000000', '吉林省四平市铁西区', '1', '970');
INSERT INTO `cdg_regioncode` VALUES ('220303000000', '吉林省四平市铁东区', '1', '971');
INSERT INTO `cdg_regioncode` VALUES ('220322000000', '吉林省梨树县', '1', '972');
INSERT INTO `cdg_regioncode` VALUES ('220323000000', '吉林省伊通满族自治县', '1', '973');
INSERT INTO `cdg_regioncode` VALUES ('220381000000', '吉林省公主岭市', '1', '974');
INSERT INTO `cdg_regioncode` VALUES ('220382000000', '吉林省双辽市', '1', '975');
INSERT INTO `cdg_regioncode` VALUES ('220400000000', '吉林省辽源市', '1', '976');
INSERT INTO `cdg_regioncode` VALUES ('220401000000', '吉林省辽源市市辖区', '1', '977');
INSERT INTO `cdg_regioncode` VALUES ('220402000000', '吉林省辽源市龙山区', '1', '978');
INSERT INTO `cdg_regioncode` VALUES ('220403000000', '吉林省辽源市西安区', '1', '979');
INSERT INTO `cdg_regioncode` VALUES ('220421000000', '吉林省东丰县', '1', '980');
INSERT INTO `cdg_regioncode` VALUES ('220422000000', '吉林省东辽县', '1', '981');
INSERT INTO `cdg_regioncode` VALUES ('220500000000', '吉林省通化市', '1', '982');
INSERT INTO `cdg_regioncode` VALUES ('220501000000', '吉林省通化市市辖区', '1', '983');
INSERT INTO `cdg_regioncode` VALUES ('220502000000', '吉林省通化市东昌区', '1', '984');
INSERT INTO `cdg_regioncode` VALUES ('220503000000', '吉林省通化市二道江区', '1', '985');
INSERT INTO `cdg_regioncode` VALUES ('220521000000', '吉林省通化县', '1', '986');
INSERT INTO `cdg_regioncode` VALUES ('220523000000', '吉林省辉南县', '1', '987');
INSERT INTO `cdg_regioncode` VALUES ('220524000000', '吉林省柳河县', '1', '988');
INSERT INTO `cdg_regioncode` VALUES ('220581000000', '吉林省梅河口市', '1', '989');
INSERT INTO `cdg_regioncode` VALUES ('220582000000', '吉林省集安市', '1', '990');
INSERT INTO `cdg_regioncode` VALUES ('220600000000', '吉林省白山市', '1', '991');
INSERT INTO `cdg_regioncode` VALUES ('220601000000', '吉林省白山市市辖区', '1', '992');
INSERT INTO `cdg_regioncode` VALUES ('220602000000', '吉林省白山市八道江区', '1', '993');
INSERT INTO `cdg_regioncode` VALUES ('220621000000', '吉林省抚松县', '1', '994');
INSERT INTO `cdg_regioncode` VALUES ('220622000000', '吉林省靖宇县', '1', '995');
INSERT INTO `cdg_regioncode` VALUES ('220623000000', '吉林省长白朝鲜族自治县', '1', '996');
INSERT INTO `cdg_regioncode` VALUES ('220625000000', '吉林省江源县', '1', '997');
INSERT INTO `cdg_regioncode` VALUES ('220681000000', '吉林省临江市', '1', '998');
INSERT INTO `cdg_regioncode` VALUES ('220700000000', '吉林省松原市', '1', '999');
INSERT INTO `cdg_regioncode` VALUES ('220723000000', '吉林省乾安县', '1', '1004');
INSERT INTO `cdg_regioncode` VALUES ('220724000000', '吉林省扶余县', '1', '1005');
INSERT INTO `cdg_regioncode` VALUES ('220800000000', '吉林省白城市', '1', '1006');
INSERT INTO `cdg_regioncode` VALUES ('220801000000', '吉林省白城市市辖区', '1', '1007');
INSERT INTO `cdg_regioncode` VALUES ('220802000000', '吉林省白城市洮北区', '1', '1008');
INSERT INTO `cdg_regioncode` VALUES ('220821000000', '吉林省镇赉县', '1', '1009');
INSERT INTO `cdg_regioncode` VALUES ('220822000000', '吉林省通榆县', '1', '1010');
INSERT INTO `cdg_regioncode` VALUES ('220881000000', '吉林省洮南市', '1', '1011');
INSERT INTO `cdg_regioncode` VALUES ('220882000000', '吉林省大安市', '1', '1012');
INSERT INTO `cdg_regioncode` VALUES ('222400000000', '吉林省延边朝鲜族自治州', '1', '1013');
INSERT INTO `cdg_regioncode` VALUES ('222401000000', '吉林省延吉市', '1', '1014');
INSERT INTO `cdg_regioncode` VALUES ('222402000000', '吉林省图们市', '1', '1015');
INSERT INTO `cdg_regioncode` VALUES ('222403000000', '吉林省敦化市', '1', '1016');
INSERT INTO `cdg_regioncode` VALUES ('222404000000', '吉林省珲春市', '1', '1017');
INSERT INTO `cdg_regioncode` VALUES ('222405000000', '吉林省龙井市', '1', '1018');
INSERT INTO `cdg_regioncode` VALUES ('222406000000', '吉林省和龙市', '1', '1019');
INSERT INTO `cdg_regioncode` VALUES ('222424000000', '吉林省汪清县', '1', '1020');
INSERT INTO `cdg_regioncode` VALUES ('222426000000', '吉林省安图县', '1', '1021');
INSERT INTO `cdg_regioncode` VALUES ('230000000000', '黑龙江省', '1', '1022');
INSERT INTO `cdg_regioncode` VALUES ('230100000000', '黑龙江省哈尔滨市', '1', '1023');
INSERT INTO `cdg_regioncode` VALUES ('230101000000', '黑龙江省哈尔滨市市辖区', '1', '1024');
INSERT INTO `cdg_regioncode` VALUES ('230102000000', '黑龙江省哈尔滨市道里区', '1', '1025');
INSERT INTO `cdg_regioncode` VALUES ('230103000000', '黑龙江省哈尔滨市南岗区', '1', '1026');
INSERT INTO `cdg_regioncode` VALUES ('230104000000', '黑龙江省哈尔滨市道外区', '1', '1027');
INSERT INTO `cdg_regioncode` VALUES ('230106000000', '黑龙江省哈尔滨市香坊区', '1', '1028');
INSERT INTO `cdg_regioncode` VALUES ('230107000000', '黑龙江省哈尔滨市动力区', '1', '1029');
INSERT INTO `cdg_regioncode` VALUES ('230108000000', '黑龙江省哈尔滨市平房区', '1', '1030');
INSERT INTO `cdg_regioncode` VALUES ('230109000000', '黑龙江省哈尔滨市松北区', '1', '1031');
INSERT INTO `cdg_regioncode` VALUES ('230111000000', '黑龙江省哈尔滨市呼兰区', '1', '1032');
INSERT INTO `cdg_regioncode` VALUES ('230123000000', '黑龙江省依兰县', '1', '1033');
INSERT INTO `cdg_regioncode` VALUES ('230124000000', '黑龙江省方正县', '1', '1034');
INSERT INTO `cdg_regioncode` VALUES ('230125000000', '黑龙江省宾县', '1', '1035');
INSERT INTO `cdg_regioncode` VALUES ('230126000000', '黑龙江省巴彦县', '1', '1036');
INSERT INTO `cdg_regioncode` VALUES ('230127000000', '黑龙江省木兰县', '1', '1037');
INSERT INTO `cdg_regioncode` VALUES ('230128000000', '黑龙江省通河县', '1', '1038');
INSERT INTO `cdg_regioncode` VALUES ('230129000000', '黑龙江省延寿县', '1', '1039');
INSERT INTO `cdg_regioncode` VALUES ('230181000000', '黑龙江省阿城市', '1', '1040');
INSERT INTO `cdg_regioncode` VALUES ('230182000000', '黑龙江省双城市', '1', '1041');
INSERT INTO `cdg_regioncode` VALUES ('230183000000', '黑龙江省尚志市', '1', '1042');
INSERT INTO `cdg_regioncode` VALUES ('230184000000', '黑龙江省五常市', '1', '1043');
INSERT INTO `cdg_regioncode` VALUES ('230200000000', '黑龙江省齐齐哈尔市', '1', '1044');
INSERT INTO `cdg_regioncode` VALUES ('230201000000', '黑龙江省齐齐哈尔市市辖区', '1', '1045');
INSERT INTO `cdg_regioncode` VALUES ('230202000000', '黑龙江省齐齐哈尔市龙沙区', '1', '1046');
INSERT INTO `cdg_regioncode` VALUES ('230203000000', '黑龙江省齐齐哈尔市建华区', '1', '1047');
INSERT INTO `cdg_regioncode` VALUES ('230204000000', '黑龙江省齐齐哈尔市铁锋区', '1', '1048');
INSERT INTO `cdg_regioncode` VALUES ('230205000000', '黑龙江省齐齐哈尔市昂昂溪区', '1', '1049');
INSERT INTO `cdg_regioncode` VALUES ('230206000000', '黑龙江省齐齐哈尔市富拉尔基区', '1', '1050');
INSERT INTO `cdg_regioncode` VALUES ('230207000000', '黑龙江省齐齐哈尔市碾子山区', '1', '1051');
INSERT INTO `cdg_regioncode` VALUES ('230208000000', '黑龙江省齐齐哈尔市梅里斯达斡尔', '1', '1052');
INSERT INTO `cdg_regioncode` VALUES ('230221000000', '黑龙江省龙江县', '1', '1053');
INSERT INTO `cdg_regioncode` VALUES ('230223000000', '黑龙江省依安县', '1', '1054');
INSERT INTO `cdg_regioncode` VALUES ('230224000000', '黑龙江省泰来县', '1', '1055');
INSERT INTO `cdg_regioncode` VALUES ('230225000000', '黑龙江省甘南县', '1', '1056');
INSERT INTO `cdg_regioncode` VALUES ('230227000000', '黑龙江省富裕县', '1', '1057');
INSERT INTO `cdg_regioncode` VALUES ('230229000000', '黑龙江省克山县', '1', '1058');
INSERT INTO `cdg_regioncode` VALUES ('230230000000', '黑龙江省克东县', '1', '1059');
INSERT INTO `cdg_regioncode` VALUES ('230231000000', '黑龙江省拜泉县', '1', '1060');
INSERT INTO `cdg_regioncode` VALUES ('230281000000', '黑龙江省讷河市', '1', '1061');
INSERT INTO `cdg_regioncode` VALUES ('230300000000', '黑龙江省鸡西市', '1', '1062');
INSERT INTO `cdg_regioncode` VALUES ('230301000000', '黑龙江省鸡西市市辖区', '1', '1063');
INSERT INTO `cdg_regioncode` VALUES ('230302000000', '黑龙江省鸡西市鸡冠区', '1', '1064');
INSERT INTO `cdg_regioncode` VALUES ('230303000000', '黑龙江省鸡西市恒山区', '1', '1065');
INSERT INTO `cdg_regioncode` VALUES ('230304000000', '黑龙江省鸡西市滴道区', '1', '1066');
INSERT INTO `cdg_regioncode` VALUES ('230305000000', '黑龙江省鸡西市梨树区', '1', '1067');
INSERT INTO `cdg_regioncode` VALUES ('230306000000', '黑龙江省鸡西市城子河区', '1', '1068');
INSERT INTO `cdg_regioncode` VALUES ('230307000000', '黑龙江省鸡西市麻山区', '1', '1069');
INSERT INTO `cdg_regioncode` VALUES ('230321000000', '黑龙江省鸡东县', '1', '1070');
INSERT INTO `cdg_regioncode` VALUES ('230381000000', '黑龙江省虎林市', '1', '1071');
INSERT INTO `cdg_regioncode` VALUES ('230382000000', '黑龙江省密山市', '1', '1072');
INSERT INTO `cdg_regioncode` VALUES ('230400000000', '黑龙江省鹤岗市', '1', '1073');
INSERT INTO `cdg_regioncode` VALUES ('230401000000', '黑龙江省鹤岗市市辖区', '1', '1074');
INSERT INTO `cdg_regioncode` VALUES ('230402000000', '黑龙江省鹤岗市向阳区', '1', '1075');
INSERT INTO `cdg_regioncode` VALUES ('230403000000', '黑龙江省鹤岗市工农区', '1', '1076');
INSERT INTO `cdg_regioncode` VALUES ('230404000000', '黑龙江省鹤岗市南山区', '1', '1077');
INSERT INTO `cdg_regioncode` VALUES ('230405000000', '黑龙江省鹤岗市兴安区', '1', '1078');
INSERT INTO `cdg_regioncode` VALUES ('230406000000', '黑龙江省鹤岗市东山区', '1', '1079');
INSERT INTO `cdg_regioncode` VALUES ('230407000000', '黑龙江省鹤岗市兴山区', '1', '1080');
INSERT INTO `cdg_regioncode` VALUES ('230421000000', '黑龙江省萝北县', '1', '1081');
INSERT INTO `cdg_regioncode` VALUES ('230422000000', '黑龙江省绥滨县', '1', '1082');
INSERT INTO `cdg_regioncode` VALUES ('230500000000', '黑龙江省双鸭山市', '1', '1083');
INSERT INTO `cdg_regioncode` VALUES ('230501000000', '黑龙江省双鸭山市市辖区', '1', '1084');
INSERT INTO `cdg_regioncode` VALUES ('230502000000', '黑龙江省双鸭山市尖山区', '1', '1085');
INSERT INTO `cdg_regioncode` VALUES ('230503000000', '黑龙江省双鸭山市岭东区', '1', '1086');
INSERT INTO `cdg_regioncode` VALUES ('230505000000', '黑龙江省双鸭山市四方台区', '1', '1087');
INSERT INTO `cdg_regioncode` VALUES ('230506000000', '黑龙江省双鸭山市宝山区', '1', '1088');
INSERT INTO `cdg_regioncode` VALUES ('230521000000', '黑龙江省集贤县', '1', '1089');
INSERT INTO `cdg_regioncode` VALUES ('230522000000', '黑龙江省友谊县', '1', '1090');
INSERT INTO `cdg_regioncode` VALUES ('230523000000', '黑龙江省宝清县', '1', '1091');
INSERT INTO `cdg_regioncode` VALUES ('230524000000', '黑龙江省饶河县', '1', '1092');
INSERT INTO `cdg_regioncode` VALUES ('230600000000', '黑龙江省大庆市', '1', '1093');
INSERT INTO `cdg_regioncode` VALUES ('230601000000', '黑龙江省大庆市市辖区', '1', '1094');
INSERT INTO `cdg_regioncode` VALUES ('230602000000', '黑龙江省大庆市萨尔图区', '1', '1095');
INSERT INTO `cdg_regioncode` VALUES ('230603000000', '黑龙江省大庆市龙凤区', '1', '1096');
INSERT INTO `cdg_regioncode` VALUES ('230604000000', '黑龙江省大庆市让胡路区', '1', '1097');
INSERT INTO `cdg_regioncode` VALUES ('230605000000', '黑龙江省大庆市红岗区', '1', '1098');
INSERT INTO `cdg_regioncode` VALUES ('230606000000', '黑龙江省大庆市大同区', '1', '1099');
INSERT INTO `cdg_regioncode` VALUES ('230624000000', '黑龙江省杜尔伯特蒙古族自治县', '1', '1103');
INSERT INTO `cdg_regioncode` VALUES ('230700000000', '黑龙江省伊春市', '1', '1104');
INSERT INTO `cdg_regioncode` VALUES ('230701000000', '黑龙江省伊春市市辖区', '1', '1105');
INSERT INTO `cdg_regioncode` VALUES ('230702000000', '黑龙江省伊春市伊春区', '1', '1106');
INSERT INTO `cdg_regioncode` VALUES ('230703000000', '黑龙江省伊春市南岔区', '1', '1107');
INSERT INTO `cdg_regioncode` VALUES ('230704000000', '黑龙江省伊春市友好区', '1', '1108');
INSERT INTO `cdg_regioncode` VALUES ('230705000000', '黑龙江省伊春市西林区', '1', '1109');
INSERT INTO `cdg_regioncode` VALUES ('230706000000', '黑龙江省伊春市翠峦区', '1', '1110');
INSERT INTO `cdg_regioncode` VALUES ('230707000000', '黑龙江省伊春市新青区', '1', '1111');
INSERT INTO `cdg_regioncode` VALUES ('230708000000', '黑龙江省伊春市美溪区', '1', '1112');
INSERT INTO `cdg_regioncode` VALUES ('230709000000', '黑龙江省伊春市金山屯区', '1', '1113');
INSERT INTO `cdg_regioncode` VALUES ('230710000000', '黑龙江省伊春市五营区', '1', '1114');
INSERT INTO `cdg_regioncode` VALUES ('230711000000', '黑龙江省伊春市乌马河区', '1', '1115');
INSERT INTO `cdg_regioncode` VALUES ('230712000000', '黑龙江省伊春市汤旺河区', '1', '1116');
INSERT INTO `cdg_regioncode` VALUES ('230713000000', '黑龙江省伊春市带岭区', '1', '1117');
INSERT INTO `cdg_regioncode` VALUES ('230714000000', '黑龙江省伊春市乌伊岭区', '1', '1118');
INSERT INTO `cdg_regioncode` VALUES ('230715000000', '黑龙江省伊春市红星区', '1', '1119');
INSERT INTO `cdg_regioncode` VALUES ('230716000000', '黑龙江省伊春市上甘岭区', '1', '1120');
INSERT INTO `cdg_regioncode` VALUES ('230722000000', '黑龙江省嘉荫县', '1', '1121');
INSERT INTO `cdg_regioncode` VALUES ('230781000000', '黑龙江省铁力市', '1', '1122');
INSERT INTO `cdg_regioncode` VALUES ('230800000000', '黑龙江省佳木斯市', '1', '1123');
INSERT INTO `cdg_regioncode` VALUES ('230801000000', '黑龙江省佳木斯市市辖区', '1', '1124');
INSERT INTO `cdg_regioncode` VALUES ('230802000000', '黑龙江省佳木斯市永红区', '1', '1125');
INSERT INTO `cdg_regioncode` VALUES ('230803000000', '黑龙江省佳木斯市向阳区', '1', '1126');
INSERT INTO `cdg_regioncode` VALUES ('230804000000', '黑龙江省佳木斯市前进区', '1', '1127');
INSERT INTO `cdg_regioncode` VALUES ('230805000000', '黑龙江省佳木斯市东风区', '1', '1128');
INSERT INTO `cdg_regioncode` VALUES ('230811000000', '黑龙江省佳木斯市郊区', '1', '1129');
INSERT INTO `cdg_regioncode` VALUES ('230822000000', '黑龙江省桦南县', '1', '1130');
INSERT INTO `cdg_regioncode` VALUES ('230826000000', '黑龙江省桦川县', '1', '1131');
INSERT INTO `cdg_regioncode` VALUES ('230828000000', '黑龙江省汤原县', '1', '1132');
INSERT INTO `cdg_regioncode` VALUES ('230833000000', '黑龙江省抚远县', '1', '1133');
INSERT INTO `cdg_regioncode` VALUES ('230881000000', '黑龙江省同江市', '1', '1134');
INSERT INTO `cdg_regioncode` VALUES ('230882000000', '黑龙江省富锦市', '1', '1135');
INSERT INTO `cdg_regioncode` VALUES ('230900000000', '黑龙江省七台河市', '1', '1136');
INSERT INTO `cdg_regioncode` VALUES ('230901000000', '黑龙江省七台河市市辖区', '1', '1137');
INSERT INTO `cdg_regioncode` VALUES ('230902000000', '黑龙江省七台河市新兴区', '1', '1138');
INSERT INTO `cdg_regioncode` VALUES ('230903000000', '黑龙江省七台河市桃山区', '1', '1139');
INSERT INTO `cdg_regioncode` VALUES ('230904000000', '黑龙江省七台河市茄子河区', '1', '1140');
INSERT INTO `cdg_regioncode` VALUES ('230921000000', '黑龙江省勃利县', '1', '1141');
INSERT INTO `cdg_regioncode` VALUES ('231000000000', '黑龙江省牡丹江市', '1', '1142');
INSERT INTO `cdg_regioncode` VALUES ('231001000000', '黑龙江省牡丹江市市辖区', '1', '1143');
INSERT INTO `cdg_regioncode` VALUES ('231002000000', '黑龙江省牡丹江市东安区', '1', '1144');
INSERT INTO `cdg_regioncode` VALUES ('231003000000', '黑龙江省牡丹江市阳明区', '1', '1145');
INSERT INTO `cdg_regioncode` VALUES ('231004000000', '黑龙江省牡丹江市爱民区', '1', '1146');
INSERT INTO `cdg_regioncode` VALUES ('231005000000', '黑龙江省牡丹江市西安区', '1', '1147');
INSERT INTO `cdg_regioncode` VALUES ('231024000000', '黑龙江省东宁县', '1', '1148');
INSERT INTO `cdg_regioncode` VALUES ('231025000000', '黑龙江省林口县', '1', '1149');
INSERT INTO `cdg_regioncode` VALUES ('231081000000', '黑龙江省绥芬河市', '1', '1150');
INSERT INTO `cdg_regioncode` VALUES ('231083000000', '黑龙江省海林市', '1', '1151');
INSERT INTO `cdg_regioncode` VALUES ('231084000000', '黑龙江省宁安市', '1', '1152');
INSERT INTO `cdg_regioncode` VALUES ('231085000000', '黑龙江省穆棱市', '1', '1153');
INSERT INTO `cdg_regioncode` VALUES ('231100000000', '黑龙江省黑河市', '1', '1154');
INSERT INTO `cdg_regioncode` VALUES ('231101000000', '黑龙江省黑河市市辖区', '1', '1155');
INSERT INTO `cdg_regioncode` VALUES ('231102000000', '黑龙江省黑河市爱辉区', '1', '1156');
INSERT INTO `cdg_regioncode` VALUES ('231121000000', '黑龙江省嫩江县', '1', '1157');
INSERT INTO `cdg_regioncode` VALUES ('231123000000', '黑龙江省逊克县', '1', '1158');
INSERT INTO `cdg_regioncode` VALUES ('231124000000', '黑龙江省孙吴县', '1', '1159');
INSERT INTO `cdg_regioncode` VALUES ('231181000000', '黑龙江省北安市', '1', '1160');
INSERT INTO `cdg_regioncode` VALUES ('231182000000', '黑龙江省五大连池市', '1', '1161');
INSERT INTO `cdg_regioncode` VALUES ('231200000000', '黑龙江省绥化市', '1', '1162');
INSERT INTO `cdg_regioncode` VALUES ('231201000000', '黑龙江省绥化市市辖区', '1', '1163');
INSERT INTO `cdg_regioncode` VALUES ('231202000000', '黑龙江省绥化市北林区', '1', '1164');
INSERT INTO `cdg_regioncode` VALUES ('231221000000', '黑龙江省望奎县', '1', '1165');
INSERT INTO `cdg_regioncode` VALUES ('231222000000', '黑龙江省兰西县', '1', '1166');
INSERT INTO `cdg_regioncode` VALUES ('231223000000', '黑龙江省青冈县', '1', '1167');
INSERT INTO `cdg_regioncode` VALUES ('231224000000', '黑龙江省庆安县', '1', '1168');
INSERT INTO `cdg_regioncode` VALUES ('231225000000', '黑龙江省明水县', '1', '1169');
INSERT INTO `cdg_regioncode` VALUES ('231226000000', '黑龙江省绥棱县', '1', '1170');
INSERT INTO `cdg_regioncode` VALUES ('231281000000', '黑龙江省安达市', '1', '1171');
INSERT INTO `cdg_regioncode` VALUES ('231282000000', '黑龙江省肇东市', '1', '1172');
INSERT INTO `cdg_regioncode` VALUES ('231283000000', '黑龙江省海伦市', '1', '1173');
INSERT INTO `cdg_regioncode` VALUES ('232700000000', '黑龙江省大兴安岭地区', '1', '1174');
INSERT INTO `cdg_regioncode` VALUES ('232721000000', '黑龙江省呼玛县', '1', '1175');
INSERT INTO `cdg_regioncode` VALUES ('232722000000', '黑龙江省塔河县', '1', '1176');
INSERT INTO `cdg_regioncode` VALUES ('232723000000', '黑龙江省漠河县', '1', '1177');
INSERT INTO `cdg_regioncode` VALUES ('310000000000', '上海市', '1', '1178');
INSERT INTO `cdg_regioncode` VALUES ('310100000000', '上海市市辖区', '1', '1179');
INSERT INTO `cdg_regioncode` VALUES ('310101000000', '上海市黄浦区', '1', '1180');
INSERT INTO `cdg_regioncode` VALUES ('310103000000', '上海市卢湾区', '1', '1181');
INSERT INTO `cdg_regioncode` VALUES ('310104000000', '上海市徐汇区', '1', '1182');
INSERT INTO `cdg_regioncode` VALUES ('310105000000', '上海市长宁区', '1', '1183');
INSERT INTO `cdg_regioncode` VALUES ('310106000000', '上海市静安区', '1', '1184');
INSERT INTO `cdg_regioncode` VALUES ('310107000000', '上海市普陀区', '1', '1185');
INSERT INTO `cdg_regioncode` VALUES ('310108000000', '上海市闸北区', '1', '1186');
INSERT INTO `cdg_regioncode` VALUES ('310109000000', '上海市虹口区', '1', '1187');
INSERT INTO `cdg_regioncode` VALUES ('310110000000', '上海市杨浦区', '1', '1188');
INSERT INTO `cdg_regioncode` VALUES ('310112000000', '上海市闵行区', '1', '1189');
INSERT INTO `cdg_regioncode` VALUES ('310113000000', '上海市宝山区', '1', '1190');
INSERT INTO `cdg_regioncode` VALUES ('310114000000', '上海市嘉定区', '1', '1191');
INSERT INTO `cdg_regioncode` VALUES ('310115000000', '上海市浦东新区', '1', '1192');
INSERT INTO `cdg_regioncode` VALUES ('310116000000', '上海市金山区', '1', '1193');
INSERT INTO `cdg_regioncode` VALUES ('310117000000', '上海市松江区', '1', '1194');
INSERT INTO `cdg_regioncode` VALUES ('310118000000', '上海市青浦区', '1', '1195');
INSERT INTO `cdg_regioncode` VALUES ('310119000000', '上海市南汇区', '1', '1196');
INSERT INTO `cdg_regioncode` VALUES ('310120000000', '上海市奉贤区', '1', '1197');
INSERT INTO `cdg_regioncode` VALUES ('310200000000', '上海市县', '1', '1198');
INSERT INTO `cdg_regioncode` VALUES ('310230000000', '上海市崇明县', '1', '1199');
INSERT INTO `cdg_regioncode` VALUES ('320101000000', '江苏省南京市市辖区', '1', '1202');
INSERT INTO `cdg_regioncode` VALUES ('320102000000', '江苏省南京市玄武区', '1', '1203');
INSERT INTO `cdg_regioncode` VALUES ('320103000000', '江苏省南京市白下区', '1', '1204');
INSERT INTO `cdg_regioncode` VALUES ('320104000000', '江苏省南京市秦淮区', '1', '1205');
INSERT INTO `cdg_regioncode` VALUES ('320105000000', '江苏省南京市建邺区', '1', '1206');
INSERT INTO `cdg_regioncode` VALUES ('320106000000', '江苏省南京市鼓楼区', '1', '1207');
INSERT INTO `cdg_regioncode` VALUES ('320107000000', '江苏省南京市下关区', '1', '1208');
INSERT INTO `cdg_regioncode` VALUES ('320111000000', '江苏省南京市浦口区', '1', '1209');
INSERT INTO `cdg_regioncode` VALUES ('320113000000', '江苏省南京市栖霞区', '1', '1210');
INSERT INTO `cdg_regioncode` VALUES ('320114000000', '江苏省南京市雨花台区', '1', '1211');
INSERT INTO `cdg_regioncode` VALUES ('320115000000', '江苏省南京市江宁区', '1', '1212');
INSERT INTO `cdg_regioncode` VALUES ('320116000000', '江苏省南京市六合区', '1', '1213');
INSERT INTO `cdg_regioncode` VALUES ('320124000000', '江苏省溧水县', '1', '1214');
INSERT INTO `cdg_regioncode` VALUES ('320125000000', '江苏省高淳县', '1', '1215');
INSERT INTO `cdg_regioncode` VALUES ('320200000000', '江苏省无锡市', '1', '1216');
INSERT INTO `cdg_regioncode` VALUES ('320201000000', '江苏省无锡市市辖区', '1', '1217');
INSERT INTO `cdg_regioncode` VALUES ('320202000000', '江苏省无锡市崇安区', '1', '1218');
INSERT INTO `cdg_regioncode` VALUES ('320203000000', '江苏省无锡市南长区', '1', '1219');
INSERT INTO `cdg_regioncode` VALUES ('320204000000', '江苏省无锡市北塘区', '1', '1220');
INSERT INTO `cdg_regioncode` VALUES ('320205000000', '江苏省无锡市锡山区', '1', '1221');
INSERT INTO `cdg_regioncode` VALUES ('320206000000', '江苏省无锡市惠山区', '1', '1222');
INSERT INTO `cdg_regioncode` VALUES ('320211000000', '江苏省无锡市滨湖区', '1', '1223');
INSERT INTO `cdg_regioncode` VALUES ('320281000000', '江苏省江阴市', '1', '1224');
INSERT INTO `cdg_regioncode` VALUES ('320282000000', '江苏省宜兴市', '1', '1225');
INSERT INTO `cdg_regioncode` VALUES ('320300000000', '江苏省徐州市', '1', '1226');
INSERT INTO `cdg_regioncode` VALUES ('320301000000', '江苏省徐州市市辖区', '1', '1227');
INSERT INTO `cdg_regioncode` VALUES ('320302000000', '江苏省徐州市鼓楼区', '1', '1228');
INSERT INTO `cdg_regioncode` VALUES ('320303000000', '江苏省徐州市云龙区', '1', '1229');
INSERT INTO `cdg_regioncode` VALUES ('320304000000', '江苏省徐州市九里区', '1', '1230');
INSERT INTO `cdg_regioncode` VALUES ('320305000000', '江苏省徐州市贾汪区', '1', '1231');
INSERT INTO `cdg_regioncode` VALUES ('320311000000', '江苏省徐州市泉山区', '1', '1232');
INSERT INTO `cdg_regioncode` VALUES ('320321000000', '江苏省丰县', '1', '1233');
INSERT INTO `cdg_regioncode` VALUES ('320322000000', '江苏省沛县', '1', '1234');
INSERT INTO `cdg_regioncode` VALUES ('320323000000', '江苏省铜山县', '1', '1235');
INSERT INTO `cdg_regioncode` VALUES ('320324000000', '江苏省睢宁县', '1', '1236');
INSERT INTO `cdg_regioncode` VALUES ('320381000000', '江苏省新沂市', '1', '1237');
INSERT INTO `cdg_regioncode` VALUES ('320382000000', '江苏省邳州市', '1', '1238');
INSERT INTO `cdg_regioncode` VALUES ('320400000000', '江苏省常州市', '1', '1239');
INSERT INTO `cdg_regioncode` VALUES ('320401000000', '江苏省常州市市辖区', '1', '1240');
INSERT INTO `cdg_regioncode` VALUES ('320402000000', '江苏省常州市天宁区', '1', '1241');
INSERT INTO `cdg_regioncode` VALUES ('320404000000', '江苏省常州市钟楼区', '1', '1242');
INSERT INTO `cdg_regioncode` VALUES ('320405000000', '江苏省常州市戚墅堰区', '1', '1243');
INSERT INTO `cdg_regioncode` VALUES ('320411000000', '江苏省常州市新北区', '1', '1244');
INSERT INTO `cdg_regioncode` VALUES ('320412000000', '江苏省常州市武进区', '1', '1245');
INSERT INTO `cdg_regioncode` VALUES ('320481000000', '江苏省溧阳市', '1', '1246');
INSERT INTO `cdg_regioncode` VALUES ('320482000000', '江苏省金坛市', '1', '1247');
INSERT INTO `cdg_regioncode` VALUES ('320500000000', '江苏省苏州市', '1', '1248');
INSERT INTO `cdg_regioncode` VALUES ('320501000000', '江苏省苏州市市辖区', '1', '1249');
INSERT INTO `cdg_regioncode` VALUES ('320502000000', '江苏省苏州市沧浪区', '1', '1250');
INSERT INTO `cdg_regioncode` VALUES ('320503000000', '江苏省苏州市平江区', '1', '1251');
INSERT INTO `cdg_regioncode` VALUES ('320504000000', '江苏省苏州市金阊区', '1', '1252');
INSERT INTO `cdg_regioncode` VALUES ('320505000000', '江苏省苏州市虎丘区', '1', '1253');
INSERT INTO `cdg_regioncode` VALUES ('320506000000', '江苏省苏州市吴中区', '1', '1254');
INSERT INTO `cdg_regioncode` VALUES ('320507000000', '江苏省苏州市相城区', '1', '1255');
INSERT INTO `cdg_regioncode` VALUES ('320581000000', '江苏省常熟市', '1', '1256');
INSERT INTO `cdg_regioncode` VALUES ('320582000000', '江苏省张家港市', '1', '1257');
INSERT INTO `cdg_regioncode` VALUES ('320583000000', '江苏省昆山市', '1', '1258');
INSERT INTO `cdg_regioncode` VALUES ('320584000000', '江苏省吴江市', '1', '1259');
INSERT INTO `cdg_regioncode` VALUES ('320585000000', '江苏省太仓市', '1', '1260');
INSERT INTO `cdg_regioncode` VALUES ('320600000000', '江苏省南通市', '1', '1261');
INSERT INTO `cdg_regioncode` VALUES ('320601000000', '江苏省南通市市辖区', '1', '1262');
INSERT INTO `cdg_regioncode` VALUES ('320602000000', '江苏省南通市崇川区', '1', '1263');
INSERT INTO `cdg_regioncode` VALUES ('320611000000', '江苏省南通市港闸区', '1', '1264');
INSERT INTO `cdg_regioncode` VALUES ('320621000000', '江苏省海安县', '1', '1265');
INSERT INTO `cdg_regioncode` VALUES ('320623000000', '江苏省如东县', '1', '1266');
INSERT INTO `cdg_regioncode` VALUES ('320681000000', '江苏省启东市', '1', '1267');
INSERT INTO `cdg_regioncode` VALUES ('320682000000', '江苏省如皋市', '1', '1268');
INSERT INTO `cdg_regioncode` VALUES ('320683000000', '江苏省通州市', '1', '1269');
INSERT INTO `cdg_regioncode` VALUES ('320684000000', '江苏省海门市', '1', '1270');
INSERT INTO `cdg_regioncode` VALUES ('320700000000', '江苏省连云港市', '1', '1271');
INSERT INTO `cdg_regioncode` VALUES ('320701000000', '江苏省连云港市市辖区', '1', '1272');
INSERT INTO `cdg_regioncode` VALUES ('320703000000', '江苏省连云港市连云区', '1', '1273');
INSERT INTO `cdg_regioncode` VALUES ('320705000000', '江苏省连云港市新浦区', '1', '1274');
INSERT INTO `cdg_regioncode` VALUES ('320706000000', '江苏省连云港市海州区', '1', '1275');
INSERT INTO `cdg_regioncode` VALUES ('320721000000', '江苏省赣榆县', '1', '1276');
INSERT INTO `cdg_regioncode` VALUES ('320722000000', '江苏省东海县', '1', '1277');
INSERT INTO `cdg_regioncode` VALUES ('320723000000', '江苏省灌云县', '1', '1278');
INSERT INTO `cdg_regioncode` VALUES ('320724000000', '江苏省灌南县', '1', '1279');
INSERT INTO `cdg_regioncode` VALUES ('320800000000', '江苏省淮安市', '1', '1280');
INSERT INTO `cdg_regioncode` VALUES ('320801000000', '江苏省淮安市市辖区', '1', '1281');
INSERT INTO `cdg_regioncode` VALUES ('320802000000', '江苏省淮安市清河区', '1', '1282');
INSERT INTO `cdg_regioncode` VALUES ('320803000000', '江苏省淮安市楚州区', '1', '1283');
INSERT INTO `cdg_regioncode` VALUES ('320804000000', '江苏省淮安市淮阴区', '1', '1284');
INSERT INTO `cdg_regioncode` VALUES ('320811000000', '江苏省淮安市清浦区', '1', '1285');
INSERT INTO `cdg_regioncode` VALUES ('320826000000', '江苏省涟水县', '1', '1286');
INSERT INTO `cdg_regioncode` VALUES ('320829000000', '江苏省洪泽县', '1', '1287');
INSERT INTO `cdg_regioncode` VALUES ('320830000000', '江苏省盱眙县', '1', '1288');
INSERT INTO `cdg_regioncode` VALUES ('320831000000', '江苏省金湖县', '1', '1289');
INSERT INTO `cdg_regioncode` VALUES ('320900000000', '江苏省盐城市', '1', '1290');
INSERT INTO `cdg_regioncode` VALUES ('320901000000', '江苏省盐城市市辖区', '1', '1291');
INSERT INTO `cdg_regioncode` VALUES ('320902000000', '江苏省盐城市亭湖区', '1', '1292');
INSERT INTO `cdg_regioncode` VALUES ('320903000000', '江苏省盐城市盐都区', '1', '1293');
INSERT INTO `cdg_regioncode` VALUES ('320921000000', '江苏省响水县', '1', '1294');
INSERT INTO `cdg_regioncode` VALUES ('320922000000', '江苏省滨海县', '1', '1295');
INSERT INTO `cdg_regioncode` VALUES ('320923000000', '江苏省阜宁县', '1', '1296');
INSERT INTO `cdg_regioncode` VALUES ('320924000000', '江苏省射阳县', '1', '1297');
INSERT INTO `cdg_regioncode` VALUES ('320925000000', '江苏省建湖县', '1', '1298');
INSERT INTO `cdg_regioncode` VALUES ('320981000000', '江苏省东台市', '1', '1299');
INSERT INTO `cdg_regioncode` VALUES ('321000000000', '江苏省扬州市', '1', '1301');
INSERT INTO `cdg_regioncode` VALUES ('321001000000', '江苏省扬州市市辖区', '1', '1302');
INSERT INTO `cdg_regioncode` VALUES ('321002000000', '江苏省扬州市广陵区', '1', '1303');
INSERT INTO `cdg_regioncode` VALUES ('321003000000', '江苏省扬州市邗江区', '1', '1304');
INSERT INTO `cdg_regioncode` VALUES ('321011000000', '江苏省扬州市郊区', '1', '1305');
INSERT INTO `cdg_regioncode` VALUES ('321023000000', '江苏省宝应县', '1', '1306');
INSERT INTO `cdg_regioncode` VALUES ('321081000000', '江苏省仪征市', '1', '1307');
INSERT INTO `cdg_regioncode` VALUES ('321084000000', '江苏省高邮市', '1', '1308');
INSERT INTO `cdg_regioncode` VALUES ('321088000000', '江苏省江都市', '1', '1309');
INSERT INTO `cdg_regioncode` VALUES ('321100000000', '江苏省镇江市', '1', '1310');
INSERT INTO `cdg_regioncode` VALUES ('321101000000', '江苏省镇江市市辖区', '1', '1311');
INSERT INTO `cdg_regioncode` VALUES ('321102000000', '江苏省镇江市京口区', '1', '1312');
INSERT INTO `cdg_regioncode` VALUES ('321111000000', '江苏省镇江市润州区', '1', '1313');
INSERT INTO `cdg_regioncode` VALUES ('321112000000', '江苏省镇江市丹徒区', '1', '1314');
INSERT INTO `cdg_regioncode` VALUES ('321181000000', '江苏省丹阳市', '1', '1315');
INSERT INTO `cdg_regioncode` VALUES ('321182000000', '江苏省扬中市', '1', '1316');
INSERT INTO `cdg_regioncode` VALUES ('321183000000', '江苏省句容市', '1', '1317');
INSERT INTO `cdg_regioncode` VALUES ('321200000000', '江苏省泰州市', '1', '1318');
INSERT INTO `cdg_regioncode` VALUES ('321201000000', '江苏省泰州市市辖区', '1', '1319');
INSERT INTO `cdg_regioncode` VALUES ('321202000000', '江苏省泰州市海陵区', '1', '1320');
INSERT INTO `cdg_regioncode` VALUES ('321203000000', '江苏省泰州市高港区', '1', '1321');
INSERT INTO `cdg_regioncode` VALUES ('321281000000', '江苏省兴化市', '1', '1322');
INSERT INTO `cdg_regioncode` VALUES ('321282000000', '江苏省靖江市', '1', '1323');
INSERT INTO `cdg_regioncode` VALUES ('321283000000', '江苏省泰兴市', '1', '1324');
INSERT INTO `cdg_regioncode` VALUES ('321284000000', '江苏省姜堰市', '1', '1325');
INSERT INTO `cdg_regioncode` VALUES ('321300000000', '江苏省宿迁市', '1', '1326');
INSERT INTO `cdg_regioncode` VALUES ('321301000000', '江苏省宿迁市市辖区', '1', '1327');
INSERT INTO `cdg_regioncode` VALUES ('321302000000', '江苏省宿迁市宿城区', '1', '1328');
INSERT INTO `cdg_regioncode` VALUES ('321311000000', '江苏省宿迁市宿豫区', '1', '1329');
INSERT INTO `cdg_regioncode` VALUES ('321322000000', '江苏省沭阳县', '1', '1330');
INSERT INTO `cdg_regioncode` VALUES ('321323000000', '江苏省泗阳县', '1', '1331');
INSERT INTO `cdg_regioncode` VALUES ('321324000000', '江苏省泗洪县', '1', '1332');
INSERT INTO `cdg_regioncode` VALUES ('330000000000', '浙江省', '1', '1333');
INSERT INTO `cdg_regioncode` VALUES ('330100000000', '浙江省杭州市', '1', '1334');
INSERT INTO `cdg_regioncode` VALUES ('330101000000', '浙江省杭州市市辖区', '1', '1335');
INSERT INTO `cdg_regioncode` VALUES ('330102000000', '浙江省杭州市上城区', '1', '1336');
INSERT INTO `cdg_regioncode` VALUES ('330103000000', '浙江省杭州市下城区', '1', '1337');
INSERT INTO `cdg_regioncode` VALUES ('330104000000', '浙江省杭州市江干区', '1', '1338');
INSERT INTO `cdg_regioncode` VALUES ('330105000000', '浙江省杭州市拱墅区', '1', '1339');
INSERT INTO `cdg_regioncode` VALUES ('330106000000', '浙江省杭州市西湖区', '1', '1340');
INSERT INTO `cdg_regioncode` VALUES ('330108000000', '浙江省杭州市滨江区', '1', '1341');
INSERT INTO `cdg_regioncode` VALUES ('330109000000', '浙江省杭州市萧山区', '1', '1342');
INSERT INTO `cdg_regioncode` VALUES ('330110000000', '浙江省杭州市余杭区', '1', '1343');
INSERT INTO `cdg_regioncode` VALUES ('330122000000', '浙江省桐庐县', '1', '1344');
INSERT INTO `cdg_regioncode` VALUES ('330127000000', '浙江省淳安县', '1', '1345');
INSERT INTO `cdg_regioncode` VALUES ('330182000000', '浙江省建德市', '1', '1346');
INSERT INTO `cdg_regioncode` VALUES ('330183000000', '浙江省富阳市', '1', '1347');
INSERT INTO `cdg_regioncode` VALUES ('330185000000', '浙江省临安市', '1', '1348');
INSERT INTO `cdg_regioncode` VALUES ('330200000000', '浙江省宁波市', '1', '1349');
INSERT INTO `cdg_regioncode` VALUES ('330201000000', '浙江省宁波市市辖区', '1', '1350');
INSERT INTO `cdg_regioncode` VALUES ('330203000000', '浙江省宁波市海曙区', '1', '1351');
INSERT INTO `cdg_regioncode` VALUES ('330204000000', '浙江省宁波市江东区', '1', '1352');
INSERT INTO `cdg_regioncode` VALUES ('330205000000', '浙江省宁波市江北区', '1', '1353');
INSERT INTO `cdg_regioncode` VALUES ('330206000000', '浙江省宁波市北仑区', '1', '1354');
INSERT INTO `cdg_regioncode` VALUES ('330211000000', '浙江省宁波市镇海区', '1', '1355');
INSERT INTO `cdg_regioncode` VALUES ('330212000000', '浙江省宁波市鄞州区', '1', '1356');
INSERT INTO `cdg_regioncode` VALUES ('330225000000', '浙江省象山县', '1', '1357');
INSERT INTO `cdg_regioncode` VALUES ('330226000000', '浙江省宁海县', '1', '1358');
INSERT INTO `cdg_regioncode` VALUES ('330281000000', '浙江省余姚市', '1', '1359');
INSERT INTO `cdg_regioncode` VALUES ('330282000000', '浙江省慈溪市', '1', '1360');
INSERT INTO `cdg_regioncode` VALUES ('330283000000', '浙江省奉化市', '1', '1361');
INSERT INTO `cdg_regioncode` VALUES ('330300000000', '浙江省温州市', '1', '1362');
INSERT INTO `cdg_regioncode` VALUES ('330301000000', '浙江省温州市市辖区', '1', '1363');
INSERT INTO `cdg_regioncode` VALUES ('330302000000', '浙江省温州市鹿城区', '1', '1364');
INSERT INTO `cdg_regioncode` VALUES ('330303000000', '浙江省温州市龙湾区', '1', '1365');
INSERT INTO `cdg_regioncode` VALUES ('330304000000', '浙江省温州市瓯海区', '1', '1366');
INSERT INTO `cdg_regioncode` VALUES ('330322000000', '浙江省洞头县', '1', '1367');
INSERT INTO `cdg_regioncode` VALUES ('330324000000', '浙江省永嘉县', '1', '1368');
INSERT INTO `cdg_regioncode` VALUES ('330326000000', '浙江省平阳县', '1', '1369');
INSERT INTO `cdg_regioncode` VALUES ('330327000000', '浙江省苍南县', '1', '1370');
INSERT INTO `cdg_regioncode` VALUES ('330328000000', '浙江省文成县', '1', '1371');
INSERT INTO `cdg_regioncode` VALUES ('330329000000', '浙江省泰顺县', '1', '1372');
INSERT INTO `cdg_regioncode` VALUES ('330381000000', '浙江省瑞安市', '1', '1373');
INSERT INTO `cdg_regioncode` VALUES ('330382000000', '浙江省乐清市', '1', '1374');
INSERT INTO `cdg_regioncode` VALUES ('330400000000', '浙江省嘉兴市', '1', '1375');
INSERT INTO `cdg_regioncode` VALUES ('330401000000', '浙江省嘉兴市市辖区', '1', '1376');
INSERT INTO `cdg_regioncode` VALUES ('330402000000', '浙江省嘉兴市秀城区', '1', '1377');
INSERT INTO `cdg_regioncode` VALUES ('330411000000', '浙江省嘉兴市秀洲区', '1', '1378');
INSERT INTO `cdg_regioncode` VALUES ('330421000000', '浙江省嘉善县', '1', '1379');
INSERT INTO `cdg_regioncode` VALUES ('330424000000', '浙江省海盐县', '1', '1380');
INSERT INTO `cdg_regioncode` VALUES ('330481000000', '浙江省海宁市', '1', '1381');
INSERT INTO `cdg_regioncode` VALUES ('330482000000', '浙江省平湖市', '1', '1382');
INSERT INTO `cdg_regioncode` VALUES ('330483000000', '浙江省桐乡市', '1', '1383');
INSERT INTO `cdg_regioncode` VALUES ('330500000000', '浙江省湖州市', '1', '1384');
INSERT INTO `cdg_regioncode` VALUES ('330501000000', '浙江省湖州市市辖区', '1', '1385');
INSERT INTO `cdg_regioncode` VALUES ('330502000000', '浙江省湖州市吴兴区', '1', '1386');
INSERT INTO `cdg_regioncode` VALUES ('330503000000', '浙江省湖州市南浔区', '1', '1387');
INSERT INTO `cdg_regioncode` VALUES ('330521000000', '浙江省德清县', '1', '1388');
INSERT INTO `cdg_regioncode` VALUES ('330522000000', '浙江省长兴县', '1', '1389');
INSERT INTO `cdg_regioncode` VALUES ('330523000000', '浙江省安吉县', '1', '1390');
INSERT INTO `cdg_regioncode` VALUES ('330600000000', '浙江省绍兴市', '1', '1391');
INSERT INTO `cdg_regioncode` VALUES ('330601000000', '浙江省绍兴市市辖区', '1', '1392');
INSERT INTO `cdg_regioncode` VALUES ('330602000000', '浙江省绍兴市越城区', '1', '1393');
INSERT INTO `cdg_regioncode` VALUES ('330621000000', '浙江省绍兴县', '1', '1394');
INSERT INTO `cdg_regioncode` VALUES ('330624000000', '浙江省新昌县', '1', '1395');
INSERT INTO `cdg_regioncode` VALUES ('330681000000', '浙江省诸暨市', '1', '1396');
INSERT INTO `cdg_regioncode` VALUES ('330682000000', '浙江省上虞市', '1', '1397');
INSERT INTO `cdg_regioncode` VALUES ('330683000000', '浙江省嵊州市', '1', '1398');
INSERT INTO `cdg_regioncode` VALUES ('330700000000', '浙江省金华市', '1', '1399');
INSERT INTO `cdg_regioncode` VALUES ('330803000000', '浙江省衢州市衢江区', '1', '1413');
INSERT INTO `cdg_regioncode` VALUES ('330822000000', '浙江省常山县', '1', '1414');
INSERT INTO `cdg_regioncode` VALUES ('330824000000', '浙江省开化县', '1', '1415');
INSERT INTO `cdg_regioncode` VALUES ('330825000000', '浙江省龙游县', '1', '1416');
INSERT INTO `cdg_regioncode` VALUES ('330881000000', '浙江省江山市', '1', '1417');
INSERT INTO `cdg_regioncode` VALUES ('330900000000', '浙江省舟山市', '1', '1418');
INSERT INTO `cdg_regioncode` VALUES ('330901000000', '浙江省舟山市市辖区', '1', '1419');
INSERT INTO `cdg_regioncode` VALUES ('330902000000', '浙江省舟山市定海区', '1', '1420');
INSERT INTO `cdg_regioncode` VALUES ('330903000000', '浙江省舟山市普陀区', '1', '1421');
INSERT INTO `cdg_regioncode` VALUES ('330921000000', '浙江省岱山县', '1', '1422');
INSERT INTO `cdg_regioncode` VALUES ('330922000000', '浙江省嵊泗县', '1', '1423');
INSERT INTO `cdg_regioncode` VALUES ('331000000000', '浙江省台州市', '1', '1424');
INSERT INTO `cdg_regioncode` VALUES ('331001000000', '浙江省台州市市辖区', '1', '1425');
INSERT INTO `cdg_regioncode` VALUES ('331002000000', '浙江省台州市椒江区', '1', '1426');
INSERT INTO `cdg_regioncode` VALUES ('331003000000', '浙江省台州市黄岩区', '1', '1427');
INSERT INTO `cdg_regioncode` VALUES ('331004000000', '浙江省台州市路桥区', '1', '1428');
INSERT INTO `cdg_regioncode` VALUES ('331021000000', '浙江省玉环县', '1', '1429');
INSERT INTO `cdg_regioncode` VALUES ('331022000000', '浙江省三门县', '1', '1430');
INSERT INTO `cdg_regioncode` VALUES ('331023000000', '浙江省天台县', '1', '1431');
INSERT INTO `cdg_regioncode` VALUES ('331024000000', '浙江省仙居县', '1', '1432');
INSERT INTO `cdg_regioncode` VALUES ('331081000000', '浙江省温岭市', '1', '1433');
INSERT INTO `cdg_regioncode` VALUES ('331082000000', '浙江省临海市', '1', '1434');
INSERT INTO `cdg_regioncode` VALUES ('331100000000', '浙江省丽水市', '1', '1435');
INSERT INTO `cdg_regioncode` VALUES ('331101000000', '浙江省丽水市市辖区', '1', '1436');
INSERT INTO `cdg_regioncode` VALUES ('331102000000', '浙江省丽水市莲都区', '1', '1437');
INSERT INTO `cdg_regioncode` VALUES ('331121000000', '浙江省青田县', '1', '1438');
INSERT INTO `cdg_regioncode` VALUES ('331122000000', '浙江省缙云县', '1', '1439');
INSERT INTO `cdg_regioncode` VALUES ('331123000000', '浙江省遂昌县', '1', '1440');
INSERT INTO `cdg_regioncode` VALUES ('331124000000', '浙江省松阳县', '1', '1441');
INSERT INTO `cdg_regioncode` VALUES ('331125000000', '浙江省云和县', '1', '1442');
INSERT INTO `cdg_regioncode` VALUES ('331126000000', '浙江省庆元县', '1', '1443');
INSERT INTO `cdg_regioncode` VALUES ('331127000000', '浙江省景宁畲族自治县', '1', '1444');
INSERT INTO `cdg_regioncode` VALUES ('331181000000', '浙江省龙泉市', '1', '1445');
INSERT INTO `cdg_regioncode` VALUES ('340000000000', '安徽省', '1', '1446');
INSERT INTO `cdg_regioncode` VALUES ('340100000000', '安徽省合肥市', '1', '1447');
INSERT INTO `cdg_regioncode` VALUES ('340101000000', '安徽省合肥市市辖区', '1', '1448');
INSERT INTO `cdg_regioncode` VALUES ('340102000000', '安徽省合肥市瑶海区', '1', '1449');
INSERT INTO `cdg_regioncode` VALUES ('340103000000', '安徽省合肥市庐阳区', '1', '1450');
INSERT INTO `cdg_regioncode` VALUES ('340104000000', '安徽省合肥市蜀山区', '1', '1451');
INSERT INTO `cdg_regioncode` VALUES ('340111000000', '安徽省合肥市包河区', '1', '1452');
INSERT INTO `cdg_regioncode` VALUES ('340121000000', '安徽省长丰县', '1', '1453');
INSERT INTO `cdg_regioncode` VALUES ('340122000000', '安徽省肥东县', '1', '1454');
INSERT INTO `cdg_regioncode` VALUES ('340123000000', '安徽省肥西县', '1', '1455');
INSERT INTO `cdg_regioncode` VALUES ('340200000000', '安徽省芜湖市', '1', '1456');
INSERT INTO `cdg_regioncode` VALUES ('340201000000', '安徽省芜湖市市辖区', '1', '1457');
INSERT INTO `cdg_regioncode` VALUES ('340202000000', '安徽省芜湖市镜湖区', '1', '1458');
INSERT INTO `cdg_regioncode` VALUES ('340203000000', '安徽省芜湖市马塘区', '1', '1459');
INSERT INTO `cdg_regioncode` VALUES ('340204000000', '安徽省芜湖市新芜区', '1', '1460');
INSERT INTO `cdg_regioncode` VALUES ('340207000000', '安徽省芜湖市鸠江区', '1', '1461');
INSERT INTO `cdg_regioncode` VALUES ('340221000000', '安徽省芜湖县', '1', '1462');
INSERT INTO `cdg_regioncode` VALUES ('340222000000', '安徽省繁昌县', '1', '1463');
INSERT INTO `cdg_regioncode` VALUES ('340223000000', '安徽省南陵县', '1', '1464');
INSERT INTO `cdg_regioncode` VALUES ('340300000000', '安徽省蚌埠市', '1', '1465');
INSERT INTO `cdg_regioncode` VALUES ('340301000000', '安徽省蚌埠市市辖区', '1', '1466');
INSERT INTO `cdg_regioncode` VALUES ('340302000000', '安徽省蚌埠市龙子湖区', '1', '1467');
INSERT INTO `cdg_regioncode` VALUES ('340303000000', '安徽省蚌埠市蚌山区', '1', '1468');
INSERT INTO `cdg_regioncode` VALUES ('340304000000', '安徽省蚌埠市禹会区', '1', '1469');
INSERT INTO `cdg_regioncode` VALUES ('340311000000', '安徽省蚌埠市淮上区', '1', '1470');
INSERT INTO `cdg_regioncode` VALUES ('340321000000', '安徽省怀远县', '1', '1471');
INSERT INTO `cdg_regioncode` VALUES ('340322000000', '安徽省五河县', '1', '1472');
INSERT INTO `cdg_regioncode` VALUES ('340323000000', '安徽省固镇县', '1', '1473');
INSERT INTO `cdg_regioncode` VALUES ('340400000000', '安徽省淮南市', '1', '1474');
INSERT INTO `cdg_regioncode` VALUES ('340401000000', '安徽省淮南市市辖区', '1', '1475');
INSERT INTO `cdg_regioncode` VALUES ('340402000000', '安徽省淮南市大通区', '1', '1476');
INSERT INTO `cdg_regioncode` VALUES ('340403000000', '安徽省淮南市田家庵区', '1', '1477');
INSERT INTO `cdg_regioncode` VALUES ('340404000000', '安徽省淮南市谢家集区', '1', '1478');
INSERT INTO `cdg_regioncode` VALUES ('340405000000', '安徽省淮南市八公山区', '1', '1479');
INSERT INTO `cdg_regioncode` VALUES ('340406000000', '安徽省淮南市潘集区', '1', '1480');
INSERT INTO `cdg_regioncode` VALUES ('340421000000', '安徽省凤台县', '1', '1481');
INSERT INTO `cdg_regioncode` VALUES ('340500000000', '安徽省马鞍山市', '1', '1482');
INSERT INTO `cdg_regioncode` VALUES ('340501000000', '安徽省马鞍山市市辖区', '1', '1483');
INSERT INTO `cdg_regioncode` VALUES ('340502000000', '安徽省马鞍山市金家庄区', '1', '1484');
INSERT INTO `cdg_regioncode` VALUES ('340503000000', '安徽省马鞍山市花山区', '1', '1485');
INSERT INTO `cdg_regioncode` VALUES ('340504000000', '安徽省马鞍山市雨山区', '1', '1486');
INSERT INTO `cdg_regioncode` VALUES ('340521000000', '安徽省当涂县', '1', '1487');
INSERT INTO `cdg_regioncode` VALUES ('340600000000', '安徽省淮北市', '1', '1488');
INSERT INTO `cdg_regioncode` VALUES ('340601000000', '安徽省淮北市市辖区', '1', '1489');
INSERT INTO `cdg_regioncode` VALUES ('340602000000', '安徽省淮北市杜集区', '1', '1490');
INSERT INTO `cdg_regioncode` VALUES ('340603000000', '安徽省淮北市相山区', '1', '1491');
INSERT INTO `cdg_regioncode` VALUES ('340604000000', '安徽省淮北市烈山区', '1', '1492');
INSERT INTO `cdg_regioncode` VALUES ('340621000000', '安徽省濉溪县', '1', '1493');
INSERT INTO `cdg_regioncode` VALUES ('340700000000', '安徽省铜陵市', '1', '1494');
INSERT INTO `cdg_regioncode` VALUES ('340701000000', '安徽省铜陵市市辖区', '1', '1495');
INSERT INTO `cdg_regioncode` VALUES ('340702000000', '安徽省铜陵市铜官山区', '1', '1496');
INSERT INTO `cdg_regioncode` VALUES ('340703000000', '安徽省铜陵市狮子山区', '1', '1497');
INSERT INTO `cdg_regioncode` VALUES ('340711000000', '安徽省铜陵市郊区', '1', '1498');
INSERT INTO `cdg_regioncode` VALUES ('340721000000', '安徽省铜陵县', '1', '1499');
INSERT INTO `cdg_regioncode` VALUES ('340800000000', '安徽省安庆市', '1', '1500');
INSERT INTO `cdg_regioncode` VALUES ('340801000000', '安徽省安庆市市辖区', '1', '1501');
INSERT INTO `cdg_regioncode` VALUES ('340802000000', '安徽省安庆市迎江区', '1', '1502');
INSERT INTO `cdg_regioncode` VALUES ('340803000000', '安徽省安庆市大观区', '1', '1503');
INSERT INTO `cdg_regioncode` VALUES ('340811000000', '安徽省安庆市郊区', '1', '1504');
INSERT INTO `cdg_regioncode` VALUES ('340822000000', '安徽省怀宁县', '1', '1505');
INSERT INTO `cdg_regioncode` VALUES ('340823000000', '安徽省枞阳县', '1', '1506');
INSERT INTO `cdg_regioncode` VALUES ('340824000000', '安徽省潜山县', '1', '1507');
INSERT INTO `cdg_regioncode` VALUES ('340825000000', '安徽省太湖县', '1', '1508');
INSERT INTO `cdg_regioncode` VALUES ('340826000000', '安徽省宿松县', '1', '1509');
INSERT INTO `cdg_regioncode` VALUES ('340827000000', '安徽省望江县', '1', '1510');
INSERT INTO `cdg_regioncode` VALUES ('340828000000', '安徽省岳西县', '1', '1511');
INSERT INTO `cdg_regioncode` VALUES ('340881000000', '安徽省桐城市', '1', '1512');
INSERT INTO `cdg_regioncode` VALUES ('341000000000', '安徽省黄山市', '1', '1513');
INSERT INTO `cdg_regioncode` VALUES ('341001000000', '安徽省黄山市市辖区', '1', '1514');
INSERT INTO `cdg_regioncode` VALUES ('341002000000', '安徽省黄山市屯溪区', '1', '1515');
INSERT INTO `cdg_regioncode` VALUES ('341003000000', '安徽省黄山市黄山区', '1', '1516');
INSERT INTO `cdg_regioncode` VALUES ('341004000000', '安徽省黄山市徽州区', '1', '1517');
INSERT INTO `cdg_regioncode` VALUES ('341021000000', '安徽省歙县', '1', '1518');
INSERT INTO `cdg_regioncode` VALUES ('341022000000', '安徽省休宁县', '1', '1519');
INSERT INTO `cdg_regioncode` VALUES ('341023000000', '安徽省黟县', '1', '1520');
INSERT INTO `cdg_regioncode` VALUES ('341024000000', '安徽省祁门县', '1', '1521');
INSERT INTO `cdg_regioncode` VALUES ('341100000000', '安徽省滁州市', '1', '1522');
INSERT INTO `cdg_regioncode` VALUES ('341101000000', '安徽省滁州市市辖区', '1', '1523');
INSERT INTO `cdg_regioncode` VALUES ('341102000000', '安徽省滁州市琅琊区', '1', '1524');
INSERT INTO `cdg_regioncode` VALUES ('341103000000', '安徽省滁州市南谯区', '1', '1525');
INSERT INTO `cdg_regioncode` VALUES ('341122000000', '安徽省来安县', '1', '1526');
INSERT INTO `cdg_regioncode` VALUES ('341124000000', '安徽省全椒县', '1', '1527');
INSERT INTO `cdg_regioncode` VALUES ('341125000000', '安徽省定远县', '1', '1528');
INSERT INTO `cdg_regioncode` VALUES ('341126000000', '安徽省凤阳县', '1', '1529');
INSERT INTO `cdg_regioncode` VALUES ('341181000000', '安徽省天长市', '1', '1530');
INSERT INTO `cdg_regioncode` VALUES ('341182000000', '安徽省明光市', '1', '1531');
INSERT INTO `cdg_regioncode` VALUES ('341200000000', '安徽省阜阳市', '1', '1532');
INSERT INTO `cdg_regioncode` VALUES ('341201000000', '安徽省阜阳市市辖区', '1', '1533');
INSERT INTO `cdg_regioncode` VALUES ('341202000000', '安徽省阜阳市颍州区', '1', '1534');
INSERT INTO `cdg_regioncode` VALUES ('341203000000', '安徽省阜阳市颍东区', '1', '1535');
INSERT INTO `cdg_regioncode` VALUES ('341204000000', '安徽省阜阳市颍泉区', '1', '1536');
INSERT INTO `cdg_regioncode` VALUES ('341221000000', '安徽省临泉县', '1', '1537');
INSERT INTO `cdg_regioncode` VALUES ('341222000000', '安徽省太和县', '1', '1538');
INSERT INTO `cdg_regioncode` VALUES ('341225000000', '安徽省阜南县', '1', '1539');
INSERT INTO `cdg_regioncode` VALUES ('341226000000', '安徽省颍上县', '1', '1540');
INSERT INTO `cdg_regioncode` VALUES ('341282000000', '安徽省界首市', '1', '1541');
INSERT INTO `cdg_regioncode` VALUES ('341300000000', '安徽省宿州市', '1', '1542');
INSERT INTO `cdg_regioncode` VALUES ('341301000000', '安徽省宿州市市辖区', '1', '1543');
INSERT INTO `cdg_regioncode` VALUES ('341302000000', '安徽省宿州市墉桥区', '1', '1544');
INSERT INTO `cdg_regioncode` VALUES ('341321000000', '安徽省砀山县', '1', '1545');
INSERT INTO `cdg_regioncode` VALUES ('341322000000', '安徽省萧县', '1', '1546');
INSERT INTO `cdg_regioncode` VALUES ('341323000000', '安徽省灵璧县', '1', '1547');
INSERT INTO `cdg_regioncode` VALUES ('341324000000', '安徽省泗县', '1', '1548');
INSERT INTO `cdg_regioncode` VALUES ('341400000000', '安徽省巢湖市', '1', '1549');
INSERT INTO `cdg_regioncode` VALUES ('341401000000', '安徽省巢湖市市辖区', '1', '1550');
INSERT INTO `cdg_regioncode` VALUES ('341402000000', '安徽省巢湖市居巢区', '1', '1551');
INSERT INTO `cdg_regioncode` VALUES ('341421000000', '安徽省庐江县', '1', '1552');
INSERT INTO `cdg_regioncode` VALUES ('341422000000', '安徽省无为县', '1', '1553');
INSERT INTO `cdg_regioncode` VALUES ('341423000000', '安徽省含山县', '1', '1554');
INSERT INTO `cdg_regioncode` VALUES ('341424000000', '安徽省和县', '1', '1555');
INSERT INTO `cdg_regioncode` VALUES ('341500000000', '安徽省六安市', '1', '1556');
INSERT INTO `cdg_regioncode` VALUES ('341501000000', '安徽省六安市市辖区', '1', '1557');
INSERT INTO `cdg_regioncode` VALUES ('341502000000', '安徽省六安市金安区', '1', '1558');
INSERT INTO `cdg_regioncode` VALUES ('341503000000', '安徽省六安市裕安区', '1', '1559');
INSERT INTO `cdg_regioncode` VALUES ('341521000000', '安徽省寿县', '1', '1560');
INSERT INTO `cdg_regioncode` VALUES ('341522000000', '安徽省霍邱县', '1', '1561');
INSERT INTO `cdg_regioncode` VALUES ('341523000000', '安徽省舒城县', '1', '1562');
INSERT INTO `cdg_regioncode` VALUES ('341524000000', '安徽省金寨县', '1', '1563');
INSERT INTO `cdg_regioncode` VALUES ('341525000000', '安徽省霍山县', '1', '1564');
INSERT INTO `cdg_regioncode` VALUES ('341600000000', '安徽省亳州市', '1', '1565');
INSERT INTO `cdg_regioncode` VALUES ('341601000000', '安徽省亳州市市辖区', '1', '1566');
INSERT INTO `cdg_regioncode` VALUES ('341602000000', '安徽省亳州市谯城区', '1', '1567');
INSERT INTO `cdg_regioncode` VALUES ('341621000000', '安徽省涡阳县', '1', '1568');
INSERT INTO `cdg_regioncode` VALUES ('341622000000', '安徽省蒙城县', '1', '1569');
INSERT INTO `cdg_regioncode` VALUES ('341623000000', '安徽省利辛县', '1', '1570');
INSERT INTO `cdg_regioncode` VALUES ('341700000000', '安徽省池州市', '1', '1571');
INSERT INTO `cdg_regioncode` VALUES ('341701000000', '安徽省池州市市辖区', '1', '1572');
INSERT INTO `cdg_regioncode` VALUES ('341702000000', '安徽省池州市贵池区', '1', '1573');
INSERT INTO `cdg_regioncode` VALUES ('341721000000', '安徽省东至县', '1', '1574');
INSERT INTO `cdg_regioncode` VALUES ('341722000000', '安徽省石台县', '1', '1575');
INSERT INTO `cdg_regioncode` VALUES ('341723000000', '安徽省青阳县', '1', '1576');
INSERT INTO `cdg_regioncode` VALUES ('341800000000', '安徽省宣城市', '1', '1577');
INSERT INTO `cdg_regioncode` VALUES ('341801000000', '安徽省宣城市市辖区', '1', '1578');
INSERT INTO `cdg_regioncode` VALUES ('341802000000', '安徽省宣城市宣州区', '1', '1579');
INSERT INTO `cdg_regioncode` VALUES ('341821000000', '安徽省郎溪县', '1', '1580');
INSERT INTO `cdg_regioncode` VALUES ('341822000000', '安徽省广德县', '1', '1581');
INSERT INTO `cdg_regioncode` VALUES ('341823000000', '安徽省泾县', '1', '1582');
INSERT INTO `cdg_regioncode` VALUES ('341824000000', '安徽省绩溪县', '1', '1583');
INSERT INTO `cdg_regioncode` VALUES ('341825000000', '安徽省旌德县', '1', '1584');
INSERT INTO `cdg_regioncode` VALUES ('341881000000', '安徽省宁国市', '1', '1585');
INSERT INTO `cdg_regioncode` VALUES ('350000000000', '福建省', '1', '1586');
INSERT INTO `cdg_regioncode` VALUES ('350100000000', '福建省福州市', '1', '1587');
INSERT INTO `cdg_regioncode` VALUES ('350101000000', '福建省福州市市辖区', '1', '1588');
INSERT INTO `cdg_regioncode` VALUES ('350102000000', '福建省福州市鼓楼区', '1', '1589');
INSERT INTO `cdg_regioncode` VALUES ('350103000000', '福建省福州市台江区', '1', '1590');
INSERT INTO `cdg_regioncode` VALUES ('350104000000', '福建省福州市仓山区', '1', '1591');
INSERT INTO `cdg_regioncode` VALUES ('350105000000', '福建省福州市马尾区', '1', '1592');
INSERT INTO `cdg_regioncode` VALUES ('350111000000', '福建省福州市晋安区', '1', '1593');
INSERT INTO `cdg_regioncode` VALUES ('350121000000', '福建省闽侯县', '1', '1594');
INSERT INTO `cdg_regioncode` VALUES ('350122000000', '福建省连江县', '1', '1595');
INSERT INTO `cdg_regioncode` VALUES ('350123000000', '福建省罗源县', '1', '1596');
INSERT INTO `cdg_regioncode` VALUES ('350124000000', '福建省闽清县', '1', '1597');
INSERT INTO `cdg_regioncode` VALUES ('350125000000', '福建省永泰县', '1', '1598');
INSERT INTO `cdg_regioncode` VALUES ('350128000000', '福建省平潭县', '1', '1599');
INSERT INTO `cdg_regioncode` VALUES ('350303000000', '福建省莆田市涵江区', '1', '1613');
INSERT INTO `cdg_regioncode` VALUES ('350304000000', '福建省莆田市荔城区', '1', '1614');
INSERT INTO `cdg_regioncode` VALUES ('350305000000', '福建省莆田市秀屿区', '1', '1615');
INSERT INTO `cdg_regioncode` VALUES ('350322000000', '福建省仙游县', '1', '1616');
INSERT INTO `cdg_regioncode` VALUES ('350400000000', '福建省三明市', '1', '1617');
INSERT INTO `cdg_regioncode` VALUES ('350401000000', '福建省三明市市辖区', '1', '1618');
INSERT INTO `cdg_regioncode` VALUES ('350402000000', '福建省三明市梅列区', '1', '1619');
INSERT INTO `cdg_regioncode` VALUES ('350403000000', '福建省三明市三元区', '1', '1620');
INSERT INTO `cdg_regioncode` VALUES ('350421000000', '福建省明溪县', '1', '1621');
INSERT INTO `cdg_regioncode` VALUES ('350423000000', '福建省清流县', '1', '1622');
INSERT INTO `cdg_regioncode` VALUES ('350424000000', '福建省宁化县', '1', '1623');
INSERT INTO `cdg_regioncode` VALUES ('350425000000', '福建省大田县', '1', '1624');
INSERT INTO `cdg_regioncode` VALUES ('350426000000', '福建省尤溪县', '1', '1625');
INSERT INTO `cdg_regioncode` VALUES ('350427000000', '福建省沙县', '1', '1626');
INSERT INTO `cdg_regioncode` VALUES ('350428000000', '福建省将乐县', '1', '1627');
INSERT INTO `cdg_regioncode` VALUES ('350429000000', '福建省泰宁县', '1', '1628');
INSERT INTO `cdg_regioncode` VALUES ('350430000000', '福建省建宁县', '1', '1629');
INSERT INTO `cdg_regioncode` VALUES ('350481000000', '福建省永安市', '1', '1630');
INSERT INTO `cdg_regioncode` VALUES ('350500000000', '福建省泉州市', '1', '1631');
INSERT INTO `cdg_regioncode` VALUES ('350501000000', '福建省泉州市市辖区', '1', '1632');
INSERT INTO `cdg_regioncode` VALUES ('350502000000', '福建省泉州市鲤城区', '1', '1633');
INSERT INTO `cdg_regioncode` VALUES ('350503000000', '福建省泉州市丰泽区', '1', '1634');
INSERT INTO `cdg_regioncode` VALUES ('350504000000', '福建省泉州市洛江区', '1', '1635');
INSERT INTO `cdg_regioncode` VALUES ('350505000000', '福建省泉州市泉港区', '1', '1636');
INSERT INTO `cdg_regioncode` VALUES ('350521000000', '福建省惠安县', '1', '1637');
INSERT INTO `cdg_regioncode` VALUES ('350524000000', '福建省安溪县', '1', '1638');
INSERT INTO `cdg_regioncode` VALUES ('350525000000', '福建省永春县', '1', '1639');
INSERT INTO `cdg_regioncode` VALUES ('350526000000', '福建省德化县', '1', '1640');
INSERT INTO `cdg_regioncode` VALUES ('350527000000', '福建省金门县', '1', '1641');
INSERT INTO `cdg_regioncode` VALUES ('350581000000', '福建省石狮市', '1', '1642');
INSERT INTO `cdg_regioncode` VALUES ('350582000000', '福建省晋江市', '1', '1643');
INSERT INTO `cdg_regioncode` VALUES ('350583000000', '福建省南安市', '1', '1644');
INSERT INTO `cdg_regioncode` VALUES ('350600000000', '福建省漳州市', '1', '1645');
INSERT INTO `cdg_regioncode` VALUES ('350601000000', '福建省漳州市市辖区', '1', '1646');
INSERT INTO `cdg_regioncode` VALUES ('350602000000', '福建省漳州市芗城区', '1', '1647');
INSERT INTO `cdg_regioncode` VALUES ('350603000000', '福建省漳州市龙文区', '1', '1648');
INSERT INTO `cdg_regioncode` VALUES ('350622000000', '福建省云霄县', '1', '1649');
INSERT INTO `cdg_regioncode` VALUES ('350623000000', '福建省漳浦县', '1', '1650');
INSERT INTO `cdg_regioncode` VALUES ('350624000000', '福建省诏安县', '1', '1651');
INSERT INTO `cdg_regioncode` VALUES ('350625000000', '福建省长泰县', '1', '1652');
INSERT INTO `cdg_regioncode` VALUES ('350626000000', '福建省东山县', '1', '1653');
INSERT INTO `cdg_regioncode` VALUES ('350627000000', '福建省南靖县', '1', '1654');
INSERT INTO `cdg_regioncode` VALUES ('350628000000', '福建省平和县', '1', '1655');
INSERT INTO `cdg_regioncode` VALUES ('350629000000', '福建省华安县', '1', '1656');
INSERT INTO `cdg_regioncode` VALUES ('350681000000', '福建省龙海市', '1', '1657');
INSERT INTO `cdg_regioncode` VALUES ('350700000000', '福建省南平市', '1', '1658');
INSERT INTO `cdg_regioncode` VALUES ('350701000000', '福建省南平市市辖区', '1', '1659');
INSERT INTO `cdg_regioncode` VALUES ('350702000000', '福建省南平市延平区', '1', '1660');
INSERT INTO `cdg_regioncode` VALUES ('350721000000', '福建省顺昌县', '1', '1661');
INSERT INTO `cdg_regioncode` VALUES ('350722000000', '福建省浦城县', '1', '1662');
INSERT INTO `cdg_regioncode` VALUES ('350723000000', '福建省光泽县', '1', '1663');
INSERT INTO `cdg_regioncode` VALUES ('350724000000', '福建省松溪县', '1', '1664');
INSERT INTO `cdg_regioncode` VALUES ('350725000000', '福建省政和县', '1', '1665');
INSERT INTO `cdg_regioncode` VALUES ('350781000000', '福建省邵武市', '1', '1666');
INSERT INTO `cdg_regioncode` VALUES ('350782000000', '福建省武夷山市', '1', '1667');
INSERT INTO `cdg_regioncode` VALUES ('350783000000', '福建省建瓯市', '1', '1668');
INSERT INTO `cdg_regioncode` VALUES ('350784000000', '福建省建阳市', '1', '1669');
INSERT INTO `cdg_regioncode` VALUES ('350800000000', '福建省龙岩市', '1', '1670');
INSERT INTO `cdg_regioncode` VALUES ('350801000000', '福建省龙岩市市辖区', '1', '1671');
INSERT INTO `cdg_regioncode` VALUES ('350802000000', '福建省龙岩市新罗区', '1', '1672');
INSERT INTO `cdg_regioncode` VALUES ('350821000000', '福建省长汀县', '1', '1673');
INSERT INTO `cdg_regioncode` VALUES ('350822000000', '福建省永定县', '1', '1674');
INSERT INTO `cdg_regioncode` VALUES ('350823000000', '福建省上杭县', '1', '1675');
INSERT INTO `cdg_regioncode` VALUES ('350824000000', '福建省武平县', '1', '1676');
INSERT INTO `cdg_regioncode` VALUES ('350825000000', '福建省连城县', '1', '1677');
INSERT INTO `cdg_regioncode` VALUES ('350881000000', '福建省漳平市', '1', '1678');
INSERT INTO `cdg_regioncode` VALUES ('350900000000', '福建省宁德市', '1', '1679');
INSERT INTO `cdg_regioncode` VALUES ('350901000000', '福建省宁德市市辖区', '1', '1680');
INSERT INTO `cdg_regioncode` VALUES ('350902000000', '福建省宁德市蕉城区', '1', '1681');
INSERT INTO `cdg_regioncode` VALUES ('350921000000', '福建省霞浦县', '1', '1682');
INSERT INTO `cdg_regioncode` VALUES ('350922000000', '福建省古田县', '1', '1683');
INSERT INTO `cdg_regioncode` VALUES ('350923000000', '福建省屏南县', '1', '1684');
INSERT INTO `cdg_regioncode` VALUES ('350924000000', '福建省寿宁县', '1', '1685');
INSERT INTO `cdg_regioncode` VALUES ('350925000000', '福建省周宁县', '1', '1686');
INSERT INTO `cdg_regioncode` VALUES ('350926000000', '福建省柘荣县', '1', '1687');
INSERT INTO `cdg_regioncode` VALUES ('350981000000', '福建省福安市', '1', '1688');
INSERT INTO `cdg_regioncode` VALUES ('350982000000', '福建省福鼎市', '1', '1689');
INSERT INTO `cdg_regioncode` VALUES ('360000000000', '江西省', '1', '1690');
INSERT INTO `cdg_regioncode` VALUES ('360100000000', '江西省南昌市', '1', '1691');
INSERT INTO `cdg_regioncode` VALUES ('360101000000', '江西省南昌市市辖区', '1', '1692');
INSERT INTO `cdg_regioncode` VALUES ('360102000000', '江西省南昌市东湖区', '1', '1693');
INSERT INTO `cdg_regioncode` VALUES ('360103000000', '江西省南昌市西湖区', '1', '1694');
INSERT INTO `cdg_regioncode` VALUES ('360104000000', '江西省南昌市青云谱区', '1', '1695');
INSERT INTO `cdg_regioncode` VALUES ('360105000000', '江西省南昌市湾里区', '1', '1696');
INSERT INTO `cdg_regioncode` VALUES ('360111000000', '江西省南昌市青山湖区', '1', '1697');
INSERT INTO `cdg_regioncode` VALUES ('360121000000', '江西省南昌县', '1', '1698');
INSERT INTO `cdg_regioncode` VALUES ('360122000000', '江西省新建县', '1', '1699');
INSERT INTO `cdg_regioncode` VALUES ('360322000000', '江西省上栗县', '1', '1713');
INSERT INTO `cdg_regioncode` VALUES ('360323000000', '江西省芦溪县', '1', '1714');
INSERT INTO `cdg_regioncode` VALUES ('360400000000', '江西省九江市', '1', '1715');
INSERT INTO `cdg_regioncode` VALUES ('360401000000', '江西省九江市市辖区', '1', '1716');
INSERT INTO `cdg_regioncode` VALUES ('360402000000', '江西省九江市庐山区', '1', '1717');
INSERT INTO `cdg_regioncode` VALUES ('360403000000', '江西省九江市浔阳区', '1', '1718');
INSERT INTO `cdg_regioncode` VALUES ('360421000000', '江西省九江县', '1', '1719');
INSERT INTO `cdg_regioncode` VALUES ('360423000000', '江西省武宁县', '1', '1720');
INSERT INTO `cdg_regioncode` VALUES ('360424000000', '江西省修水县', '1', '1721');
INSERT INTO `cdg_regioncode` VALUES ('360425000000', '江西省永修县', '1', '1722');
INSERT INTO `cdg_regioncode` VALUES ('360426000000', '江西省德安县', '1', '1723');
INSERT INTO `cdg_regioncode` VALUES ('360427000000', '江西省星子县', '1', '1724');
INSERT INTO `cdg_regioncode` VALUES ('360428000000', '江西省都昌县', '1', '1725');
INSERT INTO `cdg_regioncode` VALUES ('360429000000', '江西省湖口县', '1', '1726');
INSERT INTO `cdg_regioncode` VALUES ('360430000000', '江西省彭泽县', '1', '1727');
INSERT INTO `cdg_regioncode` VALUES ('360481000000', '江西省瑞昌市', '1', '1728');
INSERT INTO `cdg_regioncode` VALUES ('360500000000', '江西省新余市', '1', '1729');
INSERT INTO `cdg_regioncode` VALUES ('360501000000', '江西省新余市市辖区', '1', '1730');
INSERT INTO `cdg_regioncode` VALUES ('360502000000', '江西省新余市渝水区', '1', '1731');
INSERT INTO `cdg_regioncode` VALUES ('360521000000', '江西省分宜县', '1', '1732');
INSERT INTO `cdg_regioncode` VALUES ('360600000000', '江西省鹰潭市', '1', '1733');
INSERT INTO `cdg_regioncode` VALUES ('360601000000', '江西省鹰潭市市辖区', '1', '1734');
INSERT INTO `cdg_regioncode` VALUES ('360602000000', '江西省鹰潭市月湖区', '1', '1735');
INSERT INTO `cdg_regioncode` VALUES ('360622000000', '江西省余江县', '1', '1736');
INSERT INTO `cdg_regioncode` VALUES ('360681000000', '江西省贵溪市', '1', '1737');
INSERT INTO `cdg_regioncode` VALUES ('360700000000', '江西省赣州市', '1', '1738');
INSERT INTO `cdg_regioncode` VALUES ('360701000000', '江西省赣州市市辖区', '1', '1739');
INSERT INTO `cdg_regioncode` VALUES ('360702000000', '江西省赣州市章贡区', '1', '1740');
INSERT INTO `cdg_regioncode` VALUES ('360721000000', '江西省赣县', '1', '1741');
INSERT INTO `cdg_regioncode` VALUES ('360722000000', '江西省信丰县', '1', '1742');
INSERT INTO `cdg_regioncode` VALUES ('360723000000', '江西省大余县', '1', '1743');
INSERT INTO `cdg_regioncode` VALUES ('360724000000', '江西省上犹县', '1', '1744');
INSERT INTO `cdg_regioncode` VALUES ('360725000000', '江西省崇义县', '1', '1745');
INSERT INTO `cdg_regioncode` VALUES ('360726000000', '江西省安远县', '1', '1746');
INSERT INTO `cdg_regioncode` VALUES ('360727000000', '江西省龙南县', '1', '1747');
INSERT INTO `cdg_regioncode` VALUES ('360728000000', '江西省定南县', '1', '1748');
INSERT INTO `cdg_regioncode` VALUES ('360729000000', '江西省全南县', '1', '1749');
INSERT INTO `cdg_regioncode` VALUES ('360730000000', '江西省宁都县', '1', '1750');
INSERT INTO `cdg_regioncode` VALUES ('360731000000', '江西省于都县', '1', '1751');
INSERT INTO `cdg_regioncode` VALUES ('360732000000', '江西省兴国县', '1', '1752');
INSERT INTO `cdg_regioncode` VALUES ('360733000000', '江西省会昌县', '1', '1753');
INSERT INTO `cdg_regioncode` VALUES ('360734000000', '江西省寻乌县', '1', '1754');
INSERT INTO `cdg_regioncode` VALUES ('360735000000', '江西省石城县', '1', '1755');
INSERT INTO `cdg_regioncode` VALUES ('360781000000', '江西省瑞金市', '1', '1756');
INSERT INTO `cdg_regioncode` VALUES ('360782000000', '江西省南康市', '1', '1757');
INSERT INTO `cdg_regioncode` VALUES ('360800000000', '江西省吉安市', '1', '1758');
INSERT INTO `cdg_regioncode` VALUES ('360801000000', '江西省吉安市市辖区', '1', '1759');
INSERT INTO `cdg_regioncode` VALUES ('360802000000', '江西省吉安市吉州区', '1', '1760');
INSERT INTO `cdg_regioncode` VALUES ('360803000000', '江西省吉安市青原区', '1', '1761');
INSERT INTO `cdg_regioncode` VALUES ('360821000000', '江西省吉安县', '1', '1762');
INSERT INTO `cdg_regioncode` VALUES ('360822000000', '江西省吉水县', '1', '1763');
INSERT INTO `cdg_regioncode` VALUES ('360823000000', '江西省峡江县', '1', '1764');
INSERT INTO `cdg_regioncode` VALUES ('360824000000', '江西省新干县', '1', '1765');
INSERT INTO `cdg_regioncode` VALUES ('360825000000', '江西省永丰县', '1', '1766');
INSERT INTO `cdg_regioncode` VALUES ('360826000000', '江西省泰和县', '1', '1767');
INSERT INTO `cdg_regioncode` VALUES ('360827000000', '江西省遂川县', '1', '1768');
INSERT INTO `cdg_regioncode` VALUES ('360828000000', '江西省万安县', '1', '1769');
INSERT INTO `cdg_regioncode` VALUES ('360829000000', '江西省安福县', '1', '1770');
INSERT INTO `cdg_regioncode` VALUES ('360830000000', '江西省永新县', '1', '1771');
INSERT INTO `cdg_regioncode` VALUES ('360881000000', '江西省井冈山市', '1', '1772');
INSERT INTO `cdg_regioncode` VALUES ('360900000000', '江西省宜春市', '1', '1773');
INSERT INTO `cdg_regioncode` VALUES ('360901000000', '江西省宜春市市辖区', '1', '1774');
INSERT INTO `cdg_regioncode` VALUES ('360902000000', '江西省宜春市袁州区', '1', '1775');
INSERT INTO `cdg_regioncode` VALUES ('360921000000', '江西省奉新县', '1', '1776');
INSERT INTO `cdg_regioncode` VALUES ('360922000000', '江西省万载县', '1', '1777');
INSERT INTO `cdg_regioncode` VALUES ('360923000000', '江西省上高县', '1', '1778');
INSERT INTO `cdg_regioncode` VALUES ('360924000000', '江西省宜丰县', '1', '1779');
INSERT INTO `cdg_regioncode` VALUES ('360925000000', '江西省靖安县', '1', '1780');
INSERT INTO `cdg_regioncode` VALUES ('360926000000', '江西省铜鼓县', '1', '1781');
INSERT INTO `cdg_regioncode` VALUES ('360981000000', '江西省丰城市', '1', '1782');
INSERT INTO `cdg_regioncode` VALUES ('360982000000', '江西省樟树市', '1', '1783');
INSERT INTO `cdg_regioncode` VALUES ('360983000000', '江西省高安市', '1', '1784');
INSERT INTO `cdg_regioncode` VALUES ('361000000000', '江西省抚州市', '1', '1785');
INSERT INTO `cdg_regioncode` VALUES ('361001000000', '江西省抚州市市辖区', '1', '1786');
INSERT INTO `cdg_regioncode` VALUES ('361002000000', '江西省抚州市临川区', '1', '1787');
INSERT INTO `cdg_regioncode` VALUES ('361021000000', '江西省南城县', '1', '1788');
INSERT INTO `cdg_regioncode` VALUES ('361022000000', '江西省黎川县', '1', '1789');
INSERT INTO `cdg_regioncode` VALUES ('361023000000', '江西省南丰县', '1', '1790');
INSERT INTO `cdg_regioncode` VALUES ('361024000000', '江西省崇仁县', '1', '1791');
INSERT INTO `cdg_regioncode` VALUES ('361025000000', '江西省乐安县', '1', '1792');
INSERT INTO `cdg_regioncode` VALUES ('361026000000', '江西省宜黄县', '1', '1793');
INSERT INTO `cdg_regioncode` VALUES ('361027000000', '江西省金溪县', '1', '1794');
INSERT INTO `cdg_regioncode` VALUES ('361028000000', '江西省资溪县', '1', '1795');
INSERT INTO `cdg_regioncode` VALUES ('361029000000', '江西省东乡县', '1', '1796');
INSERT INTO `cdg_regioncode` VALUES ('361030000000', '江西省广昌县', '1', '1797');
INSERT INTO `cdg_regioncode` VALUES ('361100000000', '江西省上饶市', '1', '1798');
INSERT INTO `cdg_regioncode` VALUES ('361101000000', '江西省上饶市市辖区', '1', '1799');
INSERT INTO `cdg_regioncode` VALUES ('370100000000', '山东省济南市', '1', '1813');
INSERT INTO `cdg_regioncode` VALUES ('370101000000', '山东省济南市市辖区', '1', '1814');
INSERT INTO `cdg_regioncode` VALUES ('370102000000', '山东省济南市历下区', '1', '1815');
INSERT INTO `cdg_regioncode` VALUES ('370103000000', '山东省济南市市中区', '1', '1816');
INSERT INTO `cdg_regioncode` VALUES ('370104000000', '山东省济南市槐荫区', '1', '1817');
INSERT INTO `cdg_regioncode` VALUES ('370105000000', '山东省济南市天桥区', '1', '1818');
INSERT INTO `cdg_regioncode` VALUES ('370112000000', '山东省济南市历城区', '1', '1819');
INSERT INTO `cdg_regioncode` VALUES ('370113000000', '山东省济南市长清区', '1', '1820');
INSERT INTO `cdg_regioncode` VALUES ('370124000000', '山东省平阴县', '1', '1821');
INSERT INTO `cdg_regioncode` VALUES ('370125000000', '山东省济阳县', '1', '1822');
INSERT INTO `cdg_regioncode` VALUES ('370126000000', '山东省商河县', '1', '1823');
INSERT INTO `cdg_regioncode` VALUES ('370181000000', '山东省章丘市', '1', '1824');
INSERT INTO `cdg_regioncode` VALUES ('370200000000', '山东省青岛市', '1', '1825');
INSERT INTO `cdg_regioncode` VALUES ('370201000000', '山东省青岛市市辖区', '1', '1826');
INSERT INTO `cdg_regioncode` VALUES ('370202000000', '山东省青岛市市南区', '1', '1827');
INSERT INTO `cdg_regioncode` VALUES ('370203000000', '山东省青岛市市北区', '1', '1828');
INSERT INTO `cdg_regioncode` VALUES ('370205000000', '山东省青岛市四方区', '1', '1829');
INSERT INTO `cdg_regioncode` VALUES ('370211000000', '山东省青岛市黄岛区', '1', '1830');
INSERT INTO `cdg_regioncode` VALUES ('370212000000', '山东省青岛市崂山区', '1', '1831');
INSERT INTO `cdg_regioncode` VALUES ('370213000000', '山东省青岛市李沧区', '1', '1832');
INSERT INTO `cdg_regioncode` VALUES ('370214000000', '山东省青岛市城阳区', '1', '1833');
INSERT INTO `cdg_regioncode` VALUES ('370281000000', '山东省胶州市', '1', '1834');
INSERT INTO `cdg_regioncode` VALUES ('370282000000', '山东省即墨市', '1', '1835');
INSERT INTO `cdg_regioncode` VALUES ('370283000000', '山东省平度市', '1', '1836');
INSERT INTO `cdg_regioncode` VALUES ('370284000000', '山东省胶南市', '1', '1837');
INSERT INTO `cdg_regioncode` VALUES ('370285000000', '山东省莱西市', '1', '1838');
INSERT INTO `cdg_regioncode` VALUES ('370300000000', '山东省淄博市', '1', '1839');
INSERT INTO `cdg_regioncode` VALUES ('370301000000', '山东省淄博市市辖区', '1', '1840');
INSERT INTO `cdg_regioncode` VALUES ('370302000000', '山东省淄博市淄川区', '1', '1841');
INSERT INTO `cdg_regioncode` VALUES ('370303000000', '山东省淄博市张店区', '1', '1842');
INSERT INTO `cdg_regioncode` VALUES ('370304000000', '山东省淄博市博山区', '1', '1843');
INSERT INTO `cdg_regioncode` VALUES ('370305000000', '山东省淄博市临淄区', '1', '1844');
INSERT INTO `cdg_regioncode` VALUES ('370306000000', '山东省淄博市周村区', '1', '1845');
INSERT INTO `cdg_regioncode` VALUES ('370321000000', '山东省桓台县', '1', '1846');
INSERT INTO `cdg_regioncode` VALUES ('370322000000', '山东省高青县', '1', '1847');
INSERT INTO `cdg_regioncode` VALUES ('370323000000', '山东省沂源县', '1', '1848');
INSERT INTO `cdg_regioncode` VALUES ('370400000000', '山东省枣庄市', '1', '1849');
INSERT INTO `cdg_regioncode` VALUES ('370401000000', '山东省枣庄市市辖区', '1', '1850');
INSERT INTO `cdg_regioncode` VALUES ('370402000000', '山东省枣庄市市中区', '1', '1851');
INSERT INTO `cdg_regioncode` VALUES ('370403000000', '山东省枣庄市薛城区', '1', '1852');
INSERT INTO `cdg_regioncode` VALUES ('370404000000', '山东省枣庄市峄城区', '1', '1853');
INSERT INTO `cdg_regioncode` VALUES ('370405000000', '山东省枣庄市台儿庄区', '1', '1854');
INSERT INTO `cdg_regioncode` VALUES ('370406000000', '山东省枣庄市山亭区', '1', '1855');
INSERT INTO `cdg_regioncode` VALUES ('370481000000', '山东省滕州市', '1', '1856');
INSERT INTO `cdg_regioncode` VALUES ('370500000000', '山东省东营市', '1', '1857');
INSERT INTO `cdg_regioncode` VALUES ('370501000000', '山东省东营市市辖区', '1', '1858');
INSERT INTO `cdg_regioncode` VALUES ('370502000000', '山东省东营市东营区', '1', '1859');
INSERT INTO `cdg_regioncode` VALUES ('370503000000', '山东省东营市河口区', '1', '1860');
INSERT INTO `cdg_regioncode` VALUES ('370521000000', '山东省垦利县', '1', '1861');
INSERT INTO `cdg_regioncode` VALUES ('370522000000', '山东省利津县', '1', '1862');
INSERT INTO `cdg_regioncode` VALUES ('370523000000', '山东省广饶县', '1', '1863');
INSERT INTO `cdg_regioncode` VALUES ('370600000000', '山东省烟台市', '1', '1864');
INSERT INTO `cdg_regioncode` VALUES ('370601000000', '山东省烟台市市辖区', '1', '1865');
INSERT INTO `cdg_regioncode` VALUES ('370602000000', '山东省烟台市芝罘区', '1', '1866');
INSERT INTO `cdg_regioncode` VALUES ('370611000000', '山东省烟台市福山区', '1', '1867');
INSERT INTO `cdg_regioncode` VALUES ('370612000000', '山东省烟台市牟平区', '1', '1868');
INSERT INTO `cdg_regioncode` VALUES ('370613000000', '山东省烟台市莱山区', '1', '1869');
INSERT INTO `cdg_regioncode` VALUES ('370634000000', '山东省长岛县', '1', '1870');
INSERT INTO `cdg_regioncode` VALUES ('370681000000', '山东省龙口市', '1', '1871');
INSERT INTO `cdg_regioncode` VALUES ('370682000000', '山东省莱阳市', '1', '1872');
INSERT INTO `cdg_regioncode` VALUES ('370683000000', '山东省莱州市', '1', '1873');
INSERT INTO `cdg_regioncode` VALUES ('370684000000', '山东省蓬莱市', '1', '1874');
INSERT INTO `cdg_regioncode` VALUES ('370685000000', '山东省招远市', '1', '1875');
INSERT INTO `cdg_regioncode` VALUES ('370686000000', '山东省栖霞市', '1', '1876');
INSERT INTO `cdg_regioncode` VALUES ('370687000000', '山东省海阳市', '1', '1877');
INSERT INTO `cdg_regioncode` VALUES ('370700000000', '山东省潍坊市', '1', '1878');
INSERT INTO `cdg_regioncode` VALUES ('370701000000', '山东省潍坊市市辖区', '1', '1879');
INSERT INTO `cdg_regioncode` VALUES ('370702000000', '山东省潍坊市潍城区', '1', '1880');
INSERT INTO `cdg_regioncode` VALUES ('370703000000', '山东省潍坊市寒亭区', '1', '1881');
INSERT INTO `cdg_regioncode` VALUES ('370704000000', '山东省潍坊市坊子区', '1', '1882');
INSERT INTO `cdg_regioncode` VALUES ('370705000000', '山东省潍坊市奎文区', '1', '1883');
INSERT INTO `cdg_regioncode` VALUES ('370724000000', '山东省临朐县', '1', '1884');
INSERT INTO `cdg_regioncode` VALUES ('370725000000', '山东省昌乐县', '1', '1885');
INSERT INTO `cdg_regioncode` VALUES ('370781000000', '山东省青州市', '1', '1886');
INSERT INTO `cdg_regioncode` VALUES ('370782000000', '山东省诸城市', '1', '1887');
INSERT INTO `cdg_regioncode` VALUES ('370783000000', '山东省寿光市', '1', '1888');
INSERT INTO `cdg_regioncode` VALUES ('370784000000', '山东省安丘市', '1', '1889');
INSERT INTO `cdg_regioncode` VALUES ('370785000000', '山东省高密市', '1', '1890');
INSERT INTO `cdg_regioncode` VALUES ('370786000000', '山东省昌邑市', '1', '1891');
INSERT INTO `cdg_regioncode` VALUES ('370800000000', '山东省济宁市', '1', '1892');
INSERT INTO `cdg_regioncode` VALUES ('370801000000', '山东省济宁市市辖区', '1', '1893');
INSERT INTO `cdg_regioncode` VALUES ('370802000000', '山东省济宁市市中区', '1', '1894');
INSERT INTO `cdg_regioncode` VALUES ('370811000000', '山东省济宁市任城区', '1', '1895');
INSERT INTO `cdg_regioncode` VALUES ('370826000000', '山东省微山县', '1', '1896');
INSERT INTO `cdg_regioncode` VALUES ('370827000000', '山东省鱼台县', '1', '1897');
INSERT INTO `cdg_regioncode` VALUES ('370828000000', '山东省金乡县', '1', '1898');
INSERT INTO `cdg_regioncode` VALUES ('370829000000', '山东省嘉祥县', '1', '1899');
INSERT INTO `cdg_regioncode` VALUES ('370983000000', '山东省肥城市', '1', '1913');
INSERT INTO `cdg_regioncode` VALUES ('371000000000', '山东省威海市', '1', '1914');
INSERT INTO `cdg_regioncode` VALUES ('371001000000', '山东省威海市市辖区', '1', '1915');
INSERT INTO `cdg_regioncode` VALUES ('371002000000', '山东省威海市环翠区', '1', '1916');
INSERT INTO `cdg_regioncode` VALUES ('371081000000', '山东省文登市', '1', '1917');
INSERT INTO `cdg_regioncode` VALUES ('371082000000', '山东省荣成市', '1', '1918');
INSERT INTO `cdg_regioncode` VALUES ('371083000000', '山东省乳山市', '1', '1919');
INSERT INTO `cdg_regioncode` VALUES ('371100000000', '山东省日照市', '1', '1920');
INSERT INTO `cdg_regioncode` VALUES ('371101000000', '山东省日照市市辖区', '1', '1921');
INSERT INTO `cdg_regioncode` VALUES ('371102000000', '山东省日照市东港区', '1', '1922');
INSERT INTO `cdg_regioncode` VALUES ('371121000000', '山东省五莲县', '1', '1923');
INSERT INTO `cdg_regioncode` VALUES ('371122000000', '山东省莒县', '1', '1924');
INSERT INTO `cdg_regioncode` VALUES ('371200000000', '山东省莱芜市', '1', '1925');
INSERT INTO `cdg_regioncode` VALUES ('371201000000', '山东省莱芜市市辖区', '1', '1926');
INSERT INTO `cdg_regioncode` VALUES ('371202000000', '山东省莱芜市莱城区', '1', '1927');
INSERT INTO `cdg_regioncode` VALUES ('371203000000', '山东省莱芜市钢城区', '1', '1928');
INSERT INTO `cdg_regioncode` VALUES ('371300000000', '山东省临沂市', '1', '1929');
INSERT INTO `cdg_regioncode` VALUES ('371301000000', '山东省临沂市市辖区', '1', '1930');
INSERT INTO `cdg_regioncode` VALUES ('371302000000', '山东省临沂市兰山区', '1', '1931');
INSERT INTO `cdg_regioncode` VALUES ('371311000000', '山东省临沂市罗庄区', '1', '1932');
INSERT INTO `cdg_regioncode` VALUES ('371312000000', '山东省临沂市河东区', '1', '1933');
INSERT INTO `cdg_regioncode` VALUES ('371321000000', '山东省沂南县', '1', '1934');
INSERT INTO `cdg_regioncode` VALUES ('371322000000', '山东省郯城县', '1', '1935');
INSERT INTO `cdg_regioncode` VALUES ('371323000000', '山东省沂水县', '1', '1936');
INSERT INTO `cdg_regioncode` VALUES ('371324000000', '山东省苍山县', '1', '1937');
INSERT INTO `cdg_regioncode` VALUES ('371325000000', '山东省费县', '1', '1938');
INSERT INTO `cdg_regioncode` VALUES ('371326000000', '山东省平邑县', '1', '1939');
INSERT INTO `cdg_regioncode` VALUES ('371327000000', '山东省莒南县', '1', '1940');
INSERT INTO `cdg_regioncode` VALUES ('371328000000', '山东省蒙阴县', '1', '1941');
INSERT INTO `cdg_regioncode` VALUES ('371329000000', '山东省临沭县', '1', '1942');
INSERT INTO `cdg_regioncode` VALUES ('371400000000', '山东省德州市', '1', '1943');
INSERT INTO `cdg_regioncode` VALUES ('371401000000', '山东省德州市市辖区', '1', '1944');
INSERT INTO `cdg_regioncode` VALUES ('371402000000', '山东省德州市德城区', '1', '1945');
INSERT INTO `cdg_regioncode` VALUES ('371421000000', '山东省陵县', '1', '1946');
INSERT INTO `cdg_regioncode` VALUES ('371422000000', '山东省宁津县', '1', '1947');
INSERT INTO `cdg_regioncode` VALUES ('371423000000', '山东省庆云县', '1', '1948');
INSERT INTO `cdg_regioncode` VALUES ('371424000000', '山东省临邑县', '1', '1949');
INSERT INTO `cdg_regioncode` VALUES ('371425000000', '山东省齐河县', '1', '1950');
INSERT INTO `cdg_regioncode` VALUES ('371426000000', '山东省平原县', '1', '1951');
INSERT INTO `cdg_regioncode` VALUES ('371427000000', '山东省夏津县', '1', '1952');
INSERT INTO `cdg_regioncode` VALUES ('371428000000', '山东省武城县', '1', '1953');
INSERT INTO `cdg_regioncode` VALUES ('371481000000', '山东省乐陵市', '1', '1954');
INSERT INTO `cdg_regioncode` VALUES ('371482000000', '山东省禹城市', '1', '1955');
INSERT INTO `cdg_regioncode` VALUES ('371500000000', '山东省聊城市', '1', '1956');
INSERT INTO `cdg_regioncode` VALUES ('371501000000', '山东省聊城市市辖区', '1', '1957');
INSERT INTO `cdg_regioncode` VALUES ('371502000000', '山东省聊城市东昌府区', '1', '1958');
INSERT INTO `cdg_regioncode` VALUES ('371521000000', '山东省阳谷县', '1', '1959');
INSERT INTO `cdg_regioncode` VALUES ('371522000000', '山东省莘县', '1', '1960');
INSERT INTO `cdg_regioncode` VALUES ('371523000000', '山东省茌平县', '1', '1961');
INSERT INTO `cdg_regioncode` VALUES ('371524000000', '山东省东阿县', '1', '1962');
INSERT INTO `cdg_regioncode` VALUES ('371525000000', '山东省冠县', '1', '1963');
INSERT INTO `cdg_regioncode` VALUES ('371526000000', '山东省高唐县', '1', '1964');
INSERT INTO `cdg_regioncode` VALUES ('371581000000', '山东省临清市', '1', '1965');
INSERT INTO `cdg_regioncode` VALUES ('371600000000', '山东省滨州市', '1', '1966');
INSERT INTO `cdg_regioncode` VALUES ('371601000000', '山东省滨州市市辖区', '1', '1967');
INSERT INTO `cdg_regioncode` VALUES ('371602000000', '山东省滨州市滨城区', '1', '1968');
INSERT INTO `cdg_regioncode` VALUES ('371621000000', '山东省惠民县', '1', '1969');
INSERT INTO `cdg_regioncode` VALUES ('371622000000', '山东省阳信县', '1', '1970');
INSERT INTO `cdg_regioncode` VALUES ('371623000000', '山东省无棣县', '1', '1971');
INSERT INTO `cdg_regioncode` VALUES ('371624000000', '山东省沾化县', '1', '1972');
INSERT INTO `cdg_regioncode` VALUES ('371625000000', '山东省博兴县', '1', '1973');
INSERT INTO `cdg_regioncode` VALUES ('371626000000', '山东省邹平县', '1', '1974');
INSERT INTO `cdg_regioncode` VALUES ('371700000000', '山东省荷泽市', '1', '1975');
INSERT INTO `cdg_regioncode` VALUES ('371701000000', '山东省荷泽市市辖区', '1', '1976');
INSERT INTO `cdg_regioncode` VALUES ('371702000000', '山东省荷泽市牡丹区', '1', '1977');
INSERT INTO `cdg_regioncode` VALUES ('371721000000', '山东省曹县', '1', '1978');
INSERT INTO `cdg_regioncode` VALUES ('371722000000', '山东省单县', '1', '1979');
INSERT INTO `cdg_regioncode` VALUES ('371723000000', '山东省成武县', '1', '1980');
INSERT INTO `cdg_regioncode` VALUES ('371724000000', '山东省巨野县', '1', '1981');
INSERT INTO `cdg_regioncode` VALUES ('371725000000', '山东省郓城县', '1', '1982');
INSERT INTO `cdg_regioncode` VALUES ('371726000000', '山东省鄄城县', '1', '1983');
INSERT INTO `cdg_regioncode` VALUES ('371727000000', '山东省定陶县', '1', '1984');
INSERT INTO `cdg_regioncode` VALUES ('371728000000', '山东省东明县', '1', '1985');
INSERT INTO `cdg_regioncode` VALUES ('410000000000', '河南省', '1', '1986');
INSERT INTO `cdg_regioncode` VALUES ('410100000000', '河南省郑州市', '1', '1987');
INSERT INTO `cdg_regioncode` VALUES ('410101000000', '河南省郑州市市辖区', '1', '1988');
INSERT INTO `cdg_regioncode` VALUES ('410102000000', '河南省郑州市中原区', '1', '1989');
INSERT INTO `cdg_regioncode` VALUES ('410103000000', '河南省郑州市二七区', '1', '1990');
INSERT INTO `cdg_regioncode` VALUES ('410104000000', '河南省郑州市管城回族区', '1', '1991');
INSERT INTO `cdg_regioncode` VALUES ('410105000000', '河南省郑州市金水区', '1', '1992');
INSERT INTO `cdg_regioncode` VALUES ('410106000000', '河南省郑州市上街区', '1', '1993');
INSERT INTO `cdg_regioncode` VALUES ('410108000000', '河南省郑州市邙山区', '1', '1994');
INSERT INTO `cdg_regioncode` VALUES ('410122000000', '河南省中牟县', '1', '1995');
INSERT INTO `cdg_regioncode` VALUES ('410181000000', '河南省巩义市', '1', '1996');
INSERT INTO `cdg_regioncode` VALUES ('410182000000', '河南省荥阳市', '1', '1997');
INSERT INTO `cdg_regioncode` VALUES ('410183000000', '河南省新密市', '1', '1998');
INSERT INTO `cdg_regioncode` VALUES ('410184000000', '河南省新郑市', '1', '1999');
INSERT INTO `cdg_regioncode` VALUES ('410300000000', '河南省洛阳市', '1', '2013');
INSERT INTO `cdg_regioncode` VALUES ('410301000000', '河南省洛阳市市辖区', '1', '2014');
INSERT INTO `cdg_regioncode` VALUES ('410302000000', '河南省洛阳市老城区', '1', '2015');
INSERT INTO `cdg_regioncode` VALUES ('410303000000', '河南省洛阳市西工区', '1', '2016');
INSERT INTO `cdg_regioncode` VALUES ('410304000000', '河南省洛阳市廛河回族区', '1', '2017');
INSERT INTO `cdg_regioncode` VALUES ('410305000000', '河南省洛阳市涧西区', '1', '2018');
INSERT INTO `cdg_regioncode` VALUES ('410306000000', '河南省洛阳市吉利区', '1', '2019');
INSERT INTO `cdg_regioncode` VALUES ('410307000000', '河南省洛阳市洛龙区', '1', '2020');
INSERT INTO `cdg_regioncode` VALUES ('410322000000', '河南省孟津县', '1', '2021');
INSERT INTO `cdg_regioncode` VALUES ('410323000000', '河南省新安县', '1', '2022');
INSERT INTO `cdg_regioncode` VALUES ('410324000000', '河南省栾川县', '1', '2023');
INSERT INTO `cdg_regioncode` VALUES ('410325000000', '河南省嵩县', '1', '2024');
INSERT INTO `cdg_regioncode` VALUES ('410326000000', '河南省汝阳县', '1', '2025');
INSERT INTO `cdg_regioncode` VALUES ('410327000000', '河南省宜阳县', '1', '2026');
INSERT INTO `cdg_regioncode` VALUES ('410328000000', '河南省洛宁县', '1', '2027');
INSERT INTO `cdg_regioncode` VALUES ('410329000000', '河南省伊川县', '1', '2028');
INSERT INTO `cdg_regioncode` VALUES ('410381000000', '河南省偃师市', '1', '2029');
INSERT INTO `cdg_regioncode` VALUES ('410400000000', '河南省平顶山市', '1', '2030');
INSERT INTO `cdg_regioncode` VALUES ('410401000000', '河南省平顶山市市辖区', '1', '2031');
INSERT INTO `cdg_regioncode` VALUES ('410402000000', '河南省平顶山市新华区', '1', '2032');
INSERT INTO `cdg_regioncode` VALUES ('410403000000', '河南省平顶山市卫东区', '1', '2033');
INSERT INTO `cdg_regioncode` VALUES ('410404000000', '河南省平顶山市石龙区', '1', '2034');
INSERT INTO `cdg_regioncode` VALUES ('410411000000', '河南省平顶山市湛河区', '1', '2035');
INSERT INTO `cdg_regioncode` VALUES ('410421000000', '河南省宝丰县', '1', '2036');
INSERT INTO `cdg_regioncode` VALUES ('410422000000', '河南省叶县', '1', '2037');
INSERT INTO `cdg_regioncode` VALUES ('410423000000', '河南省鲁山县', '1', '2038');
INSERT INTO `cdg_regioncode` VALUES ('410425000000', '河南省郏县', '1', '2039');
INSERT INTO `cdg_regioncode` VALUES ('410481000000', '河南省舞钢市', '1', '2040');
INSERT INTO `cdg_regioncode` VALUES ('410482000000', '河南省汝州市', '1', '2041');
INSERT INTO `cdg_regioncode` VALUES ('410500000000', '河南省安阳市', '1', '2042');
INSERT INTO `cdg_regioncode` VALUES ('410501000000', '河南省安阳市市辖区', '1', '2043');
INSERT INTO `cdg_regioncode` VALUES ('410502000000', '河南省安阳市文峰区', '1', '2044');
INSERT INTO `cdg_regioncode` VALUES ('410503000000', '河南省安阳市北关区', '1', '2045');
INSERT INTO `cdg_regioncode` VALUES ('410505000000', '河南省安阳市殷都区', '1', '2046');
INSERT INTO `cdg_regioncode` VALUES ('410506000000', '河南省安阳市龙安区', '1', '2047');
INSERT INTO `cdg_regioncode` VALUES ('410522000000', '河南省安阳县', '1', '2048');
INSERT INTO `cdg_regioncode` VALUES ('410523000000', '河南省汤阴县', '1', '2049');
INSERT INTO `cdg_regioncode` VALUES ('410526000000', '河南省滑县', '1', '2050');
INSERT INTO `cdg_regioncode` VALUES ('410527000000', '河南省内黄县', '1', '2051');
INSERT INTO `cdg_regioncode` VALUES ('410581000000', '河南省林州市', '1', '2052');
INSERT INTO `cdg_regioncode` VALUES ('410600000000', '河南省鹤壁市', '1', '2053');
INSERT INTO `cdg_regioncode` VALUES ('410601000000', '河南省鹤壁市市辖区', '1', '2054');
INSERT INTO `cdg_regioncode` VALUES ('410602000000', '河南省鹤壁市鹤山区', '1', '2055');
INSERT INTO `cdg_regioncode` VALUES ('410603000000', '河南省鹤壁市山城区', '1', '2056');
INSERT INTO `cdg_regioncode` VALUES ('410611000000', '河南省鹤壁市淇滨区', '1', '2057');
INSERT INTO `cdg_regioncode` VALUES ('410621000000', '河南省浚县', '1', '2058');
INSERT INTO `cdg_regioncode` VALUES ('410622000000', '河南省淇县', '1', '2059');
INSERT INTO `cdg_regioncode` VALUES ('410700000000', '河南省新乡市', '1', '2060');
INSERT INTO `cdg_regioncode` VALUES ('410701000000', '河南省新乡市市辖区', '1', '2061');
INSERT INTO `cdg_regioncode` VALUES ('410702000000', '河南省新乡市红旗区', '1', '2062');
INSERT INTO `cdg_regioncode` VALUES ('410703000000', '河南省新乡市卫滨区', '1', '2063');
INSERT INTO `cdg_regioncode` VALUES ('410704000000', '河南省新乡市凤泉区', '1', '2064');
INSERT INTO `cdg_regioncode` VALUES ('410711000000', '河南省新乡市牧野区', '1', '2065');
INSERT INTO `cdg_regioncode` VALUES ('410721000000', '河南省新乡县', '1', '2066');
INSERT INTO `cdg_regioncode` VALUES ('410724000000', '河南省获嘉县', '1', '2067');
INSERT INTO `cdg_regioncode` VALUES ('410725000000', '河南省原阳县', '1', '2068');
INSERT INTO `cdg_regioncode` VALUES ('410726000000', '河南省延津县', '1', '2069');
INSERT INTO `cdg_regioncode` VALUES ('410727000000', '河南省封丘县', '1', '2070');
INSERT INTO `cdg_regioncode` VALUES ('410728000000', '河南省长垣县', '1', '2071');
INSERT INTO `cdg_regioncode` VALUES ('410781000000', '河南省卫辉市', '1', '2072');
INSERT INTO `cdg_regioncode` VALUES ('410782000000', '河南省辉县市', '1', '2073');
INSERT INTO `cdg_regioncode` VALUES ('410800000000', '河南省焦作市', '1', '2074');
INSERT INTO `cdg_regioncode` VALUES ('410801000000', '河南省焦作市市辖区', '1', '2075');
INSERT INTO `cdg_regioncode` VALUES ('410802000000', '河南省焦作市解放区', '1', '2076');
INSERT INTO `cdg_regioncode` VALUES ('410803000000', '河南省焦作市中站区', '1', '2077');
INSERT INTO `cdg_regioncode` VALUES ('410804000000', '河南省焦作市马村区', '1', '2078');
INSERT INTO `cdg_regioncode` VALUES ('410811000000', '河南省焦作市山阳区', '1', '2079');
INSERT INTO `cdg_regioncode` VALUES ('410821000000', '河南省修武县', '1', '2080');
INSERT INTO `cdg_regioncode` VALUES ('410822000000', '河南省博爱县', '1', '2081');
INSERT INTO `cdg_regioncode` VALUES ('410823000000', '河南省武陟县', '1', '2082');
INSERT INTO `cdg_regioncode` VALUES ('410825000000', '河南省温县', '1', '2083');
INSERT INTO `cdg_regioncode` VALUES ('410881000000', '河南省济源市', '1', '2084');
INSERT INTO `cdg_regioncode` VALUES ('410882000000', '河南省沁阳市', '1', '2085');
INSERT INTO `cdg_regioncode` VALUES ('410883000000', '河南省孟州市', '1', '2086');
INSERT INTO `cdg_regioncode` VALUES ('410900000000', '河南省濮阳市', '1', '2087');
INSERT INTO `cdg_regioncode` VALUES ('410901000000', '河南省濮阳市市辖区', '1', '2088');
INSERT INTO `cdg_regioncode` VALUES ('410902000000', '河南省濮阳市华龙区', '1', '2089');
INSERT INTO `cdg_regioncode` VALUES ('410922000000', '河南省清丰县', '1', '2090');
INSERT INTO `cdg_regioncode` VALUES ('410923000000', '河南省南乐县', '1', '2091');
INSERT INTO `cdg_regioncode` VALUES ('410926000000', '河南省范县', '1', '2092');
INSERT INTO `cdg_regioncode` VALUES ('410927000000', '河南省台前县', '1', '2093');
INSERT INTO `cdg_regioncode` VALUES ('410928000000', '河南省濮阳县', '1', '2094');
INSERT INTO `cdg_regioncode` VALUES ('411000000000', '河南省许昌市', '1', '2095');
INSERT INTO `cdg_regioncode` VALUES ('411001000000', '河南省许昌市市辖区', '1', '2096');
INSERT INTO `cdg_regioncode` VALUES ('411002000000', '河南省许昌市魏都区', '1', '2097');
INSERT INTO `cdg_regioncode` VALUES ('411023000000', '河南省许昌县', '1', '2098');
INSERT INTO `cdg_regioncode` VALUES ('411024000000', '河南省鄢陵县', '1', '2099');
INSERT INTO `cdg_regioncode` VALUES ('411222000000', '河南省陕县', '1', '2113');
INSERT INTO `cdg_regioncode` VALUES ('411224000000', '河南省卢氏县', '1', '2114');
INSERT INTO `cdg_regioncode` VALUES ('411281000000', '河南省义马市', '1', '2115');
INSERT INTO `cdg_regioncode` VALUES ('411282000000', '河南省灵宝市', '1', '2116');
INSERT INTO `cdg_regioncode` VALUES ('411300000000', '河南省南阳市', '1', '2117');
INSERT INTO `cdg_regioncode` VALUES ('411301000000', '河南省南阳市市辖区', '1', '2118');
INSERT INTO `cdg_regioncode` VALUES ('411302000000', '河南省南阳市宛城区', '1', '2119');
INSERT INTO `cdg_regioncode` VALUES ('411303000000', '河南省南阳市卧龙区', '1', '2120');
INSERT INTO `cdg_regioncode` VALUES ('411321000000', '河南省南召县', '1', '2121');
INSERT INTO `cdg_regioncode` VALUES ('411322000000', '河南省方城县', '1', '2122');
INSERT INTO `cdg_regioncode` VALUES ('411323000000', '河南省西峡县', '1', '2123');
INSERT INTO `cdg_regioncode` VALUES ('411324000000', '河南省镇平县', '1', '2124');
INSERT INTO `cdg_regioncode` VALUES ('411325000000', '河南省内乡县', '1', '2125');
INSERT INTO `cdg_regioncode` VALUES ('411326000000', '河南省淅川县', '1', '2126');
INSERT INTO `cdg_regioncode` VALUES ('411327000000', '河南省社旗县', '1', '2127');
INSERT INTO `cdg_regioncode` VALUES ('411328000000', '河南省唐河县', '1', '2128');
INSERT INTO `cdg_regioncode` VALUES ('411329000000', '河南省新野县', '1', '2129');
INSERT INTO `cdg_regioncode` VALUES ('411330000000', '河南省桐柏县', '1', '2130');
INSERT INTO `cdg_regioncode` VALUES ('411381000000', '河南省邓州市', '1', '2131');
INSERT INTO `cdg_regioncode` VALUES ('411400000000', '河南省商丘市', '1', '2132');
INSERT INTO `cdg_regioncode` VALUES ('411401000000', '河南省商丘市市辖区', '1', '2133');
INSERT INTO `cdg_regioncode` VALUES ('411402000000', '河南省商丘市梁园区', '1', '2134');
INSERT INTO `cdg_regioncode` VALUES ('411403000000', '河南省商丘市睢阳区', '1', '2135');
INSERT INTO `cdg_regioncode` VALUES ('411421000000', '河南省民权县', '1', '2136');
INSERT INTO `cdg_regioncode` VALUES ('411422000000', '河南省睢县', '1', '2137');
INSERT INTO `cdg_regioncode` VALUES ('411423000000', '河南省宁陵县', '1', '2138');
INSERT INTO `cdg_regioncode` VALUES ('411424000000', '河南省柘城县', '1', '2139');
INSERT INTO `cdg_regioncode` VALUES ('411425000000', '河南省虞城县', '1', '2140');
INSERT INTO `cdg_regioncode` VALUES ('411426000000', '河南省夏邑县', '1', '2141');
INSERT INTO `cdg_regioncode` VALUES ('411481000000', '河南省永城市', '1', '2142');
INSERT INTO `cdg_regioncode` VALUES ('411500000000', '河南省信阳市', '1', '2143');
INSERT INTO `cdg_regioncode` VALUES ('411501000000', '河南省信阳市市辖区', '1', '2144');
INSERT INTO `cdg_regioncode` VALUES ('411502000000', '河南省信阳市师河区', '1', '2145');
INSERT INTO `cdg_regioncode` VALUES ('411503000000', '河南省信阳市平桥区', '1', '2146');
INSERT INTO `cdg_regioncode` VALUES ('411521000000', '河南省罗山县', '1', '2147');
INSERT INTO `cdg_regioncode` VALUES ('411522000000', '河南省光山县', '1', '2148');
INSERT INTO `cdg_regioncode` VALUES ('411523000000', '河南省新县', '1', '2149');
INSERT INTO `cdg_regioncode` VALUES ('411524000000', '河南省商城县', '1', '2150');
INSERT INTO `cdg_regioncode` VALUES ('411525000000', '河南省固始县', '1', '2151');
INSERT INTO `cdg_regioncode` VALUES ('411526000000', '河南省潢川县', '1', '2152');
INSERT INTO `cdg_regioncode` VALUES ('411527000000', '河南省淮滨县', '1', '2153');
INSERT INTO `cdg_regioncode` VALUES ('411528000000', '河南省息县', '1', '2154');
INSERT INTO `cdg_regioncode` VALUES ('411600000000', '河南省周口市', '1', '2155');
INSERT INTO `cdg_regioncode` VALUES ('411601000000', '河南省周口市市辖区', '1', '2156');
INSERT INTO `cdg_regioncode` VALUES ('411602000000', '河南省周口市川汇区', '1', '2157');
INSERT INTO `cdg_regioncode` VALUES ('411621000000', '河南省扶沟县', '1', '2158');
INSERT INTO `cdg_regioncode` VALUES ('411622000000', '河南省西华县', '1', '2159');
INSERT INTO `cdg_regioncode` VALUES ('411623000000', '河南省商水县', '1', '2160');
INSERT INTO `cdg_regioncode` VALUES ('411624000000', '河南省沈丘县', '1', '2161');
INSERT INTO `cdg_regioncode` VALUES ('411625000000', '河南省郸城县', '1', '2162');
INSERT INTO `cdg_regioncode` VALUES ('411626000000', '河南省淮阳县', '1', '2163');
INSERT INTO `cdg_regioncode` VALUES ('411627000000', '河南省太康县', '1', '2164');
INSERT INTO `cdg_regioncode` VALUES ('411628000000', '河南省鹿邑县', '1', '2165');
INSERT INTO `cdg_regioncode` VALUES ('411681000000', '河南省项城市', '1', '2166');
INSERT INTO `cdg_regioncode` VALUES ('411700000000', '河南省驻马店市', '1', '2167');
INSERT INTO `cdg_regioncode` VALUES ('411701000000', '河南省驻马店市市辖区', '1', '2168');
INSERT INTO `cdg_regioncode` VALUES ('411702000000', '河南省驻马店市驿城区', '1', '2169');
INSERT INTO `cdg_regioncode` VALUES ('411721000000', '河南省西平县', '1', '2170');
INSERT INTO `cdg_regioncode` VALUES ('411722000000', '河南省上蔡县', '1', '2171');
INSERT INTO `cdg_regioncode` VALUES ('411723000000', '河南省平舆县', '1', '2172');
INSERT INTO `cdg_regioncode` VALUES ('411724000000', '河南省正阳县', '1', '2173');
INSERT INTO `cdg_regioncode` VALUES ('411725000000', '河南省确山县', '1', '2174');
INSERT INTO `cdg_regioncode` VALUES ('411726000000', '河南省泌阳县', '1', '2175');
INSERT INTO `cdg_regioncode` VALUES ('411727000000', '河南省汝南县', '1', '2176');
INSERT INTO `cdg_regioncode` VALUES ('411728000000', '河南省遂平县', '1', '2177');
INSERT INTO `cdg_regioncode` VALUES ('411729000000', '河南省新蔡县', '1', '2178');
INSERT INTO `cdg_regioncode` VALUES ('420000000000', '湖北省', '1', '2179');
INSERT INTO `cdg_regioncode` VALUES ('420100000000', '湖北省武汉市', '1', '2180');
INSERT INTO `cdg_regioncode` VALUES ('420101000000', '湖北省武汉市市辖区', '1', '2181');
INSERT INTO `cdg_regioncode` VALUES ('420102000000', '湖北省武汉市江岸区', '1', '2182');
INSERT INTO `cdg_regioncode` VALUES ('420103000000', '湖北省武汉市江汉区', '1', '2183');
INSERT INTO `cdg_regioncode` VALUES ('420104000000', '湖北省武汉市乔口区', '1', '2184');
INSERT INTO `cdg_regioncode` VALUES ('420105000000', '湖北省武汉市汉阳区', '1', '2185');
INSERT INTO `cdg_regioncode` VALUES ('420106000000', '湖北省武汉市武昌区', '1', '2186');
INSERT INTO `cdg_regioncode` VALUES ('420107000000', '湖北省武汉市青山区', '1', '2187');
INSERT INTO `cdg_regioncode` VALUES ('420111000000', '湖北省武汉市洪山区', '1', '2188');
INSERT INTO `cdg_regioncode` VALUES ('420112000000', '湖北省武汉市东西湖区', '1', '2189');
INSERT INTO `cdg_regioncode` VALUES ('420113000000', '湖北省武汉市汉南区', '1', '2190');
INSERT INTO `cdg_regioncode` VALUES ('420114000000', '湖北省武汉市蔡甸区', '1', '2191');
INSERT INTO `cdg_regioncode` VALUES ('420115000000', '湖北省武汉市江夏区', '1', '2192');
INSERT INTO `cdg_regioncode` VALUES ('420116000000', '湖北省武汉市黄陂区', '1', '2193');
INSERT INTO `cdg_regioncode` VALUES ('420117000000', '湖北省武汉市新洲区', '1', '2194');
INSERT INTO `cdg_regioncode` VALUES ('420200000000', '湖北省黄石市', '1', '2195');
INSERT INTO `cdg_regioncode` VALUES ('420201000000', '湖北省黄石市市辖区', '1', '2196');
INSERT INTO `cdg_regioncode` VALUES ('420202000000', '湖北省黄石市黄石港区', '1', '2197');
INSERT INTO `cdg_regioncode` VALUES ('420203000000', '湖北省黄石市西塞山区', '1', '2198');
INSERT INTO `cdg_regioncode` VALUES ('420204000000', '湖北省黄石市下陆区', '1', '2199');
INSERT INTO `cdg_regioncode` VALUES ('420500000000', '湖北省宜昌市', '1', '2213');
INSERT INTO `cdg_regioncode` VALUES ('420501000000', '湖北省宜昌市市辖区', '1', '2214');
INSERT INTO `cdg_regioncode` VALUES ('420502000000', '湖北省宜昌市西陵区', '1', '2215');
INSERT INTO `cdg_regioncode` VALUES ('420503000000', '湖北省宜昌市伍家岗区', '1', '2216');
INSERT INTO `cdg_regioncode` VALUES ('420504000000', '湖北省宜昌市点军区', '1', '2217');
INSERT INTO `cdg_regioncode` VALUES ('420505000000', '湖北省宜昌市虎亭区', '1', '2218');
INSERT INTO `cdg_regioncode` VALUES ('420506000000', '湖北省宜昌市夷陵区', '1', '2219');
INSERT INTO `cdg_regioncode` VALUES ('420525000000', '湖北省远安县', '1', '2220');
INSERT INTO `cdg_regioncode` VALUES ('420526000000', '湖北省兴山县', '1', '2221');
INSERT INTO `cdg_regioncode` VALUES ('420527000000', '湖北省秭归县', '1', '2222');
INSERT INTO `cdg_regioncode` VALUES ('420528000000', '湖北省长阳土家族自治县', '1', '2223');
INSERT INTO `cdg_regioncode` VALUES ('420529000000', '湖北省五峰土家族自治县', '1', '2224');
INSERT INTO `cdg_regioncode` VALUES ('420581000000', '湖北省宜都市', '1', '2225');
INSERT INTO `cdg_regioncode` VALUES ('420582000000', '湖北省当阳市', '1', '2226');
INSERT INTO `cdg_regioncode` VALUES ('420583000000', '湖北省枝江市', '1', '2227');
INSERT INTO `cdg_regioncode` VALUES ('420600000000', '湖北省襄樊市', '1', '2228');
INSERT INTO `cdg_regioncode` VALUES ('420601000000', '湖北省襄樊市市辖区', '1', '2229');
INSERT INTO `cdg_regioncode` VALUES ('420602000000', '湖北省襄樊市襄城区', '1', '2230');
INSERT INTO `cdg_regioncode` VALUES ('420606000000', '湖北省襄樊市樊城区', '1', '2231');
INSERT INTO `cdg_regioncode` VALUES ('420607000000', '湖北省襄樊市襄阳区', '1', '2232');
INSERT INTO `cdg_regioncode` VALUES ('420624000000', '湖北省南漳县', '1', '2233');
INSERT INTO `cdg_regioncode` VALUES ('420625000000', '湖北省谷城县', '1', '2234');
INSERT INTO `cdg_regioncode` VALUES ('420626000000', '湖北省保康县', '1', '2235');
INSERT INTO `cdg_regioncode` VALUES ('420682000000', '湖北省老河口市', '1', '2236');
INSERT INTO `cdg_regioncode` VALUES ('420683000000', '湖北省枣阳市', '1', '2237');
INSERT INTO `cdg_regioncode` VALUES ('420684000000', '湖北省宜城市', '1', '2238');
INSERT INTO `cdg_regioncode` VALUES ('420700000000', '湖北省鄂州市', '1', '2239');
INSERT INTO `cdg_regioncode` VALUES ('420701000000', '湖北省鄂州市市辖区', '1', '2240');
INSERT INTO `cdg_regioncode` VALUES ('420702000000', '湖北省鄂州市梁子湖区', '1', '2241');
INSERT INTO `cdg_regioncode` VALUES ('420703000000', '湖北省鄂州市华容区', '1', '2242');
INSERT INTO `cdg_regioncode` VALUES ('420704000000', '湖北省鄂州市鄂城区', '1', '2243');
INSERT INTO `cdg_regioncode` VALUES ('420800000000', '湖北省荆门市', '1', '2244');
INSERT INTO `cdg_regioncode` VALUES ('420801000000', '湖北省荆门市市辖区', '1', '2245');
INSERT INTO `cdg_regioncode` VALUES ('420802000000', '湖北省荆门市东宝区', '1', '2246');
INSERT INTO `cdg_regioncode` VALUES ('420804000000', '湖北省荆门市掇刀区', '1', '2247');
INSERT INTO `cdg_regioncode` VALUES ('420821000000', '湖北省京山县', '1', '2248');
INSERT INTO `cdg_regioncode` VALUES ('420822000000', '湖北省沙洋县', '1', '2249');
INSERT INTO `cdg_regioncode` VALUES ('420881000000', '湖北省钟祥市', '1', '2250');
INSERT INTO `cdg_regioncode` VALUES ('420900000000', '湖北省孝感市', '1', '2251');
INSERT INTO `cdg_regioncode` VALUES ('420901000000', '湖北省孝感市市辖区', '1', '2252');
INSERT INTO `cdg_regioncode` VALUES ('420902000000', '湖北省孝感市孝南区', '1', '2253');
INSERT INTO `cdg_regioncode` VALUES ('420921000000', '湖北省孝昌县', '1', '2254');
INSERT INTO `cdg_regioncode` VALUES ('420922000000', '湖北省大悟县', '1', '2255');
INSERT INTO `cdg_regioncode` VALUES ('420923000000', '湖北省云梦县', '1', '2256');
INSERT INTO `cdg_regioncode` VALUES ('420981000000', '湖北省应城市', '1', '2257');
INSERT INTO `cdg_regioncode` VALUES ('420982000000', '湖北省安陆市', '1', '2258');
INSERT INTO `cdg_regioncode` VALUES ('420984000000', '湖北省汉川市', '1', '2259');
INSERT INTO `cdg_regioncode` VALUES ('421000000000', '湖北省荆州市', '1', '2260');
INSERT INTO `cdg_regioncode` VALUES ('421001000000', '湖北省荆州市市辖区', '1', '2261');
INSERT INTO `cdg_regioncode` VALUES ('421002000000', '湖北省荆州市沙市区', '1', '2262');
INSERT INTO `cdg_regioncode` VALUES ('421003000000', '湖北省荆州市荆州区', '1', '2263');
INSERT INTO `cdg_regioncode` VALUES ('421022000000', '湖北省公安县', '1', '2264');
INSERT INTO `cdg_regioncode` VALUES ('421023000000', '湖北省监利县', '1', '2265');
INSERT INTO `cdg_regioncode` VALUES ('421024000000', '湖北省江陵县', '1', '2266');
INSERT INTO `cdg_regioncode` VALUES ('421081000000', '湖北省石首市', '1', '2267');
INSERT INTO `cdg_regioncode` VALUES ('421083000000', '湖北省洪湖市', '1', '2268');
INSERT INTO `cdg_regioncode` VALUES ('421087000000', '湖北省松滋市', '1', '2269');
INSERT INTO `cdg_regioncode` VALUES ('421100000000', '湖北省黄冈市', '1', '2270');
INSERT INTO `cdg_regioncode` VALUES ('421101000000', '湖北省黄冈市市辖区', '1', '2271');
INSERT INTO `cdg_regioncode` VALUES ('421102000000', '湖北省黄冈市黄州区', '1', '2272');
INSERT INTO `cdg_regioncode` VALUES ('421121000000', '湖北省团风县', '1', '2273');
INSERT INTO `cdg_regioncode` VALUES ('421122000000', '湖北省红安县', '1', '2274');
INSERT INTO `cdg_regioncode` VALUES ('421123000000', '湖北省罗田县', '1', '2275');
INSERT INTO `cdg_regioncode` VALUES ('421124000000', '湖北省英山县', '1', '2276');
INSERT INTO `cdg_regioncode` VALUES ('421125000000', '湖北省浠水县', '1', '2277');
INSERT INTO `cdg_regioncode` VALUES ('421126000000', '湖北省蕲春县', '1', '2278');
INSERT INTO `cdg_regioncode` VALUES ('421127000000', '湖北省黄梅县', '1', '2279');
INSERT INTO `cdg_regioncode` VALUES ('421181000000', '湖北省麻城市', '1', '2280');
INSERT INTO `cdg_regioncode` VALUES ('421182000000', '湖北省武穴市', '1', '2281');
INSERT INTO `cdg_regioncode` VALUES ('421200000000', '湖北省咸宁市', '1', '2282');
INSERT INTO `cdg_regioncode` VALUES ('421201000000', '湖北省咸宁市市辖区', '1', '2283');
INSERT INTO `cdg_regioncode` VALUES ('421202000000', '湖北省咸宁市咸安区', '1', '2284');
INSERT INTO `cdg_regioncode` VALUES ('421221000000', '湖北省嘉鱼县', '1', '2285');
INSERT INTO `cdg_regioncode` VALUES ('421222000000', '湖北省通城县', '1', '2286');
INSERT INTO `cdg_regioncode` VALUES ('421223000000', '湖北省崇阳县', '1', '2287');
INSERT INTO `cdg_regioncode` VALUES ('421224000000', '湖北省通山县', '1', '2288');
INSERT INTO `cdg_regioncode` VALUES ('421281000000', '湖北省赤壁市', '1', '2289');
INSERT INTO `cdg_regioncode` VALUES ('421300000000', '湖北省随州市', '1', '2290');
INSERT INTO `cdg_regioncode` VALUES ('421301000000', '湖北省随州市市辖区', '1', '2291');
INSERT INTO `cdg_regioncode` VALUES ('421302000000', '湖北省随州市曾都区', '1', '2292');
INSERT INTO `cdg_regioncode` VALUES ('421381000000', '湖北省广水市', '1', '2293');
INSERT INTO `cdg_regioncode` VALUES ('422800000000', '湖北省恩施土家族苗族自治州', '1', '2294');
INSERT INTO `cdg_regioncode` VALUES ('422801000000', '湖北省恩施市', '1', '2295');
INSERT INTO `cdg_regioncode` VALUES ('422802000000', '湖北省利川市', '1', '2296');
INSERT INTO `cdg_regioncode` VALUES ('422822000000', '湖北省建始县', '1', '2297');
INSERT INTO `cdg_regioncode` VALUES ('422823000000', '湖北省巴东县', '1', '2298');
INSERT INTO `cdg_regioncode` VALUES ('422825000000', '湖北省宣恩县', '1', '2299');
INSERT INTO `cdg_regioncode` VALUES ('430104000000', '湖南省长沙市岳麓区', '1', '2313');
INSERT INTO `cdg_regioncode` VALUES ('430105000000', '湖南省长沙市开福区', '1', '2314');
INSERT INTO `cdg_regioncode` VALUES ('430111000000', '湖南省长沙市雨花区', '1', '2315');
INSERT INTO `cdg_regioncode` VALUES ('430121000000', '湖南省长沙县', '1', '2316');
INSERT INTO `cdg_regioncode` VALUES ('430122000000', '湖南省望城县', '1', '2317');
INSERT INTO `cdg_regioncode` VALUES ('430124000000', '湖南省宁乡县', '1', '2318');
INSERT INTO `cdg_regioncode` VALUES ('430181000000', '湖南省浏阳市', '1', '2319');
INSERT INTO `cdg_regioncode` VALUES ('430200000000', '湖南省株洲市', '1', '2320');
INSERT INTO `cdg_regioncode` VALUES ('430201000000', '湖南省株洲市市辖区', '1', '2321');
INSERT INTO `cdg_regioncode` VALUES ('430202000000', '湖南省株洲市荷塘区', '1', '2322');
INSERT INTO `cdg_regioncode` VALUES ('430203000000', '湖南省株洲市芦淞区', '1', '2323');
INSERT INTO `cdg_regioncode` VALUES ('430204000000', '湖南省株洲市石峰区', '1', '2324');
INSERT INTO `cdg_regioncode` VALUES ('430211000000', '湖南省株洲市天元区', '1', '2325');
INSERT INTO `cdg_regioncode` VALUES ('430221000000', '湖南省株洲县', '1', '2326');
INSERT INTO `cdg_regioncode` VALUES ('430223000000', '湖南省攸县', '1', '2327');
INSERT INTO `cdg_regioncode` VALUES ('430224000000', '湖南省茶陵县', '1', '2328');
INSERT INTO `cdg_regioncode` VALUES ('430225000000', '湖南省炎陵县', '1', '2329');
INSERT INTO `cdg_regioncode` VALUES ('430281000000', '湖南省醴陵市', '1', '2330');
INSERT INTO `cdg_regioncode` VALUES ('430300000000', '湖南省湘潭市', '1', '2331');
INSERT INTO `cdg_regioncode` VALUES ('430301000000', '湖南省湘潭市市辖区', '1', '2332');
INSERT INTO `cdg_regioncode` VALUES ('430302000000', '湖南省湘潭市雨湖区', '1', '2333');
INSERT INTO `cdg_regioncode` VALUES ('430304000000', '湖南省湘潭市岳塘区', '1', '2334');
INSERT INTO `cdg_regioncode` VALUES ('430321000000', '湖南省湘潭县', '1', '2335');
INSERT INTO `cdg_regioncode` VALUES ('430381000000', '湖南省湘乡市', '1', '2336');
INSERT INTO `cdg_regioncode` VALUES ('430382000000', '湖南省韶山市', '1', '2337');
INSERT INTO `cdg_regioncode` VALUES ('430400000000', '湖南省衡阳市', '1', '2338');
INSERT INTO `cdg_regioncode` VALUES ('430401000000', '湖南省衡阳市市辖区', '1', '2339');
INSERT INTO `cdg_regioncode` VALUES ('430405000000', '湖南省衡阳市珠晖区', '1', '2340');
INSERT INTO `cdg_regioncode` VALUES ('430406000000', '湖南省衡阳市雁峰区', '1', '2341');
INSERT INTO `cdg_regioncode` VALUES ('430407000000', '湖南省衡阳市石鼓区', '1', '2342');
INSERT INTO `cdg_regioncode` VALUES ('430408000000', '湖南省衡阳市蒸湘区', '1', '2343');
INSERT INTO `cdg_regioncode` VALUES ('430412000000', '湖南省衡阳市南岳区', '1', '2344');
INSERT INTO `cdg_regioncode` VALUES ('430421000000', '湖南省衡阳县', '1', '2345');
INSERT INTO `cdg_regioncode` VALUES ('430422000000', '湖南省衡南县', '1', '2346');
INSERT INTO `cdg_regioncode` VALUES ('430423000000', '湖南省衡山县', '1', '2347');
INSERT INTO `cdg_regioncode` VALUES ('430424000000', '湖南省衡东县', '1', '2348');
INSERT INTO `cdg_regioncode` VALUES ('430426000000', '湖南省祁东县', '1', '2349');
INSERT INTO `cdg_regioncode` VALUES ('430481000000', '湖南省耒阳市', '1', '2350');
INSERT INTO `cdg_regioncode` VALUES ('430482000000', '湖南省常宁市', '1', '2351');
INSERT INTO `cdg_regioncode` VALUES ('430500000000', '湖南省邵阳市', '1', '2352');
INSERT INTO `cdg_regioncode` VALUES ('430501000000', '湖南省邵阳市市辖区', '1', '2353');
INSERT INTO `cdg_regioncode` VALUES ('430502000000', '湖南省邵阳市双清区', '1', '2354');
INSERT INTO `cdg_regioncode` VALUES ('430503000000', '湖南省邵阳市大祥区', '1', '2355');
INSERT INTO `cdg_regioncode` VALUES ('430511000000', '湖南省邵阳市北塔区', '1', '2356');
INSERT INTO `cdg_regioncode` VALUES ('430521000000', '湖南省邵东县', '1', '2357');
INSERT INTO `cdg_regioncode` VALUES ('430522000000', '湖南省新邵县', '1', '2358');
INSERT INTO `cdg_regioncode` VALUES ('430523000000', '湖南省邵阳县', '1', '2359');
INSERT INTO `cdg_regioncode` VALUES ('430524000000', '湖南省隆回县', '1', '2360');
INSERT INTO `cdg_regioncode` VALUES ('430525000000', '湖南省洞口县', '1', '2361');
INSERT INTO `cdg_regioncode` VALUES ('430527000000', '湖南省绥宁县', '1', '2362');
INSERT INTO `cdg_regioncode` VALUES ('430528000000', '湖南省新宁县', '1', '2363');
INSERT INTO `cdg_regioncode` VALUES ('430529000000', '湖南省城步苗族自治县', '1', '2364');
INSERT INTO `cdg_regioncode` VALUES ('430581000000', '湖南省武冈市', '1', '2365');
INSERT INTO `cdg_regioncode` VALUES ('430600000000', '湖南省岳阳市', '1', '2366');
INSERT INTO `cdg_regioncode` VALUES ('430601000000', '湖南省岳阳市市辖区', '1', '2367');
INSERT INTO `cdg_regioncode` VALUES ('430602000000', '湖南省岳阳市岳阳楼区', '1', '2368');
INSERT INTO `cdg_regioncode` VALUES ('430603000000', '湖南省岳阳市云溪区', '1', '2369');
INSERT INTO `cdg_regioncode` VALUES ('430611000000', '湖南省岳阳市君山区', '1', '2370');
INSERT INTO `cdg_regioncode` VALUES ('430621000000', '湖南省岳阳县', '1', '2371');
INSERT INTO `cdg_regioncode` VALUES ('430623000000', '湖南省华容县', '1', '2372');
INSERT INTO `cdg_regioncode` VALUES ('430624000000', '湖南省湘阴县', '1', '2373');
INSERT INTO `cdg_regioncode` VALUES ('430626000000', '湖南省平江县', '1', '2374');
INSERT INTO `cdg_regioncode` VALUES ('430681000000', '湖南省汨罗市', '1', '2375');
INSERT INTO `cdg_regioncode` VALUES ('430682000000', '湖南省临湘市', '1', '2376');
INSERT INTO `cdg_regioncode` VALUES ('430700000000', '湖南省常德市', '1', '2377');
INSERT INTO `cdg_regioncode` VALUES ('430701000000', '湖南省常德市市辖区', '1', '2378');
INSERT INTO `cdg_regioncode` VALUES ('430702000000', '湖南省常德市武陵区', '1', '2379');
INSERT INTO `cdg_regioncode` VALUES ('430703000000', '湖南省常德市鼎城区', '1', '2380');
INSERT INTO `cdg_regioncode` VALUES ('430721000000', '湖南省安乡县', '1', '2381');
INSERT INTO `cdg_regioncode` VALUES ('430722000000', '湖南省汉寿县', '1', '2382');
INSERT INTO `cdg_regioncode` VALUES ('430723000000', '湖南省澧县', '1', '2383');
INSERT INTO `cdg_regioncode` VALUES ('430724000000', '湖南省临澧县', '1', '2384');
INSERT INTO `cdg_regioncode` VALUES ('430725000000', '湖南省桃源县', '1', '2385');
INSERT INTO `cdg_regioncode` VALUES ('430726000000', '湖南省石门县', '1', '2386');
INSERT INTO `cdg_regioncode` VALUES ('430781000000', '湖南省津市市', '1', '2387');
INSERT INTO `cdg_regioncode` VALUES ('430800000000', '湖南省张家界市', '1', '2388');
INSERT INTO `cdg_regioncode` VALUES ('430801000000', '湖南省张家界市市辖区', '1', '2389');
INSERT INTO `cdg_regioncode` VALUES ('430802000000', '湖南省张家界市永定区', '1', '2390');
INSERT INTO `cdg_regioncode` VALUES ('430811000000', '湖南省张家界市武陵源区', '1', '2391');
INSERT INTO `cdg_regioncode` VALUES ('430821000000', '湖南省慈利县', '1', '2392');
INSERT INTO `cdg_regioncode` VALUES ('430822000000', '湖南省桑植县', '1', '2393');
INSERT INTO `cdg_regioncode` VALUES ('430900000000', '湖南省益阳市', '1', '2394');
INSERT INTO `cdg_regioncode` VALUES ('430901000000', '湖南省益阳市市辖区', '1', '2395');
INSERT INTO `cdg_regioncode` VALUES ('430902000000', '湖南省益阳市资阳区', '1', '2396');
INSERT INTO `cdg_regioncode` VALUES ('430903000000', '湖南省益阳市赫山区', '1', '2397');
INSERT INTO `cdg_regioncode` VALUES ('430921000000', '湖南省南县', '1', '2398');
INSERT INTO `cdg_regioncode` VALUES ('430922000000', '湖南省桃江县', '1', '2399');
INSERT INTO `cdg_regioncode` VALUES ('431028000000', '湖南省安仁县', '1', '2413');
INSERT INTO `cdg_regioncode` VALUES ('431081000000', '湖南省资兴市', '1', '2414');
INSERT INTO `cdg_regioncode` VALUES ('431100000000', '湖南省永州市', '1', '2415');
INSERT INTO `cdg_regioncode` VALUES ('431101000000', '湖南省永州市市辖区', '1', '2416');
INSERT INTO `cdg_regioncode` VALUES ('431102000000', '湖南省永州市芝山区', '1', '2417');
INSERT INTO `cdg_regioncode` VALUES ('431103000000', '湖南省永州市冷水滩区', '1', '2418');
INSERT INTO `cdg_regioncode` VALUES ('431121000000', '湖南省祁阳县', '1', '2419');
INSERT INTO `cdg_regioncode` VALUES ('431122000000', '湖南省东安县', '1', '2420');
INSERT INTO `cdg_regioncode` VALUES ('431123000000', '湖南省双牌县', '1', '2421');
INSERT INTO `cdg_regioncode` VALUES ('431124000000', '湖南省道县', '1', '2422');
INSERT INTO `cdg_regioncode` VALUES ('431125000000', '湖南省江永县', '1', '2423');
INSERT INTO `cdg_regioncode` VALUES ('431126000000', '湖南省宁远县', '1', '2424');
INSERT INTO `cdg_regioncode` VALUES ('431127000000', '湖南省蓝山县', '1', '2425');
INSERT INTO `cdg_regioncode` VALUES ('431128000000', '湖南省新田县', '1', '2426');
INSERT INTO `cdg_regioncode` VALUES ('431129000000', '湖南省江华瑶族自治县', '1', '2427');
INSERT INTO `cdg_regioncode` VALUES ('431200000000', '湖南省怀化市', '1', '2428');
INSERT INTO `cdg_regioncode` VALUES ('431201000000', '湖南省怀化市市辖区', '1', '2429');
INSERT INTO `cdg_regioncode` VALUES ('431202000000', '湖南省怀化市鹤城区', '1', '2430');
INSERT INTO `cdg_regioncode` VALUES ('431221000000', '湖南省中方县', '1', '2431');
INSERT INTO `cdg_regioncode` VALUES ('431222000000', '湖南省沅陵县', '1', '2432');
INSERT INTO `cdg_regioncode` VALUES ('431223000000', '湖南省辰溪县', '1', '2433');
INSERT INTO `cdg_regioncode` VALUES ('431224000000', '湖南省溆浦县', '1', '2434');
INSERT INTO `cdg_regioncode` VALUES ('431225000000', '湖南省会同县', '1', '2435');
INSERT INTO `cdg_regioncode` VALUES ('431226000000', '湖南省麻阳苗族自治县', '1', '2436');
INSERT INTO `cdg_regioncode` VALUES ('431227000000', '湖南省新晃侗族自治县', '1', '2437');
INSERT INTO `cdg_regioncode` VALUES ('431228000000', '湖南省芷江侗族自治县', '1', '2438');
INSERT INTO `cdg_regioncode` VALUES ('431229000000', '湖南省靖州苗族侗族自治县', '1', '2439');
INSERT INTO `cdg_regioncode` VALUES ('431230000000', '湖南省通道侗族自治县', '1', '2440');
INSERT INTO `cdg_regioncode` VALUES ('431281000000', '湖南省洪江市', '1', '2441');
INSERT INTO `cdg_regioncode` VALUES ('431300000000', '湖南省娄底市', '1', '2442');
INSERT INTO `cdg_regioncode` VALUES ('431301000000', '湖南省娄底市市辖区', '1', '2443');
INSERT INTO `cdg_regioncode` VALUES ('431302000000', '湖南省娄底市娄星区', '1', '2444');
INSERT INTO `cdg_regioncode` VALUES ('431321000000', '湖南省双峰县', '1', '2445');
INSERT INTO `cdg_regioncode` VALUES ('431322000000', '湖南省新化县', '1', '2446');
INSERT INTO `cdg_regioncode` VALUES ('431381000000', '湖南省冷水江市', '1', '2447');
INSERT INTO `cdg_regioncode` VALUES ('431382000000', '湖南省涟源市', '1', '2448');
INSERT INTO `cdg_regioncode` VALUES ('433100000000', '湖南省湘西土家族苗族自治州', '1', '2449');
INSERT INTO `cdg_regioncode` VALUES ('433101000000', '湖南省吉首市', '1', '2450');
INSERT INTO `cdg_regioncode` VALUES ('433122000000', '湖南省泸溪县', '1', '2451');
INSERT INTO `cdg_regioncode` VALUES ('433123000000', '湖南省凤凰县', '1', '2452');
INSERT INTO `cdg_regioncode` VALUES ('433124000000', '湖南省花垣县', '1', '2453');
INSERT INTO `cdg_regioncode` VALUES ('433125000000', '湖南省保靖县', '1', '2454');
INSERT INTO `cdg_regioncode` VALUES ('433126000000', '湖南省古丈县', '1', '2455');
INSERT INTO `cdg_regioncode` VALUES ('433127000000', '湖南省永顺县', '1', '2456');
INSERT INTO `cdg_regioncode` VALUES ('433130000000', '湖南省龙山县', '1', '2457');
INSERT INTO `cdg_regioncode` VALUES ('440000000000', '广东省', '1', '2458');
INSERT INTO `cdg_regioncode` VALUES ('440100000000', '广东省广州市', '1', '2459');
INSERT INTO `cdg_regioncode` VALUES ('440101000000', '广东省广州市市辖区', '1', '2460');
INSERT INTO `cdg_regioncode` VALUES ('440102000000', '广东省广州市东山区', '1', '2461');
INSERT INTO `cdg_regioncode` VALUES ('440103000000', '广东省广州市荔湾区', '1', '2462');
INSERT INTO `cdg_regioncode` VALUES ('440104000000', '广东省广州市越秀区', '1', '2463');
INSERT INTO `cdg_regioncode` VALUES ('440105000000', '广东省广州市海珠区', '1', '2464');
INSERT INTO `cdg_regioncode` VALUES ('440106000000', '广东省广州市天河区', '1', '2465');
INSERT INTO `cdg_regioncode` VALUES ('440107000000', '广东省广州市芳村区', '1', '2466');
INSERT INTO `cdg_regioncode` VALUES ('440111000000', '广东省广州市白云区', '1', '2467');
INSERT INTO `cdg_regioncode` VALUES ('440112000000', '广东省广州市黄埔区', '1', '2468');
INSERT INTO `cdg_regioncode` VALUES ('440113000000', '广东省广州市番禺区', '1', '2469');
INSERT INTO `cdg_regioncode` VALUES ('440114000000', '广东省广州市花都区', '1', '2470');
INSERT INTO `cdg_regioncode` VALUES ('440183000000', '广东省增城市', '1', '2471');
INSERT INTO `cdg_regioncode` VALUES ('440184000000', '广东省从化市', '1', '2472');
INSERT INTO `cdg_regioncode` VALUES ('440200000000', '广东省韶关市', '1', '2473');
INSERT INTO `cdg_regioncode` VALUES ('440201000000', '广东省韶关市市辖区', '1', '2474');
INSERT INTO `cdg_regioncode` VALUES ('440202000000', '广东省韶关市北江区', '1', '2475');
INSERT INTO `cdg_regioncode` VALUES ('440203000000', '广东省韶关市武江区', '1', '2476');
INSERT INTO `cdg_regioncode` VALUES ('440204000000', '广东省韶关市浈江区', '1', '2477');
INSERT INTO `cdg_regioncode` VALUES ('440221000000', '广东省曲江县', '1', '2478');
INSERT INTO `cdg_regioncode` VALUES ('440222000000', '广东省始兴县', '1', '2479');
INSERT INTO `cdg_regioncode` VALUES ('440224000000', '广东省仁化县', '1', '2480');
INSERT INTO `cdg_regioncode` VALUES ('440229000000', '广东省翁源县', '1', '2481');
INSERT INTO `cdg_regioncode` VALUES ('440232000000', '广东省乳源瑶族自治县', '1', '2482');
INSERT INTO `cdg_regioncode` VALUES ('440233000000', '广东省新丰县', '1', '2483');
INSERT INTO `cdg_regioncode` VALUES ('440281000000', '广东省乐昌市', '1', '2484');
INSERT INTO `cdg_regioncode` VALUES ('440282000000', '广东省南雄市', '1', '2485');
INSERT INTO `cdg_regioncode` VALUES ('440300000000', '广东省深圳市', '1', '2486');
INSERT INTO `cdg_regioncode` VALUES ('440301000000', '广东省深圳市市辖区', '1', '2487');
INSERT INTO `cdg_regioncode` VALUES ('440303000000', '广东省深圳市罗湖区', '1', '2488');
INSERT INTO `cdg_regioncode` VALUES ('440304000000', '广东省深圳市福田区', '1', '2489');
INSERT INTO `cdg_regioncode` VALUES ('440305000000', '广东省深圳市南山区', '1', '2490');
INSERT INTO `cdg_regioncode` VALUES ('440306000000', '广东省深圳市宝安区', '1', '2491');
INSERT INTO `cdg_regioncode` VALUES ('440307000000', '广东省深圳市龙岗区', '1', '2492');
INSERT INTO `cdg_regioncode` VALUES ('440308000000', '广东省深圳市盐田区', '1', '2493');
INSERT INTO `cdg_regioncode` VALUES ('440400000000', '广东省珠海市', '1', '2494');
INSERT INTO `cdg_regioncode` VALUES ('440401000000', '广东省珠海市市辖区', '1', '2495');
INSERT INTO `cdg_regioncode` VALUES ('440402000000', '广东省珠海市香洲区', '1', '2496');
INSERT INTO `cdg_regioncode` VALUES ('440403000000', '广东省珠海市斗门区', '1', '2497');
INSERT INTO `cdg_regioncode` VALUES ('440404000000', '广东省珠海市金湾区', '1', '2498');
INSERT INTO `cdg_regioncode` VALUES ('440500000000', '广东省汕头市', '1', '2499');
INSERT INTO `cdg_regioncode` VALUES ('440607000000', '广东省佛山市三水区', '1', '2513');
INSERT INTO `cdg_regioncode` VALUES ('440608000000', '广东省佛山市高明区', '1', '2514');
INSERT INTO `cdg_regioncode` VALUES ('440700000000', '广东省江门市', '1', '2515');
INSERT INTO `cdg_regioncode` VALUES ('440701000000', '广东省江门市市辖区', '1', '2516');
INSERT INTO `cdg_regioncode` VALUES ('440703000000', '广东省江门市蓬江区', '1', '2517');
INSERT INTO `cdg_regioncode` VALUES ('440704000000', '广东省江门市江海区', '1', '2518');
INSERT INTO `cdg_regioncode` VALUES ('440705000000', '广东省江门市新会区', '1', '2519');
INSERT INTO `cdg_regioncode` VALUES ('440781000000', '广东省台山市', '1', '2520');
INSERT INTO `cdg_regioncode` VALUES ('440783000000', '广东省开平市', '1', '2521');
INSERT INTO `cdg_regioncode` VALUES ('440784000000', '广东省鹤山市', '1', '2522');
INSERT INTO `cdg_regioncode` VALUES ('440785000000', '广东省恩平市', '1', '2523');
INSERT INTO `cdg_regioncode` VALUES ('440800000000', '广东省湛江市', '1', '2524');
INSERT INTO `cdg_regioncode` VALUES ('440801000000', '广东省湛江市市辖区', '1', '2525');
INSERT INTO `cdg_regioncode` VALUES ('440802000000', '广东省湛江市赤坎区', '1', '2526');
INSERT INTO `cdg_regioncode` VALUES ('440803000000', '广东省湛江市霞山区', '1', '2527');
INSERT INTO `cdg_regioncode` VALUES ('440804000000', '广东省湛江市坡头区', '1', '2528');
INSERT INTO `cdg_regioncode` VALUES ('440811000000', '广东省湛江市麻章区', '1', '2529');
INSERT INTO `cdg_regioncode` VALUES ('440823000000', '广东省遂溪县', '1', '2530');
INSERT INTO `cdg_regioncode` VALUES ('440825000000', '广东省徐闻县', '1', '2531');
INSERT INTO `cdg_regioncode` VALUES ('440881000000', '广东省廉江市', '1', '2532');
INSERT INTO `cdg_regioncode` VALUES ('440882000000', '广东省雷州市', '1', '2533');
INSERT INTO `cdg_regioncode` VALUES ('440883000000', '广东省吴川市', '1', '2534');
INSERT INTO `cdg_regioncode` VALUES ('440900000000', '广东省茂名市', '1', '2535');
INSERT INTO `cdg_regioncode` VALUES ('440901000000', '广东省茂名市市辖区', '1', '2536');
INSERT INTO `cdg_regioncode` VALUES ('440902000000', '广东省茂名市茂南区', '1', '2537');
INSERT INTO `cdg_regioncode` VALUES ('440903000000', '广东省茂名市茂港区', '1', '2538');
INSERT INTO `cdg_regioncode` VALUES ('440923000000', '广东省电白县', '1', '2539');
INSERT INTO `cdg_regioncode` VALUES ('440981000000', '广东省高州市', '1', '2540');
INSERT INTO `cdg_regioncode` VALUES ('440982000000', '广东省化州市', '1', '2541');
INSERT INTO `cdg_regioncode` VALUES ('440983000000', '广东省信宜市', '1', '2542');
INSERT INTO `cdg_regioncode` VALUES ('441200000000', '广东省肇庆市', '1', '2543');
INSERT INTO `cdg_regioncode` VALUES ('441201000000', '广东省肇庆市市辖区', '1', '2544');
INSERT INTO `cdg_regioncode` VALUES ('441202000000', '广东省肇庆市端州区', '1', '2545');
INSERT INTO `cdg_regioncode` VALUES ('441203000000', '广东省肇庆市鼎湖区', '1', '2546');
INSERT INTO `cdg_regioncode` VALUES ('441223000000', '广东省广宁县', '1', '2547');
INSERT INTO `cdg_regioncode` VALUES ('441224000000', '广东省怀集县', '1', '2548');
INSERT INTO `cdg_regioncode` VALUES ('441225000000', '广东省封开县', '1', '2549');
INSERT INTO `cdg_regioncode` VALUES ('441226000000', '广东省德庆县', '1', '2550');
INSERT INTO `cdg_regioncode` VALUES ('441283000000', '广东省高要市', '1', '2551');
INSERT INTO `cdg_regioncode` VALUES ('441284000000', '广东省四会市', '1', '2552');
INSERT INTO `cdg_regioncode` VALUES ('441300000000', '广东省惠州市', '1', '2553');
INSERT INTO `cdg_regioncode` VALUES ('441301000000', '广东省惠州市市辖区', '1', '2554');
INSERT INTO `cdg_regioncode` VALUES ('441302000000', '广东省惠州市惠城区', '1', '2555');
INSERT INTO `cdg_regioncode` VALUES ('441303000000', '广东省惠州市惠阳区', '1', '2556');
INSERT INTO `cdg_regioncode` VALUES ('441322000000', '广东省博罗县', '1', '2557');
INSERT INTO `cdg_regioncode` VALUES ('441323000000', '广东省惠东县', '1', '2558');
INSERT INTO `cdg_regioncode` VALUES ('441324000000', '广东省龙门县', '1', '2559');
INSERT INTO `cdg_regioncode` VALUES ('441400000000', '广东省梅州市', '1', '2560');
INSERT INTO `cdg_regioncode` VALUES ('441401000000', '广东省梅州市市辖区', '1', '2561');
INSERT INTO `cdg_regioncode` VALUES ('441402000000', '广东省梅州市梅江区', '1', '2562');
INSERT INTO `cdg_regioncode` VALUES ('441421000000', '广东省梅县', '1', '2563');
INSERT INTO `cdg_regioncode` VALUES ('441422000000', '广东省大埔县', '1', '2564');
INSERT INTO `cdg_regioncode` VALUES ('441423000000', '广东省丰顺县', '1', '2565');
INSERT INTO `cdg_regioncode` VALUES ('441424000000', '广东省五华县', '1', '2566');
INSERT INTO `cdg_regioncode` VALUES ('441426000000', '广东省平远县', '1', '2567');
INSERT INTO `cdg_regioncode` VALUES ('441427000000', '广东省蕉岭县', '1', '2568');
INSERT INTO `cdg_regioncode` VALUES ('441481000000', '广东省兴宁市', '1', '2569');
INSERT INTO `cdg_regioncode` VALUES ('441500000000', '广东省汕尾市', '1', '2570');
INSERT INTO `cdg_regioncode` VALUES ('441501000000', '广东省汕尾市市辖区', '1', '2571');
INSERT INTO `cdg_regioncode` VALUES ('441502000000', '广东省汕尾市城区', '1', '2572');
INSERT INTO `cdg_regioncode` VALUES ('441521000000', '广东省海丰县', '1', '2573');
INSERT INTO `cdg_regioncode` VALUES ('441523000000', '广东省陆河县', '1', '2574');
INSERT INTO `cdg_regioncode` VALUES ('441581000000', '广东省陆丰市', '1', '2575');
INSERT INTO `cdg_regioncode` VALUES ('441600000000', '广东省河源市', '1', '2576');
INSERT INTO `cdg_regioncode` VALUES ('441601000000', '广东省河源市市辖区', '1', '2577');
INSERT INTO `cdg_regioncode` VALUES ('441602000000', '广东省河源市源城区', '1', '2578');
INSERT INTO `cdg_regioncode` VALUES ('441621000000', '广东省紫金县', '1', '2579');
INSERT INTO `cdg_regioncode` VALUES ('441622000000', '广东省龙川县', '1', '2580');
INSERT INTO `cdg_regioncode` VALUES ('441623000000', '广东省连平县', '1', '2581');
INSERT INTO `cdg_regioncode` VALUES ('441624000000', '广东省和平县', '1', '2582');
INSERT INTO `cdg_regioncode` VALUES ('441625000000', '广东省东源县', '1', '2583');
INSERT INTO `cdg_regioncode` VALUES ('441700000000', '广东省阳江市', '1', '2584');
INSERT INTO `cdg_regioncode` VALUES ('441701000000', '广东省阳江市市辖区', '1', '2585');
INSERT INTO `cdg_regioncode` VALUES ('441702000000', '广东省阳江市江城区', '1', '2586');
INSERT INTO `cdg_regioncode` VALUES ('441721000000', '广东省阳西县', '1', '2587');
INSERT INTO `cdg_regioncode` VALUES ('441723000000', '广东省阳东县', '1', '2588');
INSERT INTO `cdg_regioncode` VALUES ('441781000000', '广东省阳春市', '1', '2589');
INSERT INTO `cdg_regioncode` VALUES ('441800000000', '广东省清远市', '1', '2590');
INSERT INTO `cdg_regioncode` VALUES ('441801000000', '广东省清远市市辖区', '1', '2591');
INSERT INTO `cdg_regioncode` VALUES ('441802000000', '广东省清远市清城区', '1', '2592');
INSERT INTO `cdg_regioncode` VALUES ('441821000000', '广东省佛冈县', '1', '2593');
INSERT INTO `cdg_regioncode` VALUES ('441823000000', '广东省阳山县', '1', '2594');
INSERT INTO `cdg_regioncode` VALUES ('441825000000', '广东省连山壮族瑶族自治县', '1', '2595');
INSERT INTO `cdg_regioncode` VALUES ('441826000000', '广东省连南瑶族自治县', '1', '2596');
INSERT INTO `cdg_regioncode` VALUES ('441827000000', '广东省清新县', '1', '2597');
INSERT INTO `cdg_regioncode` VALUES ('441881000000', '广东省英德市', '1', '2598');
INSERT INTO `cdg_regioncode` VALUES ('441882000000', '广东省连州市', '1', '2599');
INSERT INTO `cdg_regioncode` VALUES ('445281000000', '广东省普宁市', '1', '2613');
INSERT INTO `cdg_regioncode` VALUES ('445300000000', '广东省云浮市', '1', '2614');
INSERT INTO `cdg_regioncode` VALUES ('445301000000', '广东省云浮市市辖区', '1', '2615');
INSERT INTO `cdg_regioncode` VALUES ('445302000000', '广东省云浮市云城区', '1', '2616');
INSERT INTO `cdg_regioncode` VALUES ('445321000000', '广东省新兴县', '1', '2617');
INSERT INTO `cdg_regioncode` VALUES ('445322000000', '广东省郁南县', '1', '2618');
INSERT INTO `cdg_regioncode` VALUES ('445323000000', '广东省云安县', '1', '2619');
INSERT INTO `cdg_regioncode` VALUES ('445381000000', '广东省罗定市', '1', '2620');
INSERT INTO `cdg_regioncode` VALUES ('450000000000', '广西壮族自治区', '1', '2621');
INSERT INTO `cdg_regioncode` VALUES ('450100000000', '广西南宁市', '1', '2622');
INSERT INTO `cdg_regioncode` VALUES ('450101000000', '广西南宁市市辖区', '1', '2623');
INSERT INTO `cdg_regioncode` VALUES ('450102000000', '广西南宁市兴宁区', '1', '2624');
INSERT INTO `cdg_regioncode` VALUES ('450103000000', '广西南宁市新城区', '1', '2625');
INSERT INTO `cdg_regioncode` VALUES ('450104000000', '广西南宁市城北区', '1', '2626');
INSERT INTO `cdg_regioncode` VALUES ('450105000000', '广西南宁市江南区', '1', '2627');
INSERT INTO `cdg_regioncode` VALUES ('450106000000', '广西南宁市永新区', '1', '2628');
INSERT INTO `cdg_regioncode` VALUES ('450121000000', '广西邕宁县', '1', '2629');
INSERT INTO `cdg_regioncode` VALUES ('450122000000', '广西武鸣县', '1', '2630');
INSERT INTO `cdg_regioncode` VALUES ('450123000000', '广西隆安县', '1', '2631');
INSERT INTO `cdg_regioncode` VALUES ('450124000000', '广西马山县', '1', '2632');
INSERT INTO `cdg_regioncode` VALUES ('450125000000', '广西上林县', '1', '2633');
INSERT INTO `cdg_regioncode` VALUES ('450126000000', '广西宾阳县', '1', '2634');
INSERT INTO `cdg_regioncode` VALUES ('450127000000', '广西横县', '1', '2635');
INSERT INTO `cdg_regioncode` VALUES ('450200000000', '广西柳州市', '1', '2636');
INSERT INTO `cdg_regioncode` VALUES ('450201000000', '广西柳州市市辖区', '1', '2637');
INSERT INTO `cdg_regioncode` VALUES ('450202000000', '广西柳州市城中区', '1', '2638');
INSERT INTO `cdg_regioncode` VALUES ('450203000000', '广西柳州市鱼峰区', '1', '2639');
INSERT INTO `cdg_regioncode` VALUES ('450204000000', '广西柳州市柳南区', '1', '2640');
INSERT INTO `cdg_regioncode` VALUES ('450205000000', '广西柳州市柳北区', '1', '2641');
INSERT INTO `cdg_regioncode` VALUES ('450221000000', '广西柳江县', '1', '2642');
INSERT INTO `cdg_regioncode` VALUES ('450222000000', '广西柳城县', '1', '2643');
INSERT INTO `cdg_regioncode` VALUES ('450223000000', '广西鹿寨县', '1', '2644');
INSERT INTO `cdg_regioncode` VALUES ('450224000000', '广西融安县', '1', '2645');
INSERT INTO `cdg_regioncode` VALUES ('450225000000', '广西融水苗族自治县', '1', '2646');
INSERT INTO `cdg_regioncode` VALUES ('450226000000', '广西三江侗族自治县', '1', '2647');
INSERT INTO `cdg_regioncode` VALUES ('450300000000', '广西桂林市', '1', '2648');
INSERT INTO `cdg_regioncode` VALUES ('450301000000', '广西桂林市市辖区', '1', '2649');
INSERT INTO `cdg_regioncode` VALUES ('450302000000', '广西桂林市秀峰区', '1', '2650');
INSERT INTO `cdg_regioncode` VALUES ('450303000000', '广西桂林市叠彩区', '1', '2651');
INSERT INTO `cdg_regioncode` VALUES ('450304000000', '广西桂林市象山区', '1', '2652');
INSERT INTO `cdg_regioncode` VALUES ('450305000000', '广西桂林市七星区', '1', '2653');
INSERT INTO `cdg_regioncode` VALUES ('450311000000', '广西桂林市雁山区', '1', '2654');
INSERT INTO `cdg_regioncode` VALUES ('450321000000', '广西阳朔县', '1', '2655');
INSERT INTO `cdg_regioncode` VALUES ('450322000000', '广西临桂县', '1', '2656');
INSERT INTO `cdg_regioncode` VALUES ('450323000000', '广西灵川县', '1', '2657');
INSERT INTO `cdg_regioncode` VALUES ('450324000000', '广西全州县', '1', '2658');
INSERT INTO `cdg_regioncode` VALUES ('450325000000', '广西兴安县', '1', '2659');
INSERT INTO `cdg_regioncode` VALUES ('450326000000', '广西永福县', '1', '2660');
INSERT INTO `cdg_regioncode` VALUES ('450327000000', '广西灌阳县', '1', '2661');
INSERT INTO `cdg_regioncode` VALUES ('450328000000', '广西龙胜各族自治县', '1', '2662');
INSERT INTO `cdg_regioncode` VALUES ('450329000000', '广西资源县', '1', '2663');
INSERT INTO `cdg_regioncode` VALUES ('450330000000', '广西平乐县', '1', '2664');
INSERT INTO `cdg_regioncode` VALUES ('450331000000', '广西荔蒲县', '1', '2665');
INSERT INTO `cdg_regioncode` VALUES ('450332000000', '广西恭城瑶族自治县', '1', '2666');
INSERT INTO `cdg_regioncode` VALUES ('450400000000', '广西梧州市', '1', '2667');
INSERT INTO `cdg_regioncode` VALUES ('450401000000', '广西梧州市市辖区', '1', '2668');
INSERT INTO `cdg_regioncode` VALUES ('450403000000', '广西梧州市万秀区', '1', '2669');
INSERT INTO `cdg_regioncode` VALUES ('450404000000', '广西梧州市蝶山区', '1', '2670');
INSERT INTO `cdg_regioncode` VALUES ('450405000000', '广西梧州市长洲区', '1', '2671');
INSERT INTO `cdg_regioncode` VALUES ('450421000000', '广西苍梧县', '1', '2672');
INSERT INTO `cdg_regioncode` VALUES ('450422000000', '广西藤县', '1', '2673');
INSERT INTO `cdg_regioncode` VALUES ('450423000000', '广西蒙山县', '1', '2674');
INSERT INTO `cdg_regioncode` VALUES ('450481000000', '广西岑溪市', '1', '2675');
INSERT INTO `cdg_regioncode` VALUES ('450500000000', '广西北海市', '1', '2676');
INSERT INTO `cdg_regioncode` VALUES ('450501000000', '广西北海市市辖区', '1', '2677');
INSERT INTO `cdg_regioncode` VALUES ('450502000000', '广西北海市海城区', '1', '2678');
INSERT INTO `cdg_regioncode` VALUES ('450503000000', '广西北海市银海区', '1', '2679');
INSERT INTO `cdg_regioncode` VALUES ('450512000000', '广西北海市铁山港区', '1', '2680');
INSERT INTO `cdg_regioncode` VALUES ('450521000000', '广西合浦县', '1', '2681');
INSERT INTO `cdg_regioncode` VALUES ('450600000000', '广西防城港市', '1', '2682');
INSERT INTO `cdg_regioncode` VALUES ('450601000000', '广西防城港市辖区', '1', '2683');
INSERT INTO `cdg_regioncode` VALUES ('450602000000', '广西防城港港口区', '1', '2684');
INSERT INTO `cdg_regioncode` VALUES ('450603000000', '广西防城港防城区', '1', '2685');
INSERT INTO `cdg_regioncode` VALUES ('450621000000', '广西上思县', '1', '2686');
INSERT INTO `cdg_regioncode` VALUES ('450681000000', '广西东兴市', '1', '2687');
INSERT INTO `cdg_regioncode` VALUES ('450700000000', '广西钦州市', '1', '2688');
INSERT INTO `cdg_regioncode` VALUES ('450701000000', '广西钦州市市辖区', '1', '2689');
INSERT INTO `cdg_regioncode` VALUES ('450702000000', '广西钦州市钦南区', '1', '2690');
INSERT INTO `cdg_regioncode` VALUES ('450703000000', '广西钦州市钦北区', '1', '2691');
INSERT INTO `cdg_regioncode` VALUES ('450721000000', '广西灵山县', '1', '2692');
INSERT INTO `cdg_regioncode` VALUES ('450722000000', '广西浦北县', '1', '2693');
INSERT INTO `cdg_regioncode` VALUES ('450800000000', '广西贵港市', '1', '2694');
INSERT INTO `cdg_regioncode` VALUES ('450801000000', '广西贵港市市辖区', '1', '2695');
INSERT INTO `cdg_regioncode` VALUES ('450802000000', '广西贵港市港北区', '1', '2696');
INSERT INTO `cdg_regioncode` VALUES ('450803000000', '广西贵港市港南区', '1', '2697');
INSERT INTO `cdg_regioncode` VALUES ('450804000000', '广西贵港市覃塘区', '1', '2698');
INSERT INTO `cdg_regioncode` VALUES ('450821000000', '广西平南县', '1', '2699');
INSERT INTO `cdg_regioncode` VALUES ('451022000000', '广西田东县', '1', '2713');
INSERT INTO `cdg_regioncode` VALUES ('451023000000', '广西平果县', '1', '2714');
INSERT INTO `cdg_regioncode` VALUES ('451024000000', '广西德保县', '1', '2715');
INSERT INTO `cdg_regioncode` VALUES ('451025000000', '广西靖西县', '1', '2716');
INSERT INTO `cdg_regioncode` VALUES ('451026000000', '广西那坡县', '1', '2717');
INSERT INTO `cdg_regioncode` VALUES ('451027000000', '广西凌云县', '1', '2718');
INSERT INTO `cdg_regioncode` VALUES ('451028000000', '广西乐业县', '1', '2719');
INSERT INTO `cdg_regioncode` VALUES ('451029000000', '广西田林县', '1', '2720');
INSERT INTO `cdg_regioncode` VALUES ('451030000000', '广西西林县', '1', '2721');
INSERT INTO `cdg_regioncode` VALUES ('451031000000', '广西隆林各族自治县', '1', '2722');
INSERT INTO `cdg_regioncode` VALUES ('451100000000', '广西贺州市', '1', '2723');
INSERT INTO `cdg_regioncode` VALUES ('451101000000', '广西贺州市市辖区', '1', '2724');
INSERT INTO `cdg_regioncode` VALUES ('451102000000', '广西贺州市八步区', '1', '2725');
INSERT INTO `cdg_regioncode` VALUES ('451121000000', '广西昭平县', '1', '2726');
INSERT INTO `cdg_regioncode` VALUES ('451122000000', '广西钟山县', '1', '2727');
INSERT INTO `cdg_regioncode` VALUES ('451123000000', '广西富川瑶族自治县', '1', '2728');
INSERT INTO `cdg_regioncode` VALUES ('451200000000', '广西河池市', '1', '2729');
INSERT INTO `cdg_regioncode` VALUES ('451201000000', '广西河池市市辖区', '1', '2730');
INSERT INTO `cdg_regioncode` VALUES ('451202000000', '广西河池市金城江区', '1', '2731');
INSERT INTO `cdg_regioncode` VALUES ('451221000000', '广西南丹县', '1', '2732');
INSERT INTO `cdg_regioncode` VALUES ('451222000000', '广西天峨县', '1', '2733');
INSERT INTO `cdg_regioncode` VALUES ('451223000000', '广西凤山县', '1', '2734');
INSERT INTO `cdg_regioncode` VALUES ('451224000000', '广西东兰县', '1', '2735');
INSERT INTO `cdg_regioncode` VALUES ('451225000000', '广西罗城仫佬族自治县', '1', '2736');
INSERT INTO `cdg_regioncode` VALUES ('451226000000', '广西环江毛南族自治县', '1', '2737');
INSERT INTO `cdg_regioncode` VALUES ('451227000000', '广西巴马瑶族自治县', '1', '2738');
INSERT INTO `cdg_regioncode` VALUES ('451228000000', '广西都安瑶族自治县', '1', '2739');
INSERT INTO `cdg_regioncode` VALUES ('451229000000', '广西大化瑶族自治县', '1', '2740');
INSERT INTO `cdg_regioncode` VALUES ('451281000000', '广西宜州市', '1', '2741');
INSERT INTO `cdg_regioncode` VALUES ('451300000000', '广西来宾市', '1', '2742');
INSERT INTO `cdg_regioncode` VALUES ('451301000000', '广西来宾市市辖区', '1', '2743');
INSERT INTO `cdg_regioncode` VALUES ('451302000000', '广西来宾市兴宾区', '1', '2744');
INSERT INTO `cdg_regioncode` VALUES ('451321000000', '广西忻城县', '1', '2745');
INSERT INTO `cdg_regioncode` VALUES ('451322000000', '广西象州县', '1', '2746');
INSERT INTO `cdg_regioncode` VALUES ('451323000000', '广西武宣县', '1', '2747');
INSERT INTO `cdg_regioncode` VALUES ('451324000000', '广西金秀瑶族自治县', '1', '2748');
INSERT INTO `cdg_regioncode` VALUES ('451381000000', '广西合山市', '1', '2749');
INSERT INTO `cdg_regioncode` VALUES ('451400000000', '广西崇左市', '1', '2750');
INSERT INTO `cdg_regioncode` VALUES ('451401000000', '广西崇左市市辖区', '1', '2751');
INSERT INTO `cdg_regioncode` VALUES ('451402000000', '广西崇左市江洲区', '1', '2752');
INSERT INTO `cdg_regioncode` VALUES ('451421000000', '广西扶绥县', '1', '2753');
INSERT INTO `cdg_regioncode` VALUES ('451422000000', '广西宁明县', '1', '2754');
INSERT INTO `cdg_regioncode` VALUES ('451423000000', '广西龙州县', '1', '2755');
INSERT INTO `cdg_regioncode` VALUES ('451424000000', '广西大新县', '1', '2756');
INSERT INTO `cdg_regioncode` VALUES ('451425000000', '广西天等县', '1', '2757');
INSERT INTO `cdg_regioncode` VALUES ('451481000000', '广西凭祥市', '1', '2758');
INSERT INTO `cdg_regioncode` VALUES ('460000000000', '海南省', '1', '2759');
INSERT INTO `cdg_regioncode` VALUES ('460100000000', '海南省海口市', '1', '2760');
INSERT INTO `cdg_regioncode` VALUES ('460101000000', '海南省海口市市辖区', '1', '2761');
INSERT INTO `cdg_regioncode` VALUES ('460105000000', '海南省海口市秀英区', '1', '2762');
INSERT INTO `cdg_regioncode` VALUES ('460106000000', '海南省海口市龙华区', '1', '2763');
INSERT INTO `cdg_regioncode` VALUES ('460107000000', '海南省海口市琼山区', '1', '2764');
INSERT INTO `cdg_regioncode` VALUES ('460108000000', '海南省海口市美兰区', '1', '2765');
INSERT INTO `cdg_regioncode` VALUES ('460200000000', '海南省三亚市', '1', '2766');
INSERT INTO `cdg_regioncode` VALUES ('460201000000', '海南省三亚市市辖区', '1', '2767');
INSERT INTO `cdg_regioncode` VALUES ('469000000000', '海南省省直辖县级行政单位', '1', '2768');
INSERT INTO `cdg_regioncode` VALUES ('469001000000', '海南省五指山市', '1', '2769');
INSERT INTO `cdg_regioncode` VALUES ('469002000000', '海南省琼海市', '1', '2770');
INSERT INTO `cdg_regioncode` VALUES ('469003000000', '海南省儋州市', '1', '2771');
INSERT INTO `cdg_regioncode` VALUES ('469005000000', '海南省文昌市', '1', '2772');
INSERT INTO `cdg_regioncode` VALUES ('469006000000', '海南省万宁市', '1', '2773');
INSERT INTO `cdg_regioncode` VALUES ('469007000000', '海南省东方市', '1', '2774');
INSERT INTO `cdg_regioncode` VALUES ('469025000000', '海南省定安县', '1', '2775');
INSERT INTO `cdg_regioncode` VALUES ('469026000000', '海南省屯昌县', '1', '2776');
INSERT INTO `cdg_regioncode` VALUES ('469027000000', '海南省澄迈县', '1', '2777');
INSERT INTO `cdg_regioncode` VALUES ('469028000000', '海南省临高县', '1', '2778');
INSERT INTO `cdg_regioncode` VALUES ('469030000000', '海南省白沙黎族自治县', '1', '2779');
INSERT INTO `cdg_regioncode` VALUES ('469031000000', '海南省昌江黎族自治县', '1', '2780');
INSERT INTO `cdg_regioncode` VALUES ('469033000000', '海南省乐东黎族自治县', '1', '2781');
INSERT INTO `cdg_regioncode` VALUES ('469034000000', '海南省陵水黎族自治县', '1', '2782');
INSERT INTO `cdg_regioncode` VALUES ('469035000000', '海南省保亭黎族苗族自治县', '1', '2783');
INSERT INTO `cdg_regioncode` VALUES ('469036000000', '海南省琼中黎族苗族自治县', '1', '2784');
INSERT INTO `cdg_regioncode` VALUES ('469037000000', '海南省西沙群岛', '1', '2785');
INSERT INTO `cdg_regioncode` VALUES ('469038000000', '海南省南沙群岛', '1', '2786');
INSERT INTO `cdg_regioncode` VALUES ('469039000000', '海南省中沙群岛的岛礁及其海域', '1', '2787');
INSERT INTO `cdg_regioncode` VALUES ('500000000000', '重庆市', '1', '2788');
INSERT INTO `cdg_regioncode` VALUES ('500100000000', '重庆市市辖区', '1', '2789');
INSERT INTO `cdg_regioncode` VALUES ('500101000000', '重庆市万州区', '1', '2790');
INSERT INTO `cdg_regioncode` VALUES ('500102000000', '重庆市涪陵区', '1', '2791');
INSERT INTO `cdg_regioncode` VALUES ('500103000000', '重庆市渝中区', '1', '2792');
INSERT INTO `cdg_regioncode` VALUES ('500104000000', '重庆市大渡口区', '1', '2793');
INSERT INTO `cdg_regioncode` VALUES ('500105000000', '重庆市江北区', '1', '2794');
INSERT INTO `cdg_regioncode` VALUES ('500106000000', '重庆市沙坪坝区', '1', '2795');
INSERT INTO `cdg_regioncode` VALUES ('500107000000', '重庆市九龙坡区', '1', '2796');
INSERT INTO `cdg_regioncode` VALUES ('500108000000', '重庆市南岸区', '1', '2797');
INSERT INTO `cdg_regioncode` VALUES ('500109000000', '重庆市北碚区', '1', '2798');
INSERT INTO `cdg_regioncode` VALUES ('500110000000', '重庆市万盛区', '1', '2799');
INSERT INTO `cdg_regioncode` VALUES ('500229000000', '重庆市城口县', '1', '2813');
INSERT INTO `cdg_regioncode` VALUES ('500230000000', '重庆市丰都县', '1', '2814');
INSERT INTO `cdg_regioncode` VALUES ('500231000000', '重庆市垫江县', '1', '2815');
INSERT INTO `cdg_regioncode` VALUES ('500232000000', '重庆市武隆县', '1', '2816');
INSERT INTO `cdg_regioncode` VALUES ('500233000000', '重庆市忠县', '1', '2817');
INSERT INTO `cdg_regioncode` VALUES ('500234000000', '重庆市开县', '1', '2818');
INSERT INTO `cdg_regioncode` VALUES ('500235000000', '重庆市云阳县', '1', '2819');
INSERT INTO `cdg_regioncode` VALUES ('500236000000', '重庆市奉节县', '1', '2820');
INSERT INTO `cdg_regioncode` VALUES ('500237000000', '重庆市巫山县', '1', '2821');
INSERT INTO `cdg_regioncode` VALUES ('500238000000', '重庆市巫溪县', '1', '2822');
INSERT INTO `cdg_regioncode` VALUES ('500240000000', '重庆市石柱土家族自治县', '1', '2823');
INSERT INTO `cdg_regioncode` VALUES ('500241000000', '重庆市秀山土家族苗族自治县', '1', '2824');
INSERT INTO `cdg_regioncode` VALUES ('500242000000', '重庆市酉阳土家族苗族自治县', '1', '2825');
INSERT INTO `cdg_regioncode` VALUES ('500243000000', '重庆市彭水苗族土家族自治县', '1', '2826');
INSERT INTO `cdg_regioncode` VALUES ('500300000000', '重庆市市', '1', '2827');
INSERT INTO `cdg_regioncode` VALUES ('500381000000', '重庆市江津市', '1', '2828');
INSERT INTO `cdg_regioncode` VALUES ('500382000000', '重庆市合川市', '1', '2829');
INSERT INTO `cdg_regioncode` VALUES ('500383000000', '重庆市永川市', '1', '2830');
INSERT INTO `cdg_regioncode` VALUES ('500384000000', '重庆市南川市', '1', '2831');
INSERT INTO `cdg_regioncode` VALUES ('510000000000', '四川省', '1', '2832');
INSERT INTO `cdg_regioncode` VALUES ('510100000000', '四川省成都市', '1', '2833');
INSERT INTO `cdg_regioncode` VALUES ('510101000000', '四川省成都市市辖区', '1', '2834');
INSERT INTO `cdg_regioncode` VALUES ('510104000000', '四川省成都市锦江区', '1', '2835');
INSERT INTO `cdg_regioncode` VALUES ('510105000000', '四川省成都市青羊区', '1', '2836');
INSERT INTO `cdg_regioncode` VALUES ('510106000000', '四川省成都市金牛区', '1', '2837');
INSERT INTO `cdg_regioncode` VALUES ('510107000000', '四川省成都市武侯区', '1', '2838');
INSERT INTO `cdg_regioncode` VALUES ('510108000000', '四川省成都市成华区', '1', '2839');
INSERT INTO `cdg_regioncode` VALUES ('510112000000', '四川省成都市龙泉驿区', '1', '2840');
INSERT INTO `cdg_regioncode` VALUES ('510113000000', '四川省成都市青白江区', '1', '2841');
INSERT INTO `cdg_regioncode` VALUES ('510114000000', '四川省成都市新都区', '1', '2842');
INSERT INTO `cdg_regioncode` VALUES ('510115000000', '四川省成都市温江区', '1', '2843');
INSERT INTO `cdg_regioncode` VALUES ('510121000000', '四川省金堂县', '1', '2844');
INSERT INTO `cdg_regioncode` VALUES ('510122000000', '四川省双流县', '1', '2845');
INSERT INTO `cdg_regioncode` VALUES ('510124000000', '四川省郫县', '1', '2846');
INSERT INTO `cdg_regioncode` VALUES ('510129000000', '四川省大邑县', '1', '2847');
INSERT INTO `cdg_regioncode` VALUES ('510131000000', '四川省蒲江县', '1', '2848');
INSERT INTO `cdg_regioncode` VALUES ('510132000000', '四川省新津县', '1', '2849');
INSERT INTO `cdg_regioncode` VALUES ('510181000000', '四川省都江堰市', '1', '2850');
INSERT INTO `cdg_regioncode` VALUES ('510182000000', '四川省彭州市', '1', '2851');
INSERT INTO `cdg_regioncode` VALUES ('510183000000', '四川省邛崃市', '1', '2852');
INSERT INTO `cdg_regioncode` VALUES ('510184000000', '四川省崇州市', '1', '2853');
INSERT INTO `cdg_regioncode` VALUES ('510300000000', '四川省自贡市', '1', '2854');
INSERT INTO `cdg_regioncode` VALUES ('510301000000', '四川省自贡市市辖区', '1', '2855');
INSERT INTO `cdg_regioncode` VALUES ('510302000000', '四川省自贡市自流井区', '1', '2856');
INSERT INTO `cdg_regioncode` VALUES ('510303000000', '四川省自贡市贡井区', '1', '2857');
INSERT INTO `cdg_regioncode` VALUES ('510304000000', '四川省自贡市大安区', '1', '2858');
INSERT INTO `cdg_regioncode` VALUES ('510311000000', '四川省自贡市沿滩区', '1', '2859');
INSERT INTO `cdg_regioncode` VALUES ('510321000000', '四川省荣县', '1', '2860');
INSERT INTO `cdg_regioncode` VALUES ('510322000000', '四川省富顺县', '1', '2861');
INSERT INTO `cdg_regioncode` VALUES ('510400000000', '四川省攀枝花市', '1', '2862');
INSERT INTO `cdg_regioncode` VALUES ('510401000000', '四川省攀枝花市市辖区', '1', '2863');
INSERT INTO `cdg_regioncode` VALUES ('510402000000', '四川省攀枝花市东区', '1', '2864');
INSERT INTO `cdg_regioncode` VALUES ('510403000000', '四川省攀枝花市西区', '1', '2865');
INSERT INTO `cdg_regioncode` VALUES ('510411000000', '四川省攀枝花市仁和区', '1', '2866');
INSERT INTO `cdg_regioncode` VALUES ('510421000000', '四川省米易县', '1', '2867');
INSERT INTO `cdg_regioncode` VALUES ('510422000000', '四川省盐边县', '1', '2868');
INSERT INTO `cdg_regioncode` VALUES ('510500000000', '四川省泸州市', '1', '2869');
INSERT INTO `cdg_regioncode` VALUES ('510501000000', '四川省泸州市市辖区', '1', '2870');
INSERT INTO `cdg_regioncode` VALUES ('510502000000', '四川省泸州市江阳区', '1', '2871');
INSERT INTO `cdg_regioncode` VALUES ('510503000000', '四川省泸州市纳溪区', '1', '2872');
INSERT INTO `cdg_regioncode` VALUES ('510504000000', '四川省泸州市龙马潭区', '1', '2873');
INSERT INTO `cdg_regioncode` VALUES ('510521000000', '四川省泸县', '1', '2874');
INSERT INTO `cdg_regioncode` VALUES ('510522000000', '四川省合江县', '1', '2875');
INSERT INTO `cdg_regioncode` VALUES ('510524000000', '四川省叙永县', '1', '2876');
INSERT INTO `cdg_regioncode` VALUES ('510525000000', '四川省古蔺县', '1', '2877');
INSERT INTO `cdg_regioncode` VALUES ('510600000000', '四川省德阳市', '1', '2878');
INSERT INTO `cdg_regioncode` VALUES ('510601000000', '四川省德阳市市辖区', '1', '2879');
INSERT INTO `cdg_regioncode` VALUES ('510603000000', '四川省德阳市旌阳区', '1', '2880');
INSERT INTO `cdg_regioncode` VALUES ('510623000000', '四川省中江县', '1', '2881');
INSERT INTO `cdg_regioncode` VALUES ('510626000000', '四川省罗江县', '1', '2882');
INSERT INTO `cdg_regioncode` VALUES ('510681000000', '四川省广汉市', '1', '2883');
INSERT INTO `cdg_regioncode` VALUES ('510682000000', '四川省什邡市', '1', '2884');
INSERT INTO `cdg_regioncode` VALUES ('510683000000', '四川省绵竹市', '1', '2885');
INSERT INTO `cdg_regioncode` VALUES ('510700000000', '四川省绵阳市', '1', '2886');
INSERT INTO `cdg_regioncode` VALUES ('510701000000', '四川省绵阳市市辖区', '1', '2887');
INSERT INTO `cdg_regioncode` VALUES ('510703000000', '四川省绵阳市涪城区', '1', '2888');
INSERT INTO `cdg_regioncode` VALUES ('510704000000', '四川省绵阳市游仙区', '1', '2889');
INSERT INTO `cdg_regioncode` VALUES ('510722000000', '四川省三台县', '1', '2890');
INSERT INTO `cdg_regioncode` VALUES ('510723000000', '四川省盐亭县', '1', '2891');
INSERT INTO `cdg_regioncode` VALUES ('510724000000', '四川省安县', '1', '2892');
INSERT INTO `cdg_regioncode` VALUES ('510725000000', '四川省梓潼县', '1', '2893');
INSERT INTO `cdg_regioncode` VALUES ('510726000000', '四川省北川羌族自治县', '1', '2894');
INSERT INTO `cdg_regioncode` VALUES ('510727000000', '四川省平武县', '1', '2895');
INSERT INTO `cdg_regioncode` VALUES ('510781000000', '四川省江油市', '1', '2896');
INSERT INTO `cdg_regioncode` VALUES ('510800000000', '四川省广元市', '1', '2897');
INSERT INTO `cdg_regioncode` VALUES ('510801000000', '四川省广元市市辖区', '1', '2898');
INSERT INTO `cdg_regioncode` VALUES ('510802000000', '四川省广元市市中区', '1', '2899');
INSERT INTO `cdg_regioncode` VALUES ('511000000000', '四川省内江市', '1', '2913');
INSERT INTO `cdg_regioncode` VALUES ('511001000000', '四川省内江市市辖区', '1', '2914');
INSERT INTO `cdg_regioncode` VALUES ('511002000000', '四川省内江市市中区', '1', '2915');
INSERT INTO `cdg_regioncode` VALUES ('511011000000', '四川省内江市东兴区', '1', '2916');
INSERT INTO `cdg_regioncode` VALUES ('511024000000', '四川省威远县', '1', '2917');
INSERT INTO `cdg_regioncode` VALUES ('511025000000', '四川省资中县', '1', '2918');
INSERT INTO `cdg_regioncode` VALUES ('511028000000', '四川省隆昌县', '1', '2919');
INSERT INTO `cdg_regioncode` VALUES ('511100000000', '四川省乐山市', '1', '2920');
INSERT INTO `cdg_regioncode` VALUES ('511101000000', '四川省乐山市市辖区', '1', '2921');
INSERT INTO `cdg_regioncode` VALUES ('511102000000', '四川省乐山市市中区', '1', '2922');
INSERT INTO `cdg_regioncode` VALUES ('511111000000', '四川省乐山市沙湾区', '1', '2923');
INSERT INTO `cdg_regioncode` VALUES ('511112000000', '四川省乐山市五通桥区', '1', '2924');
INSERT INTO `cdg_regioncode` VALUES ('511113000000', '四川省乐山市金口河区', '1', '2925');
INSERT INTO `cdg_regioncode` VALUES ('511123000000', '四川省犍为县', '1', '2926');
INSERT INTO `cdg_regioncode` VALUES ('511124000000', '四川省井研县', '1', '2927');
INSERT INTO `cdg_regioncode` VALUES ('511126000000', '四川省夹江县', '1', '2928');
INSERT INTO `cdg_regioncode` VALUES ('511129000000', '四川省沐川县', '1', '2929');
INSERT INTO `cdg_regioncode` VALUES ('511132000000', '四川省峨边彝族自治县', '1', '2930');
INSERT INTO `cdg_regioncode` VALUES ('511133000000', '四川省马边彝族自治县', '1', '2931');
INSERT INTO `cdg_regioncode` VALUES ('511181000000', '四川省峨眉山市', '1', '2932');
INSERT INTO `cdg_regioncode` VALUES ('511300000000', '四川省南充市', '1', '2933');
INSERT INTO `cdg_regioncode` VALUES ('511301000000', '四川省南充市市辖区', '1', '2934');
INSERT INTO `cdg_regioncode` VALUES ('511302000000', '四川省南充市顺庆区', '1', '2935');
INSERT INTO `cdg_regioncode` VALUES ('511303000000', '四川省南充市高坪区', '1', '2936');
INSERT INTO `cdg_regioncode` VALUES ('511304000000', '四川省南充市嘉陵区', '1', '2937');
INSERT INTO `cdg_regioncode` VALUES ('511321000000', '四川省南部县', '1', '2938');
INSERT INTO `cdg_regioncode` VALUES ('511322000000', '四川省营山县', '1', '2939');
INSERT INTO `cdg_regioncode` VALUES ('511323000000', '四川省蓬安县', '1', '2940');
INSERT INTO `cdg_regioncode` VALUES ('511324000000', '四川省仪陇县', '1', '2941');
INSERT INTO `cdg_regioncode` VALUES ('511325000000', '四川省西充县', '1', '2942');
INSERT INTO `cdg_regioncode` VALUES ('511381000000', '四川省阆中市', '1', '2943');
INSERT INTO `cdg_regioncode` VALUES ('511400000000', '四川省眉山市', '1', '2944');
INSERT INTO `cdg_regioncode` VALUES ('511401000000', '四川省眉山市市辖区', '1', '2945');
INSERT INTO `cdg_regioncode` VALUES ('511402000000', '四川省眉山市东坡区', '1', '2946');
INSERT INTO `cdg_regioncode` VALUES ('511421000000', '四川省仁寿县', '1', '2947');
INSERT INTO `cdg_regioncode` VALUES ('511422000000', '四川省彭山县', '1', '2948');
INSERT INTO `cdg_regioncode` VALUES ('511423000000', '四川省洪雅县', '1', '2949');
INSERT INTO `cdg_regioncode` VALUES ('511424000000', '四川省丹棱县', '1', '2950');
INSERT INTO `cdg_regioncode` VALUES ('511425000000', '四川省青神县', '1', '2951');
INSERT INTO `cdg_regioncode` VALUES ('511500000000', '四川省宜宾市', '1', '2952');
INSERT INTO `cdg_regioncode` VALUES ('511501000000', '四川省宜宾市市辖区', '1', '2953');
INSERT INTO `cdg_regioncode` VALUES ('511502000000', '四川省宜宾市翠屏区', '1', '2954');
INSERT INTO `cdg_regioncode` VALUES ('511521000000', '四川省宜宾县', '1', '2955');
INSERT INTO `cdg_regioncode` VALUES ('511522000000', '四川省南溪县', '1', '2956');
INSERT INTO `cdg_regioncode` VALUES ('511523000000', '四川省江安县', '1', '2957');
INSERT INTO `cdg_regioncode` VALUES ('511524000000', '四川省长宁县', '1', '2958');
INSERT INTO `cdg_regioncode` VALUES ('511525000000', '四川省高县', '1', '2959');
INSERT INTO `cdg_regioncode` VALUES ('511526000000', '四川省珙县', '1', '2960');
INSERT INTO `cdg_regioncode` VALUES ('511527000000', '四川省筠连县', '1', '2961');
INSERT INTO `cdg_regioncode` VALUES ('511528000000', '四川省兴文县', '1', '2962');
INSERT INTO `cdg_regioncode` VALUES ('511529000000', '四川省屏山县', '1', '2963');
INSERT INTO `cdg_regioncode` VALUES ('511600000000', '四川省广安市', '1', '2964');
INSERT INTO `cdg_regioncode` VALUES ('511601000000', '四川省广安市市辖区', '1', '2965');
INSERT INTO `cdg_regioncode` VALUES ('511602000000', '四川省广安市广安区', '1', '2966');
INSERT INTO `cdg_regioncode` VALUES ('511621000000', '四川省岳池县', '1', '2967');
INSERT INTO `cdg_regioncode` VALUES ('511622000000', '四川省武胜县', '1', '2968');
INSERT INTO `cdg_regioncode` VALUES ('511623000000', '四川省邻水县', '1', '2969');
INSERT INTO `cdg_regioncode` VALUES ('511681000000', '四川省华莹市', '1', '2970');
INSERT INTO `cdg_regioncode` VALUES ('511700000000', '四川省达州市', '1', '2971');
INSERT INTO `cdg_regioncode` VALUES ('511701000000', '四川省达州市市辖区', '1', '2972');
INSERT INTO `cdg_regioncode` VALUES ('511702000000', '四川省达州市通川区', '1', '2973');
INSERT INTO `cdg_regioncode` VALUES ('511721000000', '四川省达县', '1', '2974');
INSERT INTO `cdg_regioncode` VALUES ('511722000000', '四川省宣汉县', '1', '2975');
INSERT INTO `cdg_regioncode` VALUES ('511723000000', '四川省开江县', '1', '2976');
INSERT INTO `cdg_regioncode` VALUES ('511724000000', '四川省大竹县', '1', '2977');
INSERT INTO `cdg_regioncode` VALUES ('511725000000', '四川省渠县', '1', '2978');
INSERT INTO `cdg_regioncode` VALUES ('511781000000', '四川省万源市', '1', '2979');
INSERT INTO `cdg_regioncode` VALUES ('511800000000', '四川省雅安市', '1', '2980');
INSERT INTO `cdg_regioncode` VALUES ('511801000000', '四川省雅安市市辖区', '1', '2981');
INSERT INTO `cdg_regioncode` VALUES ('511802000000', '四川省雅安市雨城区', '1', '2982');
INSERT INTO `cdg_regioncode` VALUES ('511821000000', '四川省名山县', '1', '2983');
INSERT INTO `cdg_regioncode` VALUES ('511822000000', '四川省荥经县', '1', '2984');
INSERT INTO `cdg_regioncode` VALUES ('511823000000', '四川省汉源县', '1', '2985');
INSERT INTO `cdg_regioncode` VALUES ('511824000000', '四川省石棉县', '1', '2986');
INSERT INTO `cdg_regioncode` VALUES ('511825000000', '四川省天全县', '1', '2987');
INSERT INTO `cdg_regioncode` VALUES ('511826000000', '四川省芦山县', '1', '2988');
INSERT INTO `cdg_regioncode` VALUES ('511827000000', '四川省宝兴县', '1', '2989');
INSERT INTO `cdg_regioncode` VALUES ('511900000000', '四川省巴中市', '1', '2990');
INSERT INTO `cdg_regioncode` VALUES ('511901000000', '四川省巴中市市辖区', '1', '2991');
INSERT INTO `cdg_regioncode` VALUES ('511902000000', '四川省巴中市巴州区', '1', '2992');
INSERT INTO `cdg_regioncode` VALUES ('511921000000', '四川省通江县', '1', '2993');
INSERT INTO `cdg_regioncode` VALUES ('511922000000', '四川省南江县', '1', '2994');
INSERT INTO `cdg_regioncode` VALUES ('511923000000', '四川省平昌县', '1', '2995');
INSERT INTO `cdg_regioncode` VALUES ('512000000000', '四川省资阳市', '1', '2996');
INSERT INTO `cdg_regioncode` VALUES ('512001000000', '四川省资阳市市辖区', '1', '2997');
INSERT INTO `cdg_regioncode` VALUES ('512002000000', '四川省资阳市雁江区', '1', '2998');
INSERT INTO `cdg_regioncode` VALUES ('512021000000', '四川省安岳县', '1', '2999');
INSERT INTO `cdg_regioncode` VALUES ('513231000000', '四川省阿坝县', '1', '3013');
INSERT INTO `cdg_regioncode` VALUES ('513232000000', '四川省若尔盖县', '1', '3014');
INSERT INTO `cdg_regioncode` VALUES ('513233000000', '四川省红原县', '1', '3015');
INSERT INTO `cdg_regioncode` VALUES ('513300000000', '四川省甘孜藏族自治州', '1', '3016');
INSERT INTO `cdg_regioncode` VALUES ('513321000000', '四川省康定县', '1', '3017');
INSERT INTO `cdg_regioncode` VALUES ('513322000000', '四川省泸定县', '1', '3018');
INSERT INTO `cdg_regioncode` VALUES ('513323000000', '四川省丹巴县', '1', '3019');
INSERT INTO `cdg_regioncode` VALUES ('513324000000', '四川省九龙县', '1', '3020');
INSERT INTO `cdg_regioncode` VALUES ('513325000000', '四川省雅江县', '1', '3021');
INSERT INTO `cdg_regioncode` VALUES ('513326000000', '四川省道孚县', '1', '3022');
INSERT INTO `cdg_regioncode` VALUES ('513327000000', '四川省炉霍县', '1', '3023');
INSERT INTO `cdg_regioncode` VALUES ('513328000000', '四川省甘孜县', '1', '3024');
INSERT INTO `cdg_regioncode` VALUES ('513329000000', '四川省新龙县', '1', '3025');
INSERT INTO `cdg_regioncode` VALUES ('513330000000', '四川省德格县', '1', '3026');
INSERT INTO `cdg_regioncode` VALUES ('513331000000', '四川省白玉县', '1', '3027');
INSERT INTO `cdg_regioncode` VALUES ('513332000000', '四川省石渠县', '1', '3028');
INSERT INTO `cdg_regioncode` VALUES ('513333000000', '四川省色达县', '1', '3029');
INSERT INTO `cdg_regioncode` VALUES ('513334000000', '四川省理塘县', '1', '3030');
INSERT INTO `cdg_regioncode` VALUES ('513335000000', '四川省巴塘县', '1', '3031');
INSERT INTO `cdg_regioncode` VALUES ('513336000000', '四川省乡城县', '1', '3032');
INSERT INTO `cdg_regioncode` VALUES ('513337000000', '四川省稻城县', '1', '3033');
INSERT INTO `cdg_regioncode` VALUES ('513338000000', '四川省得荣县', '1', '3034');
INSERT INTO `cdg_regioncode` VALUES ('513400000000', '四川省凉山彝族自治州', '1', '3035');
INSERT INTO `cdg_regioncode` VALUES ('513401000000', '四川省西昌市', '1', '3036');
INSERT INTO `cdg_regioncode` VALUES ('513422000000', '四川省木里藏族自治县', '1', '3037');
INSERT INTO `cdg_regioncode` VALUES ('513423000000', '四川省盐源县', '1', '3038');
INSERT INTO `cdg_regioncode` VALUES ('513424000000', '四川省德昌县', '1', '3039');
INSERT INTO `cdg_regioncode` VALUES ('513425000000', '四川省会理县', '1', '3040');
INSERT INTO `cdg_regioncode` VALUES ('513426000000', '四川省会东县', '1', '3041');
INSERT INTO `cdg_regioncode` VALUES ('513427000000', '四川省宁南县', '1', '3042');
INSERT INTO `cdg_regioncode` VALUES ('513428000000', '四川省普格县', '1', '3043');
INSERT INTO `cdg_regioncode` VALUES ('513429000000', '四川省布拖县', '1', '3044');
INSERT INTO `cdg_regioncode` VALUES ('513430000000', '四川省金阳县', '1', '3045');
INSERT INTO `cdg_regioncode` VALUES ('513431000000', '四川省昭觉县', '1', '3046');
INSERT INTO `cdg_regioncode` VALUES ('513432000000', '四川省喜德县', '1', '3047');
INSERT INTO `cdg_regioncode` VALUES ('513433000000', '四川省冕宁县', '1', '3048');
INSERT INTO `cdg_regioncode` VALUES ('513434000000', '四川省越西县', '1', '3049');
INSERT INTO `cdg_regioncode` VALUES ('513435000000', '四川省甘洛县', '1', '3050');
INSERT INTO `cdg_regioncode` VALUES ('513436000000', '四川省美姑县', '1', '3051');
INSERT INTO `cdg_regioncode` VALUES ('513437000000', '四川省雷波县', '1', '3052');
INSERT INTO `cdg_regioncode` VALUES ('520000000000', '贵州省', '1', '3053');
INSERT INTO `cdg_regioncode` VALUES ('520100000000', '贵州省贵阳市', '1', '3054');
INSERT INTO `cdg_regioncode` VALUES ('520101000000', '贵州省贵阳市市辖区', '1', '3055');
INSERT INTO `cdg_regioncode` VALUES ('520102000000', '贵州省贵阳市南明区', '1', '3056');
INSERT INTO `cdg_regioncode` VALUES ('520103000000', '贵州省贵阳市云岩区', '1', '3057');
INSERT INTO `cdg_regioncode` VALUES ('520111000000', '贵州省贵阳市花溪区', '1', '3058');
INSERT INTO `cdg_regioncode` VALUES ('520112000000', '贵州省贵阳市乌当区', '1', '3059');
INSERT INTO `cdg_regioncode` VALUES ('520113000000', '贵州省贵阳市白云区', '1', '3060');
INSERT INTO `cdg_regioncode` VALUES ('520114000000', '贵州省贵阳市小河区', '1', '3061');
INSERT INTO `cdg_regioncode` VALUES ('520121000000', '贵州省开阳县', '1', '3062');
INSERT INTO `cdg_regioncode` VALUES ('520122000000', '贵州省息烽县', '1', '3063');
INSERT INTO `cdg_regioncode` VALUES ('520123000000', '贵州省修文县', '1', '3064');
INSERT INTO `cdg_regioncode` VALUES ('520181000000', '贵州省清镇市', '1', '3065');
INSERT INTO `cdg_regioncode` VALUES ('520200000000', '贵州省六盘水市', '1', '3066');
INSERT INTO `cdg_regioncode` VALUES ('520201000000', '贵州省钟山区', '1', '3067');
INSERT INTO `cdg_regioncode` VALUES ('520203000000', '贵州省六枝特区', '1', '3068');
INSERT INTO `cdg_regioncode` VALUES ('520221000000', '贵州省水城县', '1', '3069');
INSERT INTO `cdg_regioncode` VALUES ('520222000000', '贵州省盘县', '1', '3070');
INSERT INTO `cdg_regioncode` VALUES ('520300000000', '贵州省遵义市', '1', '3071');
INSERT INTO `cdg_regioncode` VALUES ('520301000000', '贵州省遵义市市辖区', '1', '3072');
INSERT INTO `cdg_regioncode` VALUES ('520302000000', '贵州省遵义市红花岗区', '1', '3073');
INSERT INTO `cdg_regioncode` VALUES ('520303000000', '贵州省遵义市汇川区', '1', '3074');
INSERT INTO `cdg_regioncode` VALUES ('520321000000', '贵州省遵义县', '1', '3075');
INSERT INTO `cdg_regioncode` VALUES ('520322000000', '贵州省桐梓县', '1', '3076');
INSERT INTO `cdg_regioncode` VALUES ('520323000000', '贵州省绥阳县', '1', '3077');
INSERT INTO `cdg_regioncode` VALUES ('520324000000', '贵州省正安县', '1', '3078');
INSERT INTO `cdg_regioncode` VALUES ('520325000000', '贵州省道真仡佬族苗族自治县', '1', '3079');
INSERT INTO `cdg_regioncode` VALUES ('520326000000', '贵州省务川仡佬族苗族自治县', '1', '3080');
INSERT INTO `cdg_regioncode` VALUES ('520327000000', '贵州省凤冈县', '1', '3081');
INSERT INTO `cdg_regioncode` VALUES ('520328000000', '贵州省湄潭县', '1', '3082');
INSERT INTO `cdg_regioncode` VALUES ('520329000000', '贵州省余庆县', '1', '3083');
INSERT INTO `cdg_regioncode` VALUES ('520330000000', '贵州省习水县', '1', '3084');
INSERT INTO `cdg_regioncode` VALUES ('520381000000', '贵州省赤水市', '1', '3085');
INSERT INTO `cdg_regioncode` VALUES ('520382000000', '贵州省仁怀市', '1', '3086');
INSERT INTO `cdg_regioncode` VALUES ('520400000000', '贵州省安顺市', '1', '3087');
INSERT INTO `cdg_regioncode` VALUES ('520401000000', '贵州省安顺市市辖区', '1', '3088');
INSERT INTO `cdg_regioncode` VALUES ('520402000000', '贵州省安顺市西秀区', '1', '3089');
INSERT INTO `cdg_regioncode` VALUES ('520421000000', '贵州省平坝县', '1', '3090');
INSERT INTO `cdg_regioncode` VALUES ('520422000000', '贵州省普定县', '1', '3091');
INSERT INTO `cdg_regioncode` VALUES ('520423000000', '贵州省镇宁布依族苗族自治县', '1', '3092');
INSERT INTO `cdg_regioncode` VALUES ('520424000000', '贵州省关岭布依族苗族自治县', '1', '3093');
INSERT INTO `cdg_regioncode` VALUES ('520425000000', '贵州省紫云苗族布依族自治县', '1', '3094');
INSERT INTO `cdg_regioncode` VALUES ('522200000000', '贵州省铜仁地区', '1', '3095');
INSERT INTO `cdg_regioncode` VALUES ('522201000000', '贵州省铜仁市', '1', '3096');
INSERT INTO `cdg_regioncode` VALUES ('522222000000', '贵州省江口县', '1', '3097');
INSERT INTO `cdg_regioncode` VALUES ('522223000000', '贵州省玉屏侗族自治县', '1', '3098');
INSERT INTO `cdg_regioncode` VALUES ('522224000000', '贵州省石阡县', '1', '3099');
INSERT INTO `cdg_regioncode` VALUES ('522327000000', '贵州省册亨县', '1', '3113');
INSERT INTO `cdg_regioncode` VALUES ('522328000000', '贵州省安龙县', '1', '3114');
INSERT INTO `cdg_regioncode` VALUES ('522400000000', '贵州省毕节地区', '1', '3115');
INSERT INTO `cdg_regioncode` VALUES ('522401000000', '贵州省毕节市', '1', '3116');
INSERT INTO `cdg_regioncode` VALUES ('522422000000', '贵州省大方县', '1', '3117');
INSERT INTO `cdg_regioncode` VALUES ('522423000000', '贵州省黔西县', '1', '3118');
INSERT INTO `cdg_regioncode` VALUES ('522424000000', '贵州省金沙县', '1', '3119');
INSERT INTO `cdg_regioncode` VALUES ('522425000000', '贵州省织金县', '1', '3120');
INSERT INTO `cdg_regioncode` VALUES ('522426000000', '贵州省纳雍县', '1', '3121');
INSERT INTO `cdg_regioncode` VALUES ('522427000000', '贵州省威宁彝族回族苗族自治县', '1', '3122');
INSERT INTO `cdg_regioncode` VALUES ('522428000000', '贵州省赫章县', '1', '3123');
INSERT INTO `cdg_regioncode` VALUES ('522600000000', '贵州省黔东南苗族侗族自治州', '1', '3124');
INSERT INTO `cdg_regioncode` VALUES ('522601000000', '贵州省凯里市', '1', '3125');
INSERT INTO `cdg_regioncode` VALUES ('522622000000', '贵州省黄平县', '1', '3126');
INSERT INTO `cdg_regioncode` VALUES ('522623000000', '贵州省施秉县', '1', '3127');
INSERT INTO `cdg_regioncode` VALUES ('522624000000', '贵州省三穗县', '1', '3128');
INSERT INTO `cdg_regioncode` VALUES ('522625000000', '贵州省镇远县', '1', '3129');
INSERT INTO `cdg_regioncode` VALUES ('522626000000', '贵州省岑巩县', '1', '3130');
INSERT INTO `cdg_regioncode` VALUES ('522627000000', '贵州省天柱县', '1', '3131');
INSERT INTO `cdg_regioncode` VALUES ('522628000000', '贵州省锦屏县', '1', '3132');
INSERT INTO `cdg_regioncode` VALUES ('522629000000', '贵州省剑河县', '1', '3133');
INSERT INTO `cdg_regioncode` VALUES ('522630000000', '贵州省台江县', '1', '3134');
INSERT INTO `cdg_regioncode` VALUES ('522631000000', '贵州省黎平县', '1', '3135');
INSERT INTO `cdg_regioncode` VALUES ('522632000000', '贵州省榕江县', '1', '3136');
INSERT INTO `cdg_regioncode` VALUES ('522633000000', '贵州省从江县', '1', '3137');
INSERT INTO `cdg_regioncode` VALUES ('522634000000', '贵州省雷山县', '1', '3138');
INSERT INTO `cdg_regioncode` VALUES ('522635000000', '贵州省麻江县', '1', '3139');
INSERT INTO `cdg_regioncode` VALUES ('522636000000', '贵州省丹寨县', '1', '3140');
INSERT INTO `cdg_regioncode` VALUES ('522700000000', '贵州省黔南布依族苗族自治州', '1', '3141');
INSERT INTO `cdg_regioncode` VALUES ('522701000000', '贵州省都匀市', '1', '3142');
INSERT INTO `cdg_regioncode` VALUES ('522702000000', '贵州省福泉市', '1', '3143');
INSERT INTO `cdg_regioncode` VALUES ('522722000000', '贵州省荔波县', '1', '3144');
INSERT INTO `cdg_regioncode` VALUES ('522723000000', '贵州省贵定县', '1', '3145');
INSERT INTO `cdg_regioncode` VALUES ('522725000000', '贵州省瓮安县', '1', '3146');
INSERT INTO `cdg_regioncode` VALUES ('522726000000', '贵州省独山县', '1', '3147');
INSERT INTO `cdg_regioncode` VALUES ('522727000000', '贵州省平塘县', '1', '3148');
INSERT INTO `cdg_regioncode` VALUES ('522728000000', '贵州省罗甸县', '1', '3149');
INSERT INTO `cdg_regioncode` VALUES ('522729000000', '贵州省长顺县', '1', '3150');
INSERT INTO `cdg_regioncode` VALUES ('522730000000', '贵州省龙里县', '1', '3151');
INSERT INTO `cdg_regioncode` VALUES ('522731000000', '贵州省惠水县', '1', '3152');
INSERT INTO `cdg_regioncode` VALUES ('522732000000', '贵州省三都水族自治县', '1', '3153');
INSERT INTO `cdg_regioncode` VALUES ('530000000000', '云南省', '1', '3154');
INSERT INTO `cdg_regioncode` VALUES ('530100000000', '云南省昆明市', '1', '3155');
INSERT INTO `cdg_regioncode` VALUES ('530101000000', '云南省昆明市市辖区', '1', '3156');
INSERT INTO `cdg_regioncode` VALUES ('530102000000', '云南省昆明市五华区', '1', '3157');
INSERT INTO `cdg_regioncode` VALUES ('530103000000', '云南省昆明市盘龙区', '1', '3158');
INSERT INTO `cdg_regioncode` VALUES ('530111000000', '云南省昆明市官渡区', '1', '3159');
INSERT INTO `cdg_regioncode` VALUES ('530112000000', '云南省昆明市西山区', '1', '3160');
INSERT INTO `cdg_regioncode` VALUES ('530113000000', '云南省昆明市东川区', '1', '3161');
INSERT INTO `cdg_regioncode` VALUES ('530121000000', '云南省呈贡县', '1', '3162');
INSERT INTO `cdg_regioncode` VALUES ('530122000000', '云南省晋宁县', '1', '3163');
INSERT INTO `cdg_regioncode` VALUES ('530124000000', '云南省富民县', '1', '3164');
INSERT INTO `cdg_regioncode` VALUES ('530125000000', '云南省宜良县', '1', '3165');
INSERT INTO `cdg_regioncode` VALUES ('530126000000', '云南省石林彝族自治县', '1', '3166');
INSERT INTO `cdg_regioncode` VALUES ('530127000000', '云南省嵩明县', '1', '3167');
INSERT INTO `cdg_regioncode` VALUES ('530128000000', '云南省禄劝彝族苗族自治县', '1', '3168');
INSERT INTO `cdg_regioncode` VALUES ('530129000000', '云南省寻甸回族彝族自治县', '1', '3169');
INSERT INTO `cdg_regioncode` VALUES ('530181000000', '云南省安宁市', '1', '3170');
INSERT INTO `cdg_regioncode` VALUES ('530300000000', '云南省曲靖市', '1', '3171');
INSERT INTO `cdg_regioncode` VALUES ('530301000000', '云南省曲靖市市辖区', '1', '3172');
INSERT INTO `cdg_regioncode` VALUES ('530302000000', '云南省曲靖市麒麟区', '1', '3173');
INSERT INTO `cdg_regioncode` VALUES ('530321000000', '云南省马龙县', '1', '3174');
INSERT INTO `cdg_regioncode` VALUES ('530322000000', '云南省陆良县', '1', '3175');
INSERT INTO `cdg_regioncode` VALUES ('530323000000', '云南省师宗县', '1', '3176');
INSERT INTO `cdg_regioncode` VALUES ('530324000000', '云南省罗平县', '1', '3177');
INSERT INTO `cdg_regioncode` VALUES ('530325000000', '云南省富源县', '1', '3178');
INSERT INTO `cdg_regioncode` VALUES ('530326000000', '云南省会泽县', '1', '3179');
INSERT INTO `cdg_regioncode` VALUES ('530328000000', '云南省沾益县', '1', '3180');
INSERT INTO `cdg_regioncode` VALUES ('530381000000', '云南省宣威市', '1', '3181');
INSERT INTO `cdg_regioncode` VALUES ('530400000000', '云南省玉溪市', '1', '3182');
INSERT INTO `cdg_regioncode` VALUES ('530401000000', '云南省玉溪市市辖区', '1', '3183');
INSERT INTO `cdg_regioncode` VALUES ('530402000000', '云南省玉溪市红塔区', '1', '3184');
INSERT INTO `cdg_regioncode` VALUES ('530421000000', '云南省江川县', '1', '3185');
INSERT INTO `cdg_regioncode` VALUES ('530422000000', '云南省澄江县', '1', '3186');
INSERT INTO `cdg_regioncode` VALUES ('530423000000', '云南省通海县', '1', '3187');
INSERT INTO `cdg_regioncode` VALUES ('530424000000', '云南省华宁县', '1', '3188');
INSERT INTO `cdg_regioncode` VALUES ('530425000000', '云南省易门县', '1', '3189');
INSERT INTO `cdg_regioncode` VALUES ('530426000000', '云南省峨山彝族自治县', '1', '3190');
INSERT INTO `cdg_regioncode` VALUES ('530427000000', '云南省新平彝族傣族自治县', '1', '3191');
INSERT INTO `cdg_regioncode` VALUES ('530428000000', '云南省元江哈尼族彝族傣族自治县', '1', '3192');
INSERT INTO `cdg_regioncode` VALUES ('530500000000', '云南省保山市', '1', '3193');
INSERT INTO `cdg_regioncode` VALUES ('530501000000', '云南省保山市市辖区', '1', '3194');
INSERT INTO `cdg_regioncode` VALUES ('530502000000', '云南省保山市隆阳区', '1', '3195');
INSERT INTO `cdg_regioncode` VALUES ('530521000000', '云南省施甸县', '1', '3196');
INSERT INTO `cdg_regioncode` VALUES ('530522000000', '云南省腾冲县', '1', '3197');
INSERT INTO `cdg_regioncode` VALUES ('530523000000', '云南省龙陵县', '1', '3198');
INSERT INTO `cdg_regioncode` VALUES ('530524000000', '云南省昌宁县', '1', '3199');
INSERT INTO `cdg_regioncode` VALUES ('530700000000', '云南省丽江市', '1', '3213');
INSERT INTO `cdg_regioncode` VALUES ('530701000000', '云南省丽江市市辖区', '1', '3214');
INSERT INTO `cdg_regioncode` VALUES ('530702000000', '云南省丽江市古城区', '1', '3215');
INSERT INTO `cdg_regioncode` VALUES ('530721000000', '云南省玉龙纳西族自治县', '1', '3216');
INSERT INTO `cdg_regioncode` VALUES ('530722000000', '云南省永胜县', '1', '3217');
INSERT INTO `cdg_regioncode` VALUES ('530723000000', '云南省华坪县', '1', '3218');
INSERT INTO `cdg_regioncode` VALUES ('530724000000', '云南省宁蒗彝族自治县', '1', '3219');
INSERT INTO `cdg_regioncode` VALUES ('530800000000', '云南省思茅市', '1', '3220');
INSERT INTO `cdg_regioncode` VALUES ('530801000000', '云南省思茅市市辖区', '1', '3221');
INSERT INTO `cdg_regioncode` VALUES ('530802000000', '云南省思茅市翠云区', '1', '3222');
INSERT INTO `cdg_regioncode` VALUES ('530821000000', '云南省普洱哈尼族彝族自治县', '1', '3223');
INSERT INTO `cdg_regioncode` VALUES ('530822000000', '云南省墨江哈尼族自治县', '1', '3224');
INSERT INTO `cdg_regioncode` VALUES ('530823000000', '云南省景东彝族自治县', '1', '3225');
INSERT INTO `cdg_regioncode` VALUES ('530824000000', '云南省景谷傣族彝族自治县', '1', '3226');
INSERT INTO `cdg_regioncode` VALUES ('530825000000', '云南省镇沅彝族哈尼族拉祜族自治', '1', '3227');
INSERT INTO `cdg_regioncode` VALUES ('530826000000', '云南省江城哈尼族彝族自治县', '1', '3228');
INSERT INTO `cdg_regioncode` VALUES ('530827000000', '云南省孟连傣族拉祜族佤族自治县', '1', '3229');
INSERT INTO `cdg_regioncode` VALUES ('530828000000', '云南省澜沧拉祜族自治县', '1', '3230');
INSERT INTO `cdg_regioncode` VALUES ('530829000000', '云南省西盟佤族自治县', '1', '3231');
INSERT INTO `cdg_regioncode` VALUES ('530900000000', '云南省临沧市', '1', '3232');
INSERT INTO `cdg_regioncode` VALUES ('530901000000', '云南省临沧市市辖区', '1', '3233');
INSERT INTO `cdg_regioncode` VALUES ('530902000000', '云南省临沧市临翔区', '1', '3234');
INSERT INTO `cdg_regioncode` VALUES ('530921000000', '云南省凤庆县', '1', '3235');
INSERT INTO `cdg_regioncode` VALUES ('530922000000', '云南省云县', '1', '3236');
INSERT INTO `cdg_regioncode` VALUES ('530923000000', '云南省永德县', '1', '3237');
INSERT INTO `cdg_regioncode` VALUES ('530924000000', '云南省镇康县', '1', '3238');
INSERT INTO `cdg_regioncode` VALUES ('530925000000', '云南省双江拉祜族佤族布朗族傣族', '1', '3239');
INSERT INTO `cdg_regioncode` VALUES ('530926000000', '云南省耿马傣族佤族自治县', '1', '3240');
INSERT INTO `cdg_regioncode` VALUES ('530927000000', '云南省沧源佤族自治县', '1', '3241');
INSERT INTO `cdg_regioncode` VALUES ('532300000000', '云南省楚雄彝族自治州', '1', '3242');
INSERT INTO `cdg_regioncode` VALUES ('532301000000', '云南省楚雄市', '1', '3243');
INSERT INTO `cdg_regioncode` VALUES ('532322000000', '云南省双柏县', '1', '3244');
INSERT INTO `cdg_regioncode` VALUES ('532323000000', '云南省牟定县', '1', '3245');
INSERT INTO `cdg_regioncode` VALUES ('532324000000', '云南省南华县', '1', '3246');
INSERT INTO `cdg_regioncode` VALUES ('532325000000', '云南省姚安县', '1', '3247');
INSERT INTO `cdg_regioncode` VALUES ('532326000000', '云南省大姚县', '1', '3248');
INSERT INTO `cdg_regioncode` VALUES ('532327000000', '云南省永仁县', '1', '3249');
INSERT INTO `cdg_regioncode` VALUES ('532328000000', '云南省元谋县', '1', '3250');
INSERT INTO `cdg_regioncode` VALUES ('532329000000', '云南省武定县', '1', '3251');
INSERT INTO `cdg_regioncode` VALUES ('532331000000', '云南省禄丰县', '1', '3252');
INSERT INTO `cdg_regioncode` VALUES ('532500000000', '云南省红河哈尼族彝族自治州', '1', '3253');
INSERT INTO `cdg_regioncode` VALUES ('532501000000', '云南省个旧市', '1', '3254');
INSERT INTO `cdg_regioncode` VALUES ('532502000000', '云南省开远市', '1', '3255');
INSERT INTO `cdg_regioncode` VALUES ('532522000000', '云南省蒙自县', '1', '3256');
INSERT INTO `cdg_regioncode` VALUES ('532523000000', '云南省屏边苗族自治县', '1', '3257');
INSERT INTO `cdg_regioncode` VALUES ('532524000000', '云南省建水县', '1', '3258');
INSERT INTO `cdg_regioncode` VALUES ('532525000000', '云南省石屏县', '1', '3259');
INSERT INTO `cdg_regioncode` VALUES ('532526000000', '云南省弥勒县', '1', '3260');
INSERT INTO `cdg_regioncode` VALUES ('532527000000', '云南省泸西县', '1', '3261');
INSERT INTO `cdg_regioncode` VALUES ('532528000000', '云南省元阳县', '1', '3262');
INSERT INTO `cdg_regioncode` VALUES ('532529000000', '云南省红河县', '1', '3263');
INSERT INTO `cdg_regioncode` VALUES ('532530000000', '云南省金平苗族瑶族傣族自治县', '1', '3264');
INSERT INTO `cdg_regioncode` VALUES ('532531000000', '云南省绿春县', '1', '3265');
INSERT INTO `cdg_regioncode` VALUES ('532532000000', '云南省河口瑶族自治县', '1', '3266');
INSERT INTO `cdg_regioncode` VALUES ('532600000000', '云南省文山壮族苗族自治州', '1', '3267');
INSERT INTO `cdg_regioncode` VALUES ('532621000000', '云南省文山县', '1', '3268');
INSERT INTO `cdg_regioncode` VALUES ('532622000000', '云南省砚山县', '1', '3269');
INSERT INTO `cdg_regioncode` VALUES ('532623000000', '云南省西畴县', '1', '3270');
INSERT INTO `cdg_regioncode` VALUES ('532624000000', '云南省麻栗坡县', '1', '3271');
INSERT INTO `cdg_regioncode` VALUES ('532625000000', '云南省马关县', '1', '3272');
INSERT INTO `cdg_regioncode` VALUES ('532626000000', '云南省丘北县', '1', '3273');
INSERT INTO `cdg_regioncode` VALUES ('532627000000', '云南省广南县', '1', '3274');
INSERT INTO `cdg_regioncode` VALUES ('532628000000', '云南省富宁县', '1', '3275');
INSERT INTO `cdg_regioncode` VALUES ('532800000000', '云南省西双版纳傣族自治州', '1', '3276');
INSERT INTO `cdg_regioncode` VALUES ('532801000000', '云南省景洪市', '1', '3277');
INSERT INTO `cdg_regioncode` VALUES ('532822000000', '云南省勐海县', '1', '3278');
INSERT INTO `cdg_regioncode` VALUES ('532823000000', '云南省勐腊县', '1', '3279');
INSERT INTO `cdg_regioncode` VALUES ('532900000000', '云南省大理白族自治州', '1', '3280');
INSERT INTO `cdg_regioncode` VALUES ('532901000000', '云南省大理市', '1', '3281');
INSERT INTO `cdg_regioncode` VALUES ('532922000000', '云南省漾濞彝族自治县', '1', '3282');
INSERT INTO `cdg_regioncode` VALUES ('532923000000', '云南省祥云县', '1', '3283');
INSERT INTO `cdg_regioncode` VALUES ('532924000000', '云南省宾川县', '1', '3284');
INSERT INTO `cdg_regioncode` VALUES ('532925000000', '云南省弥渡县', '1', '3285');
INSERT INTO `cdg_regioncode` VALUES ('532926000000', '云南省南涧彝族自治县', '1', '3286');
INSERT INTO `cdg_regioncode` VALUES ('532927000000', '云南省巍山彝族回族自治县', '1', '3287');
INSERT INTO `cdg_regioncode` VALUES ('532928000000', '云南省永平县', '1', '3288');
INSERT INTO `cdg_regioncode` VALUES ('532929000000', '云南省云龙县', '1', '3289');
INSERT INTO `cdg_regioncode` VALUES ('532930000000', '云南省洱源县', '1', '3290');
INSERT INTO `cdg_regioncode` VALUES ('532931000000', '云南省剑川县', '1', '3291');
INSERT INTO `cdg_regioncode` VALUES ('532932000000', '云南省鹤庆县', '1', '3292');
INSERT INTO `cdg_regioncode` VALUES ('533100000000', '云南省德宏傣族景颇族自治州', '1', '3293');
INSERT INTO `cdg_regioncode` VALUES ('533102000000', '云南省瑞丽市', '1', '3294');
INSERT INTO `cdg_regioncode` VALUES ('533103000000', '云南省潞西市', '1', '3295');
INSERT INTO `cdg_regioncode` VALUES ('533122000000', '云南省梁河县', '1', '3296');
INSERT INTO `cdg_regioncode` VALUES ('533123000000', '云南省盈江县', '1', '3297');
INSERT INTO `cdg_regioncode` VALUES ('533124000000', '云南省陇川县', '1', '3298');
INSERT INTO `cdg_regioncode` VALUES ('533300000000', '云南省怒江傈僳族自治州', '1', '3299');
INSERT INTO `cdg_regioncode` VALUES ('540122000000', '西藏当雄县', '1', '3313');
INSERT INTO `cdg_regioncode` VALUES ('540123000000', '西藏尼木县', '1', '3314');
INSERT INTO `cdg_regioncode` VALUES ('540124000000', '西藏曲水县', '1', '3315');
INSERT INTO `cdg_regioncode` VALUES ('540125000000', '西藏堆龙德庆县', '1', '3316');
INSERT INTO `cdg_regioncode` VALUES ('540126000000', '西藏达孜县', '1', '3317');
INSERT INTO `cdg_regioncode` VALUES ('540127000000', '西藏墨竹工卡县', '1', '3318');
INSERT INTO `cdg_regioncode` VALUES ('542100000000', '西藏昌都地区', '1', '3319');
INSERT INTO `cdg_regioncode` VALUES ('542121000000', '西藏昌都县', '1', '3320');
INSERT INTO `cdg_regioncode` VALUES ('542122000000', '西藏江达县', '1', '3321');
INSERT INTO `cdg_regioncode` VALUES ('542123000000', '西藏贡觉县', '1', '3322');
INSERT INTO `cdg_regioncode` VALUES ('542124000000', '西藏类乌齐县', '1', '3323');
INSERT INTO `cdg_regioncode` VALUES ('542125000000', '西藏丁青县', '1', '3324');
INSERT INTO `cdg_regioncode` VALUES ('542126000000', '西藏察雅县', '1', '3325');
INSERT INTO `cdg_regioncode` VALUES ('542127000000', '西藏八宿县', '1', '3326');
INSERT INTO `cdg_regioncode` VALUES ('542128000000', '西藏左贡县', '1', '3327');
INSERT INTO `cdg_regioncode` VALUES ('542129000000', '西藏芒康县', '1', '3328');
INSERT INTO `cdg_regioncode` VALUES ('542132000000', '西藏洛隆县', '1', '3329');
INSERT INTO `cdg_regioncode` VALUES ('542133000000', '西藏边坝县', '1', '3330');
INSERT INTO `cdg_regioncode` VALUES ('542200000000', '西藏山南地区', '1', '3331');
INSERT INTO `cdg_regioncode` VALUES ('542221000000', '西藏乃东县', '1', '3332');
INSERT INTO `cdg_regioncode` VALUES ('542222000000', '西藏扎囊县', '1', '3333');
INSERT INTO `cdg_regioncode` VALUES ('542223000000', '西藏贡嘎县', '1', '3334');
INSERT INTO `cdg_regioncode` VALUES ('542224000000', '西藏桑日县', '1', '3335');
INSERT INTO `cdg_regioncode` VALUES ('542225000000', '西藏琼结县', '1', '3336');
INSERT INTO `cdg_regioncode` VALUES ('542226000000', '西藏曲松县', '1', '3337');
INSERT INTO `cdg_regioncode` VALUES ('542227000000', '西藏措美县', '1', '3338');
INSERT INTO `cdg_regioncode` VALUES ('542228000000', '西藏洛扎县', '1', '3339');
INSERT INTO `cdg_regioncode` VALUES ('542229000000', '西藏加查县', '1', '3340');
INSERT INTO `cdg_regioncode` VALUES ('542231000000', '西藏隆子县', '1', '3341');
INSERT INTO `cdg_regioncode` VALUES ('542232000000', '西藏错那县', '1', '3342');
INSERT INTO `cdg_regioncode` VALUES ('542233000000', '西藏浪卡子县', '1', '3343');
INSERT INTO `cdg_regioncode` VALUES ('542300000000', '西藏日喀则地区', '1', '3344');
INSERT INTO `cdg_regioncode` VALUES ('542301000000', '西藏日喀则市', '1', '3345');
INSERT INTO `cdg_regioncode` VALUES ('542322000000', '西藏南木林县', '1', '3346');
INSERT INTO `cdg_regioncode` VALUES ('542323000000', '西藏江孜县', '1', '3347');
INSERT INTO `cdg_regioncode` VALUES ('542324000000', '西藏定日县', '1', '3348');
INSERT INTO `cdg_regioncode` VALUES ('542325000000', '西藏萨迦县', '1', '3349');
INSERT INTO `cdg_regioncode` VALUES ('542326000000', '西藏拉孜县', '1', '3350');
INSERT INTO `cdg_regioncode` VALUES ('542327000000', '西藏昂仁县', '1', '3351');
INSERT INTO `cdg_regioncode` VALUES ('542328000000', '西藏谢通门县', '1', '3352');
INSERT INTO `cdg_regioncode` VALUES ('542329000000', '西藏白朗县', '1', '3353');
INSERT INTO `cdg_regioncode` VALUES ('542330000000', '西藏仁布县', '1', '3354');
INSERT INTO `cdg_regioncode` VALUES ('542331000000', '西藏康马县', '1', '3355');
INSERT INTO `cdg_regioncode` VALUES ('542332000000', '西藏定结县', '1', '3356');
INSERT INTO `cdg_regioncode` VALUES ('542333000000', '西藏仲巴县', '1', '3357');
INSERT INTO `cdg_regioncode` VALUES ('542334000000', '西藏亚东县', '1', '3358');
INSERT INTO `cdg_regioncode` VALUES ('542335000000', '西藏吉隆县', '1', '3359');
INSERT INTO `cdg_regioncode` VALUES ('542336000000', '西藏聂拉木县', '1', '3360');
INSERT INTO `cdg_regioncode` VALUES ('542337000000', '西藏萨嘎县', '1', '3361');
INSERT INTO `cdg_regioncode` VALUES ('542338000000', '西藏岗巴县', '1', '3362');
INSERT INTO `cdg_regioncode` VALUES ('542400000000', '西藏那曲地区', '1', '3363');
INSERT INTO `cdg_regioncode` VALUES ('542421000000', '西藏那曲县', '1', '3364');
INSERT INTO `cdg_regioncode` VALUES ('542422000000', '西藏嘉黎县', '1', '3365');
INSERT INTO `cdg_regioncode` VALUES ('542423000000', '西藏比如县', '1', '3366');
INSERT INTO `cdg_regioncode` VALUES ('542424000000', '西藏聂荣县', '1', '3367');
INSERT INTO `cdg_regioncode` VALUES ('542425000000', '西藏安多县', '1', '3368');
INSERT INTO `cdg_regioncode` VALUES ('542426000000', '西藏申扎县', '1', '3369');
INSERT INTO `cdg_regioncode` VALUES ('542427000000', '西藏索县', '1', '3370');
INSERT INTO `cdg_regioncode` VALUES ('542428000000', '西藏班戈县', '1', '3371');
INSERT INTO `cdg_regioncode` VALUES ('542429000000', '西藏巴青县', '1', '3372');
INSERT INTO `cdg_regioncode` VALUES ('542430000000', '西藏尼玛县', '1', '3373');
INSERT INTO `cdg_regioncode` VALUES ('542500000000', '西藏阿里地区', '1', '3374');
INSERT INTO `cdg_regioncode` VALUES ('542521000000', '西藏普兰县', '1', '3375');
INSERT INTO `cdg_regioncode` VALUES ('542522000000', '西藏札达县', '1', '3376');
INSERT INTO `cdg_regioncode` VALUES ('542523000000', '西藏噶尔县', '1', '3377');
INSERT INTO `cdg_regioncode` VALUES ('542524000000', '西藏日土县', '1', '3378');
INSERT INTO `cdg_regioncode` VALUES ('542525000000', '西藏革吉县', '1', '3379');
INSERT INTO `cdg_regioncode` VALUES ('542526000000', '西藏改则县', '1', '3380');
INSERT INTO `cdg_regioncode` VALUES ('542527000000', '西藏措勤县', '1', '3381');
INSERT INTO `cdg_regioncode` VALUES ('542600000000', '西藏林芝地区', '1', '3382');
INSERT INTO `cdg_regioncode` VALUES ('542621000000', '西藏林芝县', '1', '3383');
INSERT INTO `cdg_regioncode` VALUES ('542622000000', '西藏工布江达县', '1', '3384');
INSERT INTO `cdg_regioncode` VALUES ('542623000000', '西藏米林县', '1', '3385');
INSERT INTO `cdg_regioncode` VALUES ('542624000000', '西藏墨脱县', '1', '3386');
INSERT INTO `cdg_regioncode` VALUES ('542625000000', '西藏波密县', '1', '3387');
INSERT INTO `cdg_regioncode` VALUES ('542626000000', '西藏察隅县', '1', '3388');
INSERT INTO `cdg_regioncode` VALUES ('542627000000', '西藏朗县', '1', '3389');
INSERT INTO `cdg_regioncode` VALUES ('610000000000', '陕西省', '1', '3390');
INSERT INTO `cdg_regioncode` VALUES ('610100000000', '陕西省西安市', '1', '3391');
INSERT INTO `cdg_regioncode` VALUES ('610101000000', '陕西省西安市市辖区', '1', '3392');
INSERT INTO `cdg_regioncode` VALUES ('610102000000', '陕西省西安市新城区', '1', '3393');
INSERT INTO `cdg_regioncode` VALUES ('610103000000', '陕西省西安市碑林区', '1', '3394');
INSERT INTO `cdg_regioncode` VALUES ('610104000000', '陕西省西安市莲湖区', '1', '3395');
INSERT INTO `cdg_regioncode` VALUES ('610111000000', '陕西省西安市灞桥区', '1', '3396');
INSERT INTO `cdg_regioncode` VALUES ('610112000000', '陕西省西安市未央区', '1', '3397');
INSERT INTO `cdg_regioncode` VALUES ('610113000000', '陕西省西安市雁塔区', '1', '3398');
INSERT INTO `cdg_regioncode` VALUES ('610114000000', '陕西省西安市阎良区', '1', '3399');
INSERT INTO `cdg_regioncode` VALUES ('610301000000', '陕西省宝鸡市市辖区', '1', '3413');
INSERT INTO `cdg_regioncode` VALUES ('610302000000', '陕西省宝鸡市渭滨区', '1', '3414');
INSERT INTO `cdg_regioncode` VALUES ('610303000000', '陕西省宝鸡市金台区', '1', '3415');
INSERT INTO `cdg_regioncode` VALUES ('610304000000', '陕西省宝鸡市陈仓区', '1', '3416');
INSERT INTO `cdg_regioncode` VALUES ('610322000000', '陕西省凤翔县', '1', '3417');
INSERT INTO `cdg_regioncode` VALUES ('610323000000', '陕西省岐山县', '1', '3418');
INSERT INTO `cdg_regioncode` VALUES ('610324000000', '陕西省扶风县', '1', '3419');
INSERT INTO `cdg_regioncode` VALUES ('610326000000', '陕西省眉县', '1', '3420');
INSERT INTO `cdg_regioncode` VALUES ('610327000000', '陕西省陇县', '1', '3421');
INSERT INTO `cdg_regioncode` VALUES ('610328000000', '陕西省千阳县', '1', '3422');
INSERT INTO `cdg_regioncode` VALUES ('610329000000', '陕西省麟游县', '1', '3423');
INSERT INTO `cdg_regioncode` VALUES ('610330000000', '陕西省凤县', '1', '3424');
INSERT INTO `cdg_regioncode` VALUES ('610331000000', '陕西省太白县', '1', '3425');
INSERT INTO `cdg_regioncode` VALUES ('610400000000', '陕西省咸阳市', '1', '3426');
INSERT INTO `cdg_regioncode` VALUES ('610401000000', '陕西省咸阳市市辖区', '1', '3427');
INSERT INTO `cdg_regioncode` VALUES ('610402000000', '陕西省咸阳市秦都区', '1', '3428');
INSERT INTO `cdg_regioncode` VALUES ('610403000000', '陕西省咸阳市杨凌区', '1', '3429');
INSERT INTO `cdg_regioncode` VALUES ('610404000000', '陕西省咸阳市渭城区', '1', '3430');
INSERT INTO `cdg_regioncode` VALUES ('610422000000', '陕西省三原县', '1', '3431');
INSERT INTO `cdg_regioncode` VALUES ('610423000000', '陕西省泾阳县', '1', '3432');
INSERT INTO `cdg_regioncode` VALUES ('610424000000', '陕西省乾县', '1', '3433');
INSERT INTO `cdg_regioncode` VALUES ('610425000000', '陕西省礼泉县', '1', '3434');
INSERT INTO `cdg_regioncode` VALUES ('610426000000', '陕西省永寿县', '1', '3435');
INSERT INTO `cdg_regioncode` VALUES ('610427000000', '陕西省彬县', '1', '3436');
INSERT INTO `cdg_regioncode` VALUES ('610428000000', '陕西省长武县', '1', '3437');
INSERT INTO `cdg_regioncode` VALUES ('610429000000', '陕西省旬邑县', '1', '3438');
INSERT INTO `cdg_regioncode` VALUES ('610430000000', '陕西省淳化县', '1', '3439');
INSERT INTO `cdg_regioncode` VALUES ('610431000000', '陕西省武功县', '1', '3440');
INSERT INTO `cdg_regioncode` VALUES ('610481000000', '陕西省兴平市', '1', '3441');
INSERT INTO `cdg_regioncode` VALUES ('610500000000', '陕西省渭南市', '1', '3442');
INSERT INTO `cdg_regioncode` VALUES ('610501000000', '陕西省渭南市市辖区', '1', '3443');
INSERT INTO `cdg_regioncode` VALUES ('610502000000', '陕西省渭南市临渭区', '1', '3444');
INSERT INTO `cdg_regioncode` VALUES ('610521000000', '陕西省华县', '1', '3445');
INSERT INTO `cdg_regioncode` VALUES ('610522000000', '陕西省潼关县', '1', '3446');
INSERT INTO `cdg_regioncode` VALUES ('610523000000', '陕西省大荔县', '1', '3447');
INSERT INTO `cdg_regioncode` VALUES ('610524000000', '陕西省合阳县', '1', '3448');
INSERT INTO `cdg_regioncode` VALUES ('610525000000', '陕西省澄城县', '1', '3449');
INSERT INTO `cdg_regioncode` VALUES ('610526000000', '陕西省蒲城县', '1', '3450');
INSERT INTO `cdg_regioncode` VALUES ('610527000000', '陕西省白水县', '1', '3451');
INSERT INTO `cdg_regioncode` VALUES ('610528000000', '陕西省富平县', '1', '3452');
INSERT INTO `cdg_regioncode` VALUES ('610581000000', '陕西省韩城市', '1', '3453');
INSERT INTO `cdg_regioncode` VALUES ('610582000000', '陕西省华阴市', '1', '3454');
INSERT INTO `cdg_regioncode` VALUES ('610600000000', '陕西省延安市', '1', '3455');
INSERT INTO `cdg_regioncode` VALUES ('610601000000', '陕西省延安市市辖区', '1', '3456');
INSERT INTO `cdg_regioncode` VALUES ('610602000000', '陕西省延安市宝塔区', '1', '3457');
INSERT INTO `cdg_regioncode` VALUES ('610621000000', '陕西省延长县', '1', '3458');
INSERT INTO `cdg_regioncode` VALUES ('610622000000', '陕西省延川县', '1', '3459');
INSERT INTO `cdg_regioncode` VALUES ('610623000000', '陕西省子长县', '1', '3460');
INSERT INTO `cdg_regioncode` VALUES ('610624000000', '陕西省安塞县', '1', '3461');
INSERT INTO `cdg_regioncode` VALUES ('610625000000', '陕西省志丹县', '1', '3462');
INSERT INTO `cdg_regioncode` VALUES ('610626000000', '陕西省吴旗县', '1', '3463');
INSERT INTO `cdg_regioncode` VALUES ('610627000000', '陕西省甘泉县', '1', '3464');
INSERT INTO `cdg_regioncode` VALUES ('610628000000', '陕西省富县', '1', '3465');
INSERT INTO `cdg_regioncode` VALUES ('610629000000', '陕西省洛川县', '1', '3466');
INSERT INTO `cdg_regioncode` VALUES ('610630000000', '陕西省宜川县', '1', '3467');
INSERT INTO `cdg_regioncode` VALUES ('610631000000', '陕西省黄龙县', '1', '3468');
INSERT INTO `cdg_regioncode` VALUES ('610632000000', '陕西省黄陵县', '1', '3469');
INSERT INTO `cdg_regioncode` VALUES ('610700000000', '陕西省汉中市', '1', '3470');
INSERT INTO `cdg_regioncode` VALUES ('610701000000', '陕西省汉中市市辖区', '1', '3471');
INSERT INTO `cdg_regioncode` VALUES ('610702000000', '陕西省汉中市汉台区', '1', '3472');
INSERT INTO `cdg_regioncode` VALUES ('610721000000', '陕西省南郑县', '1', '3473');
INSERT INTO `cdg_regioncode` VALUES ('610722000000', '陕西省城固县', '1', '3474');
INSERT INTO `cdg_regioncode` VALUES ('610723000000', '陕西省洋县', '1', '3475');
INSERT INTO `cdg_regioncode` VALUES ('610724000000', '陕西省西乡县', '1', '3476');
INSERT INTO `cdg_regioncode` VALUES ('610725000000', '陕西省勉县', '1', '3477');
INSERT INTO `cdg_regioncode` VALUES ('610726000000', '陕西省宁强县', '1', '3478');
INSERT INTO `cdg_regioncode` VALUES ('610727000000', '陕西省略阳县', '1', '3479');
INSERT INTO `cdg_regioncode` VALUES ('610728000000', '陕西省镇巴县', '1', '3480');
INSERT INTO `cdg_regioncode` VALUES ('610729000000', '陕西省留坝县', '1', '3481');
INSERT INTO `cdg_regioncode` VALUES ('610730000000', '陕西省佛坪县', '1', '3482');
INSERT INTO `cdg_regioncode` VALUES ('610800000000', '陕西省榆林市', '1', '3483');
INSERT INTO `cdg_regioncode` VALUES ('610801000000', '陕西省榆林市市辖区', '1', '3484');
INSERT INTO `cdg_regioncode` VALUES ('610802000000', '陕西省榆林市榆阳区', '1', '3485');
INSERT INTO `cdg_regioncode` VALUES ('610821000000', '陕西省神木县', '1', '3486');
INSERT INTO `cdg_regioncode` VALUES ('610822000000', '陕西省府谷县', '1', '3487');
INSERT INTO `cdg_regioncode` VALUES ('610823000000', '陕西省横山县', '1', '3488');
INSERT INTO `cdg_regioncode` VALUES ('610824000000', '陕西省靖边县', '1', '3489');
INSERT INTO `cdg_regioncode` VALUES ('610825000000', '陕西省定边县', '1', '3490');
INSERT INTO `cdg_regioncode` VALUES ('610826000000', '陕西省绥德县', '1', '3491');
INSERT INTO `cdg_regioncode` VALUES ('610827000000', '陕西省米脂县', '1', '3492');
INSERT INTO `cdg_regioncode` VALUES ('610828000000', '陕西省佳县', '1', '3493');
INSERT INTO `cdg_regioncode` VALUES ('610829000000', '陕西省吴堡县', '1', '3494');
INSERT INTO `cdg_regioncode` VALUES ('610830000000', '陕西省清涧县', '1', '3495');
INSERT INTO `cdg_regioncode` VALUES ('610831000000', '陕西省子洲县', '1', '3496');
INSERT INTO `cdg_regioncode` VALUES ('610900000000', '陕西省安康市', '1', '3497');
INSERT INTO `cdg_regioncode` VALUES ('610901000000', '陕西省安康市市辖区', '1', '3498');
INSERT INTO `cdg_regioncode` VALUES ('610902000000', '陕西省安康市汉滨区', '1', '3499');
INSERT INTO `cdg_regioncode` VALUES ('611022000000', '陕西省丹凤县', '1', '3513');
INSERT INTO `cdg_regioncode` VALUES ('611023000000', '陕西省商南县', '1', '3514');
INSERT INTO `cdg_regioncode` VALUES ('611024000000', '陕西省山阳县', '1', '3515');
INSERT INTO `cdg_regioncode` VALUES ('611025000000', '陕西省镇安县', '1', '3516');
INSERT INTO `cdg_regioncode` VALUES ('611026000000', '陕西省柞水县', '1', '3517');
INSERT INTO `cdg_regioncode` VALUES ('620000000000', '甘肃省', '1', '3518');
INSERT INTO `cdg_regioncode` VALUES ('620100000000', '甘肃省兰州市', '1', '3519');
INSERT INTO `cdg_regioncode` VALUES ('620101000000', '甘肃省兰州市市辖区', '1', '3520');
INSERT INTO `cdg_regioncode` VALUES ('620102000000', '甘肃省兰州市城关区', '1', '3521');
INSERT INTO `cdg_regioncode` VALUES ('620103000000', '甘肃省兰州市七里河区', '1', '3522');
INSERT INTO `cdg_regioncode` VALUES ('620104000000', '甘肃省兰州市西固区', '1', '3523');
INSERT INTO `cdg_regioncode` VALUES ('620105000000', '甘肃省兰州市安宁区', '1', '3524');
INSERT INTO `cdg_regioncode` VALUES ('620111000000', '甘肃省兰州市红古区', '1', '3525');
INSERT INTO `cdg_regioncode` VALUES ('620121000000', '甘肃省永登县', '1', '3526');
INSERT INTO `cdg_regioncode` VALUES ('620122000000', '甘肃省皋兰县', '1', '3527');
INSERT INTO `cdg_regioncode` VALUES ('620123000000', '甘肃省榆中县', '1', '3528');
INSERT INTO `cdg_regioncode` VALUES ('620200000000', '甘肃省嘉峪关市', '1', '3529');
INSERT INTO `cdg_regioncode` VALUES ('620201000000', '甘肃省嘉峪关市市辖区', '1', '3530');
INSERT INTO `cdg_regioncode` VALUES ('620300000000', '甘肃省金昌市', '1', '3531');
INSERT INTO `cdg_regioncode` VALUES ('620301000000', '甘肃省金昌市市辖区', '1', '3532');
INSERT INTO `cdg_regioncode` VALUES ('620302000000', '甘肃省金昌市金川区', '1', '3533');
INSERT INTO `cdg_regioncode` VALUES ('620321000000', '甘肃省永昌县', '1', '3534');
INSERT INTO `cdg_regioncode` VALUES ('620400000000', '甘肃省白银市', '1', '3535');
INSERT INTO `cdg_regioncode` VALUES ('620401000000', '甘肃省白银市市辖区', '1', '3536');
INSERT INTO `cdg_regioncode` VALUES ('620402000000', '甘肃省白银市白银区', '1', '3537');
INSERT INTO `cdg_regioncode` VALUES ('620403000000', '甘肃省白银市平川区', '1', '3538');
INSERT INTO `cdg_regioncode` VALUES ('620421000000', '甘肃省靖远县', '1', '3539');
INSERT INTO `cdg_regioncode` VALUES ('620422000000', '甘肃省会宁县', '1', '3540');
INSERT INTO `cdg_regioncode` VALUES ('620423000000', '甘肃省景泰县', '1', '3541');
INSERT INTO `cdg_regioncode` VALUES ('620500000000', '甘肃省天水市', '1', '3542');
INSERT INTO `cdg_regioncode` VALUES ('620501000000', '甘肃省天水市市辖区', '1', '3543');
INSERT INTO `cdg_regioncode` VALUES ('620502000000', '甘肃省天水市秦城区', '1', '3544');
INSERT INTO `cdg_regioncode` VALUES ('620503000000', '甘肃省天水市北道区', '1', '3545');
INSERT INTO `cdg_regioncode` VALUES ('620521000000', '甘肃省清水县', '1', '3546');
INSERT INTO `cdg_regioncode` VALUES ('620522000000', '甘肃省秦安县', '1', '3547');
INSERT INTO `cdg_regioncode` VALUES ('620523000000', '甘肃省甘谷县', '1', '3548');
INSERT INTO `cdg_regioncode` VALUES ('620524000000', '甘肃省武山县', '1', '3549');
INSERT INTO `cdg_regioncode` VALUES ('620525000000', '甘肃省张家川回族自治县', '1', '3550');
INSERT INTO `cdg_regioncode` VALUES ('620600000000', '甘肃省武威市', '1', '3551');
INSERT INTO `cdg_regioncode` VALUES ('620601000000', '甘肃省武威市市辖区', '1', '3552');
INSERT INTO `cdg_regioncode` VALUES ('620602000000', '甘肃省武威市凉州区', '1', '3553');
INSERT INTO `cdg_regioncode` VALUES ('620621000000', '甘肃省民勤县', '1', '3554');
INSERT INTO `cdg_regioncode` VALUES ('620622000000', '甘肃省古浪县', '1', '3555');
INSERT INTO `cdg_regioncode` VALUES ('620623000000', '甘肃省天祝藏族自治县', '1', '3556');
INSERT INTO `cdg_regioncode` VALUES ('620700000000', '甘肃省张掖市', '1', '3557');
INSERT INTO `cdg_regioncode` VALUES ('620701000000', '甘肃省张掖市市辖区', '1', '3558');
INSERT INTO `cdg_regioncode` VALUES ('620702000000', '甘肃省张掖市甘州区', '1', '3559');
INSERT INTO `cdg_regioncode` VALUES ('620721000000', '甘肃省肃南裕固族自治县', '1', '3560');
INSERT INTO `cdg_regioncode` VALUES ('620722000000', '甘肃省民乐县', '1', '3561');
INSERT INTO `cdg_regioncode` VALUES ('620723000000', '甘肃省临泽县', '1', '3562');
INSERT INTO `cdg_regioncode` VALUES ('620724000000', '甘肃省高台县', '1', '3563');
INSERT INTO `cdg_regioncode` VALUES ('620725000000', '甘肃省山丹县', '1', '3564');
INSERT INTO `cdg_regioncode` VALUES ('620800000000', '甘肃省平凉市', '1', '3565');
INSERT INTO `cdg_regioncode` VALUES ('620801000000', '甘肃省平凉市市辖区', '1', '3566');
INSERT INTO `cdg_regioncode` VALUES ('620802000000', '甘肃省平凉市崆峒区', '1', '3567');
INSERT INTO `cdg_regioncode` VALUES ('620821000000', '甘肃省泾川县', '1', '3568');
INSERT INTO `cdg_regioncode` VALUES ('620822000000', '甘肃省灵台县', '1', '3569');
INSERT INTO `cdg_regioncode` VALUES ('620823000000', '甘肃省崇信县', '1', '3570');
INSERT INTO `cdg_regioncode` VALUES ('620824000000', '甘肃省华亭县', '1', '3571');
INSERT INTO `cdg_regioncode` VALUES ('620825000000', '甘肃省庄浪县', '1', '3572');
INSERT INTO `cdg_regioncode` VALUES ('620826000000', '甘肃省静宁县', '1', '3573');
INSERT INTO `cdg_regioncode` VALUES ('620900000000', '甘肃省酒泉市', '1', '3574');
INSERT INTO `cdg_regioncode` VALUES ('620901000000', '甘肃省酒泉市市辖区', '1', '3575');
INSERT INTO `cdg_regioncode` VALUES ('620902000000', '甘肃省酒泉市肃州区', '1', '3576');
INSERT INTO `cdg_regioncode` VALUES ('620921000000', '甘肃省金塔县', '1', '3577');
INSERT INTO `cdg_regioncode` VALUES ('620922000000', '甘肃省安西县', '1', '3578');
INSERT INTO `cdg_regioncode` VALUES ('620923000000', '甘肃省肃北蒙古族自治县', '1', '3579');
INSERT INTO `cdg_regioncode` VALUES ('620924000000', '甘肃省阿克塞哈萨克族自治县', '1', '3580');
INSERT INTO `cdg_regioncode` VALUES ('620981000000', '甘肃省玉门市', '1', '3581');
INSERT INTO `cdg_regioncode` VALUES ('620982000000', '甘肃省敦煌市', '1', '3582');
INSERT INTO `cdg_regioncode` VALUES ('621000000000', '甘肃省庆阳市', '1', '3583');
INSERT INTO `cdg_regioncode` VALUES ('621001000000', '甘肃省庆阳市市辖区', '1', '3584');
INSERT INTO `cdg_regioncode` VALUES ('621002000000', '甘肃省庆阳市西峰区', '1', '3585');
INSERT INTO `cdg_regioncode` VALUES ('621021000000', '甘肃省庆城县', '1', '3586');
INSERT INTO `cdg_regioncode` VALUES ('621022000000', '甘肃省环县', '1', '3587');
INSERT INTO `cdg_regioncode` VALUES ('621023000000', '甘肃省华池县', '1', '3588');
INSERT INTO `cdg_regioncode` VALUES ('621024000000', '甘肃省合水县', '1', '3589');
INSERT INTO `cdg_regioncode` VALUES ('621025000000', '甘肃省正宁县', '1', '3590');
INSERT INTO `cdg_regioncode` VALUES ('621026000000', '甘肃省宁县', '1', '3591');
INSERT INTO `cdg_regioncode` VALUES ('621027000000', '甘肃省镇原县', '1', '3592');
INSERT INTO `cdg_regioncode` VALUES ('621100000000', '甘肃省定西市', '1', '3593');
INSERT INTO `cdg_regioncode` VALUES ('621101000000', '甘肃省定西市市辖区', '1', '3594');
INSERT INTO `cdg_regioncode` VALUES ('621102000000', '甘肃省定西市安定区', '1', '3595');
INSERT INTO `cdg_regioncode` VALUES ('621121000000', '甘肃省通渭县', '1', '3596');
INSERT INTO `cdg_regioncode` VALUES ('621122000000', '甘肃省陇西县', '1', '3597');
INSERT INTO `cdg_regioncode` VALUES ('621123000000', '甘肃省渭源县', '1', '3598');
INSERT INTO `cdg_regioncode` VALUES ('621124000000', '甘肃省临洮县', '1', '3599');
INSERT INTO `cdg_regioncode` VALUES ('622900000000', '甘肃省临夏回族自治州', '1', '3613');
INSERT INTO `cdg_regioncode` VALUES ('622901000000', '甘肃省临夏市', '1', '3614');
INSERT INTO `cdg_regioncode` VALUES ('622921000000', '甘肃省临夏县', '1', '3615');
INSERT INTO `cdg_regioncode` VALUES ('622922000000', '甘肃省康乐县', '1', '3616');
INSERT INTO `cdg_regioncode` VALUES ('622923000000', '甘肃省永靖县', '1', '3617');
INSERT INTO `cdg_regioncode` VALUES ('622924000000', '甘肃省广河县', '1', '3618');
INSERT INTO `cdg_regioncode` VALUES ('622925000000', '甘肃省和政县', '1', '3619');
INSERT INTO `cdg_regioncode` VALUES ('622926000000', '甘肃省东乡族自治县', '1', '3620');
INSERT INTO `cdg_regioncode` VALUES ('622927000000', '甘肃省积石山保安族东乡族撒拉族', '1', '3621');
INSERT INTO `cdg_regioncode` VALUES ('623000000000', '甘肃省甘南藏族自治州', '1', '3622');
INSERT INTO `cdg_regioncode` VALUES ('623001000000', '甘肃省合作市', '1', '3623');
INSERT INTO `cdg_regioncode` VALUES ('623021000000', '甘肃省临潭县', '1', '3624');
INSERT INTO `cdg_regioncode` VALUES ('623022000000', '甘肃省卓尼县', '1', '3625');
INSERT INTO `cdg_regioncode` VALUES ('623023000000', '甘肃省舟曲县', '1', '3626');
INSERT INTO `cdg_regioncode` VALUES ('623024000000', '甘肃省迭部县', '1', '3627');
INSERT INTO `cdg_regioncode` VALUES ('623025000000', '甘肃省玛曲县', '1', '3628');
INSERT INTO `cdg_regioncode` VALUES ('623026000000', '甘肃省碌曲县', '1', '3629');
INSERT INTO `cdg_regioncode` VALUES ('623027000000', '甘肃省夏河县', '1', '3630');
INSERT INTO `cdg_regioncode` VALUES ('630000000000', '青海省', '1', '3631');
INSERT INTO `cdg_regioncode` VALUES ('630100000000', '青海省西宁市', '1', '3632');
INSERT INTO `cdg_regioncode` VALUES ('630101000000', '青海省西宁市市辖区', '1', '3633');
INSERT INTO `cdg_regioncode` VALUES ('630102000000', '青海省西宁市城东区', '1', '3634');
INSERT INTO `cdg_regioncode` VALUES ('630103000000', '青海省西宁市城中区', '1', '3635');
INSERT INTO `cdg_regioncode` VALUES ('630104000000', '青海省西宁市城西区', '1', '3636');
INSERT INTO `cdg_regioncode` VALUES ('630105000000', '青海省西宁市城北区', '1', '3637');
INSERT INTO `cdg_regioncode` VALUES ('630121000000', '青海省大通回族土族自治县', '1', '3638');
INSERT INTO `cdg_regioncode` VALUES ('630122000000', '青海省湟中县', '1', '3639');
INSERT INTO `cdg_regioncode` VALUES ('630123000000', '青海省湟源县', '1', '3640');
INSERT INTO `cdg_regioncode` VALUES ('632100000000', '青海省海东地区', '1', '3641');
INSERT INTO `cdg_regioncode` VALUES ('632121000000', '青海省平安县', '1', '3642');
INSERT INTO `cdg_regioncode` VALUES ('632122000000', '青海省民和回族土族自治县', '1', '3643');
INSERT INTO `cdg_regioncode` VALUES ('632123000000', '青海省乐都县', '1', '3644');
INSERT INTO `cdg_regioncode` VALUES ('632126000000', '青海省互助土族自治县', '1', '3645');
INSERT INTO `cdg_regioncode` VALUES ('632127000000', '青海省化隆回族自治县', '1', '3646');
INSERT INTO `cdg_regioncode` VALUES ('632128000000', '青海省循化撒拉族自治县', '1', '3647');
INSERT INTO `cdg_regioncode` VALUES ('632200000000', '青海省海北藏族自治州', '1', '3648');
INSERT INTO `cdg_regioncode` VALUES ('632221000000', '青海省门源回族自治县', '1', '3649');
INSERT INTO `cdg_regioncode` VALUES ('632222000000', '青海省祁连县', '1', '3650');
INSERT INTO `cdg_regioncode` VALUES ('632223000000', '青海省海晏县', '1', '3651');
INSERT INTO `cdg_regioncode` VALUES ('632224000000', '青海省刚察县', '1', '3652');
INSERT INTO `cdg_regioncode` VALUES ('632300000000', '青海省黄南藏族自治州', '1', '3653');
INSERT INTO `cdg_regioncode` VALUES ('632321000000', '青海省同仁县', '1', '3654');
INSERT INTO `cdg_regioncode` VALUES ('632322000000', '青海省尖扎县', '1', '3655');
INSERT INTO `cdg_regioncode` VALUES ('632323000000', '青海省泽库县', '1', '3656');
INSERT INTO `cdg_regioncode` VALUES ('632324000000', '青海省河南蒙古族自治县', '1', '3657');
INSERT INTO `cdg_regioncode` VALUES ('632500000000', '青海省海南藏族自治州', '1', '3658');
INSERT INTO `cdg_regioncode` VALUES ('632521000000', '青海省共和县', '1', '3659');
INSERT INTO `cdg_regioncode` VALUES ('632522000000', '青海省同德县', '1', '3660');
INSERT INTO `cdg_regioncode` VALUES ('632523000000', '青海省贵德县', '1', '3661');
INSERT INTO `cdg_regioncode` VALUES ('632524000000', '青海省兴海县', '1', '3662');
INSERT INTO `cdg_regioncode` VALUES ('632525000000', '青海省贵南县', '1', '3663');
INSERT INTO `cdg_regioncode` VALUES ('632600000000', '青海省果洛藏族自治州', '1', '3664');
INSERT INTO `cdg_regioncode` VALUES ('632621000000', '青海省玛沁县', '1', '3665');
INSERT INTO `cdg_regioncode` VALUES ('632622000000', '青海省班玛县', '1', '3666');
INSERT INTO `cdg_regioncode` VALUES ('632623000000', '青海省甘德县', '1', '3667');
INSERT INTO `cdg_regioncode` VALUES ('632624000000', '青海省达日县', '1', '3668');
INSERT INTO `cdg_regioncode` VALUES ('632625000000', '青海省久治县', '1', '3669');
INSERT INTO `cdg_regioncode` VALUES ('632626000000', '青海省玛多县', '1', '3670');
INSERT INTO `cdg_regioncode` VALUES ('632700000000', '青海省玉树藏族自治州', '1', '3671');
INSERT INTO `cdg_regioncode` VALUES ('632721000000', '青海省玉树县', '1', '3672');
INSERT INTO `cdg_regioncode` VALUES ('632722000000', '青海省杂多县', '1', '3673');
INSERT INTO `cdg_regioncode` VALUES ('632723000000', '青海省称多县', '1', '3674');
INSERT INTO `cdg_regioncode` VALUES ('632724000000', '青海省治多县', '1', '3675');
INSERT INTO `cdg_regioncode` VALUES ('632725000000', '青海省囊谦县', '1', '3676');
INSERT INTO `cdg_regioncode` VALUES ('632726000000', '青海省曲麻莱县', '1', '3677');
INSERT INTO `cdg_regioncode` VALUES ('632800000000', '青海省海西蒙古族藏族自治州', '1', '3678');
INSERT INTO `cdg_regioncode` VALUES ('632801000000', '青海省格尔木市', '1', '3679');
INSERT INTO `cdg_regioncode` VALUES ('632802000000', '青海省德令哈市', '1', '3680');
INSERT INTO `cdg_regioncode` VALUES ('632821000000', '青海省乌兰县', '1', '3681');
INSERT INTO `cdg_regioncode` VALUES ('632822000000', '青海省都兰县', '1', '3682');
INSERT INTO `cdg_regioncode` VALUES ('632823000000', '青海省天峻县', '1', '3683');
INSERT INTO `cdg_regioncode` VALUES ('640000000000', '宁夏回族自治区', '1', '3684');
INSERT INTO `cdg_regioncode` VALUES ('640100000000', '宁夏银川市', '1', '3685');
INSERT INTO `cdg_regioncode` VALUES ('640101000000', '宁夏银川市市辖区', '1', '3686');
INSERT INTO `cdg_regioncode` VALUES ('640104000000', '宁夏银川市兴庆区', '1', '3687');
INSERT INTO `cdg_regioncode` VALUES ('640105000000', '宁夏银川市西夏区', '1', '3688');
INSERT INTO `cdg_regioncode` VALUES ('640106000000', '宁夏银川市金凤区', '1', '3689');
INSERT INTO `cdg_regioncode` VALUES ('640121000000', '宁夏永宁县', '1', '3690');
INSERT INTO `cdg_regioncode` VALUES ('640122000000', '宁夏贺兰县', '1', '3691');
INSERT INTO `cdg_regioncode` VALUES ('640181000000', '宁夏灵武市', '1', '3692');
INSERT INTO `cdg_regioncode` VALUES ('640200000000', '宁夏石嘴山市', '1', '3693');
INSERT INTO `cdg_regioncode` VALUES ('640201000000', '宁夏石嘴山市市辖区', '1', '3694');
INSERT INTO `cdg_regioncode` VALUES ('640202000000', '宁夏石嘴山市大武口区', '1', '3695');
INSERT INTO `cdg_regioncode` VALUES ('640205000000', '宁夏石嘴山市惠农区', '1', '3696');
INSERT INTO `cdg_regioncode` VALUES ('640221000000', '宁夏平罗县', '1', '3697');
INSERT INTO `cdg_regioncode` VALUES ('640300000000', '宁夏吴忠市', '1', '3698');
INSERT INTO `cdg_regioncode` VALUES ('640301000000', '宁夏吴忠市市辖区', '1', '3699');
INSERT INTO `cdg_regioncode` VALUES ('640502000000', '宁夏中卫市沙坡头区', '1', '3713');
INSERT INTO `cdg_regioncode` VALUES ('640521000000', '宁夏中宁县', '1', '3714');
INSERT INTO `cdg_regioncode` VALUES ('640522000000', '宁夏海原县', '1', '3715');
INSERT INTO `cdg_regioncode` VALUES ('650000000000', '新疆维吾尔自治区', '1', '3716');
INSERT INTO `cdg_regioncode` VALUES ('650100000000', '新疆乌鲁木齐市', '1', '3717');
INSERT INTO `cdg_regioncode` VALUES ('650101000000', '新疆乌鲁木齐市市辖区', '1', '3718');
INSERT INTO `cdg_regioncode` VALUES ('650102000000', '新疆乌鲁木齐市天山区', '1', '3719');
INSERT INTO `cdg_regioncode` VALUES ('650103000000', '新疆乌鲁木齐市沙依巴克区', '1', '3720');
INSERT INTO `cdg_regioncode` VALUES ('650104000000', '新疆乌鲁木齐市新市区', '1', '3721');
INSERT INTO `cdg_regioncode` VALUES ('650105000000', '新疆乌鲁木齐市水磨沟区', '1', '3722');
INSERT INTO `cdg_regioncode` VALUES ('650106000000', '新疆乌鲁木齐市头屯河区', '1', '3723');
INSERT INTO `cdg_regioncode` VALUES ('650107000000', '新疆乌鲁木齐市达坂城区', '1', '3724');
INSERT INTO `cdg_regioncode` VALUES ('650108000000', '新疆乌鲁木齐市东山区', '1', '3725');
INSERT INTO `cdg_regioncode` VALUES ('650121000000', '新疆乌鲁木齐县', '1', '3726');
INSERT INTO `cdg_regioncode` VALUES ('650200000000', '新疆克拉玛依市', '1', '3727');
INSERT INTO `cdg_regioncode` VALUES ('650201000000', '新疆克拉玛依市市辖区', '1', '3728');
INSERT INTO `cdg_regioncode` VALUES ('650202000000', '新疆克拉玛依市独山子区', '1', '3729');
INSERT INTO `cdg_regioncode` VALUES ('650203000000', '新疆克拉玛依市克拉玛依区', '1', '3730');
INSERT INTO `cdg_regioncode` VALUES ('650204000000', '新疆克拉玛依市白碱滩区', '1', '3731');
INSERT INTO `cdg_regioncode` VALUES ('650205000000', '新疆克拉玛依市乌尔禾区', '1', '3732');
INSERT INTO `cdg_regioncode` VALUES ('652100000000', '新疆克拉玛依市吐鲁番地区', '1', '3733');
INSERT INTO `cdg_regioncode` VALUES ('652101000000', '新疆吐鲁番市', '1', '3734');
INSERT INTO `cdg_regioncode` VALUES ('652122000000', '新疆鄯善县', '1', '3735');
INSERT INTO `cdg_regioncode` VALUES ('652123000000', '新疆托克逊县', '1', '3736');
INSERT INTO `cdg_regioncode` VALUES ('652200000000', '新疆哈密地区', '1', '3737');
INSERT INTO `cdg_regioncode` VALUES ('652201000000', '新疆哈密市', '1', '3738');
INSERT INTO `cdg_regioncode` VALUES ('652222000000', '新疆巴里坤哈萨克自治县', '1', '3739');
INSERT INTO `cdg_regioncode` VALUES ('652223000000', '新疆伊吾县', '1', '3740');
INSERT INTO `cdg_regioncode` VALUES ('652300000000', '新疆昌吉回族自治州', '1', '3741');
INSERT INTO `cdg_regioncode` VALUES ('652301000000', '新疆昌吉市', '1', '3742');
INSERT INTO `cdg_regioncode` VALUES ('652302000000', '新疆阜康市', '1', '3743');
INSERT INTO `cdg_regioncode` VALUES ('652303000000', '新疆米泉市', '1', '3744');
INSERT INTO `cdg_regioncode` VALUES ('652323000000', '新疆呼图壁县', '1', '3745');
INSERT INTO `cdg_regioncode` VALUES ('652324000000', '新疆玛纳斯县', '1', '3746');
INSERT INTO `cdg_regioncode` VALUES ('652325000000', '新疆奇台县', '1', '3747');
INSERT INTO `cdg_regioncode` VALUES ('652327000000', '新疆吉木萨尔县', '1', '3748');
INSERT INTO `cdg_regioncode` VALUES ('652328000000', '新疆木垒哈萨克自治县', '1', '3749');
INSERT INTO `cdg_regioncode` VALUES ('652700000000', '新疆博尔塔拉蒙古自治州', '1', '3750');
INSERT INTO `cdg_regioncode` VALUES ('652701000000', '新疆博乐市', '1', '3751');
INSERT INTO `cdg_regioncode` VALUES ('652722000000', '新疆精河县', '1', '3752');
INSERT INTO `cdg_regioncode` VALUES ('652723000000', '新疆温泉县', '1', '3753');
INSERT INTO `cdg_regioncode` VALUES ('652800000000', '新疆巴音郭楞蒙古自治州', '1', '3754');
INSERT INTO `cdg_regioncode` VALUES ('652801000000', '新疆库尔勒市', '1', '3755');
INSERT INTO `cdg_regioncode` VALUES ('652822000000', '新疆轮台县', '1', '3756');
INSERT INTO `cdg_regioncode` VALUES ('652823000000', '新疆尉犁县', '1', '3757');
INSERT INTO `cdg_regioncode` VALUES ('652824000000', '新疆若羌县', '1', '3758');
INSERT INTO `cdg_regioncode` VALUES ('652825000000', '新疆且末县', '1', '3759');
INSERT INTO `cdg_regioncode` VALUES ('652826000000', '新疆焉耆回族自治县', '1', '3760');
INSERT INTO `cdg_regioncode` VALUES ('652827000000', '新疆和静县', '1', '3761');
INSERT INTO `cdg_regioncode` VALUES ('652828000000', '新疆和硕县', '1', '3762');
INSERT INTO `cdg_regioncode` VALUES ('652829000000', '新疆博湖县', '1', '3763');
INSERT INTO `cdg_regioncode` VALUES ('652900000000', '新疆阿克苏地区', '1', '3764');
INSERT INTO `cdg_regioncode` VALUES ('652901000000', '新疆阿克苏市', '1', '3765');
INSERT INTO `cdg_regioncode` VALUES ('652922000000', '新疆温宿县', '1', '3766');
INSERT INTO `cdg_regioncode` VALUES ('652923000000', '新疆库车县', '1', '3767');
INSERT INTO `cdg_regioncode` VALUES ('652924000000', '新疆沙雅县', '1', '3768');
INSERT INTO `cdg_regioncode` VALUES ('652925000000', '新疆新和县', '1', '3769');
INSERT INTO `cdg_regioncode` VALUES ('652926000000', '新疆拜城县', '1', '3770');
INSERT INTO `cdg_regioncode` VALUES ('652927000000', '新疆乌什县', '1', '3771');
INSERT INTO `cdg_regioncode` VALUES ('652928000000', '新疆阿瓦提县', '1', '3772');
INSERT INTO `cdg_regioncode` VALUES ('652929000000', '新疆柯坪县', '1', '3773');
INSERT INTO `cdg_regioncode` VALUES ('653000000000', '新疆克孜勒苏柯尔克孜自治州', '1', '3774');
INSERT INTO `cdg_regioncode` VALUES ('653001000000', '新疆阿图什市', '1', '3775');
INSERT INTO `cdg_regioncode` VALUES ('653022000000', '新疆阿克陶县', '1', '3776');
INSERT INTO `cdg_regioncode` VALUES ('653023000000', '新疆阿合奇县', '1', '3777');
INSERT INTO `cdg_regioncode` VALUES ('653024000000', '新疆乌恰县', '1', '3778');
INSERT INTO `cdg_regioncode` VALUES ('653100000000', '新疆喀什地区', '1', '3779');
INSERT INTO `cdg_regioncode` VALUES ('653101000000', '新疆喀什市', '1', '3780');
INSERT INTO `cdg_regioncode` VALUES ('653121000000', '新疆疏附县', '1', '3781');
INSERT INTO `cdg_regioncode` VALUES ('653122000000', '新疆疏勒县', '1', '3782');
INSERT INTO `cdg_regioncode` VALUES ('653123000000', '新疆英吉沙县', '1', '3783');
INSERT INTO `cdg_regioncode` VALUES ('653124000000', '新疆泽普县', '1', '3784');
INSERT INTO `cdg_regioncode` VALUES ('653125000000', '新疆莎车县', '1', '3785');
INSERT INTO `cdg_regioncode` VALUES ('653126000000', '新疆叶城县', '1', '3786');
INSERT INTO `cdg_regioncode` VALUES ('653127000000', '新疆麦盖提县', '1', '3787');
INSERT INTO `cdg_regioncode` VALUES ('653128000000', '新疆岳普湖县', '1', '3788');
INSERT INTO `cdg_regioncode` VALUES ('653129000000', '新疆伽师县', '1', '3789');
INSERT INTO `cdg_regioncode` VALUES ('653130000000', '新疆巴楚县', '1', '3790');
INSERT INTO `cdg_regioncode` VALUES ('653131000000', '新疆塔什库尔干塔吉克自治县', '1', '3791');
INSERT INTO `cdg_regioncode` VALUES ('653200000000', '新疆和田地区', '1', '3792');
INSERT INTO `cdg_regioncode` VALUES ('653201000000', '新疆和田市', '1', '3793');
INSERT INTO `cdg_regioncode` VALUES ('653221000000', '新疆和田县', '1', '3794');
INSERT INTO `cdg_regioncode` VALUES ('653222000000', '新疆墨玉县', '1', '3795');
INSERT INTO `cdg_regioncode` VALUES ('653223000000', '新疆皮山县', '1', '3796');
INSERT INTO `cdg_regioncode` VALUES ('653224000000', '新疆洛浦县', '1', '3797');
INSERT INTO `cdg_regioncode` VALUES ('653225000000', '新疆策勒县', '1', '3798');
INSERT INTO `cdg_regioncode` VALUES ('653226000000', '新疆于田县', '1', '3799');
INSERT INTO `cdg_regioncode` VALUES ('654201000000', '新疆塔城市', '1', '3813');
INSERT INTO `cdg_regioncode` VALUES ('654202000000', '新疆乌苏市', '1', '3814');
INSERT INTO `cdg_regioncode` VALUES ('654221000000', '新疆额敏县', '1', '3815');
INSERT INTO `cdg_regioncode` VALUES ('654223000000', '新疆沙湾县', '1', '3816');
INSERT INTO `cdg_regioncode` VALUES ('654224000000', '新疆托里县', '1', '3817');
INSERT INTO `cdg_regioncode` VALUES ('654225000000', '新疆裕民县', '1', '3818');
INSERT INTO `cdg_regioncode` VALUES ('654226000000', '新疆和布克赛尔蒙古自治县', '1', '3819');
INSERT INTO `cdg_regioncode` VALUES ('654300000000', '新疆阿勒泰地区', '1', '3820');
INSERT INTO `cdg_regioncode` VALUES ('654301000000', '新疆阿勒泰市', '1', '3821');
INSERT INTO `cdg_regioncode` VALUES ('654321000000', '新疆布尔津县', '1', '3822');
INSERT INTO `cdg_regioncode` VALUES ('654322000000', '新疆富蕴县', '1', '3823');
INSERT INTO `cdg_regioncode` VALUES ('654323000000', '新疆福海县', '1', '3824');
INSERT INTO `cdg_regioncode` VALUES ('654324000000', '新疆哈巴河县', '1', '3825');
INSERT INTO `cdg_regioncode` VALUES ('654325000000', '新疆青河县', '1', '3826');
INSERT INTO `cdg_regioncode` VALUES ('654326000000', '新疆吉木乃县', '1', '3827');
INSERT INTO `cdg_regioncode` VALUES ('659000000000', '新疆省直辖行政单位', '1', '3828');
INSERT INTO `cdg_regioncode` VALUES ('659001000000', '新疆石河子市', '1', '3829');
INSERT INTO `cdg_regioncode` VALUES ('659002000000', '新疆阿拉尔市', '1', '3830');
INSERT INTO `cdg_regioncode` VALUES ('659003000000', '新疆图木舒克市', '1', '3831');
INSERT INTO `cdg_regioncode` VALUES ('659004000000', '新疆五家渠市', '1', '3832');
INSERT INTO `cdg_regioncode` VALUES ('710000000000', '台湾省', '1', '3833');
INSERT INTO `cdg_regioncode` VALUES ('810000000000', '香港特别行政区', '1', '3834');
INSERT INTO `cdg_regioncode` VALUES ('820000000000', '澳门特别行政区', '1', '3835');

-- ----------------------------
-- Table structure for `cdg_regtype`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_regtype`;
CREATE TABLE `cdg_regtype` (
  `cd_id` varchar(3) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_regtype
-- ----------------------------
INSERT INTO `cdg_regtype` VALUES ('110', '国有全资', '1', '2');
INSERT INTO `cdg_regtype` VALUES ('120', '集体全资', '1', '3');
INSERT INTO `cdg_regtype` VALUES ('130', '股份合作', '1', '4');
INSERT INTO `cdg_regtype` VALUES ('140', '联营企业', '1', '5');
INSERT INTO `cdg_regtype` VALUES ('150', '有限责任（公司）', '1', '6');
INSERT INTO `cdg_regtype` VALUES ('160', '股份有限（公司）', '1', '7');
INSERT INTO `cdg_regtype` VALUES ('170', '私有', '1', '8');
INSERT INTO `cdg_regtype` VALUES ('175', '个体经营', '1', '9');
INSERT INTO `cdg_regtype` VALUES ('190', '其它内资', '1', '10');
INSERT INTO `cdg_regtype` VALUES ('200', '港、澳、台投资', '1', '11');
INSERT INTO `cdg_regtype` VALUES ('330', '外资', '1', '12');

-- ----------------------------
-- Table structure for `cdg_sex`
-- ----------------------------
DROP TABLE IF EXISTS `cdg_sex`;
CREATE TABLE `cdg_sex` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdg_sex
-- ----------------------------
INSERT INTO `cdg_sex` VALUES ('1', '男', '1', '1');
INSERT INTO `cdg_sex` VALUES ('2', '女', '1', '2');

-- ----------------------------
-- Table structure for `cdl_employtype`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_employtype`;
CREATE TABLE `cdl_employtype` (
  `cd_id` varchar(5) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_employtype
-- ----------------------------
INSERT INTO `cdl_employtype` VALUES ('1', '原固定职工', '1', '1');
INSERT INTO `cdl_employtype` VALUES ('2', '城镇合同制', '1', '2');
INSERT INTO `cdl_employtype` VALUES ('3', '农村合同制', '1', '3');
INSERT INTO `cdl_employtype` VALUES ('4', '临时工', '1', '4');
INSERT INTO `cdl_employtype` VALUES ('5', '聘任制', '1', '5');
INSERT INTO `cdl_employtype` VALUES ('9', '其他', '1', '6');

-- ----------------------------
-- Table structure for `cdl_orgtype`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_orgtype`;
CREATE TABLE `cdl_orgtype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_orgtype
-- ----------------------------
INSERT INTO `cdl_orgtype` VALUES ('10', '企业', '1', '2');
INSERT INTO `cdl_orgtype` VALUES ('20', '事业', '1', '3');
INSERT INTO `cdl_orgtype` VALUES ('30', '机关', '1', '4');
INSERT INTO `cdl_orgtype` VALUES ('40', '社会团体', '1', '5');
INSERT INTO `cdl_orgtype` VALUES ('90', '其它', '1', '6');

-- ----------------------------
-- Table structure for `cdl_personneltype`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_personneltype`;
CREATE TABLE `cdl_personneltype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_personneltype
-- ----------------------------
INSERT INTO `cdl_personneltype` VALUES ('20', '无业', '0', '0');
INSERT INTO `cdl_personneltype` VALUES ('30', '新成长失业青年', '1', '2');
INSERT INTO `cdl_personneltype` VALUES ('31', '就业转失业', '1', '1');
INSERT INTO `cdl_personneltype` VALUES ('32', '其他失业人员', '1', '3');

-- ----------------------------
-- Table structure for `cdl_proficiency`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_proficiency`;
CREATE TABLE `cdl_proficiency` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_proficiency
-- ----------------------------
INSERT INTO `cdl_proficiency` VALUES ('1', '精通', '1', '1');
INSERT INTO `cdl_proficiency` VALUES ('2', '熟练', '1', '2');
INSERT INTO `cdl_proficiency` VALUES ('3', '良好', '1', '3');
INSERT INTO `cdl_proficiency` VALUES ('4', '一般', '1', '4');

-- ----------------------------
-- Table structure for `cdl_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_qualification`;
CREATE TABLE `cdl_qualification` (
  `cd_id` varchar(7) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_qualification
-- ----------------------------
INSERT INTO `cdl_qualification` VALUES ('1', '高级技师', '1', '5');
INSERT INTO `cdl_qualification` VALUES ('2', '技师', '1', '4');
INSERT INTO `cdl_qualification` VALUES ('3', '高级', '1', '3');
INSERT INTO `cdl_qualification` VALUES ('4', '中级', '1', '2');
INSERT INTO `cdl_qualification` VALUES ('5', '初级', '1', '1');
INSERT INTO `cdl_qualification` VALUES ('6', '高级职称', '1', '8');
INSERT INTO `cdl_qualification` VALUES ('7', '中级职称', '1', '7');
INSERT INTO `cdl_qualification` VALUES ('8', '初级职称', '1', '6');

-- ----------------------------
-- Table structure for `cdl_rprtype`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_rprtype`;
CREATE TABLE `cdl_rprtype` (
  `cd_id` varchar(2) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_rprtype
-- ----------------------------
INSERT INTO `cdl_rprtype` VALUES ('10', '非农业户口', '0', '0');
INSERT INTO `cdl_rprtype` VALUES ('11', '本市城镇', '1', '1');
INSERT INTO `cdl_rprtype` VALUES ('12', '外省城镇', '1', '3');
INSERT INTO `cdl_rprtype` VALUES ('20', '农业户口', '0', '0');
INSERT INTO `cdl_rprtype` VALUES ('21', '本市农村', '1', '2');
INSERT INTO `cdl_rprtype` VALUES ('22', '外省农村', '1', '4');
INSERT INTO `cdl_rprtype` VALUES ('30', '台港澳人员', '0', '0');
INSERT INTO `cdl_rprtype` VALUES ('40', '外籍人员', '0', '0');

-- ----------------------------
-- Table structure for `cdl_specialty`
-- ----------------------------
DROP TABLE IF EXISTS `cdl_specialty`;
CREATE TABLE `cdl_specialty` (
  `cd_id` varchar(7) NOT NULL,
  `cd_name` varchar(128) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  `cd_spell` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdl_specialty
-- ----------------------------
INSERT INTO `cdl_specialty` VALUES ('1000000', '单位负责人', '1', '2', null);
INSERT INTO `cdl_specialty` VALUES ('1050000', '企业管理人员', '1', '3', null);
INSERT INTO `cdl_specialty` VALUES ('1050100', '部门经理', '1', '4', null);
INSERT INTO `cdl_specialty` VALUES ('1050101', '企业董事', '1', '5', null);
INSERT INTO `cdl_specialty` VALUES ('1050102', '企业经理', '1', '6', null);
INSERT INTO `cdl_specialty` VALUES ('1050103', '企业职能部门经理或主管', '1', '7', null);
INSERT INTO `cdl_specialty` VALUES ('1059900', '其他企业管理人员', '1', '8', null);
INSERT INTO `cdl_specialty` VALUES ('2000000', '专业、技术人员', '1', '9', null);
INSERT INTO `cdl_specialty` VALUES ('2010000', '科研人员', '1', '10', null);
INSERT INTO `cdl_specialty` VALUES ('2010100', '哲学研究人员', '1', '11', null);
INSERT INTO `cdl_specialty` VALUES ('2010200', '经济学研究人员', '1', '12', null);
INSERT INTO `cdl_specialty` VALUES ('2010300', '法学研究人员', '1', '13', null);
INSERT INTO `cdl_specialty` VALUES ('2010400', '社会学研究人员', '1', '14', null);
INSERT INTO `cdl_specialty` VALUES ('2010500', '教育科学研究人员', '1', '15', null);
INSERT INTO `cdl_specialty` VALUES ('2010600', '文学、艺术研究人员', '1', '16', null);
INSERT INTO `cdl_specialty` VALUES ('2010700', '图书馆学、情报学研究人员', '1', '17', null);
INSERT INTO `cdl_specialty` VALUES ('2010800', '历史学研究人员', '1', '18', null);
INSERT INTO `cdl_specialty` VALUES ('2010900', '管理科学研究人员', '1', '19', null);
INSERT INTO `cdl_specialty` VALUES ('2011000', '数学研究人员', '1', '20', null);
INSERT INTO `cdl_specialty` VALUES ('2011100', '物理学研究人员', '1', '21', null);
INSERT INTO `cdl_specialty` VALUES ('2011200', '化学研究人员', '1', '22', null);
INSERT INTO `cdl_specialty` VALUES ('2011300', '天文学研究人员', '1', '23', null);
INSERT INTO `cdl_specialty` VALUES ('2011400', '地球科学研究人员', '1', '24', null);
INSERT INTO `cdl_specialty` VALUES ('2011500', '生物科学研究人员', '1', '25', null);
INSERT INTO `cdl_specialty` VALUES ('2011600', '农业科学研究人员', '1', '26', null);
INSERT INTO `cdl_specialty` VALUES ('2011700', '医学研究人员', '1', '27', null);
INSERT INTO `cdl_specialty` VALUES ('2019900', '其他科研人员', '1', '28', null);
INSERT INTO `cdl_specialty` VALUES ('2020000', '工程技术人员', '1', '29', null);
INSERT INTO `cdl_specialty` VALUES ('2020100', '地质勘探工程技术人员', '1', '30', null);
INSERT INTO `cdl_specialty` VALUES ('2020200', '测绘工程技术人员', '1', '31', null);
INSERT INTO `cdl_specialty` VALUES ('2020300', '矿山工程技术人员', '1', '32', null);
INSERT INTO `cdl_specialty` VALUES ('2020400', '石油工程技术人员', '1', '33', null);
INSERT INTO `cdl_specialty` VALUES ('2020500', '冶金工程技术人员', '1', '34', null);
INSERT INTO `cdl_specialty` VALUES ('2020600', '化工工程技术人员', '1', '35', null);
INSERT INTO `cdl_specialty` VALUES ('2020700', '机械工程技术人员', '1', '36', null);
INSERT INTO `cdl_specialty` VALUES ('2020701', '机械设计工程技术人员', '1', '37', null);
INSERT INTO `cdl_specialty` VALUES ('2020702', '机械制造工程技术人员', '1', '38', null);
INSERT INTO `cdl_specialty` VALUES ('2020703', '仪器仪表工程技术人员', '1', '39', null);
INSERT INTO `cdl_specialty` VALUES ('2020704', '设备工程技术人员', '1', '40', null);
INSERT INTO `cdl_specialty` VALUES ('2020799', '其他机械工程技术人员', '1', '41', null);
INSERT INTO `cdl_specialty` VALUES ('2020800', '兵器航空航天工程技术人员', '1', '42', null);
INSERT INTO `cdl_specialty` VALUES ('2021100', '电子工程技术人员', '1', '43', null);
INSERT INTO `cdl_specialty` VALUES ('2021101', '电子材料工程技术人员', '1', '44', null);
INSERT INTO `cdl_specialty` VALUES ('2021102', '电子元器件工程技术人员', '1', '45', null);
INSERT INTO `cdl_specialty` VALUES ('2021103', '雷达系统工程技术人员', '1', '46', null);
INSERT INTO `cdl_specialty` VALUES ('2021104', '广播视听设备工程技术人员', '1', '47', null);
INSERT INTO `cdl_specialty` VALUES ('2021105', '电子仪器与测量工程技术人员', '1', '48', null);
INSERT INTO `cdl_specialty` VALUES ('2021199', '其他电子工程技术人员', '1', '49', null);
INSERT INTO `cdl_specialty` VALUES ('2021200', '通信工程技术人员', '1', '50', null);
INSERT INTO `cdl_specialty` VALUES ('2021300', '计算机工程技术人员', '1', '51', null);
INSERT INTO `cdl_specialty` VALUES ('2021301', '计算机硬件技术人员', '1', '52', null);
INSERT INTO `cdl_specialty` VALUES ('2021302', '计算机软件技术人员', '1', '53', null);
INSERT INTO `cdl_specialty` VALUES ('2021303', '计算机网络技术人员', '1', '54', null);
INSERT INTO `cdl_specialty` VALUES ('2021304', '计算机系统分析技术人员', '1', '55', null);
INSERT INTO `cdl_specialty` VALUES ('2021399', '其他计算机与应用工程技术人员', '1', '56', null);
INSERT INTO `cdl_specialty` VALUES ('2021400', '电气工程技术人员', '1', '57', null);
INSERT INTO `cdl_specialty` VALUES ('2021500', '电力工程技术人员', '1', '58', null);
INSERT INTO `cdl_specialty` VALUES ('2021600', '邮政工程技术人员', '1', '59', null);
INSERT INTO `cdl_specialty` VALUES ('2021700', '广播影视工程技术人员', '1', '60', null);
INSERT INTO `cdl_specialty` VALUES ('2021701', '广播电视编播工程技术人员', '1', '61', null);
INSERT INTO `cdl_specialty` VALUES ('2021702', '广播电视传输覆盖工程技术人员', '1', '62', null);
INSERT INTO `cdl_specialty` VALUES ('2021703', '电影工程技术人员', '1', '63', null);
INSERT INTO `cdl_specialty` VALUES ('2021799', '其他广播电影电视工程技术人员', '1', '64', null);
INSERT INTO `cdl_specialty` VALUES ('2021800', '交通工程技术人员', '1', '65', null);
INSERT INTO `cdl_specialty` VALUES ('2021801', '汽车运用工程技术人员', '1', '66', null);
INSERT INTO `cdl_specialty` VALUES ('2021802', '船舶运用工程技术人员', '1', '67', null);
INSERT INTO `cdl_specialty` VALUES ('2021803', '水上交通工程技术人员', '1', '68', null);
INSERT INTO `cdl_specialty` VALUES ('2021900', '民用航空工程技术人员', '1', '69', null);
INSERT INTO `cdl_specialty` VALUES ('2022000', '铁路工程技术人员', '1', '70', null);
INSERT INTO `cdl_specialty` VALUES ('2022100', '建筑工程技术人员', '1', '71', null);
INSERT INTO `cdl_specialty` VALUES ('2022101', '城镇规划设计工程技术人员', '1', '72', null);
INSERT INTO `cdl_specialty` VALUES ('2022102', '建筑设计工程技术人员', '1', '73', null);
INSERT INTO `cdl_specialty` VALUES ('2022103', '土木建筑工程技术人员', '1', '74', null);
INSERT INTO `cdl_specialty` VALUES ('2022104', '风景园林工程技术人员', '1', '75', null);
INSERT INTO `cdl_specialty` VALUES ('2022105', '道路与桥梁工程技术人员', '1', '76', null);
INSERT INTO `cdl_specialty` VALUES ('2022106', '港口与航道工程技术人员', '1', '77', null);
INSERT INTO `cdl_specialty` VALUES ('2022107', '机场工程技术人员', '1', '78', null);
INSERT INTO `cdl_specialty` VALUES ('2022108', '铁路建筑工程技术人员', '1', '79', null);
INSERT INTO `cdl_specialty` VALUES ('2022109', '水利水电建筑工程技术人员', '1', '80', null);
INSERT INTO `cdl_specialty` VALUES ('2022199', '其他建筑工程技术人员', '1', '81', null);
INSERT INTO `cdl_specialty` VALUES ('2022200', '建材工程技术人员', '1', '82', null);
INSERT INTO `cdl_specialty` VALUES ('2022300', '家具设计、林业工程技术人员', '1', '83', null);
INSERT INTO `cdl_specialty` VALUES ('2022400', '水利工程技术人员', '1', '84', null);
INSERT INTO `cdl_specialty` VALUES ('2022401', '水资源工程技术人员', '1', '85', null);
INSERT INTO `cdl_specialty` VALUES ('2022499', '其他水利工程技术人员', '1', '86', null);
INSERT INTO `cdl_specialty` VALUES ('2022500', '海洋工程技术人员', '1', '87', null);
INSERT INTO `cdl_specialty` VALUES ('2022502', '海洋环境预报工程技术人员', '1', '88', null);
INSERT INTO `cdl_specialty` VALUES ('2022503', '海洋资源开发利用和保护工程技术人员', '1', '89', null);
INSERT INTO `cdl_specialty` VALUES ('2022599', '其他海洋工程技术人员', '1', '90', null);
INSERT INTO `cdl_specialty` VALUES ('2022600', '水产工程技术人员', '1', '91', null);
INSERT INTO `cdl_specialty` VALUES ('2022700', '纺织工程技术人员', '1', '92', null);
INSERT INTO `cdl_specialty` VALUES ('2022800', '食品工程技术人员', '1', '93', null);
INSERT INTO `cdl_specialty` VALUES ('2022900', '气象工程技术人员', '1', '94', null);
INSERT INTO `cdl_specialty` VALUES ('2022901', '气象观测人员', '1', '95', null);
INSERT INTO `cdl_specialty` VALUES ('2022902', '天气预报人员', '1', '96', null);
INSERT INTO `cdl_specialty` VALUES ('2022903', '气候监测预测人员', '1', '97', null);
INSERT INTO `cdl_specialty` VALUES ('2022904', '应用气象人员', '1', '98', null);
INSERT INTO `cdl_specialty` VALUES ('2022905', '气象服务人员', '1', '99', null);
INSERT INTO `cdl_specialty` VALUES ('2022999', '其他气象工程技术人员', '1', '100', null);
INSERT INTO `cdl_specialty` VALUES ('2050100', '西医', '1', '135', null);
INSERT INTO `cdl_specialty` VALUES ('2050101', '内科医师', '1', '136', null);
INSERT INTO `cdl_specialty` VALUES ('2050102', '外科医师', '1', '137', null);
INSERT INTO `cdl_specialty` VALUES ('2050103', '儿科医师', '1', '138', null);
INSERT INTO `cdl_specialty` VALUES ('2050104', '妇产科医师', '1', '139', null);
INSERT INTO `cdl_specialty` VALUES ('2050105', '眼科医师', '1', '140', null);
INSERT INTO `cdl_specialty` VALUES ('2050106', '耳鼻喉科医师', '1', '141', null);
INSERT INTO `cdl_specialty` VALUES ('2050107', '口腔科医师', '1', '142', null);
INSERT INTO `cdl_specialty` VALUES ('2050108', '皮肤科医师', '1', '143', null);
INSERT INTO `cdl_specialty` VALUES ('2050109', '精神科医师', '1', '144', null);
INSERT INTO `cdl_specialty` VALUES ('2050110', '心理医师', '1', '145', null);
INSERT INTO `cdl_specialty` VALUES ('2050111', '传染病科医师', '1', '146', null);
INSERT INTO `cdl_specialty` VALUES ('2050112', '急诊科医师', '1', '147', null);
INSERT INTO `cdl_specialty` VALUES ('2050113', '康复科医师', '1', '148', null);
INSERT INTO `cdl_specialty` VALUES ('2050114', '麻醉科医师', '1', '149', null);
INSERT INTO `cdl_specialty` VALUES ('2050115', '病理科医师', '1', '150', null);
INSERT INTO `cdl_specialty` VALUES ('2050116', '放射科医师', '1', '151', null);
INSERT INTO `cdl_specialty` VALUES ('2050117', '核医学医师', '1', '152', null);
INSERT INTO `cdl_specialty` VALUES ('2050118', '超声诊断科医师', '1', '153', null);
INSERT INTO `cdl_specialty` VALUES ('2050119', '放射肿瘤科医师', '1', '154', null);
INSERT INTO `cdl_specialty` VALUES ('2050120', '全科医师', '1', '155', null);
INSERT INTO `cdl_specialty` VALUES ('2050121', '乡村医师', '1', '156', null);
INSERT INTO `cdl_specialty` VALUES ('2050122', '妇幼保健医师', '1', '157', null);
INSERT INTO `cdl_specialty` VALUES ('2050123', '输（采供）血医师', '1', '158', null);
INSERT INTO `cdl_specialty` VALUES ('2050199', '其他西医医师', '1', '159', null);
INSERT INTO `cdl_specialty` VALUES ('2050200', '中医', '1', '160', null);
INSERT INTO `cdl_specialty` VALUES ('2050201', '中医内科医师', '1', '161', null);
INSERT INTO `cdl_specialty` VALUES ('2050202', '中医外科医师', '1', '162', null);
INSERT INTO `cdl_specialty` VALUES ('2050203', '中医妇科医师', '1', '163', null);
INSERT INTO `cdl_specialty` VALUES ('2050204', '中医儿科医师', '1', '164', null);
INSERT INTO `cdl_specialty` VALUES ('2050210', '针灸科医师', '1', '165', null);
INSERT INTO `cdl_specialty` VALUES ('2050211', '推拿按摩科医师', '1', '166', null);
INSERT INTO `cdl_specialty` VALUES ('2050500', '公共卫生医师', '1', '167', null);
INSERT INTO `cdl_specialty` VALUES ('2050502', '营养与食品卫生医师', '1', '168', null);
INSERT INTO `cdl_specialty` VALUES ('2050503', '环境卫生医师', '1', '169', null);
INSERT INTO `cdl_specialty` VALUES ('2050507', '儿少和学校卫生医师', '1', '170', null);
INSERT INTO `cdl_specialty` VALUES ('2050600', '药剂师', '1', '171', null);
INSERT INTO `cdl_specialty` VALUES ('2050601', '西药剂师', '1', '172', null);
INSERT INTO `cdl_specialty` VALUES ('2050602', '中药药师', '1', '173', null);
INSERT INTO `cdl_specialty` VALUES ('2050700', '医疗技术人员', '1', '174', null);
INSERT INTO `cdl_specialty` VALUES ('2050800', '护士', '1', '175', null);
INSERT INTO `cdl_specialty` VALUES ('2050801', '病房护士', '1', '176', null);
INSERT INTO `cdl_specialty` VALUES ('2050802', '门诊护士', '1', '177', null);
INSERT INTO `cdl_specialty` VALUES ('2050803', '急诊护士', '1', '178', null);
INSERT INTO `cdl_specialty` VALUES ('2050806', '社区护士', '1', '179', null);
INSERT INTO `cdl_specialty` VALUES ('2050899', '其他护理人员', '1', '180', null);
INSERT INTO `cdl_specialty` VALUES ('2050900', '其他卫生专业技术人员', '1', '181', null);
INSERT INTO `cdl_specialty` VALUES ('2060000', '经济业务人员', '1', '182', null);
INSERT INTO `cdl_specialty` VALUES ('2060100', '经济计划人员', '1', '183', null);
INSERT INTO `cdl_specialty` VALUES ('2060200', '统计师', '1', '184', null);
INSERT INTO `cdl_specialty` VALUES ('2060300', '财会人员', '1', '185', null);
INSERT INTO `cdl_specialty` VALUES ('2060301', '工业会计', '1', '186', null);
INSERT INTO `cdl_specialty` VALUES ('2060302', '商业会计', '1', '187', null);
INSERT INTO `cdl_specialty` VALUES ('2060303', '注册师会计', '1', '188', null);
INSERT INTO `cdl_specialty` VALUES ('2060304', '会计师', '1', '189', null);
INSERT INTO `cdl_specialty` VALUES ('2060305', '出纳', '1', '190', null);
INSERT INTO `cdl_specialty` VALUES ('2060400', '审计师', '1', '191', null);
INSERT INTO `cdl_specialty` VALUES ('2060500', '国际商务人员', '1', '192', null);
INSERT INTO `cdl_specialty` VALUES ('2060600', '房地产业务人员', '1', '193', null);
INSERT INTO `cdl_specialty` VALUES ('2069900', '其他经济业务人员', '1', '194', null);
INSERT INTO `cdl_specialty` VALUES ('2070000', '金融业务人员', '1', '195', null);
INSERT INTO `cdl_specialty` VALUES ('2070100', '银行业务人员', '1', '196', null);
INSERT INTO `cdl_specialty` VALUES ('2070105', '银行信贷员', '1', '197', null);
INSERT INTO `cdl_specialty` VALUES ('2070109', '银行储蓄员', '1', '198', null);
INSERT INTO `cdl_specialty` VALUES ('2070200', '保险业务人员', '1', '199', null);
INSERT INTO `cdl_specialty` VALUES ('2070202', '保险推销员', '1', '200', null);
INSERT INTO `cdl_specialty` VALUES ('2100705', '服装设计师', '1', '235', null);
INSERT INTO `cdl_specialty` VALUES ('2100706', '室内装饰设计人员', '1', '236', null);
INSERT INTO `cdl_specialty` VALUES ('2100708', '广告设计人员', '1', '237', null);
INSERT INTO `cdl_specialty` VALUES ('2109900', '其他文学艺术工作者', '1', '238', null);
INSERT INTO `cdl_specialty` VALUES ('2110000', '体育工作者', '1', '239', null);
INSERT INTO `cdl_specialty` VALUES ('2110100', '体育工作者', '1', '240', null);
INSERT INTO `cdl_specialty` VALUES ('2110101', '教练员', '1', '241', null);
INSERT INTO `cdl_specialty` VALUES ('2110102', '裁判员', '1', '242', null);
INSERT INTO `cdl_specialty` VALUES ('2110103', '运动员', '1', '243', null);
INSERT INTO `cdl_specialty` VALUES ('2110199', '其他体育工作人员', '1', '244', null);
INSERT INTO `cdl_specialty` VALUES ('2120000', '新闻出版文化工作者', '1', '245', null);
INSERT INTO `cdl_specialty` VALUES ('2120100', '记者', '1', '246', null);
INSERT INTO `cdl_specialty` VALUES ('2120200', '编辑', '1', '247', null);
INSERT INTO `cdl_specialty` VALUES ('2120201', '文字编辑', '1', '248', null);
INSERT INTO `cdl_specialty` VALUES ('2120202', '美术编辑', '1', '249', null);
INSERT INTO `cdl_specialty` VALUES ('2120203', '技术编辑', '1', '250', null);
INSERT INTO `cdl_specialty` VALUES ('2120300', '校对员', '1', '251', null);
INSERT INTO `cdl_specialty` VALUES ('2120400', '主持人', '1', '252', null);
INSERT INTO `cdl_specialty` VALUES ('2120500', '翻译', '1', '253', null);
INSERT INTO `cdl_specialty` VALUES ('2120600', '图书资料档案人员', '1', '254', null);
INSERT INTO `cdl_specialty` VALUES ('2120601', '图书资料业务人员', '1', '255', null);
INSERT INTO `cdl_specialty` VALUES ('2120602', '档案业务人员', '1', '256', null);
INSERT INTO `cdl_specialty` VALUES ('2120700', '考古及文物保护专业人员', '1', '257', null);
INSERT INTO `cdl_specialty` VALUES ('2120702', '文物鉴定和保管人员', '1', '258', null);
INSERT INTO `cdl_specialty` VALUES ('2129900', '其他新闻出版、文化工作者', '1', '259', null);
INSERT INTO `cdl_specialty` VALUES ('3000000', '办事人员', '1', '260', null);
INSERT INTO `cdl_specialty` VALUES ('3010000', '行政办公人员', '1', '261', null);
INSERT INTO `cdl_specialty` VALUES ('3010100', '行政业务人员', '1', '262', null);
INSERT INTO `cdl_specialty` VALUES ('3010101', '行政业务办公人员', '1', '263', null);
INSERT INTO `cdl_specialty` VALUES ('3010102', '行政执法人员', '1', '264', null);
INSERT INTO `cdl_specialty` VALUES ('3010200', '秘书、打字员', '1', '265', null);
INSERT INTO `cdl_specialty` VALUES ('3010201', '秘书', '1', '266', null);
INSERT INTO `cdl_specialty` VALUES ('3010202', '公关员', '1', '267', null);
INSERT INTO `cdl_specialty` VALUES ('3010203', '收发员', '1', '268', null);
INSERT INTO `cdl_specialty` VALUES ('3010204', '打字员', '1', '269', null);
INSERT INTO `cdl_specialty` VALUES ('3010205', '计算机操作员', '1', '270', null);
INSERT INTO `cdl_specialty` VALUES ('3010206', '制图员', '1', '271', null);
INSERT INTO `cdl_specialty` VALUES ('3010299', '其他行政事务人员', '1', '272', null);
INSERT INTO `cdl_specialty` VALUES ('3019900', '其他行政办公人员', '1', '273', null);
INSERT INTO `cdl_specialty` VALUES ('3020000', '安全保卫和消防人员', '1', '274', null);
INSERT INTO `cdl_specialty` VALUES ('3020200', '治安保卫人员', '1', '275', null);
INSERT INTO `cdl_specialty` VALUES ('3020201', '保安员', '1', '276', null);
INSERT INTO `cdl_specialty` VALUES ('3020203', '金融守押员', '1', '277', null);
INSERT INTO `cdl_specialty` VALUES ('3020300', '消防人员', '1', '278', null);
INSERT INTO `cdl_specialty` VALUES ('3020304', '建(构)筑物消防员', '1', '279', null);
INSERT INTO `cdl_specialty` VALUES ('3029900', '其他安全保卫和消防人员', '1', '280', null);
INSERT INTO `cdl_specialty` VALUES ('3030000', '邮政电信业务人员', '1', '281', null);
INSERT INTO `cdl_specialty` VALUES ('3030100', '邮政业务人员', '1', '282', null);
INSERT INTO `cdl_specialty` VALUES ('3030101', '邮政营业员', '1', '283', null);
INSERT INTO `cdl_specialty` VALUES ('3030102', '邮件处理员', '1', '284', null);
INSERT INTO `cdl_specialty` VALUES ('3030103', '投递员', '1', '285', null);
INSERT INTO `cdl_specialty` VALUES ('3030105', '报刊发行员', '1', '286', null);
INSERT INTO `cdl_specialty` VALUES ('3030200', '电信业务人员、话务员', '1', '287', null);
INSERT INTO `cdl_specialty` VALUES ('3030201', '电信业务营业员', '1', '288', null);
INSERT INTO `cdl_specialty` VALUES ('3030202', '话务员', '1', '289', null);
INSERT INTO `cdl_specialty` VALUES ('3030203', '报务员', '1', '290', null);
INSERT INTO `cdl_specialty` VALUES ('3030300', '电信通信传输业务人员', '1', '291', null);
INSERT INTO `cdl_specialty` VALUES ('3030304', '用户通信终端维修员', '1', '292', null);
INSERT INTO `cdl_specialty` VALUES ('3039900', '其他邮政电信业务人员', '1', '293', null);
INSERT INTO `cdl_specialty` VALUES ('4000000', '商业、服务业人员', '1', '294', null);
INSERT INTO `cdl_specialty` VALUES ('4010000', '购销人员', '1', '295', null);
INSERT INTO `cdl_specialty` VALUES ('4010100', '营业人员', '1', '296', null);
INSERT INTO `cdl_specialty` VALUES ('4010101', '营业员', '1', '297', null);
INSERT INTO `cdl_specialty` VALUES ('4010102', '收银员', '1', '298', null);
INSERT INTO `cdl_specialty` VALUES ('4010200', '推销、展销人员', '1', '299', null);
INSERT INTO `cdl_specialty` VALUES ('4010201', '推销员', '1', '300', null);
INSERT INTO `cdl_specialty` VALUES ('4040100', '饭店服务人员', '1', '335', null);
INSERT INTO `cdl_specialty` VALUES ('4040101', '前厅服务员', '1', '336', null);
INSERT INTO `cdl_specialty` VALUES ('4040102', '客房服务员', '1', '337', null);
INSERT INTO `cdl_specialty` VALUES ('4040103', '旅店服务员', '1', '338', null);
INSERT INTO `cdl_specialty` VALUES ('4040200', '旅游游览场所服务员', '1', '339', null);
INSERT INTO `cdl_specialty` VALUES ('4040201', '导游', '1', '340', null);
INSERT INTO `cdl_specialty` VALUES ('4040202', '公共游览场所服务员', '1', '341', null);
INSERT INTO `cdl_specialty` VALUES ('4040203', '展览讲解员', '1', '342', null);
INSERT INTO `cdl_specialty` VALUES ('4040207', '园林植物保护工', '1', '343', null);
INSERT INTO `cdl_specialty` VALUES ('4040300', '健身娱乐场所服务员', '1', '344', null);
INSERT INTO `cdl_specialty` VALUES ('4040303', '康乐服务员', '1', '345', null);
INSERT INTO `cdl_specialty` VALUES ('4040304', '保健按摩师', '1', '346', null);
INSERT INTO `cdl_specialty` VALUES ('4049900', '其他旅游健身娱乐服务员', '1', '347', null);
INSERT INTO `cdl_specialty` VALUES ('4050000', '运输服务人员', '1', '348', null);
INSERT INTO `cdl_specialty` VALUES ('4050100', '公路运输服务人员', '1', '349', null);
INSERT INTO `cdl_specialty` VALUES ('4050104', '公路收费及监控员', '1', '350', null);
INSERT INTO `cdl_specialty` VALUES ('4050200', '铁路运输服务人员', '1', '351', null);
INSERT INTO `cdl_specialty` VALUES ('4050300', '航空运输服务人员', '1', '352', null);
INSERT INTO `cdl_specialty` VALUES ('4050400', '水上运输服务人员', '1', '353', null);
INSERT INTO `cdl_specialty` VALUES ('4059900', '其他运输服务人员', '1', '354', null);
INSERT INTO `cdl_specialty` VALUES ('4060000', '医疗卫生辅助服务人员', '1', '355', null);
INSERT INTO `cdl_specialty` VALUES ('4060100', '护理人员', '1', '356', null);
INSERT INTO `cdl_specialty` VALUES ('4069900', '其他医疗卫生辅助服务人员', '1', '357', null);
INSERT INTO `cdl_specialty` VALUES ('4070000', '社会服务人员', '1', '358', null);
INSERT INTO `cdl_specialty` VALUES ('4070100', '中介服务人员', '1', '359', null);
INSERT INTO `cdl_specialty` VALUES ('4070101', '中介代理人', '1', '360', null);
INSERT INTO `cdl_specialty` VALUES ('4070102', '职业指导员', '1', '361', null);
INSERT INTO `cdl_specialty` VALUES ('4070200', '物业管理人员', '1', '362', null);
INSERT INTO `cdl_specialty` VALUES ('4070300', '供水供热人员、锅炉工', '1', '363', null);
INSERT INTO `cdl_specialty` VALUES ('4070304', '锅炉操作工', '1', '364', null);
INSERT INTO `cdl_specialty` VALUES ('4070400', '美发美容人员', '1', '365', null);
INSERT INTO `cdl_specialty` VALUES ('4070401', '美容师', '1', '366', null);
INSERT INTO `cdl_specialty` VALUES ('4070402', '美发师', '1', '367', null);
INSERT INTO `cdl_specialty` VALUES ('4070500', '摄影服务人员', '1', '368', null);
INSERT INTO `cdl_specialty` VALUES ('4070501', '摄影师', '1', '369', null);
INSERT INTO `cdl_specialty` VALUES ('4070502', '冲印师', '1', '370', null);
INSERT INTO `cdl_specialty` VALUES ('4070600', '验光配镜人员', '1', '371', null);
INSERT INTO `cdl_specialty` VALUES ('4070700', '洗染、织补人员', '1', '372', null);
INSERT INTO `cdl_specialty` VALUES ('4070800', '浴池服务人员', '1', '373', null);
INSERT INTO `cdl_specialty` VALUES ('4071000', '家用机电产品维修人员', '1', '374', null);
INSERT INTO `cdl_specialty` VALUES ('4071001', '家用电子产品维修工', '1', '375', null);
INSERT INTO `cdl_specialty` VALUES ('4071002', '家用电器产品维修工', '1', '376', null);
INSERT INTO `cdl_specialty` VALUES ('4071005', '乐器维修工', '1', '377', null);
INSERT INTO `cdl_specialty` VALUES ('4071006', '自行车维修工', '1', '378', null);
INSERT INTO `cdl_specialty` VALUES ('4071100', '办公设备维修人员', '1', '379', null);
INSERT INTO `cdl_specialty` VALUES ('4071200', '保育、家庭服务人员', '1', '380', null);
INSERT INTO `cdl_specialty` VALUES ('4071300', '清洁工', '1', '381', null);
INSERT INTO `cdl_specialty` VALUES ('4073000', '家庭教师', '1', '382', null);
INSERT INTO `cdl_specialty` VALUES ('4073100', '电梯工', '1', '383', null);
INSERT INTO `cdl_specialty` VALUES ('4079900', '其他社会服务人员', '1', '384', null);
INSERT INTO `cdl_specialty` VALUES ('5000000', '农林牧渔水利生产人员', '1', '385', null);
INSERT INTO `cdl_specialty` VALUES ('5010000', '种植业生产人员', '1', '386', null);
INSERT INTO `cdl_specialty` VALUES ('5010100', '农田作物生产人员', '1', '387', null);
INSERT INTO `cdl_specialty` VALUES ('5010200', '农业实验人员', '1', '388', null);
INSERT INTO `cdl_specialty` VALUES ('5010300', '园艺工', '1', '389', null);
INSERT INTO `cdl_specialty` VALUES ('5010500', '中药材生产人员', '1', '390', null);
INSERT INTO `cdl_specialty` VALUES ('5010600', '农副林特产品加工工', '1', '391', null);
INSERT INTO `cdl_specialty` VALUES ('5019900', '其他种植业生产人员', '1', '392', null);
INSERT INTO `cdl_specialty` VALUES ('5020000', '林业及动植物保护人员', '1', '393', null);
INSERT INTO `cdl_specialty` VALUES ('5020400', '木材采运人员', '1', '394', null);
INSERT INTO `cdl_specialty` VALUES ('5029900', '其他林业及野生动植物保护人员', '1', '395', null);
INSERT INTO `cdl_specialty` VALUES ('5030000', '畜牧业生产人员', '1', '396', null);
INSERT INTO `cdl_specialty` VALUES ('5039900', '畜牧业生产人员', '1', '397', null);
INSERT INTO `cdl_specialty` VALUES ('5040000', '渔业生产人员', '1', '398', null);
INSERT INTO `cdl_specialty` VALUES ('5040100', '水产养殖人员', '1', '399', null);
INSERT INTO `cdl_specialty` VALUES ('5040200', '水产捕捞及有关人员', '1', '400', null);
INSERT INTO `cdl_specialty` VALUES ('6040201', '铸造工', '1', '435', null);
INSERT INTO `cdl_specialty` VALUES ('6040202', '锻造工', '1', '436', null);
INSERT INTO `cdl_specialty` VALUES ('6040203', '冲压工', '1', '437', null);
INSERT INTO `cdl_specialty` VALUES ('6040205', '焊工', '1', '438', null);
INSERT INTO `cdl_specialty` VALUES ('6040206', '金属热处理工', '1', '439', null);
INSERT INTO `cdl_specialty` VALUES ('6040207', '电焊工', '1', '440', null);
INSERT INTO `cdl_specialty` VALUES ('6040208', '气焊工', '1', '441', null);
INSERT INTO `cdl_specialty` VALUES ('6040209', '氩弧焊工', '1', '442', null);
INSERT INTO `cdl_specialty` VALUES ('6040300', '特种加工设备操作工', '1', '443', null);
INSERT INTO `cdl_specialty` VALUES ('6040400', '冷作钣金加工工', '1', '444', null);
INSERT INTO `cdl_specialty` VALUES ('6040500', '工件表面处理加工工', '1', '445', null);
INSERT INTO `cdl_specialty` VALUES ('6040600', '磨料麻具制造加工人员', '1', '446', null);
INSERT INTO `cdl_specialty` VALUES ('6049900', '其他机械制造加工工', '1', '447', null);
INSERT INTO `cdl_specialty` VALUES ('6050000', '机电产品装配人员', '1', '448', null);
INSERT INTO `cdl_specialty` VALUES ('6050200', '机械设备装配工', '1', '449', null);
INSERT INTO `cdl_specialty` VALUES ('6050201', '装配钳工', '1', '450', null);
INSERT INTO `cdl_specialty` VALUES ('6050202', '工具钳工', '1', '451', null);
INSERT INTO `cdl_specialty` VALUES ('6050400', '电气电子设备装配工', '1', '452', null);
INSERT INTO `cdl_specialty` VALUES ('6050600', '仪器仪表装配工', '1', '453', null);
INSERT INTO `cdl_specialty` VALUES ('6050700', '运输车辆装配工', '1', '454', null);
INSERT INTO `cdl_specialty` VALUES ('6059900', '其他机电产品装配工', '1', '455', null);
INSERT INTO `cdl_specialty` VALUES ('6060000', '机械设备修理人员', '1', '456', null);
INSERT INTO `cdl_specialty` VALUES ('6060100', '机械设备维修工', '1', '457', null);
INSERT INTO `cdl_specialty` VALUES ('6060101', '机修钳工', '1', '458', null);
INSERT INTO `cdl_specialty` VALUES ('6060102', '汽车修理工', '1', '459', null);
INSERT INTO `cdl_specialty` VALUES ('6060199', '其他机械设备维修人员', '1', '460', null);
INSERT INTO `cdl_specialty` VALUES ('6060200', '仪器仪表修理工', '1', '461', null);
INSERT INTO `cdl_specialty` VALUES ('6060201', '工业自动化仪器仪表与装置修理工', '1', '462', null);
INSERT INTO `cdl_specialty` VALUES ('6060203', '精密仪器仪表修理工', '1', '463', null);
INSERT INTO `cdl_specialty` VALUES ('6069900', '其他机械设备修理工', '1', '464', null);
INSERT INTO `cdl_specialty` VALUES ('6070000', '电力设备装运检修及供电人员', '1', '465', null);
INSERT INTO `cdl_specialty` VALUES ('6070100', '电力设备安装工', '1', '466', null);
INSERT INTO `cdl_specialty` VALUES ('6070400', '专业电力设备检修工', '1', '467', null);
INSERT INTO `cdl_specialty` VALUES ('6070600', '普通电力设备检修工、电工', '1', '468', null);
INSERT INTO `cdl_specialty` VALUES ('6070601', '变电设备安装工', '1', '469', null);
INSERT INTO `cdl_specialty` VALUES ('6070602', '变配电室值班电工', '1', '470', null);
INSERT INTO `cdl_specialty` VALUES ('6070603', '常用电机检修工', '1', '471', null);
INSERT INTO `cdl_specialty` VALUES ('6070605', '维修电工', '1', '472', null);
INSERT INTO `cdl_specialty` VALUES ('6079900', '其他电力设备装运、检修及供电工', '1', '473', null);
INSERT INTO `cdl_specialty` VALUES ('6080000', '电子元、器件制造装调及维修人员', '1', '474', null);
INSERT INTO `cdl_specialty` VALUES ('6080100', '电子元件、器件制造工', '1', '475', null);
INSERT INTO `cdl_specialty` VALUES ('6080400', '电子设备装配调试工', '1', '476', null);
INSERT INTO `cdl_specialty` VALUES ('6080401', '无线电设备机校装配工', '1', '477', null);
INSERT INTO `cdl_specialty` VALUES ('6080402', '电子设备装接工', '1', '478', null);
INSERT INTO `cdl_specialty` VALUES ('6080403', '无线电调试工', '1', '479', null);
INSERT INTO `cdl_specialty` VALUES ('6080500', '电子产品维修工', '1', '480', null);
INSERT INTO `cdl_specialty` VALUES ('6080501', '电子计算机（微机）维修工', '1', '481', null);
INSERT INTO `cdl_specialty` VALUES ('6080599', '其他电子产品维修人员', '1', '482', null);
INSERT INTO `cdl_specialty` VALUES ('6089900', '其他电子元器件与电子设备制造、装调维修', '1', '483', null);
INSERT INTO `cdl_specialty` VALUES ('6090000', '橡胶塑料制品生产人员', '1', '484', null);
INSERT INTO `cdl_specialty` VALUES ('6090100', '橡胶制品生产工', '1', '485', null);
INSERT INTO `cdl_specialty` VALUES ('6090200', '塑料制品加工工', '1', '486', null);
INSERT INTO `cdl_specialty` VALUES ('6099900', '其他橡胶和塑料制品生产工', '1', '487', null);
INSERT INTO `cdl_specialty` VALUES ('6100000', '纺织针织印染人员', '1', '488', null);
INSERT INTO `cdl_specialty` VALUES ('6100100', '纤维预处理人员', '1', '489', null);
INSERT INTO `cdl_specialty` VALUES ('6100200', '纺纱人员', '1', '490', null);
INSERT INTO `cdl_specialty` VALUES ('6100300', '织造人员', '1', '491', null);
INSERT INTO `cdl_specialty` VALUES ('6100400', '针织人员', '1', '492', null);
INSERT INTO `cdl_specialty` VALUES ('6100500', '印染人员', '1', '493', null);
INSERT INTO `cdl_specialty` VALUES ('6109900', '纺织、针织、印染工', '1', '494', null);
INSERT INTO `cdl_specialty` VALUES ('6110000', '裁剪缝纫毛皮革制作人员', '1', '495', null);
INSERT INTO `cdl_specialty` VALUES ('6110100', '裁剪缝纫工', '1', '496', null);
INSERT INTO `cdl_specialty` VALUES ('6110200', '鞋帽制作工', '1', '497', null);
INSERT INTO `cdl_specialty` VALUES ('6110300', '皮革、毛皮加工工', '1', '498', null);
INSERT INTO `cdl_specialty` VALUES ('6110400', '缝纫制品再加工人员', '1', '499', null);
INSERT INTO `cdl_specialty` VALUES ('6119900', '其他裁剪缝纫和毛皮革制作工', '1', '500', null);
INSERT INTO `cdl_specialty` VALUES ('6210000', '工艺、美术品制作人员', '1', '535', null);
INSERT INTO `cdl_specialty` VALUES ('6210100', '珠宝首饰加工制作人员', '1', '536', null);
INSERT INTO `cdl_specialty` VALUES ('6210300', '玩具制作人员', '1', '537', null);
INSERT INTO `cdl_specialty` VALUES ('6210600', '金属工艺品制作人员', '1', '538', null);
INSERT INTO `cdl_specialty` VALUES ('6210800', '美术品制作人员', '1', '539', null);
INSERT INTO `cdl_specialty` VALUES ('6219900', '工艺、美术品制作人员', '1', '540', null);
INSERT INTO `cdl_specialty` VALUES ('6220000', '文体用品乐器制作人员', '1', '541', null);
INSERT INTO `cdl_specialty` VALUES ('6220100', '文教用品制作人员', '1', '542', null);
INSERT INTO `cdl_specialty` VALUES ('6220200', '体育用品制作人员', '1', '543', null);
INSERT INTO `cdl_specialty` VALUES ('6220300', '乐器制作人员', '1', '544', null);
INSERT INTO `cdl_specialty` VALUES ('6229900', '文体用品乐器制作人员', '1', '545', null);
INSERT INTO `cdl_specialty` VALUES ('6230000', '建筑和工程施工人员', '1', '546', null);
INSERT INTO `cdl_specialty` VALUES ('6230100', '土石方施工人员', '1', '547', null);
INSERT INTO `cdl_specialty` VALUES ('6230200', '砌筑工', '1', '548', null);
INSERT INTO `cdl_specialty` VALUES ('6230300', '混凝土工', '1', '549', null);
INSERT INTO `cdl_specialty` VALUES ('6230400', '钢筋工', '1', '550', null);
INSERT INTO `cdl_specialty` VALUES ('6230500', '架子工', '1', '551', null);
INSERT INTO `cdl_specialty` VALUES ('6230600', '工程防水工', '1', '552', null);
INSERT INTO `cdl_specialty` VALUES ('6230700', '装饰、装修、油漆工', '1', '553', null);
INSERT INTO `cdl_specialty` VALUES ('6230701', '装饰装修工', '1', '554', null);
INSERT INTO `cdl_specialty` VALUES ('6230702', '室内成套设施装饰工', '1', '555', null);
INSERT INTO `cdl_specialty` VALUES ('6230900', '筑路、养护、维修人员', '1', '556', null);
INSERT INTO `cdl_specialty` VALUES ('6231000', '机械电气工程设备安装工、管工', '1', '557', null);
INSERT INTO `cdl_specialty` VALUES ('6231001', '机械设备安装工', '1', '558', null);
INSERT INTO `cdl_specialty` VALUES ('6231002', '电气设备安装工', '1', '559', null);
INSERT INTO `cdl_specialty` VALUES ('6231003', '管工', '1', '560', null);
INSERT INTO `cdl_specialty` VALUES ('6231100', '电工', '1', '561', null);
INSERT INTO `cdl_specialty` VALUES ('6233000', '木工', '1', '562', null);
INSERT INTO `cdl_specialty` VALUES ('6239900', '其他工程施工人员', '1', '563', null);
INSERT INTO `cdl_specialty` VALUES ('6240000', '驾驶员和运输工人', '1', '564', null);
INSERT INTO `cdl_specialty` VALUES ('6240100', '机动车驾驶员', '1', '565', null);
INSERT INTO `cdl_specialty` VALUES ('6240101', 'a本驾驶员', '1', '566', null);
INSERT INTO `cdl_specialty` VALUES ('6240102', 'b本驾驶员', '1', '567', null);
INSERT INTO `cdl_specialty` VALUES ('6240103', 'c本驾驶员', '1', '568', null);
INSERT INTO `cdl_specialty` VALUES ('6240104', 'd本驾驶员', '1', '569', null);
INSERT INTO `cdl_specialty` VALUES ('6240105', 'e本驾驶员', '1', '570', null);
INSERT INTO `cdl_specialty` VALUES ('6240200', '铁路、地铁运输设备操作及有关人员', '1', '571', null);
INSERT INTO `cdl_specialty` VALUES ('6240400', '船舶水手', '1', '572', null);
INSERT INTO `cdl_specialty` VALUES ('6240500', '起重装卸机械驾驶员', '1', '573', null);
INSERT INTO `cdl_specialty` VALUES ('6249900', '其他运输设备驾驶员', '1', '574', null);
INSERT INTO `cdl_specialty` VALUES ('6250000', '环境监测废物处理人员', '1', '575', null);
INSERT INTO `cdl_specialty` VALUES ('6259900', '环境监测废物处理人员', '1', '576', null);
INSERT INTO `cdl_specialty` VALUES ('6260000', '检验、计量人员', '1', '577', null);
INSERT INTO `cdl_specialty` VALUES ('6260100', '检验人员', '1', '578', null);
INSERT INTO `cdl_specialty` VALUES ('6260101', '化学检验工', '1', '579', null);
INSERT INTO `cdl_specialty` VALUES ('6260102', '材料成分检验工', '1', '580', null);
INSERT INTO `cdl_specialty` VALUES ('6260108', '食品检验工', '1', '581', null);
INSERT INTO `cdl_specialty` VALUES ('6260121', '药物检验工', '1', '582', null);
INSERT INTO `cdl_specialty` VALUES ('6260130', '通信设备检验工', '1', '583', null);
INSERT INTO `cdl_specialty` VALUES ('6260131', '广播影视设备检验工', '1', '584', null);
INSERT INTO `cdl_specialty` VALUES ('6260132', '计算机检验工', '1', '585', null);
INSERT INTO `cdl_specialty` VALUES ('6260133', '电子器件检验工', '1', '586', null);
INSERT INTO `cdl_specialty` VALUES ('6260400', '计量人员', '1', '587', null);
INSERT INTO `cdl_specialty` VALUES ('6270000', '体力工人', '1', '588', null);
INSERT INTO `cdl_specialty` VALUES ('6279900', '体力工人', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9000000', '其它岗位', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010000', '社区岗位', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010100', '社区公共设施维护', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010200', '劳动保障协管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010300', '城管协管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010400', '交通协管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010500', '残疾人工作协管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010600', '保洁保绿', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010700', '社区保安', '1', '589', '');
INSERT INTO `cdl_specialty` VALUES ('9010800', '社区矫正协管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9010900', '公共秩序维护', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011000', '家政服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011100', '商业便民服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011101', '连锁超市便利店', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011300', '社区环境养护', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011400', '社区居民服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011500', '维修服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011600', '洗染缝补', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011700', '理发照相', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011800', '复印打字', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9011900', '咨询服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012000', '中介服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012100', '托老托幼', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012200', '保健康复', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012300', '早餐工程', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012400', '再生资源回收', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012500', '净菜进社区', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012600', '物业管理', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012800', '车辆看管', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9012900', '用人单位后勤服务', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9013000', '汽车驾驶', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9013100', '电梯运行保养维修', '1', '589', null);
INSERT INTO `cdl_specialty` VALUES ('9019000', '其他', '1', '589', null);

-- ----------------------------
-- Table structure for `cdx_computergrade`
-- ----------------------------
DROP TABLE IF EXISTS `cdx_computergrade`;
CREATE TABLE `cdx_computergrade` (
  `cd_id` varchar(1) NOT NULL,
  `cd_name` varchar(64) DEFAULT NULL,
  `cd_availability` varchar(1) DEFAULT NULL,
  `cd_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdx_computergrade
-- ----------------------------
INSERT INTO `cdx_computergrade` VALUES ('1', '计算机一级', '1', '1');
INSERT INTO `cdx_computergrade` VALUES ('2', '计算机二级', '1', '2');
INSERT INTO `cdx_computergrade` VALUES ('3', '计算机三级', '1', '3');
INSERT INTO `cdx_computergrade` VALUES ('4', '计算机四级', '1', '4');

-- ----------------------------
-- Table structure for `ldlsc_user`
-- ----------------------------
DROP TABLE IF EXISTS `ldlsc_user`;
CREATE TABLE `ldlsc_user` (
  `user_id` varchar(32) NOT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `USERLOGINNAME` varchar(32) DEFAULT NULL,
  `USERPASSWORD` varchar(16) DEFAULT NULL,
  `USERINDEX` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ldlsc_user
-- ----------------------------
INSERT INTO `ldlsc_user` VALUES ('1', 'admin', 'admin', 'admin', '1');
INSERT INTO `ldlsc_user` VALUES ('7e249bd1dc7d01', null, 'sdfs', 'sdf', null);
INSERT INTO `ldlsc_user` VALUES ('7e249bd5542201', '李大', '大小', '344', null);
INSERT INTO `ldlsc_user` VALUES ('7e249bd65b3e00', 'taoyuan', '大小', 'sdf', null);
INSERT INTO `ldlsc_user` VALUES ('7e249bd6707e00', 'taoyuan', 'sdfs', 'sdf', null);
INSERT INTO `ldlsc_user` VALUES ('7e249bd6a27e00', 'taoyuan', '你是', '铁的', null);
INSERT INTO `ldlsc_user` VALUES ('7e249be0c80101', '你是大桃子', '你好吗', '我好很', null);

-- ----------------------------
-- Table structure for `zj_dwdjjdb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwdjjdb`;
CREATE TABLE `zj_dwdjjdb` (
  `DWDJJDBH` varchar(32) NOT NULL,
  `ZPBH` varchar(32) DEFAULT NULL,
  `DJYY` varchar(255) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `JDYY` varchar(255) DEFAULT NULL,
  `JDSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`DWDJJDBH`),
  KEY `FK_ZJ_DWDJJ_REFERENCE_ZJ_DWZPD` (`ZPBH`),
  CONSTRAINT `FK_ZJ_DWDJJ_REFERENCE_ZJ_DWZPD` FOREIGN KEY (`ZPBH`) REFERENCES `zj_dwzpdjb` (`ZPBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_dwdjjdb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_dwzpdjb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwzpdjb`;
CREATE TABLE `zj_dwzpdjb` (
  `ZPBH` varchar(32) NOT NULL,
  `DWBH` varchar(32) DEFAULT NULL,
  `DWLXR` varchar(32) DEFAULT NULL,
  `LXRSFZHM` varchar(18) DEFAULT NULL,
  `LXRSJ` varchar(12) DEFAULT NULL,
  `SFDJ` varchar(1) DEFAULT NULL,
  `DJYXQ` int(11) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ZPBH`),
  KEY `FK_ZJ_DWZPD_REFERENCE_BIO` (`DWBH`),
  CONSTRAINT `FK_ZJ_DWZPD_REFERENCE_BIO` FOREIGN KEY (`DWBH`) REFERENCES `bio` (`bio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_dwzpdjb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_dwzpgzb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_dwzpgzb`;
CREATE TABLE `zj_dwzpgzb` (
  `ZPGZBH` varchar(32) NOT NULL,
  `ZPBH` varchar(32) DEFAULT NULL,
  `ZPGZ` varchar(7) DEFAULT NULL,
  `ZPGZBM` varchar(32) DEFAULT NULL,
  `GWLB` varchar(2) DEFAULT NULL,
  `ZRS` varchar(4) DEFAULT NULL,
  `ZPRSN` varchar(4) DEFAULT NULL,
  `ZPRSNV` varchar(4) DEFAULT NULL,
  `XBBX` varchar(4) DEFAULT NULL,
  `hjxz` varchar(2) DEFAULT NULL,
  `KSSJ` varchar(8) DEFAULT NULL,
  `JSSJ` varchar(8) DEFAULT NULL,
  `ZXNL` varchar(2) DEFAULT NULL,
  `ZDNL` varchar(2) DEFAULT NULL,
  `whcd` varchar(2) DEFAULT NULL,
  `ygxs` varchar(1) DEFAULT NULL,
  `ZZYX` varchar(8) DEFAULT NULL,
  `ZGYX` varchar(8) DEFAULT NULL,
  `hyzk` varchar(1) DEFAULT NULL,
  `jkzk` varchar(1) DEFAULT NULL,
  `rylb` varchar(2) DEFAULT NULL,
  `sfbys` varchar(1) DEFAULT NULL,
  `ZPDQ` varchar(12) DEFAULT NULL,
  `JYYZ` varchar(2) DEFAULT NULL,
  `SLCD` varchar(2) DEFAULT NULL,
  `JSJDJ` varchar(2) DEFAULT NULL,
  `JSJSLCD` varchar(2) DEFAULT NULL,
  `GWMS` varchar(255) DEFAULT NULL,
  `GZDD` varchar(255) DEFAULT NULL,
  `CGRSN` varchar(4) DEFAULT NULL,
  `CGRSNV` varchar(4) DEFAULT NULL,
  `DJYXQ` varchar(2) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ZPGZBH`),
  KEY `FK_ZJ_DWZPG_REFERENCE_ZJ_DWZPD` (`ZPBH`),
  CONSTRAINT `FK_ZJ_DWZPG_REFERENCE_ZJ_DWZPD` FOREIGN KEY (`ZPBH`) REFERENCES `zj_dwzpdjb` (`ZPBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_dwzpgzb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_d_gwlb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_d_gwlb`;
CREATE TABLE `zj_d_gwlb` (
  `dmid` char(2) NOT NULL,
  `dmmc` char(64) DEFAULT NULL,
  `sfky` char(1) DEFAULT NULL,
  `xh` int(11) DEFAULT NULL,
  PRIMARY KEY (`dmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_d_gwlb
-- ----------------------------
INSERT INTO `zj_d_gwlb` VALUES ('10', '日常招聘岗位', '1', '1');
INSERT INTO `zj_d_gwlb` VALUES ('20', '劳务派遣岗位', '1', '2');
INSERT INTO `zj_d_gwlb` VALUES ('30', '社区岗位', '1', '3');
INSERT INTO `zj_d_gwlb` VALUES ('90', '其他岗位', '1', '4');

-- ----------------------------
-- Table structure for `zj_grqzdjb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzdjb`;
CREATE TABLE `zj_grqzdjb` (
  `qzbh` varchar(32) NOT NULL,
  `bip_id` varchar(32) DEFAULT NULL,
  `dwxx` varchar(2) DEFAULT NULL,
  `dwjjlx` varchar(3) DEFAULT NULL,
  `dwhy` varchar(5) DEFAULT NULL,
  `gzdq` varchar(12) DEFAULT NULL,
  `SFDJ` varchar(1) DEFAULT NULL,
  `SFJSDX` varchar(1) DEFAULT NULL,
  `SFCJPX` varchar(1) DEFAULT NULL,
  `SFJSZYZD` varchar(1) DEFAULT NULL,
  `djyxq` varchar(2) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`qzbh`),
  KEY `FK_ZJ_GRQZD_REFERENCE_BIP` (`bip_id`),
  CONSTRAINT `FK_ZJ_GRQZD_REFERENCE_BIP` FOREIGN KEY (`bip_id`) REFERENCES `bip` (`bip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_grqzdjb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_grqzdjjdb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzdjjdb`;
CREATE TABLE `zj_grqzdjjdb` (
  `GRDJJDBH` varchar(32) NOT NULL,
  `QZBH` varchar(32) DEFAULT NULL,
  `DOJYY` varchar(255) DEFAULT NULL,
  `DOJSJ` varchar(14) DEFAULT NULL,
  `JIDYY` varchar(255) DEFAULT NULL,
  `JIDSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`GRDJJDBH`),
  KEY `FK_ZJ_GRQZD_REFERENCE_ZJ_GRQZD` (`QZBH`),
  CONSTRAINT `FK_ZJ_GRQZD_REFERENCE_ZJ_GRQZD` FOREIGN KEY (`QZBH`) REFERENCES `zj_grqzdjb` (`qzbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_grqzdjjdb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_grqzgzb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_grqzgzb`;
CREATE TABLE `zj_grqzgzb` (
  `QZGZBH` varchar(32) NOT NULL,
  `QZBH` varchar(32) DEFAULT NULL,
  `XH` varchar(1) DEFAULT NULL,
  `GZ` varchar(7) DEFAULT NULL,
  `YGXS` varchar(1) DEFAULT NULL,
  `ZDYX` varchar(6) DEFAULT NULL,
  `ZGYX` varchar(6) DEFAULT NULL,
  `DJSJ` varchar(14) DEFAULT NULL,
  `GDSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`QZGZBH`),
  KEY `FK_ZJ_GRQZG_REFERENCE_ZJ_GRQZD` (`QZBH`),
  CONSTRAINT `FK_ZJ_GRQZG_REFERENCE_ZJ_GRQZD` FOREIGN KEY (`QZBH`) REFERENCES `zj_grqzdjb` (`qzbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_grqzgzb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_tjxxb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_tjxxb`;
CREATE TABLE `zj_tjxxb` (
  `TJXID` varchar(32) NOT NULL,
  `TJXLX` varchar(1) DEFAULT NULL,
  `QZGZBH` varchar(32) DEFAULT NULL,
  `ZPGZBH` varchar(32) DEFAULT NULL,
  `TJSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TJXID`),
  KEY `FK_ZJ_TJXXB_REFERENCE_ZJ_DWZPG` (`ZPGZBH`),
  KEY `FK_ZJ_TJXXB_REFERENCE_ZJ_GRQZG` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXB_REFERENCE_ZJ_DWZPG` FOREIGN KEY (`ZPGZBH`) REFERENCES `zj_dwzpgzb` (`ZPGZBH`),
  CONSTRAINT `FK_ZJ_TJXXB_REFERENCE_ZJ_GRQZG` FOREIGN KEY (`QZGZBH`) REFERENCES `zj_grqzgzb` (`QZGZBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_tjxxb
-- ----------------------------

-- ----------------------------
-- Table structure for `zj_tjxxhzb`
-- ----------------------------
DROP TABLE IF EXISTS `zj_tjxxhzb`;
CREATE TABLE `zj_tjxxhzb` (
  `TJXID` varchar(32) NOT NULL,
  `TJXLX` varchar(1) DEFAULT NULL,
  `QZGZBH` varchar(32) DEFAULT NULL,
  `ZPGZBH` varchar(32) DEFAULT NULL,
  `TJSJ` varchar(14) DEFAULT NULL,
  `SFCG` varchar(1) DEFAULT NULL,
  `JYYX` varchar(6) DEFAULT NULL,
  `BCGYY` varchar(255) DEFAULT NULL,
  `SFHZ` varchar(1) DEFAULT NULL,
  `HZSJ` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`TJXID`),
  KEY `FK_ZJ_TJXXH_REFERENCE_ZJ_DWZPG` (`ZPGZBH`),
  KEY `FK_ZJ_TJXXH_REFERENCE_ZJ_GRQZG` (`QZGZBH`),
  CONSTRAINT `FK_ZJ_TJXXH_REFERENCE_ZJ_DWZPG` FOREIGN KEY (`ZPGZBH`) REFERENCES `zj_dwzpgzb` (`ZPGZBH`),
  CONSTRAINT `FK_ZJ_TJXXH_REFERENCE_ZJ_GRQZG` FOREIGN KEY (`QZGZBH`) REFERENCES `zj_grqzgzb` (`QZGZBH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zj_tjxxhzb
-- ----------------------------
