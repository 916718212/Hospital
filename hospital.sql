/*
 Navicat Premium Data Transfer

 Source Server         : wf
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : hospital

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 02/08/2022 18:20:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('饮食小知识', '科普知士', '1、常吃宵夜，会得胃癌，因为胃会得不到休息。\r\n\r\n2、每天摄取均衡的饮食，不应过量。\r\n\r\n3、早上醒来，先喝一杯水可以预防结石。\r\n\r\n4、睡前三小时不要吃东西，会胖。\r\n\r\n5、少喝奶茶，因为高热量、高油，而且没有营养价值可言。长期饮用易患高血压、糖尿病等疾病。', 'youth', '2021-01-30 15:59:59');
INSERT INTO `article` VALUES ('睡眠小知识', '科普知士', '1、睡眠不足会变笨，一天须八小时睡眠，有午睡习惯更好哦。最佳睡眠时间是在晚上10点至清晨6点。\r\n\r\n2、过少的睡眠会让你感觉比平时更饥饿，后果就是吃得更多、体重增加……\r\n\r\n3、一天有两段时间困意最浓，分别是下午3点到5点，凌晨3点到5点。\r\n\r\n4、一天有两段时间困意最少，分别是凌晨1点左右、下午1点左右。', 'youth', '2021-01-31 15:59:59');
INSERT INTO `article` VALUES ('生活小知识', '科普知士', '1、饮酒易导致肝硬化，引发肝癌。\r\n\r\n2、每天喝酒不要超过一杯，因为酒精会抑制制造抗体的B细胞，增加细菌感染的机会。\r\n\r\n3、服用胶囊应以冷水吞服， 睡前30分先服药，切忌立即躺下。\r\n\r\n4、掉发因素：熬夜、压力、烟酒、香鸡排、麻辣锅、油腻食物、调味过重的料理。', 'middleaged', '2021-02-01 15:59:59');
INSERT INTO `article` VALUES ('不要在黑屋子坐月子', '韩长明', '中国人坐月子，喜欢让妈妈和孩子一个月都待在屋里，而且包的严严实实。更有甚者有些人把窗户也遮起来，黑洞洞的不见天日，这种现象如今农村的许多地方仍然存在。其实这样很错误。一个月不见阳光，对母亲和孩子都会造成危害，最常见的就是缺钙现象，母亲易发生骨质疏松，孩子易发生佝偻病。而且小婴儿是否发生黄疽也看不见。我们病区经常收治的黄疸的孩子大都是在出月时，抱出黑房子才发现，大多病情比较重，治疗都有点晚了。另外，不通气的黑房子空气不流通，污浊，大人孩子很容易感冒。所以，一定要在明亮的房子里坐月子，每天开窗换气，阳光好的日子，只要没有风，完全可以在阳台上晒太阳\r中国人坐月子，喜欢让妈妈和孩子一个月都待在屋里，而且包的严严实实.更有甚者有些人把窗户也遮起来，黑洞洞的不见天日，这种现象如今农村的许多地方仍然存在.其实这样很错误.一个月不见阳光，对母亲和孩子都会造成危害，最常见的就是缺钙现象，母亲易发生骨质疏松，孩子易发生佝偻病.而且小婴儿是否发生黄疽也看不见.我们病区经常收治的黄疸的孩子大都是在出月时，抱出黑房子才发现，大多病情比较重，治疗都有点晚了.另外，不通气的黑房子空气不流通，污浊，大人孩子很容易感冒.所以，一定要在明亮的房子里坐月子，每天开窗换气，阳光好的日子，只要没有风，完全可以在阳台上晒太阳\r\r\n', 'childhood', '2021-04-22 10:30:50');
INSERT INTO `article` VALUES ('不要轻视新生儿黄疸', '韩长明', '50%——80%的新生儿在生后易发生黄疸，就是皮肤出现发黄现象。这其中有些是生理性的，有些是病理性的，万不可凭经验认为是生理性就不去医院检查，错过了诊疗时机，会耽误治疗，影响孩子发育甚至危及生命，追悔莫及。\n新生儿黄疸是一大类疾病的总称，许多原因会引起黄疸，比如母乳性黄疸，溶血性黄疸，新生儿肝炎，先天性胆道闭锁，先天性酶的缺乏等等。专业的新生儿科书中讲解新生儿黄疸就有9章之多。所以不要怕麻烦，发现孩子发黄，就去大医院让儿科大夫检查一下，这样最好。\n', 'childhood', '2021-04-22 10:31:50');
INSERT INTO `article` VALUES ('新鲜牛奶不如配方奶', '韩长明', '许多人认为新鲜牛奶比配方奶好，他们认为鲜牛奶比加工后的奶粉新鲜，所以就认为鲜牛奶最好。其实不然，这种理解是错误的。新鲜奶固然新鲜，可是它的成份只适合小牛，却不适合婴儿。牛奶中的蛋白质含量高，会增加婴儿肾脏负担，易产生暂时高酪氨酸血症和高苯丙氨酸血症，对孩子的发育有影响;牛奶中的钙磷比例比较低，影响孩子钙的吸收。另外，牛奶中的矿物质高，增加水的排泄，早产儿用牛奶喂养易发生晚期酸中毒。而配方乳模仿母乳的成份配制而成，就很少发生不好的现象。所以，如果母乳不够喝，最好给他添加配方奶，当然一定要选择信得过的大厂家的配方奶>\n', 'childhood', '2021-04-22 10:32:50');
INSERT INTO `article` VALUES ('不要把婴儿的稀便当腹泻', '韩长明', '吃母乳的月月娃，大便经常是金黄色的稀糊状，每天排便次数多少不等，大多1到4次，也有7到8次甚至更多一点，只要孩子精神好，吃得好，体重长，大便和平时比较没有太大的区别，就不可把这种稀便当成腹泻处理。这种稀便是正常的现象，因为母乳是完全符合孩子的生长需要而分泌的，所以特别容易消化和吸收，所以大便就是均匀的稀糊状。有些家长以为吃母乳导致拉稀，硬要添加一些奶粉，大便次数倒是减少了，可是却容易消化不良，甚至发生便秘。人乳人乳，就是给人喝的乳汁，所以是最好的婴儿食品，所以我们主张4—6月的小婴儿最好纯母乳喂养，不需要添加任何辅食。如果实在不够就添点配方奶。', 'childhood', '2021-04-22 10:33:50');
INSERT INTO `article` VALUES ('营养均衡，拒绝挑食', '朵朵女性网', '多数孩子都人偏食，挑食的坏习惯，而这种坏习惯会引起孩子的营养失衡，不利于健康成长。所以日常做家长的一定要注意引导孩子注意营养均衡，鼓励孩子饮食要多样化，注意荤素搭配。夏季还是各种水果上市的季节，要特别注意避免让孩子食用没有彻底洗干净的蔬菜水果，避免让孩子过多食用生冷的\'蔬菜及瓜果。\n', 'juvenile', '2021-04-22 10:34:50');
INSERT INTO `article` VALUES ('多喝白开水，少喝饮料', '朵朵女性网', '从营养学的角度上说，夏季白开水是最好的饮料。白开水具有调节体温、促进人体新陈代谢，止渴解渴的功效。而诸如汽水，果汁等饮料中都含有过多的糖份、电解质。这些成份不仅会对孩子的牙齿发育造成威胁，同时也会引起肥胖，影响到孩子的食欲及消化功效，对孩子的身心健康都会造成很大的威胁的。\n', 'juvenile', '2021-04-22 10:41:50');
INSERT INTO `article` VALUES ('少年人际交往问题', '和顺县妇联', '青少年时期是个体自尊发展的重要阶段，此期的青少年虽然生理上迅速发展，自我意识不断增强，但他们心理发展的速度远低于生理发展速度，造成了他们半成熟半幼稚、半独立半依赖的心理特征，人际关系困扰在此阶段逐渐成为青少年面临的重要问题之一。由于自我意识的增强，他们迫切需要独立表达自己的想法，对事物的看法个人观点很强，但局限于自身经验的不足、思想的不成熟，又造成了这种观点有很大的主观性和片面性。青少年此期常见的人际交往困难原因可能是：自卑心理、自傲心理、自私心理、恐惧心理、封闭心理、嫉妒心理、逆反心理、干涉心理。对于青少年的人际交往问题，建议寻找心理医师从专业的角度予以支持帮助。', 'juvenile', '2021-04-22 11:41:50');
INSERT INTO `article` VALUES ('厌学', '和顺县妇联', '厌学是学生对学习的负面情绪表现，对学习失去兴趣，对学校学习失去兴趣，并产生厌倦情绪和冷漠态度，在生活中明显表现出来。如：孩子变得不爱上学，不愿见老师，甚至每到上学前，孩子就喊“肚子疼”、“头痛”等；有的孩子不愿做作业，一看书就犯困；即使在没有外界干扰的情况下，注意力也常常不能集中；有的孩子虽然也在看书，却“看不进去”；不愿大人过问学习上的事情，对父母的询问常保持沉默，或者表现烦躁，或者转移话题；上课时常打不起精神，课后却十分活跃，表现为“玩不够”。重度厌学的学生感觉无论如何再也无法投入学习，上学学习对其来说简直就是一种折磨，从内心厌恶上学及有关学习的一切事宜，甚至选择逃学、退学、离家出走等极端行为。', 'juvenile', '2021-04-22 11:42:50');
INSERT INTO `article` VALUES ('运动习惯', '新用户94529559', '每天早上都要锻炼身体，出早操做早操等，都是一种好的锻炼。千万不要偷懒躲在教室打扫卫生。\n课间十钟一定要注意大脑的休息身体的活动，可以出去上个厕所，不上厕所也可以出去活动活动，防止肚子上长肉肉，也可以让大脑和身体得到充分的休息，以便更好的投入到学习中。午间休息时，爬桌上小睡一会儿，睡醒后一定要做眼保健操，让眼睛也得到放松，也可以预防近视。\n吃完晚饭一个小时后，多出去走走跑跑步再回来写作业，这样大脑处于兴奋状态，学习的效率更高。\n', 'youth', '2021-04-22 11:43:50');
INSERT INTO `article` VALUES ('饮食习惯', '新用户94529559', '青年的早餐要以玉米、糯米、小米、薏米等粗粮和鸡蛋为主。比如玉米粥、小米粥、薏米粥等外加一个鸡蛋。鸡蛋的摄入量人体每天最多2个就好。\n午餐必须吃饱\n午餐可以是米饭、面等，再加肉类和蔬菜类，可以摄入大量人体所需的微量元素和蛋白质类，来维持体能。\n下午餐简单好吃\n下午餐可以是一些小点心之类的，也可以是小甜点，因为青少年的身体代谢快，尤其是读书时期身体能量消耗快，所以到下午四点钟要补充一些能量。\n晚餐营养清淡\n晚餐可以少吃一些，但是必须有营养，米饭、面都可以，肉菜和青菜搭配食用更好，一方面防止身体堆积脂肪，一方面为身体补充所需的营养。\n晚上睡前喝—杯牛奶\n晚上睡前喝—杯温牛奶可以促进睡眠，提高睡眠质量。\n', 'youth', '2021-04-22 11:44:50');
INSERT INTO `article` VALUES ('常饮茶', '聚优网', '茶也是养生保健的佳品，其抗衰老作用让人惊叹，甚至超过维生素E的18倍。茶叶中含有丰富的茶色素能防治老年人常有的动脉硬化，有些茶还有高效的防癌功能。经过调查显示，每天饮茶的老年人寿命普遍都比较长。喝茶的确有益健康，比如枸杞参茶就有滋补抗衰老的作用，平日里可以在茶里加入枸杞和西洋参，充分利用了茶和西洋参味甘辛凉补阴虚的功效多进行有氧运动\n老年人不适宜进行剧烈的运动，可以坚持运动大步走等有氧运动，通过有氧运动可以促进氧气的吸收，增强老年人的心肺功能，还能预防骨质疏松。平时可以在去去菜市场的路上有意识地进行，长期坚持可以使手脚灵活，也显得有精神有活力。\n', 'elderly', '2021-04-22 11:45:50');
INSERT INTO `article` VALUES ('多喝粥', '聚优网', '粥补人、养胃，历来都被养生家视为养生保健的最佳食物。它由大米经过熬制而成，易为人体消化吸收。粥温和易进食，摄生养体，适合老年人，尤其是那些消化能力不好，进食比较少的老年人。常喝粥，能为老人补充能量，强身健体，延年益寿。\n', 'elderly', '2021-04-22 11:46:50');
INSERT INTO `article` VALUES ('睡午觉', '聚优网', '很多人可能不知道睡午觉是恢复体力和精力的最佳时期。老年人的体力本来就不是很足，如果整个白天都没有得到休息，体力就会消耗掉很多，那么闭目养神睡个午觉，下午的时间体力恢复了就不至于乏力、无精打采。\n以上就是小编为大家介绍的老年人中比较常见的养生方式，当然，养生保健的方法还有很多，老年人的养生保健秘诀就介绍到这里，要知道适合自己的方法才是好方法，希望老年朋友可以参考一下找到适合自己的秘诀，健康地安度晚年。\n', 'elderly', '2021-04-22 11:47:50');
INSERT INTO `article` VALUES ('中年免疫功能标准', '医联媒体', '到了中年阶段身体健康的标志就是免疫功能较强，免疫功能的强弱能较直接反应身体的健康情况。在免疫功能低下的时候很容易受到外来病毒，细菌的入侵而导致健康受损。\r\n\r\n如果可以注意运动量充足、饮食规律健康，免疫功能提高之后可以降低疾病的患病率，这也是防止疾病出现的有效措施。因此，到了中年阶段后依然免疫功能较强，说明身体还处于健康良好的状态。', 'middleaged', '2021-04-22 11:48:50');
INSERT INTO `article` VALUES ('中年身体指标', '医联媒体', '到了中年阶段如果定期检查身体，且各项指标正常，说明身体会比较健康，特别是通过血常规检查可以发现自己的血压、血糖、血脂等常见指标保持正常，说明身体健康有保障。\r\n\r\n很多中年人身体出现问题都和这些指标异常有关，而这些指标异常的过程中有可能会引发慢性疾病，如果这些指标正常，维持合理范围，说明身体没有受到慢性疾病的影响，这样的中年人身体会更加健康。', 'middleaged', '2021-04-22 11:49:50');
INSERT INTO `article` VALUES ('中年睡眠质量', '医联媒体', '到了中年阶段如果睡眠质量比较高，每天都有充足合理的睡眠时间，说明身体维持健康良好的状态。很多人到了中年阶段很容易受到更年期的影响而出现失眠多梦的表现，夜间睡觉时质量明显降低。\r\n\r\n如果睡眠质量较高、入睡速度快，每天都有充足合理的睡眠时间，一般内分泌维持稳定状态，器官功能也提高，这样的人健康才有保障。如果存在失眠，睡眠时间不充足的情况，需要及时调养身体，恢复正常的作息。', 'middleaged', '2021-04-22 11:50:50');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgSrc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('医案讲习录', '张锡纯', 'http://img3m1.ddimg.cn/84/5/25068171-1_w_2.jpg', 'https://kdocs.cn/l/cdzZuYzHuraC', 'pdf', '2021-03-30 15:59:59');
INSERT INTO `book` VALUES ('医学生物化学人卫第8版（精校修订版）', '人民卫生出版社', 'https://img.book118.com/sr1/M00/32/01/wKh2AmDIDRWIHxaoAAEMtIvaf3MAAtM9AF-P7sAAQzM834.png', 'https://kdocs.cn/l/cledSTwt3ZU3', 'doc', '2021-03-30 15:59:59');
INSERT INTO `book` VALUES ('医学教材--法医学(第三版)', '王保捷', 'https://img.alicdn.com/imgextra/i3/352797996/O1CN01U1nxjz28wDY0aSCxB_!!352797996.jpg', 'https://kdocs.cn/l/ceztfLOdG4Og', 'pdf', '2021-03-30 15:59:59');
INSERT INTO `book` VALUES ('医学教材中医学（第五版）', '郑守曾', 'https://www.kfzimg.com/sw/kfz-cos/kfzimg/11661772/f6658f95778dc186_b.jpg', 'https://kdocs.cn/l/ckkMxlYGcHMl', 'pdf', '2021-03-30 15:59:59');
INSERT INTO `book` VALUES ('康氏信息医学 中医学 西医学 顺势医学 三融合', '康继周', 'https://g-search1.alicdn.com/img/bao/uploaded/i4/i4/2911390453/O1CN01iKuIkJ1FDWATyQNIz_!!0-item_pic.jpg_580x580Q90.jpg_.webp', 'https://kdocs.cn/l/cmkYBNTS0zwp', 'pdf', '2021-03-30 15:59:59');

-- ----------------------------
-- Table structure for chinavirus
-- ----------------------------
DROP TABLE IF EXISTS `chinavirus`;
CREATE TABLE `chinavirus`  (
  `year` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `md` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chinavirus
-- ----------------------------
INSERT INTO `chinavirus` VALUES ('2019', '12.1', '《柳叶刀》披露首位确诊病例当日发病（无华南海鲜批发市场接触史）', '2021-01-30 15:59:59');
INSERT INTO `chinavirus` VALUES ('2019', '12.8', '武汉卫健委通报首例确诊病例当日发病', '2021-01-30 15:56:12');
INSERT INTO `chinavirus` VALUES ('2019', '12.15', '华南海鲜市场一送货员发烧', '2021-01-30 15:56:13');
INSERT INTO `chinavirus` VALUES ('2019', '12.24', '广州微远基因收到武汉不明原因肺炎病例样本', '2021-01-30 15:56:14');
INSERT INTO `chinavirus` VALUES ('2019', '12.26', '上海收集到武汉不明原因肺炎病例样本', '2021-01-30 15:56:15');
INSERT INTO `chinavirus` VALUES ('2019', '12.27', '湖北张继先上报可疑疫情', '2021-01-30 15:56:16');
INSERT INTO `chinavirus` VALUES ('2019', '12.29', '武汉开始流行病学调查', '2021-01-30 15:56:17');
INSERT INTO `chinavirus` VALUES ('2019', '12.30', '武汉卫健委发布《关于做好不明原因肺炎救治工作的紧急通知》', '2021-01-30 15:56:18');
INSERT INTO `chinavirus` VALUES ('2019', '12.31', '国家卫健委专家组抵达武汉正式介入调查', '2021-01-30 15:56:19');
INSERT INTO `chinavirus` VALUES ('2020', '1.1', '国家卫健委成立疫情应对处置领导小组', '2021-01-30 15:56:20');
INSERT INTO `chinavirus` VALUES ('2020', '1.2', '中科院武汉病毒所获得新冠病毒全基因组序列', '2021-01-30 15:56:21');
INSERT INTO `chinavirus` VALUES ('2020', '1.3', '国家卫健委发布《关于在重大突发传染病防控工作中加强生物样本资源及相关科研活动管理工作的通知》', '2021-01-30 15:56:22');
INSERT INTO `chinavirus` VALUES ('2020', '1.4', '国家疾控中心研制出高特异性的PCR检测试剂', '2021-01-30 15:56:23');
INSERT INTO `chinavirus` VALUES ('2020', '1.5', '武汉卫健委称排除非典和中东呼吸综合症', '2021-01-30 15:56:24');
INSERT INTO `chinavirus` VALUES ('2020', '1.6', '世卫首次就中国不明原因肺炎发布新闻', '2021-01-30 15:56:25');
INSERT INTO `chinavirus` VALUES ('2020', '1.7', '国家疾控中心成功分离首株新冠病毒毒株', '2021-01-30 15:56:26');
INSERT INTO `chinavirus` VALUES ('2020', '1.8', '国家卫健委专家组确认新冠病毒为疫情病原', '2021-01-30 15:56:27');
INSERT INTO `chinavirus` VALUES ('2020', '1.9', '武汉出现首例新冠肺炎死亡病例', '2021-01-30 15:56:28');
INSERT INTO `chinavirus` VALUES ('2020', '1.10', '春运开始', '2021-01-30 15:56:29');
INSERT INTO `chinavirus` VALUES ('2020', '1.11', '国家疾控中心向武汉提供PCR检测试剂', '2021-01-30 15:56:30');
INSERT INTO `chinavirus` VALUES ('2020', '1.12', '国家卫健委与世卫分享新冠病毒基因序列信息', '2021-01-30 15:56:31');
INSERT INTO `chinavirus` VALUES ('2020', '1.13', '武汉卫健委当日通报市内无新增确诊，泰国新增一例确诊', '2021-01-30 15:56:32');
INSERT INTO `chinavirus` VALUES ('2020', '1.14', '国家卫健委召开全国电视电话会议，部署疫情防控工作', '2021-01-30 15:56:33');
INSERT INTO `chinavirus` VALUES ('2020', '1.15', '国家卫健委发布第一版诊疗方案', '2021-01-30 15:56:34');
INSERT INTO `chinavirus` VALUES ('2020', '1.16', '武汉卫健委称截至1月15日24时，累计有41例。', '2021-01-30 15:56:35');
INSERT INTO `chinavirus` VALUES ('2020', '1.17', '袁国勇称警惕人传人和无症状感染的风险', '2021-01-30 15:56:36');
INSERT INTO `chinavirus` VALUES ('2020', '1.18', '国家卫健委发布第二版诊疗方案', '2021-01-30 15:56:37');
INSERT INTO `chinavirus` VALUES ('2020', '1.19', '国家卫健委宣布开始下放检测试剂盒', '2021-01-30 15:56:38');
INSERT INTO `chinavirus` VALUES ('2020', '1.20', '习近平专门就疫情防控工作作出批示', '2021-01-30 15:56:39');
INSERT INTO `chinavirus` VALUES ('2020', '1.21', '国内开展疫情应急科研攻关，钟南山任组长', '2021-01-30 15:56:40');
INSERT INTO `chinavirus` VALUES ('2020', '1.22', '国家卫健委建议不要到武汉，武汉市民不要出武汉', '2021-01-30 15:56:41');
INSERT INTO `chinavirus` VALUES ('2020', '1.23', '上午10点，武汉封城', '2021-01-30 15:56:42');
INSERT INTO `chinavirus` VALUES ('2020', '1.24', '湖北、重庆、山东等地决定启动重大突发公共卫生事件一级响应', '2021-01-30 15:56:43');
INSERT INTO `chinavirus` VALUES ('2020', '1.25', '习近平对疫情防控做出超强部署', '2021-01-30 15:56:44');
INSERT INTO `chinavirus` VALUES ('2020', '1.26', '中央应对疫情工作领导小组要求各地要成立应对疫情工作领导小组', '2021-01-30 15:56:45');
INSERT INTO `chinavirus` VALUES ('2020', '1.27', '李克强赴武汉考察指导疫情防控工作', '2021-01-30 15:56:46');
INSERT INTO `chinavirus` VALUES ('2020', '1.28', '习近平会见世卫总干事谭德塞', '2021-01-30 15:56:47');
INSERT INTO `chinavirus` VALUES ('2020', '1.29', '北京小汤山医院开始重建', '2021-01-30 15:56:48');
INSERT INTO `chinavirus` VALUES ('2020', '1.30', '国务院办公厅要求迅速组织本地区防疫物资相关企业复工复产', '2021-01-30 15:56:49');

-- ----------------------------
-- Table structure for contagion
-- ----------------------------
DROP TABLE IF EXISTS `contagion`;
CREATE TABLE `contagion`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgSrc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contagion
-- ----------------------------
INSERT INTO `contagion` VALUES ('鼠疫', '鼠疫（plague）是鼠疫杆菌借鼠蚤传播为主的烈性传染病系广泛流行于野生啮齿动物间的一种自然疫源性疾病。临床上表现为发热、严重毒血症症状淋巴结肿大、肺炎、出血倾向等。鼠疫在世界历史上曾有多次大流行，1992年全世界报告发生人间鼠疫的有巴西、中国、马达加斯加、蒙古、缅甸秘鲁、美国、越南及扎伊尔等9个国家共1582例，病人大多集中在非洲，病死率为8.7％。', 'https://www.chinacdc.cn/jkzt/crb/jl/sy/images/P020110411498764469654.jpg', '2022-01-30 15:57:16');
INSERT INTO `contagion` VALUES ('霍乱', '霍乱是由O1 血清群和O139 血清群霍乱弧菌引起的急性肠道传染病,19 世纪初至今已引起7 次世界性大流行。进入90 年代后,随着O139 的出现,全球霍乱流行趋势更趋严峻。', 'https://www.chinacdc.cn/jkzt/crb/jl/hl/images/P020110411497287186483.jpg', '2022-01-30 15:59:16');
INSERT INTO `contagion` VALUES ('新型冠状病毒肺炎', '冠状病毒是一大类病毒，已知会引起疾病，患者表现从普通感冒到重症肺部感染不同，例如中东呼吸综合症（MERS）和传染性非典型肺炎（SARS）。新型冠状病毒（nCoV）是一种先前尚未在人类中发现的新型冠状病毒，如此次武汉的新型冠状病毒2019-nCov。目前正处于冬春季呼吸道传染病高发季节，个人要做好卫生防护，注意保持室内环境卫生和空气流通，尽量减少到空气不流通或人流密集的公众场合活动，如有发热、呼吸道感染症状，请及时到医疗机构就诊。', 'https://www.chinacdc.cn/jkzt/crb/zl/szkb_11803/images/P020200118486661358804.jpg', '2022-01-30 15:57:19');
INSERT INTO `contagion` VALUES ('艾滋病', '艾滋病，全称是“获得性免疫缺陷综合征”（英文名：Acquired Immunodeficiency Syndrome，缩写AIDS）。它是由艾滋病病毒即人类免疫缺陷病毒（HIV）引起的一种病死率极高的恶性传染病。HIV病毒侵入人体，能破坏人体的免疫系统，令感染者逐渐丧失对各种疾病的抵抗能力，最后导致死亡。目前还没有疫苗可以预防，也没有治愈这种疾病的有效药物或方法。艾滋病于1982年定名，1983年发现其病原体，是当前最棘手的医学难题之一。', 'https://www.chinacdc.cn/jkzt/crb/zl/azb/images/P020110411524373510638.jpg', '2022-01-30 15:59:19');
INSERT INTO `contagion` VALUES ('结核病', '结核病是由结核杆菌感染引起的慢性传染病。结核菌可能侵入人体全身各种器官，但主要侵犯肺脏，称为肺结核病。结核病又称为痨病和“白色瘟疫”，是一种古老的传染病，自有人类以来就有结核病。', 'https://www.chinacdc.cn/jkzt/crb/zl/jhb/images/P020110411527770126540.jpg', '2022-01-31 15:57:16');
INSERT INTO `contagion` VALUES ('人感染H7N9禽流感', '流感病毒可分为甲（Ａ）、乙（Ｂ）、丙（Ｃ）三型。其中，甲型流感依据流感病毒血凝素蛋白（HA）的不同可分为1-16种亚型，根据病毒神经氨酸酶蛋白（NA）的不同可分为1-9种亚型，HA不同亚型可以与NA的不同亚型相互组合形成不同的流感病毒。而禽类特别是水禽是所有这些流感病毒的自然宿主，H7N9禽流感病毒是其中的一种。H7N9亚型流感病毒既往仅在禽间发现，在荷兰、日本及美国等地曾发生过禽间暴发疫情，但未发现过人的感染情况。', 'https://www.chinacdc.cn/jkzt/crb/zl/rgrgzbxqlgg/images/P020130403552292200819.png', '2022-01-31 12:57:16');
INSERT INTO `contagion` VALUES ('猩红热', '猩红热是溶血性链球菌所引起的急性呼吸道传染病。临床特点为起病急、发热、咽峡炎、弥漫性皮疹、继而脱皮。如治疗不当或不 彻底可能出现关节、肾脏等变态反应性并发症。猩红热在我国南方少，北方多；冬春季多，夏秋季少。其传染源为患者和带菌者，尤其是型患者和带菌者是本病的主要传染源。通过呼吸道飞沫传播给密切接触者，偶可通过带菌的用具传播。发病年龄以2—10岁小儿多见，6个月以内婴儿因从母体获得被动免疫力，故很少发病。', 'https://www.chinacdc.cn/jkzt/crb/zl/xhr/images/P020110412518598834417.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('手足口病', '手足口病是肠道病毒引起的常见传染病之一，在夏秋季比较常见，多发生于5岁以下的婴幼儿，可引起发热和手足、口腔等部位的丘疱疹、溃疡，个别患者可引起心肌炎、肺水肿、无菌性脑膜脑炎等致命性并发症。', 'https://www.chinacdc.cn/jkzt/crb/bl/szkb/images/P020110408335917878857.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('麻疹', '麻疹是儿童最常见的急性传染病，其传染性很强，如果所在的地区人口密度大，而且没有普遍接种麻疹疫苗，那么这个地区就极易引起麻疹的流行。麻疹发病时的特殊表现是口腔粘膜上有红晕的灰白小点。单纯传染麻疹治愈后良好，重症患者病死率较高。', 'https://www.chinacdc.cn/jkzt/crb/zl/mz/images/P020110328407442882839.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('传染性非典型肺炎', '　严重急性呼吸道症候群又称SARS。在未查明病因前，被叫做“非典型性肺炎”，是一种极具传染性的疾病。传染性非典型肺炎，又称严重急性呼吸综合症（Severe Acute Respiratory Syndromes），简称SARS，是一种因感染SARS相关冠状病毒而导致的以发热、干咳、胸闷为主要症状，严重者出现快速进展的呼吸系统衰竭，是一种新的呼吸道传染病，极强的传染性与病情的快速进展是此病的主要特点。', 'https://www.chinacdc.cn/jkzt/crb/zl/crxfdxfy/images/P020110411489606256297.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('埃博拉出血热', '埃博拉出血热是严重的、往往致命的人类疾病，病死率高达90%。它是世界上最凶猛的疾病之一。其传播感染的途径是直接接触受感染的动物或人的血液、体液和组织。病情严重的患者需要获得重症支持治疗。疫情期间，与患者或死者有密切接触的卫生工作者、家人以及其他人面临较高的感染风险。\r\n　　埃博拉出血热疫情可以摧毁家庭和社区，但可以通过在诊所和医院、公共场所或家中采用所推荐的防护措施控制感染。', 'https://www.chinacdc.cn/jkzt/crb/qt/ablcxr/images/P020140801305837168761.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('中东呼吸综合征', '　中东呼吸综合征（Middle East respiratory syndrome，MERS）是由一种新型冠状病毒（MERS-CoV）感染而引起的病毒性呼吸道疾病，2012年在沙特阿拉伯首次被发现。冠状病毒是一组能够导致人类和动物感染发病的病毒，能够引起人类发生从普通感冒到严重急性呼吸综合征（SARS）的多种疾病。 ', 'https://www.chinacdc.cn/jkzt/crb/qt/szkb_8131/images/P020150529387427976384.jpg', '2022-01-31 11:57:16');
INSERT INTO `contagion` VALUES ('血吸虫病', '　血吸虫病（Schisosomiasis）是由血吸虫的成虫寄生于人体所引起的地方性疾病，主要流行于亚、非、拉美的73个国家，患病人数约2亿左右。人类血吸虫分为日本血吸虫(S·japonicum)、埃及血吸虫(S·haematobium)、曼氏血吸虫(S·mansoni)与间插血吸虫(S·intetcalatum)四种。日本血吸虫病分布于中国、日本、菲律宾、印尼、泰国等亚洲地区和国家；曼氏血吸虫病分布于亚洲、中东、印度等地区；间插血吸虫分布于中非西部、扎伊尔、喀麦隆等国家。我国流行的只是日本血吸虫（简称血吸虫病）。', 'https://www.chinacdc.cn/jkzt/crb/zl/xxcb/images/P020110411532748127971.jpg', '2022-01-31 11:57:16');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('wufan', '20220422000', '123456');
INSERT INTO `customer` VALUES ('张三', '20220422001', '666666');
INSERT INTO `customer` VALUES ('李四', '20220422002', '666666');
INSERT INTO `customer` VALUES ('王五', '20220422003', '666666');
INSERT INTO `customer` VALUES ('小明', '20220422004', '666666');
INSERT INTO `customer` VALUES ('小张', '20220422005', '666666');
INSERT INTO `customer` VALUES ('小强', '20220422006', '666666');
INSERT INTO `customer` VALUES ('小李', '20220422007', '666666');
INSERT INTO `customer` VALUES ('小丽', '20220422008', '666666');
INSERT INTO `customer` VALUES ('李华', '20220422009', '666666');
INSERT INTO `customer` VALUES ('小宝', '20220422010', '666666');
INSERT INTO `customer` VALUES ('邵庄', '20220422011', '123456');
INSERT INTO `customer` VALUES ('South', '20220422013', '123456');
INSERT INTO `customer` VALUES ('West', '20220422015', '123456');

-- ----------------------------
-- Table structure for emergencyrescue
-- ----------------------------
DROP TABLE IF EXISTS `emergencyrescue`;
CREATE TABLE `emergencyrescue`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emergencyrescue
-- ----------------------------
INSERT INTO `emergencyrescue` VALUES ('触电急救法', '①迅速切断电源。\r\n\r\n②一时找不到闸门，可用绝缘物挑开电线或砍断电线。\r\n\r\n③立即将触电者抬到通风处，解开衣扣、裤带，若呼吸停止，必须做口对口人工呼吸或将其送附近医院急救。\r\n\r\n④可用盐水或凡士林纱布包扎局部烧伤处。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('动脉出血急救法', '①小动脉出血，伤口不大，可用消毒棉花敷在伤口上，加压包扎，一般就能止眩\r\n\r\n②出血不止时，可将伤肢抬高，减慢血流的速度，协助止眩\r\n\r\n③四肢出血严重时，可将止血带扎在伤口的上端，扎前应先垫上毛巾或布片，然后每隔半小时必须放松１次，绑扎时间总共不得超过两小时，以免肢体缺血坏死。作初步处理后，应立即送医院救治。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('儿童抽风急救法', '发现小儿抽风，不宜惊慌失措，乱摇患儿，以致加重病情，不要灌水喂汤，以免吸入气管。应打开窗户，解开患儿上衣让呼吸通畅。将筷子用布包裹塞入患儿上下牙之间以免咬破舌头。发高烧引起的抽风，可用毛巾蘸冷水敷于额部。详细记录抽风的时间、症状，立即送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('急性腰扭伤急救法', '腰突然扭伤后，如伤势较轻，可让病人仰卧在垫厚的木板床上，腰下垫１个枕头。先冷敷伤处，1～2天后改用热敷。如症状不减轻或伤重者，应急送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('脊柱骨损伤急救法', '脊柱骨损伤的病人如果头脑清醒，可让其动一下四肢，单纯双下肢活动障碍，提示胸或腰椎已严重损伤；上肢也活动障碍，则颈椎也受损伤。先使患者平卧地上，两上肢伸直并拢。将门板放在患者身旁，４名搬动者蹲在患者一侧，一人托其背、腰部，一人托肩胛部，一人托臀部及下肢，一人托住其头颅，并随时保持与躯干在同一轴线上，４人同时用力，把患者慢慢滚上门板，使其仰卧，腰部和颈后各放一小枕，头部两侧放软枕，用布条将头固定，然后急送就近医院。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('韭菜治误吞金属异物法', '取一把韭菜，不切断，投入沸水中汆熟，拌些麻油服食，能将误吞的金属等异物裹住，然后顺利排出。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('咯血急救法', '①让患者卧床休息，取半卧位，保持安静，不可大声说话和用力咳嗽。\r\n\r\n②胸部用冷毛巾敷，同时防止受凉。\r\n\r\n③服用止咳祛痰药，但忌用氨茶碱。\r\n\r\n④选服一些止血药，如：八号止血粉、三七粉、白芨粉、维生素Ｋ。\r\n\r\n⑤尽快送医院救治。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('猫咬伤急救法', '被猫咬伤后，应在伤口上端用止血带扎紧，并用生理盐水或凉开水冲洗伤口，再用５％的石炭酸腐蚀局部。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('煤气中毒急救法', '觉察到自己煤气中毒时，应尽快打开门窗，迅速离开现场。如已全身无力，要赶紧趴在地上，爬至门边或窗前，打开门窗呼救。发现他人煤气中毒，应立即打开门窗，将患者抬离现场。中毒者如呼吸、心跳不规则或停止，需马上进行体外心脏按摩和口对口的人工呼吸，并送往医院抢救。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('溺水急救法', '①救护者蹲下，使救起的溺水者头朝下地趴在救护者的腿上，迅速按其背部，使其将腹中的水吐出，并清除口鼻中的异物，同时解开衣裤、乳罩。然后做口对口人工呼吸，对牙关紧闭的溺水者要做口对鼻人工呼吸。\r\n\r\n②心跳停止者立即做心脏体外按摩。\r\n\r\n③积极抢救的同时应尽速送医院抢救。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('农药中毒急救法：', '误服农药１０～３０分钟后，一般会出现头晕、恶心、呕吐、流涎、大汗、站立不稳、面色苍白、大小便失禁等症状。在送医院抢救前，可用筷子、羽毛或手指刺激其咽喉使其将农药吐出。呕吐后可让其服用蛋清、牛奶或浓奶粉等，以保护胃粘膜，减轻农药对胃壁的刺激，延缓对毒物的吸收。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('蛇咬伤急救法', '让患者躺下，并放低被咬伤的部位，用绳子或手帕在伤口上方２～１０厘米处结扎，每１５分钟左右放松一下，用火柴将小刀片消毒，在每个蛇牙痕上割一个十字型切口，用嘴从伤口吸出毒液，并尽快送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('食物中毒急救法', '食物中毒，可用下述方法解救。①催吐解毒：取１汤匙食盐冲汤服下，用筷子刺激咽喉部，反复催吐。②吸附解毒：中毒腹泻时，可食用适量烤焦的馒头。③中和解毒：口服蛋清、牛奶。对碱性毒物，可口服食醋、桔子汁。对金属或植物碱类毒物，可立即服浓茶。④特效解毒：橄榄解酒毒，橄榄汁解河豚毒，生茄子解细菌性食物中毒，胡椒解鱼、蟹、蕈等引起的中毒。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('酸碱伤眼急救法', '酸、碱不慎溅入眼内，应尽快救治：\r\n\r\n①在２分钟内用清水反复冲洗眼部，有条件的话，酸物伤眼用２％碳酸氢钠溶液冲洗；碱物伤眼用１％醋酸或４％硼酸溶液冲洗。\r\n\r\n②伤眼的当天应冷敷，第3天可热敷。\r\n\r\n③剧烈疼痛时可用０．５％盐酸地卡因眼药水滴入眼内。\r\n\r\n④口服抗生素防止感染。\r\n\r\n⑤口服大量维生素Ａ、Ｂ、Ｃ、Ｄ，促进患眼恢复。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('头部外伤急救法', '头部外伤，无伤口但有皮下血肿，可用包扎压迫止眩而头部局部凹陷，表明有颅骨骨折，只可用纱布轻覆，切不可加压包扎，以防脑组织受损。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('脱臼急救法', '①肘关节脱臼：可把肘部弯成直角，用三角巾把前臂和肘托起，挂在颈上。\r\n\r\n②肩关节脱臼：可用三角巾托起前臂，挂在颈上，再用一条宽带连上臂缠过胸部，在对侧胸前打结，把脱臼关节上部固定住。\r\n\r\n③髋关节脱臼：应用担架将患者送往医院。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('胸部外伤急救法', '胸部开放性伤口，空气会随着呼吸从伤口出入胸腔，可能有血液流出。患者不宜活动，以防肋骨骨折断端刺破肺脏和血管。此时必须用纱布或衣服覆盖伤口，包扎压迫。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('血压升高自救法', '高血压患者突然血压升高，应保持情绪镇定，立即服用降压药物，并转移到荫凉处坐下，使上身和头部抬起；有条件的可用４０～４５℃的水洗脚，水浸到距膝２／３处。将毛巾用冷水浸湿敷于头部。患者若有恶心、呕吐、头痛加剧现象，宜立即就医。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('异物吸入急救法', '异物误入气管、食管时，应让患者头朝下，拍击其背部，促使其咳吐出来，以防异物阻塞气管引起窒息。如无效，应赶快送医院。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('婴幼儿窒息急救法', '婴幼儿喂奶或服药时窒息，应立刻把孩子倒提起来，轻拍臀部，使其排出气管内的堵塞物。婴幼儿因蒙被睡觉或襁褓包得太紧发生窒息，孩子面色青紫甚至停止呼吸，应该立即口对口人工呼吸，并迅速送医院抢救。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('晕厥急救法', '①让病人头低脚高躺下。\r\n\r\n②解开病人衣领、裤带及胸罩。\r\n\r\n③注意保暖和安静。\r\n\r\n④喂服糖水或热茶。\r\n\r\n⑤用低浓度氨溶液近鼻嗅入。\r\n\r\n⑥用拇指、食指捏压患者合谷穴（手之虎口处）；还可用拇指掐或针刺人中穴。\r\n\r\n⑦给病人灌服少量葡萄酒。\r\n\r\n⑧出现心跳骤停，应立即在其左前胸猛击一拳，并进行人工呼吸及心脏按摩。\r\n\r\n⑨经初步处理后送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('狗咬伤急救法', '被狗咬伤后，应在伤口上下５厘米处用布带勒紧，用吸奶器将污血吸出，然后用肥皂水冲洗伤口。咬人的狗应加隔离，一旦确诊为携带狂犬病毒，应即处死。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('骨折急救法', '救护骨折者的方法：\r\n\r\n①止血：可采用指压、包扎、止血带等办法止眩\r\n\r\n②包扎：对开放性骨折用消毒纱布加压包扎，暴露在外的骨端不可送回。\r\n\r\n③固定：以旧衣服等软物衬垫着夹上夹板，无夹板时也可用木棍等代用，把伤肢上下两个关节固定起来。\r\n\r\n④治疗：如有条件，可在清创、止痛后再送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('人工呼吸法', '对呼吸突然停止、心跳仍存在的患者，可施行人工呼吸。将患者迅速移到空气流通的地方，注意保暖，解开患者衣服领扣、裤带、乳罩，并将背部或腰部垫高，头略后仰，清除口腔内的假牙、泥沙等妨碍呼吸的东西，同时在上下牙间垫上毛巾，使嘴微张。施术者一手托起患者下颏，别一手捏住患者鼻翼，深吸气后对住患者口部用力吹入，然后放松患者的鼻翼，如此反复进行，每分钟１６～２０次，直到呼吸恢复为止。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('蛇入**急救法', '如小毒蛇从人的口鼻、**等处钻入**，可用下列方法急救：\r\n\r\n①割下母猪尾巴，使尾血滴进钻入处，蛇即退出。\r\n\r\n②用胡椒末填入蛇尾小眼，蛇也能退出。\r\n\r\n③以硬草刺蛇尾，也能见效。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('心脏病发作急救法', '①尽量解除患者的精神负担和焦虑情绪。\r\n\r\n②立即将硝酸甘油或消心痛放于患者舌下。\r\n\r\n③让患者取半坐位，口服１～２粒麝香保心丸。\r\n\r\n④患者感到心跳逐渐缓慢以至停跳时，应连续咳嗽，每隔３秒钟咳１次，心跳即可恢复。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('灼伤急救法', '①迅速脱离灼伤源，以免灼伤加剧。②尽快剪开或撕掉灼伤处的衣裤、鞋袜。③用冷水冲洗伤处以降温。④小面积轻度灼伤可用必舒膏、玉树油等涂抹。⑤用清洁的毛巾或被单保护伤处，并尽快送医院治疗。', '2021-01-30 15:56:12');
INSERT INTO `emergencyrescue` VALUES ('砒霜中毒急救法', '①及时洗胃：用温水或１％碳酸氢钠液让患者饮入，每次１茶杯，约２００毫升，再用手指刺激咽喉催吐，反复多次。②及时抢救：洗胃后及时送医院抢救治疗。③医院较远时，可先给服二巯基丙醇或二巯基丙磺酸钠。', '2021-01-30 15:56:12');

-- ----------------------------
-- Table structure for expertcommunity
-- ----------------------------
DROP TABLE IF EXISTS `expertcommunity`;
CREATE TABLE `expertcommunity`  (
  `imgSrc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expertcommunity
-- ----------------------------
INSERT INTO `expertcommunity` VALUES ('https://www.hualigs.cn/image/601d42a19028f.jpg', '钟南山', '中国工程院院士、著名呼吸病学专家', '2021-02-05 21:11:10');
INSERT INTO `expertcommunity` VALUES ('http://www.cae.cn/cae/admin/upload/img/lilanjuan.jpg', '李兰娟', '传染病学专家', '2021-01-30 15:56:12');
INSERT INTO `expertcommunity` VALUES ('https://www.hualigs.cn/image/601d4302b2d9a.jpg', '张伯礼', '中国中医科学院院长', '2021-02-05 21:13:47');
INSERT INTO `expertcommunity` VALUES ('https://www.hualigs.cn/image/601d43861b107.jpg', '吴孟超', '被誉中国肝胆外科之父', '2021-02-05 21:14:57');
INSERT INTO `expertcommunity` VALUES ('https://www.hualigs.cn/image/601d43067e333.jpg', '钟世镇', '现代临床解剖学奠基人', '2021-02-05 21:13:25');
INSERT INTO `expertcommunity` VALUES ('https://www.hualigs.cn/image/601d43067e3ca.jpg', '葛均波', '复旦大学生物医学院长', '2021-02-05 21:13:04');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for medicaldrugs
-- ----------------------------
DROP TABLE IF EXISTS `medicaldrugs`;
CREATE TABLE `medicaldrugs`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imgSrc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicaldrugs
-- ----------------------------
INSERT INTO `medicaldrugs` VALUES ('安定', '具有镇静、催眠等作用。失眠者可于睡前服用，但久服易成瘾。', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4228870513,2567762130&fm=26&gp=0.jpg', '2021-01-30 15:57:16');
INSERT INTO `medicaldrugs` VALUES ('晕海宁', '患晕动病者乘车、船、飞机前半小时服用，能避免眩晕、呕吐等反应。', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1100305421,553122516&fm=26&gp=0.jpg', '2021-01-30 15:57:19');
INSERT INTO `medicaldrugs` VALUES ('扑热息痛', '可用于感冒、发热、头痛、神经痛与关节痛等。', 'https://www.hualigs.cn/image/601d416103f11.jpg', '2021-02-05 21:06:26');
INSERT INTO `medicaldrugs` VALUES ('阿司匹林', '能退热、止痛、抗炎、抗风湿。其小剂量还可预防血栓。但对胃有刺激性，最好用其肠溶片。', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2022554615,1772599744&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('咳必清', '宜用于频繁干咳，但对痰多、粘稠者禁用。', 'https://www.hualigs.cn/image/601d41b3dc6ed.jpg', '2021-02-05 21:07:18');
INSERT INTO `medicaldrugs` VALUES ('必咳平', '能使痰液变稀容易咳出，且可维持疗效7小时左右。', 'https://www.hualigs.cn/image/601d41e215bd8.jpg', '2021-02-05 21:07:58');
INSERT INTO `medicaldrugs` VALUES ('复方甘草合剂', '不但能止咳，而且有化痰功效，适用于伤风感冒与急性支气管炎初期。2岁以下小儿忌服。', 'https://www.hualigs.cn/image/601d43b167861.jpg', '2021-02-05 21:15:43');
INSERT INTO `medicaldrugs` VALUES ('氨茶碱', '可用于多种哮喘。但对急性心肌梗塞伴有血压显著降低者忌用。', 'https://www.hualigs.cn/image/601d43d216019.jpg', '2021-02-05 21:16:15');
INSERT INTO `medicaldrugs` VALUES ('舒喘灵', '可防治支气管哮喘、哮喘型支气管炎和肺气肿患者的支气管痉挛。它不宜与心得安合用。', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=584837058,977151988&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('雷尼替丁', '适用于十二指肠球部溃疡、胃溃疡及返流性食管炎等，在清晨与临睡前服。但对孕妇、乳母与青光眼病人及肾功能不全者慎用。', 'https://www.hualigs.cn/image/601d43f4c1c44.jpg', '2021-02-05 21:16:49');
INSERT INTO `medicaldrugs` VALUES ('多酶片', '若消化液分泌不足，造成食物消化发生障碍，或饱餐过食，某些肠道传染病的恢复期出现功能性消化不良时，可在饭时服用多酶片。', 'https://www.hualigs.cn/image/601d44e1f15e4.jpg', '2021-02-05 21:21:52');
INSERT INTO `medicaldrugs` VALUES ('复方新诺明', '可用于支气管炎、肺部感染、尿路感染及菌痢等。但对过敏者禁用。', 'https://www.hualigs.cn/image/601d44e137846.jpg', '2021-02-05 21:20:47');
INSERT INTO `medicaldrugs` VALUES ('黄连素', '可治疗红眼病与菌痢、急性肠胃炎等疾病。', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3981156465,2173087907&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('氟哌酸', '可用于呼吸道、泌尿道、肠道和阴道等感染性疾病，但对胃溃疡者慎用；少儿及孕妇、乳母禁用。少儿可改用无味红霉素。', 'https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/wh%3D680%2C800/sign=b49a6a8ab7315c6043c063e9b581e72b/d62a6059252dd42a7c50c734083b5bb5c8eab8d0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('甲硝唑（又称灭滴灵）', '适用于厌氧菌感染、牙周炎及滴虫、阿米巴原虫等感染。', 'https://www.hualigs.cn/image/601d44e2178a4.jpg', '2021-02-05 21:22:02');
INSERT INTO `medicaldrugs` VALUES ('头孢拉定胶囊', '可用于呼吸道、泌尿道、肠道等轻度感染。', 'https://www.hualigs.cn/image/601d44e2bad99.jpg', '2021-02-05 21:23:00');
INSERT INTO `medicaldrugs` VALUES ('颠茄片', '适用于胃、十二指肠溃疡及其轻度绞痛，但对青光眼病人禁用。', 'https://www.hualigs.cn/image/601d44e264562.jpg', '2021-02-05 21:22:40');
INSERT INTO `medicaldrugs` VALUES ('山莨菪碱', '可用于胃、十二指肠溃疡疼痛与胆道痉挛及三叉神经痛、坐骨神经痛等。', 'https://www.hualigs.cn/image/601d44e23e326.jpg', '2021-02-05 21:22:14');
INSERT INTO `medicaldrugs` VALUES ('息斯敏', '可用于过敏性鼻炎、结膜炎、风疹块等疾患，无嗜睡反应。但孕妇禁用。', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1992149420,2657123229&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('六神丸', '为消肿解毒药，可用于急性扁桃体炎、咽喉炎、痈疽疮疖等症，勿超量服用，以防中毒。', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1109429170,3607122230&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('牛黄解毒片', '可用于目赤、咽喉炎、急性扁桃体炎、口腔溃疡、齿龈炎和疖肿等症。', 'https://www.hualigs.cn/image/601d44e270875.jpg', '2021-02-05 21:22:50');
INSERT INTO `medicaldrugs` VALUES ('云南白药', '有止血、祛瘀功效，既可用于外伤，又能治疗胃肠、子宫等内出血。孕妇忌用。', 'https://www.hualigs.cn/image/601d44e2bf7a6.jpg', '2021-02-05 21:23:10');
INSERT INTO `medicaldrugs` VALUES ('红药水', '可用作皮肤擦伤、割伤及小伤口、粘膜的消毒，但不可用于眼、口部及大面积伤口，以防中毒；也不能与碘酒同用。', 'https://www.hualigs.cn/image/601d44e2e0030.jpg', '2021-02-05 21:23:37');
INSERT INTO `medicaldrugs` VALUES ('紫药水', '仅用于局部未破损的皮肤，有收敛作用，但严禁涂布于口腔及粘膜或开放性的伤口上，以免带来严重危害。', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2751290405,848228809&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('碘酒', '可用于治疗疖子初起、皮肤擦伤、毒虫咬伤、无名肿毒等症。若已破损的皮肤及伤口粘膜不宜使用。', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3888777516,968005050&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('酒精', '以75%浓度用于皮肤与体温表消毒，50%酒精涂擦皮肤，既可防治褥疮，也可作为高热病人的降温措施之一。', 'https://www.hualigs.cn/image/601d44e2bb8f9.jpg', '2021-02-05 21:23:23');
INSERT INTO `medicaldrugs` VALUES ('高锰酸钾', '0.1%溶液可用于肛裂、痔疮、妇女外阴炎症等。勿用开水溶解，因易分解，溶液变褐紫色已失效。', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2870969063,3443766861&fm=26&gp=0.jpg', '2021-01-30 15:56:12');
INSERT INTO `medicaldrugs` VALUES ('风油精', '能提神醒脑，可防治晕车、头痛及蚊叮虫咬等症。', 'https://www.hualigs.cn/image/601d44e24a576.jpg', '2021-02-05 21:22:29');
INSERT INTO `medicaldrugs` VALUES ('绿药膏', '可用于轻度烫伤、烧伤、冻伤及皮炎等症。', 'https://www.hualigs.cn/image/601d44e1f1afc.jpg', '2021-02-05 21:23:48');
INSERT INTO `medicaldrugs` VALUES ('金霉素眼膏', '可用于结膜炎、沙眼、麦粒肿，也可用于鼻粘膜肿痛等。', 'https://www.hualigs.cn/image/601d44e1f197d.jpg', '2021-02-05 21:21:41');
INSERT INTO `medicaldrugs` VALUES ('创可贴', '有止血消炎作用，适用于切口整齐、表浅、较小的不需要缝合的割伤。', 'https://www.hualigs.cn/image/601d44e174b79.jpg', '2021-02-05 21:21:00');

-- ----------------------------
-- Table structure for medicalequipment
-- ----------------------------
DROP TABLE IF EXISTS `medicalequipment`;
CREATE TABLE `medicalequipment`  (
  `imgSrc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicalequipment
-- ----------------------------
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-2949b374ba3ae7e3276d58bc47bdb38c_720w.jpg', '吸引器头', '有不同长度，弯度及口径。用于吸出术野血液、体液及冲洗液，保持术野清晰。\r\n\r\n有不同长度，弯度及口径。用于吸出术野血液、体液及冲洗液，保持术野清晰。\r\n\r\n有不同长度，弯度及口径。用于吸出术野血液、体液及冲洗液，保持术野清晰。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic3.zhimg.com/80/v2-f60eb28f410d3ed23976bf650ad49fc2_720w.jpg', '咬骨钳', '用于咬除、修整骨组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic4.zhimg.com/80/v2-82f02a42707352ec0a85d4c2d23ea3d7_720w.jpg', '布巾钳', '用于固定敷料，保护切口。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-ef24ed6698771897d2fb6a0cd7ac5c84_720w.jpg', '弯血管钳', '又称止血钳，用于分离、钳夹组织或血管止血，以 及协助缝合。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-ea2ccec0ea119f017214516f6e8429f8_720w.jpg', '手术刀', '由刀柄刀片构成，刀柄和刀片有多种型号，用于不同组织的切割和解剖。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-c822ac1b68da52b23d98d6ef425d0ff4_720w.jpg', '手术镊', '镊的尖端分为有齿和无齿两类，有长短、粗细之分用于夹持、辅助解剖及缝合组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-579f6908f333386e9ade1a65f6ec93f0_720w.jpg', '持针器', '有不同长度及直弯之分，用于夹持缝针、协助缝线打结。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-b2d62b4b77b23574f4a61b53a32cc2cd_720w.jpg', '直血管钳', '又称止血钳，用于皮下组织止血。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic3.zhimg.com/80/v2-fd5e414147849046120cc2984164ccce_720w.jpg', '直角钳', '用于游离血管、神经、输尿管、胆道等组织及牵引物 的引导。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic3.zhimg.com/80/v2-b2c88dde1736217f6b54466692222ef6_720w.jpg', '神经剥离子', '用于神经根的剥离、分离。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic4.zhimg.com/80/v2-dffa4953837c5cdfcd30817b63406a9b_720w.jpg', '线剪', '简称直剪，用于剪线、敷料。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic3.zhimg.com/80/v2-d52faaa5cae76a3e706825a1f51f1b32_720w.jpg', '组织剪', '简称弯剪，有长、短、尖、钝之分。用于游离、剪开浅部及深部组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-4ac45d6cf7f57ffb60aa16ff2c15f3a9_720w.jpg', '组织钳', '又称鼠齿钳、爱力司钳，用以夹持纱巾垫与切口边缘的皮下组织，也用于夹持组织或皮瓣作为牵引。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic4.zhimg.com/80/v2-59a1b5d8cd13361b47348f6c8dfaec47_720w.jpg', '缝针', '由针尖、针体、针眼三部分组成。针尖分圆针、三角针 ；针体有不同弧度，分直针、1/2弧、3/8弧3个弧度。用于缝 合各种组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-aa6b9c4d54be996e5b2b94831806d73c_720w.jpg', '肠钳', '分直弯两种，用于夹持肠管，齿槽薄、细，对组织压榨 作用小。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-b53712f512750ffdb4e643fc883df3c8_720w.jpg', '肺叶钳', '用于夹提、牵引肺叶，以显露手术野。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-e7b0407e3d98802bbd7d436ffb5ffaa1_720w.jpg', '胃钳', '用于钳夹胃或结肠残端。轴为多关节，力量大、压榨力强，组织不易脱落。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic4.zhimg.com/80/v2-5fae93b4b3e148d9363f1880d4def7db_720w.jpg', '苛克钳', '又称有齿直钳，用于夹持较厚组织及易滑脱组织，也可用于切除组织的夹持牵引。前端钩齿可防止滑脱，对组织的损伤较大，不能用作一般的止血。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic4.zhimg.com/80/v2-4d007c3e421ba1376e8ab10da1690ebb_720w.jpg', '阑尾钳', '用于夹提、固定阑尾或输尿管等组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-9747096177249e1a62a004a70704b804_720w.jpg', '骨凿', '用于去除骨痂、截除骨块，分为平凿、圆凿。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-84eaa182f237394cbdc6ccd44a4337b5_720w.jpg', '骨剪', '用于修剪骨组织。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic1.zhimg.com/80/v2-292de48ff71d543da367b176e723d5ec_720w.jpg', '骨膜剥离子', '用于剥离骨膜。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-adc882bc1e03b2ca72ac7f49a64de5b1_720w.jpg', '骨锉', '用于锉平骨断端，使之变钝，避免刺破组织，导致出血。', '2021-01-30 15:56:12');
INSERT INTO `medicalequipment` VALUES ('https://pic2.zhimg.com/80/v2-0c8dd3a3273aee44b22d6bb048051271_720w.jpg', '骨锤', '用于协助骨凿截骨及物体的植入或取出。', '2021-02-05 21:35:25');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `detail` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:34:07');
INSERT INTO `message` VALUES ('更新医疗器材成功', 'admin', '2021-02-05 21:35:17');
INSERT INTO `message` VALUES ('更新医疗器材成功', 'admin', '2021-02-05 21:35:25');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:35:54');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:36:00');
INSERT INTO `message` VALUES ('添加紧急救援方法成功', 'admin', '2021-02-05 21:36:18');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2021-02-05 21:36:23');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:36:30');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:39:21');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:39:27');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:39:56');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:40:02');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:40:45');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:40:52');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:43:12');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:44:15');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:44:29');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:45:42');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:45:50');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:46:08');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:47:28');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 21:47:35');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2021-02-05 21:47:41');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:51:42');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2021-02-05 21:54:26');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 21:55:05');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 22:03:07');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2021-02-05 22:03:25');
INSERT INTO `message` VALUES ('注册了账号', '', '2021-02-05 22:08:04');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2021-02-05 22:10:31');
INSERT INTO `message` VALUES ('添加紧急救援方法成功', 'admin', '2021-02-05 22:11:06');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:11:13');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2021-02-05 22:11:17');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:11:28');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:11:35');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:11:51');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:12:03');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:12:18');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2021-02-05 22:12:32');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2021-02-05 22:12:35');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-03-04 10:53:12');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-03-04 10:58:17');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-03-04 10:59:59');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-03-05 09:12:34');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-03-05 09:12:34');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-03-05 09:18:19');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-03-05 09:28:46');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-03-05 09:29:49');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-03-08 15:53:13');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-03-08 18:46:21');
INSERT INTO `message` VALUES ('退出后台成功', 'null', '2022-03-08 18:46:26');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-14 20:52:48');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-14 20:53:13');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-14 20:58:19');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-15 21:37:43');
INSERT INTO `message` VALUES ('更新医学药品成功', 'null', '2022-04-16 00:31:24');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-17 18:28:27');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-17 20:08:28');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-17 20:08:53');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-18 15:23:08');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-18 16:50:52');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-18 16:52:42');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-18 20:24:13');
INSERT INTO `message` VALUES ('更新医学药品成功', 'null', '2022-04-18 21:41:40');
INSERT INTO `message` VALUES ('更新医疗器材成功', 'null', '2022-04-18 21:42:02');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-19 09:25:18');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 09:26:12');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-19 09:55:43');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 12:39:58');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 12:40:48');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 14:47:35');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 19:40:13');
INSERT INTO `message` VALUES ('添加了一条留言', '2018212060', '2022-04-19 19:53:33');
INSERT INTO `message` VALUES ('修改了密码', '2018212060', '2022-04-19 20:04:43');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 20:05:00');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-19 21:09:26');
INSERT INTO `message` VALUES ('添加了一条留言', '2018212060', '2022-04-19 21:09:30');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-21 11:28:31');
INSERT INTO `message` VALUES ('登录了客户端', '2018212060', '2022-04-21 11:29:09');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-22 11:51:09');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 12:33:59');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 13:41:49');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 14:10:47');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 14:22:36');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-22 14:39:46');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2022-04-22 14:42:08');
INSERT INTO `message` VALUES ('添加顾客成功', 'admin', '2022-04-22 14:42:32');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2022-04-22 14:42:47');
INSERT INTO `message` VALUES ('更新顾客成功', 'admin', '2022-04-22 14:42:53');
INSERT INTO `message` VALUES ('更新顾客成功', 'admin', '2022-04-22 14:43:05');
INSERT INTO `message` VALUES ('更新顾客成功', 'admin', '2022-04-22 14:43:15');
INSERT INTO `message` VALUES ('更新顾客成功', 'admin', '2022-04-22 14:43:24');
INSERT INTO `message` VALUES ('更新顾客成功', 'admin', '2022-04-22 14:43:37');
INSERT INTO `message` VALUES ('添加顾客成功', 'admin', '2022-04-22 14:47:31');
INSERT INTO `message` VALUES ('注册了账号', '20220422013', '2022-04-22 14:49:35');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 14:52:38');
INSERT INTO `message` VALUES ('添加顾客成功', 'null', '2022-04-22 14:52:47');
INSERT INTO `message` VALUES ('删除顾客成功', 'null', '2022-04-22 14:52:55');
INSERT INTO `message` VALUES ('添加顾客成功', 'null', '2022-04-22 14:53:12');
INSERT INTO `message` VALUES ('注册了账号', '2022042214', '2022-04-22 15:01:37');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-22 15:02:51');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2022-04-22 15:03:00');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2022-04-22 15:03:03');
INSERT INTO `message` VALUES ('删除顾客成功', 'admin', '2022-04-22 15:03:20');
INSERT INTO `message` VALUES ('添加顾客成功', 'admin', '2022-04-22 15:03:51');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 15:04:10');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 16:30:27');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 16:32:21');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-22 21:15:54');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-04-25 08:53:26');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-04-25 08:53:32');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 20:53:03');
INSERT INTO `message` VALUES ('添加紧急救援方法成功', 'admin', '2022-05-03 20:53:59');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'admin', '2022-05-03 20:54:11');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2022-05-03 20:54:26');
INSERT INTO `message` VALUES ('添加医疗器材成功', 'admin', '2022-05-03 20:54:55');
INSERT INTO `message` VALUES ('更新医疗器材成功', 'admin', '2022-05-03 20:55:15');
INSERT INTO `message` VALUES ('删除医疗器材成功', 'admin', '2022-05-03 20:55:18');
INSERT INTO `message` VALUES ('添加医学药品成功', 'admin', '2022-05-03 20:55:44');
INSERT INTO `message` VALUES ('更新医学药品成功', 'admin', '2022-05-03 20:56:01');
INSERT INTO `message` VALUES ('删除医学药品成功', 'admin', '2022-05-03 20:56:06');
INSERT INTO `message` VALUES ('添加传染病成功', 'admin', '2022-05-03 21:15:53');
INSERT INTO `message` VALUES ('添加传染病成功', 'admin', '2022-05-03 21:17:15');
INSERT INTO `message` VALUES ('添加新冠事件成功', 'admin', '2022-05-03 21:24:23');
INSERT INTO `message` VALUES ('删除新冠事件成功', 'admin', '2022-05-03 21:26:00');
INSERT INTO `message` VALUES ('添加传染病成功', 'admin', '2022-05-03 21:27:09');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 21:41:16');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 23:22:36');
INSERT INTO `message` VALUES ('更新传染病成功', 'admin', '2022-05-03 23:22:49');
INSERT INTO `message` VALUES ('删除传染病成功', 'admin', '2022-05-03 23:22:54');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 23:29:47');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:31:35');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:35:52');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:36:33');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:38:33');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 23:42:17');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:45:04');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:49:06');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-03 23:49:58');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-03 23:52:06');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-03 23:52:10');
INSERT INTO `message` VALUES ('添加书籍成功', 'admin', '2022-05-03 23:52:37');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-03 23:58:59');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:01:03');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:03:09');
INSERT INTO `message` VALUES ('删除书籍成功', 'admin', '2022-05-04 00:05:00');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:14:31');
INSERT INTO `message` VALUES ('添加测试成功', 'admin', '2022-05-04 00:14:50');
INSERT INTO `message` VALUES ('删除测试成功', 'admin', '2022-05-04 00:15:43');
INSERT INTO `message` VALUES ('添加测试成功', 'admin', '2022-05-04 00:15:53');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:18:49');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:19:00');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:20:33');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:20:54');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:22:26');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:25:35');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:25:44');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:26:00');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-04 00:26:30');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-04 00:26:33');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:31:56');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 00:33:25');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-04 00:33:37');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 09:13:55');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 09:24:54');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 10:40:50');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 14:32:21');
INSERT INTO `message` VALUES ('添加紧急救援方法成功', 'admin', '2022-05-04 14:33:16');
INSERT INTO `message` VALUES ('删除紧急救援方法成功', 'admin', '2022-05-04 14:33:20');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 14:33:52');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-04 14:40:32');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 14:40:46');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 14:47:41');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 15:17:40');
INSERT INTO `message` VALUES ('添加文章成功', 'null', '2022-05-04 15:19:33');
INSERT INTO `message` VALUES ('更新文章成功', 'null', '2022-05-04 15:19:41');
INSERT INTO `message` VALUES ('删除文章成功', 'null', '2022-05-04 15:19:48');
INSERT INTO `message` VALUES ('添加书籍成功', 'null', '2022-05-04 15:21:15');
INSERT INTO `message` VALUES ('更新书籍成功', 'null', '2022-05-04 15:21:26');
INSERT INTO `message` VALUES ('删除书籍成功', 'null', '2022-05-04 15:21:35');
INSERT INTO `message` VALUES ('更新测试成功', 'null', '2022-05-04 15:21:54');
INSERT INTO `message` VALUES ('更新紧急救援方法成功', 'null', '2022-05-04 15:22:44');
INSERT INTO `message` VALUES ('更新文章成功', 'null', '2022-05-04 15:23:00');
INSERT INTO `message` VALUES ('添加书籍成功', 'null', '2022-05-04 15:23:31');
INSERT INTO `message` VALUES ('更新书籍成功', 'null', '2022-05-04 15:23:38');
INSERT INTO `message` VALUES ('删除书籍成功', 'null', '2022-05-04 15:23:46');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 15:26:48');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 15:29:28');
INSERT INTO `message` VALUES ('添加书籍成功', 'null', '2022-05-04 15:31:04');
INSERT INTO `message` VALUES ('更新书籍成功', 'null', '2022-05-04 15:31:13');
INSERT INTO `message` VALUES ('删除书籍成功', 'null', '2022-05-04 15:31:18');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 15:33:45');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-04 15:35:13');
INSERT INTO `message` VALUES ('添加书籍成功', 'null', '2022-05-04 15:36:38');
INSERT INTO `message` VALUES ('更新书籍成功', 'null', '2022-05-04 15:36:45');
INSERT INTO `message` VALUES ('删除书籍成功', 'null', '2022-05-04 15:36:50');
INSERT INTO `message` VALUES ('删除测试成功', 'null', '2022-05-04 15:36:59');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-14 11:03:37');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-14 11:14:47');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-14 20:21:03');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-14 20:24:14');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-15 07:53:15');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-15 08:14:36');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-15 08:17:37');
INSERT INTO `message` VALUES ('更新文章成功', 'admin', '2022-05-15 08:17:46');
INSERT INTO `message` VALUES ('更新文章成功', 'admin', '2022-05-15 08:17:54');
INSERT INTO `message` VALUES ('更新文章成功', 'admin', '2022-05-15 08:18:01');
INSERT INTO `message` VALUES ('更新文章成功', 'admin', '2022-05-15 08:18:17');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-15 08:18:30');
INSERT INTO `message` VALUES ('添加测试成功', 'admin', '2022-05-15 08:18:55');
INSERT INTO `message` VALUES ('更新测试成功', 'admin', '2022-05-15 08:19:06');
INSERT INTO `message` VALUES ('删除测试成功', 'admin', '2022-05-15 08:19:13');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-15 08:19:35');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-15 08:21:49');
INSERT INTO `message` VALUES ('添加文章成功', 'admin', '2022-05-15 08:21:58');
INSERT INTO `message` VALUES ('更新文章成功', 'admin', '2022-05-15 08:22:06');
INSERT INTO `message` VALUES ('删除文章成功', 'admin', '2022-05-15 08:22:10');
INSERT INTO `message` VALUES ('添加传染病成功', 'admin', '2022-05-15 08:24:17');
INSERT INTO `message` VALUES ('更新传染病成功', 'admin', '2022-05-15 08:24:31');
INSERT INTO `message` VALUES ('删除传染病成功', 'admin', '2022-05-15 08:24:51');
INSERT INTO `message` VALUES ('退出后台成功', 'admin', '2022-05-15 08:38:49');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-15 08:39:26');
INSERT INTO `message` VALUES ('退出后台成功', 'null', '2022-05-15 10:34:27');
INSERT INTO `message` VALUES ('登录后台成功', 'admin', '2022-05-15 10:34:31');
INSERT INTO `message` VALUES ('登录了客户端', '20220422000', '2022-05-15 10:44:36');
INSERT INTO `message` VALUES ('添加传染病成功', 'admin', '2022-05-15 10:45:55');
INSERT INTO `message` VALUES ('更新传染病成功', 'admin', '2022-05-15 10:46:05');
INSERT INTO `message` VALUES ('删除传染病成功', 'admin', '2022-05-15 10:46:09');

-- ----------------------------
-- Table structure for messageboard
-- ----------------------------
DROP TABLE IF EXISTS `messageboard`;
CREATE TABLE `messageboard`  (
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messageboard
-- ----------------------------
INSERT INTO `messageboard` VALUES ('这是我的第一次留言', 'wufan', '01234567891', '20220422000', '123456789@qq.com', '2021-01-30 15:59:59');
INSERT INTO `messageboard` VALUES ('希望能改善平台', 'wufan', '01234567891', '20220422000', '123456789@qq.com', '2022-04-19 19:53:33');
INSERT INTO `messageboard` VALUES ('', 'wufan', '', '20220422000', '', '2022-04-19 21:09:30');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('常见症状评估', 'https://www.wenjuan.ltd/s/UZBZJvSvA4H/#《常见症状评估》，快来参与吧。【问卷网提供支持】', '2021-03-31 00:59:59');
INSERT INTO `question` VALUES ('居民营养健康知识问卷', 'https://www.wenjuan.com/s/U3UFBzh/#《居民营养健康知识问卷》，快来参与吧。【问卷网提供支持】', '2021-04-22 00:59:59');
INSERT INTO `question` VALUES ('新冠疫苗接种基本知识', 'https://www.wenjuan.ltd/s/bEnauql/#《新冠疫苗接种基本知识》，快来参与吧。【问卷网提供支持】', '2021-04-22 10:59:59');
INSERT INTO `question` VALUES ('公民健康素养相关知识答题', 'https://www.wenjuan.ltd/s/EVB3mmC/#《公民健康素养相关知识答题》，快来参与吧。【问卷网提供支持】', '2021-04-22 11:59:59');
INSERT INTO `question` VALUES ('9条目简易患者健康测评问卷(phq-9)\r\n', 'https://www.wenjuan.ltd/s/ZrMnqqD/#《9条目简易患者健康测评问卷(phq-9)》，快来参与吧。【问卷网提供支持】', '2021-04-22 12:09:59');
INSERT INTO `question` VALUES ('匹兹堡睡眠质量问卷', 'https://www.wenjuan.ltd/s/2YjQFvv/#《经典测评：匹兹堡睡眠质量问卷（PSQI）》，快来参与吧。【问卷网提供支持】', '2021-04-22 12:19:59');
INSERT INTO `question` VALUES ('DISC性格测试', 'https://www.wenjuan.ltd/s/Rn22au1/#《心理测评：DISC性格测试》，快来参与吧。【问卷网提供支持】', '2021-04-22 12:29:59');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `childhood` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `juvenile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `middleaged` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `elderly` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('20220422000', '0', '1', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422001', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422002', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422003', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422004', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422005', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422006', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422007', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422008', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422009', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422010', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422011', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422012', '0', '0', '0', '0', '0');
INSERT INTO `recommend` VALUES ('20220422013', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for virusknowledge_1
-- ----------------------------
DROP TABLE IF EXISTS `virusknowledge_1`;
CREATE TABLE `virusknowledge_1`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virusknowledge_1
-- ----------------------------
INSERT INTO `virusknowledge_1` VALUES ('1', '特殊人群防控指南');
INSERT INTO `virusknowledge_1` VALUES ('2', '特殊场所防控指南');
INSERT INTO `virusknowledge_1` VALUES ('3', '专家建议');

-- ----------------------------
-- Table structure for virusknowledge_2
-- ----------------------------
DROP TABLE IF EXISTS `virusknowledge_2`;
CREATE TABLE `virusknowledge_2`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virusknowledge_2
-- ----------------------------
INSERT INTO `virusknowledge_2` VALUES ('1', '老年人防控指南', '1');
INSERT INTO `virusknowledge_2` VALUES ('10', '发热患者居家隔离的筛查建议', '3');
INSERT INTO `virusknowledge_2` VALUES ('11', '居家发热患者的医学管理建议', '3');
INSERT INTO `virusknowledge_2` VALUES ('12', '发热患者家庭防控措施', '3');
INSERT INTO `virusknowledge_2` VALUES ('13', '居家发热患者的主要症状监测', '3');
INSERT INTO `virusknowledge_2` VALUES ('14', '居家发热患者的主要症状监测', '3');
INSERT INTO `virusknowledge_2` VALUES ('2', '儿童防控指南', '1');
INSERT INTO `virusknowledge_2` VALUES ('3', '学生防控指南', '1');
INSERT INTO `virusknowledge_2` VALUES ('4', '幼儿园（或学校）防控指南', '2');
INSERT INTO `virusknowledge_2` VALUES ('5', '养老院防控指南', '2');
INSERT INTO `virusknowledge_2` VALUES ('6', '办公场所防控指南', '2');
INSERT INTO `virusknowledge_2` VALUES ('7', '交通工具防控指南（包括飞机、公交、地铁、火车等）', '2');
INSERT INTO `virusknowledge_2` VALUES ('8', '公共场所防控指南', '2');
INSERT INTO `virusknowledge_2` VALUES ('9', '居家隔离防控指南', '2');

-- ----------------------------
-- Table structure for virusknowledge_3
-- ----------------------------
DROP TABLE IF EXISTS `virusknowledge_3`;
CREATE TABLE `virusknowledge_3`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virusknowledge_3
-- ----------------------------
INSERT INTO `virusknowledge_3` VALUES ('1', '确保老人掌握预防新型冠状病毒感染的肺炎的个人防护措施、手卫生要求、卫生和健康习惯，避免共用个人物品，注意通风，落实消毒措施。倡导老人养成经常洗手的好习惯。', '1');
INSERT INTO `virusknowledge_3` VALUES ('10', '返校前有过疫情高发地区(如武汉等地区)居住史或旅行史的学生，建议居家观察14天期满再返校。', '4');
INSERT INTO `virusknowledge_3` VALUES ('11', '学生返校后应每日监测体温和健康状况，尽量减少不必要外出，避免接触其他人员。', '4');
INSERT INTO `virusknowledge_3` VALUES ('12', '学生学生与其他师生发生近距离接触的环境中，要正确佩戴医用外科口罩或N95口罩，尽量缩小活动范围。', '4');
INSERT INTO `virusknowledge_3` VALUES ('13', '学校密切监测学生的健康状态，每日两次测量体温，做好缺勤、早退、请假记录，如发现学生中出现可疑症状，应立刻向疫情管理人员报告，配合医疗卫生机构做好密切接触者管理和消毒等工作。', '4');
INSERT INTO `virusknowledge_3` VALUES ('14', '学校应尽量避免组织大型集体活动。教室、宿舍、图书馆、活动中心、食堂、礼堂、教师办公室、洗手间等活动区域，建议加强通风清洁，配备洗手液、手消毒剂等。', '4');
INSERT INTO `virusknowledge_3` VALUES ('15', '校方对因病误课的学生开展网络教学、补课，对于因病耽误考试者，应安排补考，不应记入档案。', '4');
INSERT INTO `virusknowledge_3` VALUES ('16', '日常预防措施', '5');
INSERT INTO `virusknowledge_3` VALUES ('17', '有老人出现可疑症状时', '5');
INSERT INTO `virusknowledge_3` VALUES ('18', '公共场所工作人员要自行健康监测，若出现新型冠状病毒感染的可疑症状(包括发热、咳嗽、咽痛、胸闷、呼吸困难、乏力、恶心呕吐、腹泻、结膜炎、肌肉酸痛等)，不要带病上班。', '6');
INSERT INTO `virusknowledge_3` VALUES ('19', '若发现新型冠状病毒感染的可疑症状者，工作人员应要求其离开。', '6');
INSERT INTO `virusknowledge_3` VALUES ('2', '老人出现发热、咳嗽、咽痛、胸闷、呼吸困难、乏力、恶心呕吐、腹泻、结膜炎、肌肉酸痛等可疑症状时，应采取以下措施：', '1');
INSERT INTO `virusknowledge_3` VALUES ('20', '公用物品及公共接触物品或部位要定期清洗和消毒。', '6');
INSERT INTO `virusknowledge_3` VALUES ('21', '保持办公场所内空气流通。保证空调系统或排气扇运转正常，定期清洗空调滤网，加强开窗通风换气。', '6');
INSERT INTO `virusknowledge_3` VALUES ('22', '洗手间要配备足够的洗手液，保证水龙头等供水设施正常工作。', '6');
INSERT INTO `virusknowledge_3` VALUES ('23', '保持环境卫生清洁，及时清理垃圾。', '6');
INSERT INTO `virusknowledge_3` VALUES ('24', '发生疾病流行地区的公共交通工具在岗工作人员应佩戴医用外科口罩或N95口罩，并每日做好健康监测。', '7');
INSERT INTO `virusknowledge_3` VALUES ('25', '公共交通工具建议备置体温计、口罩等物品。', '7');
INSERT INTO `virusknowledge_3` VALUES ('26', '增加公共交通工具清洁与消毒频次，做好清洁消毒工作记录和标识。', '7');
INSERT INTO `virusknowledge_3` VALUES ('27', '保持公共交通工具良好的通风状态。', '7');
INSERT INTO `virusknowledge_3` VALUES ('28', '保持车站、车厢内的卫生整洁，及时清理垃圾。', '7');
INSERT INTO `virusknowledge_3` VALUES ('29', '做好司乘人员的工作与轮休安排，确保司乘人员足够休息。', '7');
INSERT INTO `virusknowledge_3` VALUES ('3', '不要去人多的地方，不参加聚会。', '2');
INSERT INTO `virusknowledge_3` VALUES ('30', '本指南适用于商场、餐馆、影院、KTV、网吧、公共浴池、体育馆、展览馆、火车站、地铁站、飞机场、公交汽车站等公共场所。', '8');
INSERT INTO `virusknowledge_3` VALUES ('31', '居住空间安排', '9');
INSERT INTO `virusknowledge_3` VALUES ('32', '照顾者安排', '9');
INSERT INTO `virusknowledge_3` VALUES ('33', '防止传播', '9');
INSERT INTO `virusknowledge_3` VALUES ('34', '污染物的处理', '9');
INSERT INTO `virusknowledge_3` VALUES ('35', '出现以下症状时应立即停止居家隔离并及时就医', '9');
INSERT INTO `virusknowledge_3` VALUES ('36', '如果出现发热、咳嗽等症状，以下情况建议采取居家隔离的方式进行观察', '10');
INSERT INTO `virusknowledge_3` VALUES ('37', '注意休息，营养均衡，饮食宜清淡，忌肥甘厚腻。', '11');
INSERT INTO `virusknowledge_3` VALUES ('38', '多饮温水，少饮冰凉饮料，保证脾胃功能正常。', '11');
INSERT INTO `virusknowledge_3` VALUES ('39', '避免盲目或不恰当使用抗菌药物。', '11');
INSERT INTO `virusknowledge_3` VALUES ('4', '外出一定要戴上口罩，记得提醒爸爸妈妈和爷爷奶奶戴好口罩。', '2');
INSERT INTO `virusknowledge_3` VALUES ('40', '必须严格正确佩戴口罩，与家人分餐，与家人保持距离1.5米以上。', '11');
INSERT INTO `virusknowledge_3` VALUES ('41', '怕冷明显者，可以选用具有解热散寒类的中成药。', '11');
INSERT INTO `virusknowledge_3` VALUES ('42', '怕冷、发热、肌肉酸痛、咳嗽者，可选用具有清热解毒，宣肺止咳类中成药。', '11');
INSERT INTO `virusknowledge_3` VALUES ('43', '乏力倦怠，恶心、食欲下降、腹泻者，可选用具有化湿解表类中成药。', '11');
INSERT INTO `virusknowledge_3` VALUES ('44', '发热伴有咽痛明显者，可选用具有清热解毒利咽功能类中成药。', '11');
INSERT INTO `virusknowledge_3` VALUES ('45', '发热伴有大便不畅者，可加用具有通腑泻热类制剂。', '11');
INSERT INTO `virusknowledge_3` VALUES ('46', '体温升高，38.5℃以上，可采取温湿毛巾或冰贴等物理降温措施，建议口服解热镇痛药，也可服用清热解毒药。', '11');
INSERT INTO `virusknowledge_3` VALUES ('47', '建议居家隔离时间为7天。', '12');
INSERT INTO `virusknowledge_3` VALUES ('48', '保持居室环境的清洁和通风，可早、中、晚各通风半小时，通风时注意保暖。', '12');
INSERT INTO `virusknowledge_3` VALUES ('49', '学会正确戴口罩、掌握咳嗽礼仪(咳嗽、打喷嚏时用肘部遮挡，不要用手去捂)、勤洗手(不洗手不接触口、鼻、眼等部位)和如厕后先盖马桶盖再冲水。', '12');
INSERT INTO `virusknowledge_3` VALUES ('5', '作息规律，健康饮食。饭前便后认真洗手。在家多和爸爸、妈妈一起做做体育运动。', '2');
INSERT INTO `virusknowledge_3` VALUES ('50', '避免聚会、聚餐，尽可能减少人群密集场所的停留时间。', '12');
INSERT INTO `virusknowledge_3` VALUES ('51', '出现发热、咳嗽等症状，要知晓自我隔离的方法，如单人、单房间隔离;如无条件，家庭成员和患者保持至少1.5米以上距离;随手关门，避免各个房间之间的空气对流;不要使用中央空调。', '12');
INSERT INTO `virusknowledge_3` VALUES ('52', '前往医院就诊途中，所有人员均要佩戴口罩。', '12');
INSERT INTO `virusknowledge_3` VALUES ('53', '发热病人使用过的口罩要用密封袋/保鲜袋，将口罩密封后，放入垃圾桶。', '12');
INSERT INTO `virusknowledge_3` VALUES ('54', '密切观察体温，建议每天至少测量2次。', '13');
INSERT INTO `virusknowledge_3` VALUES ('55', '是否有胸闷、气短，呼吸急促、心率增快等。', '13');
INSERT INTO `virusknowledge_3` VALUES ('56', '腹泻、呕吐等消化系统症状是否加重。', '13');
INSERT INTO `virusknowledge_3` VALUES ('57', '如果出现以下情况，建议到定点医院、发热门诊就诊：', '14');
INSERT INTO `virusknowledge_3` VALUES ('58', '若出现呼吸频率≥30次/分，伴呼吸困难及口唇发绀等表现，须拨打120.由急救医护人员转运到定点医院、发热门诊救治。', '14');
INSERT INTO `virusknowledge_3` VALUES ('6', '从现在起，养成打喷嚏或咳嗽时用纸巾或袖肘遮住嘴巴、鼻子的习惯。', '2');
INSERT INTO `virusknowledge_3` VALUES ('7', '如果有发烧、生病的情况，一定要配合爸爸、妈妈及时去医院就医。', '2');
INSERT INTO `virusknowledge_3` VALUES ('8', '寒假期间', '3');
INSERT INTO `virusknowledge_3` VALUES ('9', '返校途中', '3');

-- ----------------------------
-- Table structure for virusknowledge_4
-- ----------------------------
DROP TABLE IF EXISTS `virusknowledge_4`;
CREATE TABLE `virusknowledge_4`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `of_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of virusknowledge_4
-- ----------------------------
INSERT INTO `virusknowledge_4` VALUES ('1', '自我隔离，避免与其他人员近距离接触。', '2');
INSERT INTO `virusknowledge_4` VALUES ('10', '乘坐公共交通工具时全程佩戴医用外科口罩或N95口罩。', '9');
INSERT INTO `virusknowledge_4` VALUES ('11', '随时保持手卫生，减少接触交通工具的公共物品和部位。', '9');
INSERT INTO `virusknowledge_4` VALUES ('12', '旅途中做好健康监测，自觉发热时要主动测量体温。', '9');
INSERT INTO `virusknowledge_4` VALUES ('13', '留意周围旅客健康状况，避免与可疑症状人员近距离接触。', '9');
INSERT INTO `virusknowledge_4` VALUES ('14', '若旅途中出现可疑症状，应主动戴上医用外科口罩或N95口罩，尽量避免接触其他人员，并视病情及时就医。', '9');
INSERT INTO `virusknowledge_4` VALUES ('15', '旅途中如需去医疗机构就诊时，应主动告诉医生相关疾病流行地区的旅行居住史，配合医生开展相关调查。', '9');
INSERT INTO `virusknowledge_4` VALUES ('16', '妥善保存旅行票据信息，以配合可能的相关密切接触者调查。', '9');
INSERT INTO `virusknowledge_4` VALUES ('17', '确保工作人员和护养老人掌握相关知识，避免共用个人物品，注意通风，落实消毒措施。建立老人和工作人员的健康档案，每日开展晨检和健康登记。', '16');
INSERT INTO `virusknowledge_4` VALUES ('18', '工作人员一旦出现可疑症状，应立即停止工作并去医院就诊排查，排除新型冠状病毒感染和其他传染性疾病后，方可重新上岗。', '16');
INSERT INTO `virusknowledge_4` VALUES ('19', '建立探访人员登记制度，如探访人员有新型冠状病毒感染的可疑症状，应拒绝其探访。所有外来探访人员应佩戴医用外科口罩。', '16');
INSERT INTO `virusknowledge_4` VALUES ('2', '由医护人员对其健康状况进行评估，视病情状况送至医疗机构就诊，送医途中应佩戴医用外科口罩，尽量避免乘坐公共交通工具。', '2');
INSERT INTO `virusknowledge_4` VALUES ('20', '通风换气保持室内空气新鲜。至少每半日开窗通风30分钟以上;不宜开窗通风的，应配备机械换气通风设备。冬季开窗通风时，应注意避免因室内外温差过大而引起感冒。', '16');
INSERT INTO `virusknowledge_4` VALUES ('21', '倡导老人养成经常洗手的好习惯，确保环境清洁卫生。', '16');
INSERT INTO `virusknowledge_4` VALUES ('22', '预备隔离房间，以供未来出现可疑症状的老人隔离治疗使用。有症状的老人应及时予以隔离，避免传染给其他老人。', '16');
INSERT INTO `virusknowledge_4` VALUES ('23', '养老院中有老人出现可疑症状时，及时对该老人单间自我隔离，由医护人员对其健康状况进行评估，视病情状况送至医疗机构就诊，并暂停探访活动。', '17');
INSERT INTO `virusknowledge_4` VALUES ('24', '可疑症状者需住在通风良好的单人房间，并拒绝一切探视。', '31');
INSERT INTO `virusknowledge_4` VALUES ('25', '家庭成员应生活在不同房间，如果条件不允许，应至少保持1米距离，分床睡。可疑症状者应减少活动，限制居住空间，确保需要共用的空间(如厨房和卫生间)通风良好(保持窗户持续开放)。', '31');
INSERT INTO `virusknowledge_4` VALUES ('26', '最好固定一位家庭成员照顾，这位家庭成员应身体健康状况良好且没有慢性疾病。', '32');
INSERT INTO `virusknowledge_4` VALUES ('27', '家庭成员与可疑症状者在同一房间时，都应该佩戴与面部严密贴合的医用外科口罩。随时保持手卫生，避免直接接触身体分泌物，不要共用任何可能导致间接接触感染的物品。', '33');
INSERT INTO `virusknowledge_4` VALUES ('28', '使用过的手套、纸巾、口罩以及其他废物都应该放在患者房间专用的垃圾袋里面，标记为污染物再丢弃。', '34');
INSERT INTO `virusknowledge_4` VALUES ('29', '出现呼吸困难(包括活动后加重的胸闷、憋气、气短)。', '35');
INSERT INTO `virusknowledge_4` VALUES ('3', '曾与可疑症状者有无有效防护的密切接触者，应立即登记，并进行医学观察。', '2');
INSERT INTO `virusknowledge_4` VALUES ('30', '出现意识问题(包括嗜睡、说胡话、分不清昼夜等)。', '35');
INSERT INTO `virusknowledge_4` VALUES ('31', '腹泻。', '35');
INSERT INTO `virusknowledge_4` VALUES ('32', '高烧超过39℃。', '35');
INSERT INTO `virusknowledge_4` VALUES ('33', '其他家庭成员出现新型冠状病毒感染的可疑症状。', '35');
INSERT INTO `virusknowledge_4` VALUES ('34', '症状轻微，体温低于38℃，无明显气短、气促、胸闷、呼吸困难，呼吸、血压、心率等生命体征平稳。', '36');
INSERT INTO `virusknowledge_4` VALUES ('35', '无严重呼吸系统、心血管系统等基础疾病及严重肥胖者。', '36');
INSERT INTO `virusknowledge_4` VALUES ('36', '体温持续2小时以上不退。', '57');
INSERT INTO `virusknowledge_4` VALUES ('37', '如果出现胸闷、气短。', '57');
INSERT INTO `virusknowledge_4` VALUES ('4', '减少不必要的聚会、聚餐等群体性活动，不安排集中用餐。', '2');
INSERT INTO `virusknowledge_4` VALUES ('5', '若出现可疑症状的老人被确诊为新型冠状病毒感染的肺炎，其密切接触者应接受14天医学观察。病人离开后(如住院、死亡等)，应及时对住所进行终末消毒。具体消毒方式由当地疾控机构的专业人员或具有资质的第三方操作或指导。没有消毒前，该住所不建议使用。', '2');
INSERT INTO `virusknowledge_4` VALUES ('6', '有疫情高发地区(如武汉等地区)居住史或旅行史的学生，自离开疫情高发地区后，居家或在指定场所医学观察14天。', '8');
INSERT INTO `virusknowledge_4` VALUES ('7', '各地学生均应尽量居家，减少走亲访友、聚会聚餐，减少到人员密集的公共场所活动，尤其是空气流动性差的地方。', '8');
INSERT INTO `virusknowledge_4` VALUES ('8', '建议学生每日进行健康监测，并根据社区或学校要求向社区或学校指定负责人报告。', '8');
INSERT INTO `virusknowledge_4` VALUES ('9', '寒假结束时，学生如无可疑症状，可正常返校。如有可疑症状，应报告学校或由监护人报告学校，及时就医，待痊愈后再返校。', '8');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finish` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('增加一个紧急救援', '进行中', '2021-01-30 16:01:14', '2021-02-30 16:01:14', NULL);
INSERT INTO `work` VALUES ('增加一个医疗器材', '进行中', '2021-01-30 16:01:15', '2021-02-30 16:01:14', NULL);
INSERT INTO `work` VALUES ('更新专家社区专家图片', '进行中', '2021-01-30 16:01:16', '2021-02-30 16:01:14', NULL);
INSERT INTO `work` VALUES ('更新新冠事件', '未完成', '2021-01-30 16:01:17', '2021-01-31 16:01:14', NULL);
INSERT INTO `work` VALUES ('审核顾客信息', '已完成', '2021-01-30 16:01:18', '2021-01-31 16:01:14', '2021-01-31 6:01:14');
INSERT INTO `work` VALUES ('更新医学药品图片', '进行中', '2021-01-30 16:01:19', '2021-02-30 16:01:14', NULL);
INSERT INTO `work` VALUES ('继续完成代码工作', '未完成', '2021-02-05 15:53:42', '2021-03-01 14:30:05', 'null');

SET FOREIGN_KEY_CHECKS = 1;
