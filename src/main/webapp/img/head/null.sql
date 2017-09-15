

-- ----------------------------
-- Table structure for AWARD
-- ----------------------------
DROP TABLE `AWARD`;
CREATE TABLE `AWARD` (
`ANO` NUMBER(4) NULL ,
`AINFO` VARCHAR2(50 BYTE) NULL ,
`SNO` NUMBER(4) NULL 
);

-- ----------------------------
-- Records of AWARD
-- ----------------------------
INSERT INTO `AWARD` VALUES ('1', '优秀学生干部', '26');
INSERT INTO `AWARD` VALUES ('2', '三等奖学金', '26');
INSERT INTO `AWARD` VALUES ('3', 'ACM三等奖', '26');

-- ----------------------------
-- Table structure for CST_INFORMATION
-- ----------------------------
DROP TABLE `CST_INFORMATION`;
CREATE TABLE `CST_INFORMATION` (
`CST_NO` NUMBER(10) NOT NULL ,
`CST_NAME` VARCHAR2(50 BYTE) NOT NULL ,
`CST_REGION` VARCHAR2(50 BYTE) NULL ,
`CST_MANAGER` VARCHAR2(20 BYTE) NULL ,
`CST_SATISFY` NUMBER(1) NULL ,
`CST_CREDIT` NUMBER(1) NULL ,
`CST_LEVEL` VARCHAR2(20 BYTE) NULL ,
`CST_TEL` VARCHAR2(20 BYTE) NULL ,
`CST_ADDR` VARCHAR2(100 BYTE) NULL ,
`CST_WEB` VARCHAR2(50 BYTE) NULL ,
`CST_REMARK` VARCHAR2(500 BYTE) NULL ,
`CST_STATUS` VARCHAR2(20 BYTE) NULL 
)

;

-- ----------------------------
-- Records of CST_INFORMATION
-- ----------------------------
INSERT INTO `CST_INFORMATION` VALUES ('34', 'TT', '南昌', 'TT', '1', '1', '小客户', '1', null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('35', 'TT', null, '周', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('32', '客户名称阿斯顿', '地区', 'kkk', '1', '1', '小客户', '123456', '联系地址', 'wwww.sd ', 'DFSD', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('33', '江西科技有限公司', '江西', '张达', '1', '1', '小客户', '123456', '联系地址', 'wwww.sd ', 'IT', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('1', '江西科技有限公司', '江西南昌', '周启帆', '5', '4', '大客户', '17679811139', '江西南昌莲塘', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('2', '北京科技有限公司', '中国北京', '张三', '4', '3', '普通客户', '16945326987', '中国北京天安门', 'http://www.souhu.com', '咔咔咔咔', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('3', '天津科技有限公司', '中国天津', '李四', '5', '4', '大客户', '18294568712', '中国天津', 'http://2345.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('4', '上海科技有限公司', '中国上海', '王大', '4', '5', '小客户', '15164237894', '中国上海浦东', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('5', '重庆科技有限公司', '中国重庆', '王二', '5', '4', '大客户', '15642314265', '中国重庆', 'http://www.google.com', '略略略略', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('6', '河北科技有限公司', '河北石家庄', '王五', '4', '5', '小客户', '15236421485', '河北石家庄', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('7', '山西科技有限公司', '山西大同', '赵六', '5', '4', '普通客户', '18965774599', '山西大同', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('8', '辽宁科技有限公司', '辽宁沈阳', '小明', '4', '4', '大客户', '18865794598', '辽宁沈阳', 'http://www.sougou.com', '咯咯咯咯', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('9', '吉林科技有限公司', '吉林长春', '大胖', '4', '3', '大客户', '13926587784', '吉林长春', 'http://www.baidu.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('10', '黑龙江科技有限公司', '黑龙江哈尔滨', '小白', '5', '4', '普通客户', '15622368955', '黑龙江哈尔滨', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('11', '江苏科技有限公司', '江苏南京', '刘析', '4', '5', '大客户', '15502623364', '江苏南京', 'http://www.google.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('12', '浙江科技有限公司', '浙江杭州', '程晨', '4', '4', '普通客户', '15146462323', '浙江杭州', 'http://www.baidu.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('13', '安徽科技有限公司', '安徽合肥', '万弘杰', '4', '5', '大客户', '13623594545', '安徽合肥', 'http://www.sougou.com', '嘎嘎嘎嘎', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('14', '福建科技有限公司', '福建福州', '郭超', '4', '4', '大客户', '18716163544', '福建福州', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('15', '山东科技有限公司', '山东济南', '杜汶泽', '3', '4', '小客户', '15845642321', '山东济南', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('16', '河南科技有限公司', '河南郑州', '大熊', '4', '4', '普通客户', '16952523636', '河南郑州', 'http://www.google.com', '呵呵呵呵', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('17', '湖北科技有限公司', '湖北武汉', '张莉', '4', '2', '小客户', '18545452636', '湖北武汉', 'http://www.baidu.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('18', '湖南科技有限公司', '湖南长沙', '杨洋', '4', '4', '大客户', '18294567811', '湖南长沙', 'http://www.sougou.com', '咯咯咯咯', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('19', '广东科技有限公司', '广东深圳', '李佳玉', '5', '4', '普通客户', '18652547984', '广东深圳', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('20', '海南科技有限公司', '海南海口', '王安生', '4', '1', '小客户', '13256564848', '海南海口', 'http://www.hahahah.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('21', '四川科技有限公司', '四川成都', '李鑫', '5', '4', '普通客户', '19645856569', '四川成都', 'http://www.baidu.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('22', '贵州科技有限公司', '贵州贵阳', '潘恩义', '4', '4', '小客户', '15428567787', '贵州贵阳', 'http://www.kikiki.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('23', '云南科技有限公司', '云南大理', '大齐', '4', '3', '大客户', '15326264848', '云南大理', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('24', '陕西科技有限公司', '陕西西安', '陈启红', '4', '4', '大客户', '17845963258', '陕西西安', 'http://www.lala.com', '嘎嘎嘎嘎', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('25', '甘肃科技有限公司', '甘肃兰州', '林立', '4', '2', '小客户', '188020026565', '甘肃兰州', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('26', '青海科技有限公司', '青海西宁', '王卓', '4', '4', '大客户', '18766325858', '青海西宁', 'http://www.gege.com', '哈哈哈哈', '流失');
INSERT INTO `CST_INFORMATION` VALUES ('27', '内蒙古科技有限公司', '内蒙古呼和浩特', '王一', '4', '4', '大客户', '19956468752', '内蒙古呼和浩特', 'http://www.baidu.com', '呵呵呵呵', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('28', '广西科技有限公司', '广西南宁', '郑维', '1', '4', '普通客户', '13625489898', '广西南宁', 'http://www.baidu.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('29', '宁夏科技有限公司', '宁夏银川', '刘珊', '4', '5', '普通客户', '15523234848', '宁夏银川', 'http://www.lololo.com', '啦啦啦啦', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('30', '中国科技有限公司', '中国北京', '万岁', '4', '5', '大客户', '18623234848', '北京故宫', 'http://www.lololo.com', '哈哈哈哈', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('31', 'kkk123', '江西', 'kkk', '3', '4', '小客户', '123456', '斤斤计较', 'wwww.sd ', 'kkkkaaaaa', '正常');
INSERT INTO `CST_INFORMATION` VALUES ('37', 'TT', null, 'TT', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('41', '4444', '4444', '454', '1', '1', '小客户', '4444', '4444', '44444', null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('36', 'TT', null, 'TT', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('38', 'TT', null, 'TT', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('39', 'TT', null, 'TT', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('40', 'TT', null, 'TT', '1', '1', '小客户', null, null, null, null, '正常');
INSERT INTO `CST_INFORMATION` VALUES ('42', '1212', null, '1212121', '1', '1', '小客户', null, null, null, null, '正常');

-- ----------------------------
-- Table structure for CST_LOST
-- ----------------------------
DROP TABLE `CST_LOST`;
CREATE TABLE `CST_LOST` (
`LOST_NO` NUMBER(10) NOT NULL ,
`CST_NO` NUMBER(10) NOT NULL ,
`LOST_CST_MANAGER` VARCHAR2(20 BYTE) NOT NULL ,
`LOST_LASTDATE` DATE NOT NULL ,
`LOST_STATUS` VARCHAR2(20 BYTE) NOT NULL ,
`LOST_MEASURES` VARCHAR2(500 BYTE) NULL 
)


;

-- ----------------------------
-- Records of CST_LOST
-- ----------------------------
INSERT INTO `CST_LOST` VALUES ('14', '6', '王五', TO_DATE('2016-11-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('15', '7', '赵六', TO_DATE('2016-11-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('20', '15', '杜汶泽', TO_DATE('2017-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('21', '16', '大熊', TO_DATE('2017-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('22', '16', '大熊', TO_DATE('2017-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('18', '13', '万弘杰', TO_DATE('2016-12-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('19', '14', '郭超', TO_DATE('2017-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('1', '23', '小龙易', TO_DATE('2017-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '留住用户');
INSERT INTO `CST_LOST` VALUES ('2', '22', '徐畅', TO_DATE('2017-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', '赶紧联系');
INSERT INTO `CST_LOST` VALUES ('3', '5', '小龙易', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已流失', '留住用户');
INSERT INTO `CST_LOST` VALUES ('4', '12', '徐畅', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '1111');
INSERT INTO `CST_LOST` VALUES ('5', '19', '徐畅', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '11111');
INSERT INTO `CST_LOST` VALUES ('6', '17', '徐畅', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已流失', '赶紧联系');
INSERT INTO `CST_LOST` VALUES ('7', '8', '小龙易', TO_DATE('2017-03-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '赶紧联系');
INSERT INTO `CST_LOST` VALUES ('8', '30', '小龙易', TO_DATE('2017-03-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '留住用户');
INSERT INTO `CST_LOST` VALUES ('9', '3', '小龙易', TO_DATE('2017-03-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已流失', '留住用户');
INSERT INTO `CST_LOST` VALUES ('10', '18', '徐畅', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已流失', '赶紧联系');
INSERT INTO `CST_LOST` VALUES ('11', '1', '周启帆', TO_DATE('2016-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '暂缓流失', '213123');
INSERT INTO `CST_LOST` VALUES ('12', '2', '张三', TO_DATE('2016-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('13', '4', '王大', TO_DATE('2016-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('16', '10', '小白', TO_DATE('2016-11-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);
INSERT INTO `CST_LOST` VALUES ('17', '11', '刘析', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '预警', null);

-- ----------------------------
-- Table structure for CST_SERVICE
-- ----------------------------
DROP TABLE `CST_SERVICE`;
CREATE TABLE `CST_SERVICE` (
`SVC_NO` NUMBER(10) NOT NULL ,
`SVC_TYPE` VARCHAR2(20 BYTE) NOT NULL ,
`SVC_SUMMARY` VARCHAR2(20 BYTE) NOT NULL ,
`CST_NO` NUMBER(10) NOT NULL ,
`SVC_STATUS` VARCHAR2(20 BYTE) NOT NULL ,
`SVC_DETAILS` VARCHAR2(500 BYTE) NOT NULL ,
`SVC_CREATE_NO` NUMBER(10) NOT NULL ,
`SVC_CREATE_DATE` DATE NOT NULL ,
`SVC_DUE_NO` NUMBER(10) NULL ,
`SVC_DUE_DATE` DATE NULL ,
`SVC_DEAL_METHOD` VARCHAR2(100 BYTE) NULL ,
`SVC_DEAL_NO` NUMBER(10) NULL ,
`SVC_DEAL_DATE` DATE NULL ,
`SVC_DEAL_RESULT` VARCHAR2(100 BYTE) NULL ,
`SVC_DEAL_SATISFY` NUMBER(1) NULL 
)


;

-- ----------------------------
-- Records of CST_SERVICE
-- ----------------------------
INSERT INTO `CST_SERVICE` VALUES ('33', '咨询', '2222222', '34', '待分配', '2222222', '1', TO_DATE('2017-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('32', '咨询', '2222', '34', '待分配', '1111', '1', TO_DATE('2017-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('2', '建议', '建议哈哈哈', '3', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '111111', '2', TO_DATE('2017-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '完成', '5');
INSERT INTO `CST_SERVICE` VALUES ('3', '投诉', '投诉啊啊啊', '29', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '11111', '2', TO_DATE('2017-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '完成', '5');
INSERT INTO `CST_SERVICE` VALUES ('4', '建议', '建议哈哈哈', '30', '已反馈', '这个是很那什么的。', '1', TO_DATE('2017-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上收录', '3', TO_DATE('2017-03-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('5', '咨询', '咨询哦哦哦', '22', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '嘎嘎嘎嘎嘎嘎嘎', '8', TO_DATE('2017-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('6', '投诉', '投诉啊啊啊', '23', '已反馈', '这个是很那什么的。', '1', TO_DATE('2017-03-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'hi啊哈哈hi还hi安徽', '16', TO_DATE('2017-03-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '完成', '3');
INSERT INTO `CST_SERVICE` VALUES ('7', '建议', '建议哈哈哈', '12', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上收录', '3', TO_DATE('2017-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('8', '建议', '建议哈哈哈', '13', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上收录', '3', TO_DATE('2017-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('9', '咨询', '咨询哦哦哦', '12', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '面谈', '3', TO_DATE('2017-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('10', '投诉', '投诉啊啊啊', '5', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '正规处理', '3', TO_DATE('2017-03-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('11', '咨询', '咨询哦哦哦', '6', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '面谈', '3', TO_DATE('2017-03-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('12', '建议', '建议哈哈哈', '24', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上收录', '3', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('13', '咨询', '咨询哦哦哦', '27', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '电话沟通', '3', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('14', '投诉', '投诉啊啊啊', '9', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '粉丝海底阀时间冻结佛阿萨德', '14', TO_DATE('2017-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '3');
INSERT INTO `CST_SERVICE` VALUES ('15', '咨询', '咨询哦哦哦', '3', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '电话沟通', '3', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('16', '建议', '建议哈哈哈', '8', '待分配', '这个是很那什么的。', '1', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '建议信', '3', TO_DATE('2017-03-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('17', '咨询', '咨询哦哦哦', '14', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '面谈', '3', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('18', '投诉', '投诉啊啊啊', '25', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-03-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '正规处理', '3', TO_DATE('2017-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('19', '投诉', '投诉啊啊啊', '22', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '正规处理', '3', TO_DATE('2017-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('20', '建议', '建议哈哈哈', '17', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-04-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '建议信', '3', TO_DATE('2017-04-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '3');
INSERT INTO `CST_SERVICE` VALUES ('21', '咨询', '咨询哦哦哦', '20', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '电话沟通', '3', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '3');
INSERT INTO `CST_SERVICE` VALUES ('22', '建议', '建议哈哈哈', '13', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-04-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上收录', '3', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('23', '咨询', '咨询哦哦哦', '21', '待分配', '这个是很那什么的。', '1', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '面谈', '3', TO_DATE('2017-04-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('24', '建议', '建议哈哈哈', '29', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '建议信', '3', TO_DATE('2017-04-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('25', '咨询', '咨询哦哦哦', '16', '已分配', '这个是很那什么的。', '1', TO_DATE('2017-04-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '面谈', '3', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '4');
INSERT INTO `CST_SERVICE` VALUES ('26', '建议', '建议哈哈哈', '15', '待分配', '这个是很那什么的。', '1', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '建议信', '3', TO_DATE('2017-04-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('27', '咨询', '咨询哦哦哦', '14', '已处理', '这个是很那什么的。', '1', TO_DATE('2017-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上交流', '3', TO_DATE('2017-04-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('28', '咨询', '咨询哦哦哦', '4', '待分配', '这个是很那什么的。', '1', TO_DATE('2017-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上交流', '3', TO_DATE('2017-04-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '3');
INSERT INTO `CST_SERVICE` VALUES ('29', '咨询', '咨询哦哦哦', '6', '已反馈', '这个是很那什么的。', '1', TO_DATE('2017-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上交流', '3', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '完成', '5');
INSERT INTO `CST_SERVICE` VALUES ('30', '建议', '建议哈哈哈', '10', '待分配', '这个是很那什么的。', '1', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2', TO_DATE('2017-04-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '线上交流', '3', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已处理妥当', '5');
INSERT INTO `CST_SERVICE` VALUES ('31', '咨询', '1111', '32', '已分配', '4181', '1', TO_DATE('2017-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, '3', null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('34', '咨询', '1111111', '34', '已分配', '1111111', '1', TO_DATE('2017-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('35', '咨询', '大方的说法是否', '13', '待分配', '鼎折覆餗', '1', TO_DATE('2017-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('36', '咨询', 'kiikiki', '10', '待分配', 'jijijijiji急急急集结和积极急急乎乎环境', '1', TO_DATE('2017-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);
INSERT INTO `CST_SERVICE` VALUES ('37', '建议', '1348', '34', '待分配', '12456585858', '1', TO_DATE('2017-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for CTC_RECORD
-- ----------------------------
DROP TABLE `CTC_RECORD`;
CREATE TABLE `CTC_RECORD` (
`CRC_NO` NUMBER(10) NOT NULL ,
`CST_NO` NUMBER(10) NOT NULL ,
`CRC_TIME` DATE NOT NULL ,
`CRC_ADDR` VARCHAR2(100 BYTE) NOT NULL ,
`CRC_SUMMARY` VARCHAR2(100 BYTE) NOT NULL ,
`CRC_TEL` VARCHAR2(20 BYTE) NOT NULL ,
`CRC_DETAILS` VARCHAR2(500 BYTE) NULL 
)


;

-- ----------------------------
-- Records of CTC_RECORD
-- ----------------------------
INSERT INTO `CTC_RECORD` VALUES ('42', '1', TO_DATE('2017-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '请问企鹅 ', '123', '1231', '未指派');
INSERT INTO `CTC_RECORD` VALUES ('2', '3', TO_DATE('2017-04-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏南京', '概要哈哈', '18291459876', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('3', '16', TO_DATE('2017-04-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '广东广州', '概要呐', '18296169743', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('4', '30', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '浙江杭州', '概要哈哈', '18291459877', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('5', '22', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '广东深圳', '概要呐', '18296169744', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('6', '13', TO_DATE('2017-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '山东临沂', '概要哈哈', '18291459878', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('8', '24', TO_DATE('2017-04-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西抚州', '概要哈哈', '18291459879', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('9', '25', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西萍乡', '概要呐', '18296169746', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('10', '23', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '浙江温州', '概要哈哈', '18291459870', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('11', '10', TO_DATE('2017-04-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要呐', '18296169747', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('12', '20', TO_DATE('2017-04-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏苏州', '概要哈哈', '18291459871', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('13', '27', TO_DATE('2017-04-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要呐', '18296169748', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('14', '19', TO_DATE('2017-04-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏南京', '概要哈哈', '18291459872', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('15', '18', TO_DATE('2017-04-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '浙江温州', '概要呐', '18296169749', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('16', '21', TO_DATE('2017-04-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '广东广州', '概要哈哈', '18291459873', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('17', '28', TO_DATE('2017-04-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要呐', '18296169740', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('19', '5', TO_DATE('2017-04-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要呐', '18296169741', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('20', '30', TO_DATE('2017-04-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏常州', '概要哈哈', '18291459875', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('21', '29', TO_DATE('2017-04-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '广东广州', '概要呐', '18296169752', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('22', '6', TO_DATE('2017-04-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '山东济南', '概要哈哈', '18291459886', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('23', '14', TO_DATE('2017-04-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '安徽合肥', '概要呐', '18296169762', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('24', '26', TO_DATE('2017-04-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '湖南长沙', '概要哈哈', '18291459896', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('26', '9', TO_DATE('2017-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '浙江杭州', '概要哈哈', '18291459806', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('27', '15', TO_DATE('2017-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要呐', '18296169782', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('28', '8', TO_DATE('2017-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏南京', '概要哈哈', '18291459816', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('29', '12', TO_DATE('2017-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '湖南长沙', '概要呐', '18296169792', '啊啊啊啊');
INSERT INTO `CTC_RECORD` VALUES ('30', '11', TO_DATE('2017-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '上海上海', '概要哈哈', '18291459826', '哦哦哦哦');
INSERT INTO `CTC_RECORD` VALUES ('40', '35', TO_DATE('2017-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '请问企鹅 ', '123', '1231', '未指派');

-- ----------------------------
-- Table structure for EMP
-- ----------------------------
DROP TABLE `EMP`;
CREATE TABLE `EMP` (
`EMPNO` NUMBER(4) NOT NULL ,
`ENAME` VARCHAR2(10 BYTE) NULL ,
`JOB` VARCHAR2(9 BYTE) NULL ,
`MGR` NUMBER(4) NULL ,
`HIREDATE` DATE NULL ,
`SAL` NUMBER(7,2) NULL ,
`COMM` NUMBER(7,2) NULL ,
`DEPTNO` NUMBER(2) NULL 
)


;

-- ----------------------------
-- Records of EMP
-- ----------------------------
INSERT INTO `EMP` VALUES ('7369', 'SMITH', '5', '7902', TO_DATE('1980-12-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '800', null, '20');
INSERT INTO `EMP` VALUES ('7499', 'ALLEN', 'SALESMAN', '7698', TO_DATE('1981-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1600', '300', '30');
INSERT INTO `EMP` VALUES ('7521', 'WARD', 'SALESMAN', '7698', TO_DATE('1981-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1250', '500', '30');
INSERT INTO `EMP` VALUES ('7566', 'JONES', 'MANAGER', '7839', TO_DATE('1981-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2975', null, '20');
INSERT INTO `EMP` VALUES ('7654', 'MARTIN', 'SALESMAN', '7698', TO_DATE('1981-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1250', '1400', '30');
INSERT INTO `EMP` VALUES ('7698', 'BLAKE', 'MANAGER', '7839', TO_DATE('1981-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2850', null, '30');
INSERT INTO `EMP` VALUES ('7782', 'CLARK', 'MANAGER', '7839', TO_DATE('1981-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2450', null, '10');
INSERT INTO `EMP` VALUES ('7788', 'SCOTT', 'ANALYST', '7566', TO_DATE('1987-04-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '3000', null, '20');
INSERT INTO `EMP` VALUES ('7839', 'KING', 'PRESIDENT', null, TO_DATE('1981-11-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '5000', null, '10');
INSERT INTO `EMP` VALUES ('7844', 'TURNER', 'SALESMAN', '7698', TO_DATE('1981-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1500', '0', '30');
INSERT INTO `EMP` VALUES ('7876', 'ADAMS', 'CLERK', '7788', TO_DATE('1987-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1100', null, '20');
INSERT INTO `EMP` VALUES ('7900', 'JAMES', 'CLERK', '7698', TO_DATE('1981-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '950', null, '30');
INSERT INTO `EMP` VALUES ('7902', 'FORD', 'ANALYST', '7566', TO_DATE('1981-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '3000', null, '20');
INSERT INTO `EMP` VALUES ('7934', 'MILLER', 'CLERK', '7782', TO_DATE('1982-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1300', null, '10');

-- ----------------------------
-- Table structure for LINKMAN
-- ----------------------------
DROP TABLE `LINKMAN`;
CREATE TABLE `LINKMAN` (
`LKM_NO` NUMBER(10) NOT NULL ,
`CST_NO` NUMBER(10) NOT NULL ,
`LKM_NAME` VARCHAR2(20 BYTE) NOT NULL ,
`LKM_GENDER` VARCHAR2(20 BYTE) NULL ,
`LKM_TASK` VARCHAR2(100 BYTE) NULL ,
`LKM_TEL` VARCHAR2(20 BYTE) NOT NULL ,
`LKM_PTEL` VARCHAR2(20 BYTE) NULL ,
`LKM_REMARK` VARCHAR2(500 BYTE) NULL 
)


;

-- ----------------------------
-- Records of LINKMAN
-- ----------------------------
INSERT INTO `LINKMAN` VALUES ('41', '34', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('43', '35', '请问', '男', 'qwe', '请问', '成长性成长性创造性', null);
INSERT INTO `LINKMAN` VALUES ('55', '1', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('53', '1', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('56', '1', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('45', '8', 'awed', '男', 'sada', 'asdasdas', 'asd', null);
INSERT INTO `LINKMAN` VALUES ('46', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('47', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('48', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('49', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('50', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('51', '8', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('54', '1', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('57', '1', '王刚', '男', null, '请问', null, null);
INSERT INTO `LINKMAN` VALUES ('2', '3', '李安福', '男', '挽留3位客户', '18447861425', '8071569', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('3', '2', '赵斌白', '男', '挽留5位客户', '18556943269', '8151234', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('4', '4', '邓波涛', '男', '挽留4位客户', '18757861425', '8051529', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('5', '9', '谭斌维', '男', '挽留5位客户', '18856943269', '8456234', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('6', '5', '胡波光', '男', '挽留6位客户', '18947861425', '95631569', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('7', '10', '林博弈', '男', '挽留1位客户', '18656943269', '8651264', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('8', '13', '祝博远', '男', '挽留2位客户', '18757861425', '8751529', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('9', '6', '梁才杰', '男', '挽留5位客户', '18755943269', '8651254', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('10', '12', '胡霸天', '男', '挽留3位客户', '18747841425', '7051559', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('11', '8', '寥承安', '男', '挽留5位客户', '18756963269', '9051834', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('12', '11', '徐晨泽', '男', '挽留4位客户', '18747861325', '8651545', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('13', '7', '谭德明', '男', '挽留6位客户', '18756953269', '8051568', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('14', '18', '刘飞白', '男', '挽留5位客户', '18347861425', '8051708', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('15', '22', '林飞羽', '男', '挽留4位客户', '18256943269', '8051706', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('16', '21', '张三', '男', '挽留3位客户', '18847861425', '8051789', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('17', '22', '李四', '男', '挽留3位客户', '18766941269', '8031234', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('18', '19', '高阳', '男', '挽留2位客户', '18347561425', '8041569', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('19', '20', '谭泽华', '男', '挽留1位客户', '15756943269', '8651254', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('20', '27', '高义', '男', '挽留6位客户', '16747861425', '8011469', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('21', '26', '谭总', '男', '挽留4位客户', '18556143269', '8651544', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('22', '18', '高明', '男', '挽留1位客户', '18745661425', '8041549', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('23', '25', '谭大华', '男', '挽留3位客户', '15756943269', '8081734', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('24', '14', '胡部', '男', '挽留6位客户', '13747561425', '8041559', '我猜我猜我猜');
INSERT INTO `LINKMAN` VALUES ('25', '21', '光华', '男', '挽留5位客户', '17756543269', '8151254', '你猜你猜你猜');
INSERT INTO `LINKMAN` VALUES ('42', '35', '王刚', '男', 'qwe', 'qweqweqw', 'qweqwe', null);
INSERT INTO `LINKMAN` VALUES ('44', '36', '王刚', '男', null, 'as', '12312312313', null);

-- ----------------------------
-- Table structure for ORDERS
-- ----------------------------
DROP TABLE `ORDERS`;
CREATE TABLE `ORDERS` (
`ODR_NO` NUMBER(10) NOT NULL ,
`CST_NO` NUMBER(10) NOT NULL ,
`ODR_DATE` DATE NOT NULL ,
`OD_ADDR` VARCHAR2(100 BYTE) NOT NULL ,
`OD_SUMMARY` VARCHAR2(100 BYTE) NULL ,
`OD_STATUS` VARCHAR2(10 BYTE) NULL 
)


;

-- ----------------------------
-- Records of ORDERS
-- ----------------------------
INSERT INTO `ORDERS` VALUES ('1', '2', TO_DATE('2016-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏常州', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('2', '3', TO_DATE('2016-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '中国台湾', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('3', '1', TO_DATE('2016-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西南昌', '概要', '未回款');
INSERT INTO `ORDERS` VALUES ('4', '4', TO_DATE('2016-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '中国上海', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('5', '5', TO_DATE('2016-11-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏南京', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('6', '7', TO_DATE('2016-11-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '辽宁沈阳', '概要啊', '未回款');
INSERT INTO `ORDERS` VALUES ('7', '8', TO_DATE('2016-11-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '广东深圳', '概要', '未回款');
INSERT INTO `ORDERS` VALUES ('8', '6', TO_DATE('2016-11-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '中国台湾', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('9', '9', TO_DATE('2016-11-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '浙江金华', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('10', '10', TO_DATE('2016-11-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '四川成都', '概要啊', '未回款');
INSERT INTO `ORDERS` VALUES ('11', '12', TO_DATE('2016-12-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '中国长城', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('12', '13', TO_DATE('2016-12-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西湾里', '概要啊', '未回款');
INSERT INTO `ORDERS` VALUES ('13', '21', TO_DATE('2016-12-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏苏州', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('14', '30', TO_DATE('2016-12-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '中国台湾', '概要啊', '未回款');
INSERT INTO `ORDERS` VALUES ('15', '22', TO_DATE('2016-12-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏常州', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('16', '11', TO_DATE('2017-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西上饶', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('17', '14', TO_DATE('2017-02-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '华山', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('18', '16', TO_DATE('2017-02-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '上海老街', '概要啊', '未回款');
INSERT INTO `ORDERS` VALUES ('19', '15', TO_DATE('2017-02-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '吉林长春', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('20', '20', TO_DATE('2017-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '峨眉山', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('21', '23', TO_DATE('2017-02-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '三清山', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('22', '24', TO_DATE('2017-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '井冈山', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('23', '26', TO_DATE('2017-03-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '泰山', '概要', '未回款');
INSERT INTO `ORDERS` VALUES ('24', '28', TO_DATE('2017-04-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '八达岭', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('25', '19', TO_DATE('2017-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江苏常州', '概要', '未回款');
INSERT INTO `ORDERS` VALUES ('26', '17', TO_DATE('2017-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '大连海事', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('27', '16', TO_DATE('2017-02-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '辽宁大连', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('28', '15', TO_DATE('2017-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '福建厦门', '概要啊', '已回款');
INSERT INTO `ORDERS` VALUES ('29', '14', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '江西吉安', '概要', '回款中');
INSERT INTO `ORDERS` VALUES ('30', '27', TO_DATE('2017-04-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '上海浦东', '概要啊', '已回款');

-- ----------------------------
-- Table structure for PERSON
-- ----------------------------
DROP TABLE `PERSON`;
CREATE TABLE `PERSON` (
`SNO` NUMBER(3) NULL ,
`SNAME` VARCHAR2(10 BYTE) NULL ,
`GENDER` VARCHAR2(10 BYTE) NULL ,
`SCHOOL` VARCHAR2(20 BYTE) NULL ,
`MAJOR` VARCHAR2(10 BYTE) NULL ,
`EDUCATION` VARCHAR2(10 BYTE) NULL 
)


;

-- ----------------------------
-- Records of PERSON
-- ----------------------------
INSERT INTO `PERSON` VALUES ('26', '廖鑫明', '男', '华东交通大学', '软件工程', '本科');

-- ----------------------------
-- Table structure for PRD_INFORMATION
-- ----------------------------
DROP TABLE `PRD_INFORMATION`;
CREATE TABLE `PRD_INFORMATION` (
`PRD_NO` NUMBER(10) NOT NULL ,
`PRD_NAME` VARCHAR2(20 BYTE) NOT NULL ,
`PRD_MODEL` VARCHAR2(20 BYTE) NOT NULL ,
`PRD_PRICE` VARCHAR2(20 BYTE) NOT NULL ,
`PRD_UNIT` VARCHAR2(20 BYTE) NOT NULL ,
`PRD_REMARK` VARCHAR2(500 BYTE) NULL 
)


;

-- ----------------------------
-- Records of PRD_INFORMATION
-- ----------------------------
INSERT INTO `PRD_INFORMATION` VALUES ('1', 'Iphone', '6', '4700', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('2', 'huawei', 'mate9', '3400', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('3', 'Iphone', '6s', '5200', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('4', 'huawei', 'nova', '2900', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('5', 'Iphone', '6 plus', '5400', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('6', 'lenovo', 'E1', '3400', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('7', 'Iphone', '7', '5700', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('8', 'lenovo', 'E2', '3800', '元', '不可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('9', 'Iphone', '7 plus', '5800', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('10', 'lenovo', 'E3', '3300', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('11', 'lenovo', 'E4', '3500', '元', '放冰箱里吧！');
INSERT INTO `PRD_INFORMATION` VALUES ('12', 'lenovo', 'E5', '3600', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('13', 'lenovo', 'E6', '3700', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('14', 'lenovo', 'E7', '3700', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('15', 'lenovo', 'E8', '3800', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('16', 'asus', 'a1', '3700', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('17', 'asus', 'a2', '3500', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('18', 'asus', 'a3', '3400', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('19', 'asus', 'a4', '3800', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('20', 'asus', 'a5', '4000', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('21', 'asus', 'a6', '4100', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('22', 'asus', 'a7', '4200', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('23', 'asus', 'a8', '3600', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('24', 'asus', 'a9', '4000', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('25', 'dell', 'd1', '3700', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('26', 'dell', 'd2', '3700', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('27', 'dell', 'd3', '3600', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('28', 'dell', 'd4', '3800', '元', '可以放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('29', 'dell', 'd5', '4000', '元', '别放冰箱里！');
INSERT INTO `PRD_INFORMATION` VALUES ('30', 'dell', 'd6', '4100', '元', '可以放冰箱里！');

-- ----------------------------
-- Table structure for PRD_STORAGE
-- ----------------------------
DROP TABLE `PRD_STORAGE`;
CREATE TABLE `PRD_STORAGE` (
`STRG_PRD_NO` NUMBER(10) NOT NULL ,
`PRD_NO` NUMBER(10) NOT NULL ,
`STRG_COUNT` NUMBER(20) NOT NULL ,
`STRG_STOREHOUSE` VARCHAR2(50 BYTE) NOT NULL ,
`STRG_REMARK` VARCHAR2(500 BYTE) NULL 
)


;

-- ----------------------------
-- Records of PRD_STORAGE
-- ----------------------------
INSERT INTO `PRD_STORAGE` VALUES ('1', '1', '50', '1号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('2', '2', '10', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('3', '3', '300', '3号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('4', '4', '200', '1号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('5', '5', '18', '2号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('6', '6', '58', '3号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('7', '7', '70', '1号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('8', '8', '98', '2号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('9', '9', '9', '3号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('10', '10', '6', '1号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('11', '11', '400', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('12', '12', '123', '3号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('13', '13', '74', '1号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('14', '14', '34', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('15', '15', '55', '3号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('16', '16', '102', '1号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('17', '17', '14', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('18', '18', '60', '3号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('19', '19', '88', '1号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('20', '20', '90', '2号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('21', '21', '60', '3号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('22', '22', '68', '1号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('23', '23', '89', '2号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('24', '24', '77', '3号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('25', '25', '5', '1号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('26', '26', '100', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('27', '27', '100', '3号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('28', '28', '59', '1号仓库', '轻拿轻放');
INSERT INTO `PRD_STORAGE` VALUES ('29', '29', '56', '2号仓库', '随便拿');
INSERT INTO `PRD_STORAGE` VALUES ('30', '30', '10', '3号仓库', '随便拿');

-- ----------------------------
-- Table structure for SAL_OPPORTUNITY
-- ----------------------------
DROP TABLE `SAL_OPPORTUNITY`;
CREATE TABLE `SAL_OPPORTUNITY` (
`OPT_NO` NUMBER(10) NOT NULL ,
`OPT_SOURCE` VARCHAR2(50 BYTE) NULL ,
`OPT_CST_NO` NUMBER(10) NULL ,
`OPT_RATE` NUMBER(3) NOT NULL ,
`OPT_SUMMARY` VARCHAR2(100 BYTE) NOT NULL ,
`OPT_LKM_NAME` VARCHAR2(20 BYTE) NULL ,
`OPT_LKM_TEL` VARCHAR2(20 BYTE) NULL ,
`OPT_LKM_POSITION` VARCHAR2(20 BYTE) NULL ,
`OPT_DESC` VARCHAR2(500 BYTE) NOT NULL ,
`OPT_CREATE_NAME` VARCHAR2(20 BYTE) NOT NULL ,
`OPT_CREATE_DATE` DATE NOT NULL ,
`OPT_DUE_NAME` VARCHAR2(20 BYTE) NULL ,
`OPT_DUE_DATE` DATE NULL ,
`OPT_STATUS` VARCHAR2(20 BYTE) NOT NULL 
)


;

-- ----------------------------
-- Records of SAL_OPPORTUNITY
-- ----------------------------
INSERT INTO `SAL_OPPORTUNITY` VALUES ('36', '犬瘟热', '14', '44', '误区二', '胡部', '13747561425', '销售人员', '温柔', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小草', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('37', '老顾客', '13', '45', '修车', '祝博远', '18757861425', '销售人员', '机会描述', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小草', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('38', '老顾客介绍', '2', '66', '需求来了', '赵斌白', '18947861425', '销售人员', '好机会', '江晨一', TO_DATE('2017-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小红', TO_DATE('2017-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('35', '阿萨德', '19', '333', '犬瘟热', '高阳', '18347561425', '犬瘟热', '误区二', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小草', TO_DATE('2017-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('32', '玩儿', '32', '63', '水电费', '胡部', '13747561425', '人', '玩儿', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小黑', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('33', '阿斯顿', '33', '90', '阿斯顿', '赵斌白', '18556943269', '经理', '二', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小黑', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('1', '老客户介绍', '1', '95', '概要啊', '小王', '18635627459', '销售人员', '很好的机会', '大徐', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小李', TO_DATE('2017-03-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('2', '网上获知', '2', '95', '概要啊', '小吴', '18635627450', '外交主管', '很好的机会', '大徐', TO_DATE('2017-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '校长', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('3', '市场调研', '3', '96', '概要啊', '小李', '18635627451', '外交人员', '很好的机会', '小范', TO_DATE('2017-03-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小余', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('4', '网上获知', '4', '95', '概要啊', '小周', '18635627452', '外交主管', '很好的机会', '思思', TO_DATE('2017-03-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '佳佳', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('5', '老客户介绍', '5', '90', '概要啊', '小王', '18635627453', '销售人员', '很好的机会', '大徐', TO_DATE('2017-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('6', '网上获知', '6', '95', '概要啊', '小周', '18635627454', '外交主管', '很好的机会', '西西', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '哈哈', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('7', '市场调研', '7', '90', '概要啊', '小李', '18635627455', '外交人员', '很好的机会', '小范', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小余', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('8', '网上获知', '8', '95', '概要啊', '小李', '18635627456', '外交主管', '很好的机会', '大徐', TO_DATE('2017-03-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '啦啦', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('9', '老客户介绍', '9', '90', '概要啊', '小王', '18635627457', '销售人员', '很好的机会', '小七', TO_DATE('2017-03-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-03-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('10', '网上获知', '10', '95', '概要啊', '小吴', '18635627458', '外交主管', '很好的机会', '西西', TO_DATE('2017-03-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '周周', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('11', '市场调研', '11', '90', '概要啊', '小李', '18635627461', '外交人员', '很好的机会', '小范', TO_DATE('2017-03-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小周', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('12', '网上获知', '22', '95', '概要啊', '林飞羽', '18635627462', '销售人员', '很好的机会', '大徐', TO_DATE('2017-03-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小草', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('13', '老客户介绍', '13', '90', '概要啊', '小王', '18635627463', '销售人员', '很好的机会', '大徐', TO_DATE('2017-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小余', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('14', '网上获知', '14', '95', '概要啊', '小周', '18635627464', '外交主管', '很好的机会', '小七', TO_DATE('2017-03-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '33', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('15', '市场调研', '15', '90', '概要啊', '小李', '18635627465', '外交人员', '很好的机会', '小范', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('16', '网上获知', '16', '95', '概要啊', '小周', '18635627466', '外交主管', '很好的机会', '大徐', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '11', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('17', '老客户介绍', '17', '90', '概要啊', '小王', '18635627467', '销售人员', '很好的机会', '小七', TO_DATE('2017-03-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小余', TO_DATE('2017-03-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('18', '网上获知', '18', '95', '概要啊', '小周', '18635627468', '外交主管', '很好的机会', '大徐', TO_DATE('2017-03-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '密码', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('19', '市场调研', '19', '90', '概要啊', '小李', '18635627469', '外交人员', '很好的机会', '小范', TO_DATE('2017-03-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小李', TO_DATE('2017-03-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('20', '网上获知', '20', '95', '概要啊', '小余', '18635627460', '外交主管', '很好的机会', '思思', TO_DATE('2017-03-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '语言', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('21', '老客户介绍', '21', '90', '概要啊', '小王', '18635627159', '销售人员', '很好的机会', '西西', TO_DATE('2017-03-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小周', TO_DATE('2017-03-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('22', '网上获知', '22', '95', '概要啊', '小吴', '18635627250', '外交主管', '很好的机会', '大徐', TO_DATE('2017-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小鱼', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('23', '市场调研', '23', '90', '概要啊', '小李', '18635627351', '外交人员', '很好的机会', '小范', TO_DATE('2017-04-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-04-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('24', '网上获知', '24', '95', '概要啊', '小吴', '18635627452', '外交主管', '很好的机会', '思思', TO_DATE('2017-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小结', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('25', '老客户介绍', '25', '90', '概要啊', '小王', '18635627559', '销售人员', '很好的机会', '大徐', TO_DATE('2017-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('26', '网上获知', '26', '95', '概要啊', '小吴', '18635627650', '外交主管', '很好的机会', '小七', TO_DATE('2017-04-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '消除', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('27', '市场调研', '27', '90', '概要啊', '小李', '18635627751', '外交人员', '很好的机会', '小范', TO_DATE('2017-04-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小周', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('28', '网上获知', '28', '95', '概要啊', '小余', '18635627852', '外交主管', '很好的机会', '大徐', TO_DATE('2017-04-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小K', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('29', '老客户介绍', '29', '90', '概要啊', '小王', '18635627959', '销售人员', '很好的机会', '思思', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小吴', TO_DATE('2017-04-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('30', '网上获知', '30', '95', '概要啊', '小余', '18635627050', '外交主管', '很好的机会', '大徐', TO_DATE('2017-04-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小哈', TO_DATE('2017-03-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '删除');
INSERT INTO `SAL_OPPORTUNITY` VALUES ('34', '老客户', '13', '90', '发生', '祝博远', '18556943269', '销售人员', '阿里来了', '江晨一', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '小草', TO_DATE('2017-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '已指派');

-- ----------------------------
-- Table structure for USERS
-- ----------------------------
DROP TABLE `USERS`;
CREATE TABLE `USERS` (
`USERS_NO` NUMBER(10) NOT NULL ,
`USERS_NAME` VARCHAR2(20 BYTE) NOT NULL ,
`USERS_PASSWORD` VARCHAR2(20 BYTE) NOT NULL ,
`USERS_GENDER` VARCHAR2(20 BYTE) NULL ,
`USERS_TEL` VARCHAR2(20 BYTE) NULL ,
`USERS_ADDR` VARCHAR2(100 BYTE) NULL ,
`ROLES_NAME` VARCHAR2(20 BYTE) NULL ,
`USERS_REMARK` VARCHAR2(500 BYTE) NULL ,
`USERS_STATE` VARCHAR2(10 BYTE) NULL 
)


;

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO `USERS` VALUES ('31', '123456', '123456', '男', '123456', '123456', '客户经理', null, '正常');
INSERT INTO `USERS` VALUES ('33', 'ww', '123456', '男', null, null, '客户经理', null, '正常');
INSERT INTO `USERS` VALUES ('1', '江晨一', '123', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('2', '小黑', '2', '女', '18756324965', '大河', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('3', '王瑾喻', '123456789', '男', '18536421597', '北京天安门', '管理员', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('4', '小红', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '禁用');
INSERT INTO `USERS` VALUES ('5', '凤千羽', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('6', '小兰', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('7', '致远', '123456789', '男', '18536421597', '大山', '管理员', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('8', '小草', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '禁用');
INSERT INTO `USERS` VALUES ('9', '盛瑞', '123456789', '男', '18536421597', '天上', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('10', '小妹', '987654321', '女', '18756324965', '华山', '管理员', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('11', '林皓宇', '123456789', '男', '18536421597', '三清山', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('12', '小白', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('13', '白皓煊', '123456789', '男', '18536421597', '北京天安门', '高管', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('14', '小黄', '987654321', '女', '18756324965', '峨眉山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('15', '擎苍', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('16', '小真', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('17', '夜华', '123456789', '男', '18536421597', '泰山', '高管', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('18', '小路', '987654321', '女', '18756324965', '胖大海', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('19', '大林', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('20', '小梅', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('21', '小叶', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('22', '小只', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('23', '大雄', '123456789', '男', '18536421597', '嵩山', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('24', '阿欣', '987654321', '女', '18756324965', '华山', '高管', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('25', '阿拉斯加', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('26', '阿让', '987654321', '女', '18756324965', '衡山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('27', '哈士奇', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('28', '楠楠', '987654321', '女', '18756324965', '井冈山', '高管', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('29', '莫森', '123456789', '男', '18536421597', '北京天安门', '销售经理', '呵呵呵呵', '正常');
INSERT INTO `USERS` VALUES ('30', '大山', '987654321', '女', '18756324965', '华山', '客户经理', '嘎嘎嘎嘎', '正常');
INSERT INTO `USERS` VALUES ('32', '456789', '123456', '男', '456、789+', '789456', '销售经理', '456789', '正常');

-- ----------------------------
-- Sequence structure for CST_INFORMATION_SEQ
-- ----------------------------
DROP SEQUENCE `CST_INFORMATION_SEQ`;
CREATE SEQUENCE `CST_INFORMATION_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for CST_LOST_SEQ
-- ----------------------------
DROP SEQUENCE `CST_LOST_SEQ`;
CREATE SEQUENCE `CST_LOST_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 20
 CACHE 20;

-- ----------------------------
-- Sequence structure for CST_SERVICE_SEQ
-- ----------------------------
DROP SEQUENCE `CST_SERVICE_SEQ`;
CREATE SEQUENCE `CST_SERVICE_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for CTC_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE `CTC_RECORD_SEQ`;
CREATE SEQUENCE `CTC_RECORD_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 69
 CACHE 20;

-- ----------------------------
-- Sequence structure for LINKMAN_SEQ
-- ----------------------------
DROP SEQUENCE `LINKMAN_SEQ`;
CREATE SEQUENCE `LINKMAN_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 60
 CACHE 20;

-- ----------------------------
-- Sequence structure for ORDERS_SEQ
-- ----------------------------
DROP SEQUENCE `ORDERS_SEQ`;
CREATE SEQUENCE `ORDERS_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for PRD_INFORMATION_SEQ
-- ----------------------------
DROP SEQUENCE `PRD_INFORMATION_SEQ`;
CREATE SEQUENCE `PRD_INFORMATION_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for PRD_STORAGE_SEQ
-- ----------------------------
DROP SEQUENCE `PRD_STORAGE_SEQ`;
CREATE SEQUENCE `PRD_STORAGE_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for SAL_OPPORTUNITY_SEQ
-- ----------------------------
DROP SEQUENCE `SAL_OPPORTUNITY_SEQ`;
CREATE SEQUENCE `SAL_OPPORTUNITY_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Sequence structure for USERS_SEQ
-- ----------------------------
DROP SEQUENCE `USERS_SEQ`;
CREATE SEQUENCE `USERS_SEQ`
 INCREMENT BY 1
 MINVALUE 0
 MAXVALUE 9999999999999999999999999999
 START WITH 40
 CACHE 20;

-- ----------------------------
-- Indexes structure for table CST_INFORMATION
-- ----------------------------

-- ----------------------------
-- Checks structure for table CST_INFORMATION
-- ----------------------------
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NAME` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NAME` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_satisfy>0 and Cst_satisfy<6);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_credit>0 and Cst_credit<6);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_level in ('小客户','普通客户','大客户'));
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_status in ('正常','流失'));
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (`CST_NAME` IS NOT NULL);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_satisfy>0 and Cst_satisfy<6);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_credit>0 and Cst_credit<6);
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_level in ('小客户','普通客户','大客户'));
ALTER TABLE `CST_INFORMATION` ADD CHECK (Cst_status in ('正常','流失'));

-- ----------------------------
-- Primary Key structure for table CST_INFORMATION
-- ----------------------------
ALTER TABLE `CST_INFORMATION` ADD PRIMARY KEY (`CST_NO`);

-- ----------------------------
-- Indexes structure for table CST_LOST
-- ----------------------------

-- ----------------------------
-- Checks structure for table CST_LOST
-- ----------------------------
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_NO` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_CST_MANAGER` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_LASTDATE` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_STATUS` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_NO` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_CST_MANAGER` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_LASTDATE` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (`LOST_STATUS` IS NOT NULL);
ALTER TABLE `CST_LOST` ADD CHECK (Lost_status in('预警','暂缓流失','已流失'));

-- ----------------------------
-- Primary Key structure for table CST_LOST
-- ----------------------------
ALTER TABLE `CST_LOST` ADD PRIMARY KEY (`LOST_NO`);

-- ----------------------------
-- Indexes structure for table CST_SERVICE
-- ----------------------------

-- ----------------------------
-- Checks structure for table CST_SERVICE
-- ----------------------------
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_TYPE` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_SUMMARY` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_STATUS` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_DETAILS` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_CREATE_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_CREATE_DATE` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_TYPE` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_SUMMARY` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_STATUS` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_DETAILS` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (Svc_type in('咨询','投诉','建议'));
ALTER TABLE `CST_SERVICE` ADD CHECK (Svc_status in('待分配','已分配','已处理','已反馈'));
ALTER TABLE `CST_SERVICE` ADD CHECK (Svc_deal_satisfy>0 and Svc_deal_satisfy<6);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_CREATE_NO` IS NOT NULL);
ALTER TABLE `CST_SERVICE` ADD CHECK (`SVC_CREATE_DATE` IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CST_SERVICE
-- ----------------------------
ALTER TABLE `CST_SERVICE` ADD PRIMARY KEY (`SVC_NO`);

-- ----------------------------
-- Indexes structure for table CTC_RECORD
-- ----------------------------

-- ----------------------------
-- Checks structure for table CTC_RECORD
-- ----------------------------
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_NO` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_TIME` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_ADDR` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_SUMMARY` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_TEL` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_NO` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_TIME` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_ADDR` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_SUMMARY` IS NOT NULL);
ALTER TABLE `CTC_RECORD` ADD CHECK (`CRC_TEL` IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CTC_RECORD
-- ----------------------------
ALTER TABLE `CTC_RECORD` ADD PRIMARY KEY (`CRC_NO`);

-- ----------------------------
-- Indexes structure for table EMP
-- ----------------------------

-- ----------------------------
-- Checks structure for table EMP
-- ----------------------------
ALTER TABLE `EMP` ADD CHECK (`EMPNO` IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table EMP
-- ----------------------------
ALTER TABLE `EMP` ADD PRIMARY KEY (`EMPNO`);

-- ----------------------------
-- Indexes structure for table LINKMAN
-- ----------------------------

-- ----------------------------
-- Checks structure for table LINKMAN
-- ----------------------------
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_NO` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_NAME` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_TEL` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_NO` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_NAME` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (`LKM_TEL` IS NOT NULL);
ALTER TABLE `LINKMAN` ADD CHECK (Lkm_gender in ('男','女'));

-- ----------------------------
-- Primary Key structure for table LINKMAN
-- ----------------------------
ALTER TABLE `LINKMAN` ADD PRIMARY KEY (`LKM_NO`);

-- ----------------------------
-- Indexes structure for table ORDERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table ORDERS
-- ----------------------------
ALTER TABLE `ORDERS` ADD CHECK (`ODR_NO` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`ODR_DATE` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`OD_ADDR` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`ODR_NO` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`CST_NO` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`ODR_DATE` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (`OD_ADDR` IS NOT NULL);
ALTER TABLE `ORDERS` ADD CHECK (Od_status in ('未回款','回款中','已回款'));

-- ----------------------------
-- Primary Key structure for table ORDERS
-- ----------------------------
ALTER TABLE `ORDERS` ADD PRIMARY KEY (`ODR_NO`);

-- ----------------------------
-- Indexes structure for table PRD_INFORMATION
-- ----------------------------

-- ----------------------------
-- Checks structure for table PRD_INFORMATION
-- ----------------------------
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NAME` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_MODEL` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_PRICE` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_UNIT` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NAME` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_MODEL` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_PRICE` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_UNIT` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_NAME` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_MODEL` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_PRICE` IS NOT NULL);
ALTER TABLE `PRD_INFORMATION` ADD CHECK (`PRD_UNIT` IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table PRD_INFORMATION
-- ----------------------------
ALTER TABLE `PRD_INFORMATION` ADD PRIMARY KEY (`PRD_NO`);

-- ----------------------------
-- Indexes structure for table PRD_STORAGE
-- ----------------------------

-- ----------------------------
-- Uniques structure for table PRD_STORAGE
-- ----------------------------
ALTER TABLE `PRD_STORAGE` ADD UNIQUE (`PRD_NO`);

-- ----------------------------
-- Checks structure for table PRD_STORAGE
-- ----------------------------
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_COUNT` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_STOREHOUSE` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`PRD_NO` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_COUNT` IS NOT NULL);
ALTER TABLE `PRD_STORAGE` ADD CHECK (`STRG_STOREHOUSE` IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table PRD_STORAGE
-- ----------------------------
ALTER TABLE `PRD_STORAGE` ADD PRIMARY KEY (`STRG_PRD_NO`);

-- ----------------------------
-- Indexes structure for table SAL_OPPORTUNITY
-- ----------------------------

-- ----------------------------
-- Checks structure for table SAL_OPPORTUNITY
-- ----------------------------
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_NO` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_RATE` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_SUMMARY` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_DESC` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_CREATE_NAME` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_CREATE_DATE` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_STATUS` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_NO` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_RATE` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_SUMMARY` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_DESC` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_CREATE_NAME` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_CREATE_DATE` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (`OPT_STATUS` IS NOT NULL);
ALTER TABLE `SAL_OPPORTUNITY` ADD CHECK (Opt_status in ('未指派','已指派','处理成功','处理失败','删除'));

-- ----------------------------
-- Primary Key structure for table SAL_OPPORTUNITY
-- ----------------------------
ALTER TABLE `SAL_OPPORTUNITY` ADD PRIMARY KEY (`OPT_NO`);

-- ----------------------------
-- Indexes structure for table USERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table USERS
-- ----------------------------
ALTER TABLE `USERS` ADD CHECK (`USERS_NO` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (`USERS_NAME` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (`USERS_PASSWORD` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (`USERS_NO` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (`USERS_NAME` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (`USERS_PASSWORD` IS NOT NULL);
ALTER TABLE `USERS` ADD CHECK (Users_gender in ('男','女'));

-- ----------------------------
-- Primary Key structure for table USERS
-- ----------------------------
ALTER TABLE `USERS` ADD PRIMARY KEY (`USERS_NO`);

-- ----------------------------
-- Foreign Key structure for table `CST_LOST`
-- ----------------------------
ALTER TABLE `CST_LOST` ADD FOREIGN KEY (`CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);

-- ----------------------------
-- Foreign Key structure for table `CST_SERVICE`
-- ----------------------------
ALTER TABLE `CST_SERVICE` ADD FOREIGN KEY (`CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);
ALTER TABLE `CST_SERVICE` ADD FOREIGN KEY (`SVC_CREATE_NO`) REFERENCES `USERS` (`USERS_NO`);
ALTER TABLE `CST_SERVICE` ADD FOREIGN KEY (`SVC_DUE_NO`) REFERENCES `USERS` (`USERS_NO`);
ALTER TABLE `CST_SERVICE` ADD FOREIGN KEY (`SVC_DEAL_NO`) REFERENCES `USERS` (`USERS_NO`);

-- ----------------------------
-- Foreign Key structure for table `CTC_RECORD`
-- ----------------------------
ALTER TABLE `CTC_RECORD` ADD FOREIGN KEY (`CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);

-- ----------------------------
-- Foreign Key structure for table `LINKMAN`
-- ----------------------------
ALTER TABLE `LINKMAN` ADD FOREIGN KEY (`CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);

-- ----------------------------
-- Foreign Key structure for table `ORDERS`
-- ----------------------------
ALTER TABLE `ORDERS` ADD FOREIGN KEY (`CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);

-- ----------------------------
-- Foreign Key structure for table `PRD_STORAGE`
-- ----------------------------
ALTER TABLE `PRD_STORAGE` ADD FOREIGN KEY (`PRD_NO`) REFERENCES `PRD_INFORMATION` (`PRD_NO`);

-- ----------------------------
-- Foreign Key structure for table `SAL_OPPORTUNITY`
-- ----------------------------
ALTER TABLE `SAL_OPPORTUNITY` ADD FOREIGN KEY (`OPT_CST_NO`) REFERENCES `CST_INFORMATION` (`CST_NO`);
