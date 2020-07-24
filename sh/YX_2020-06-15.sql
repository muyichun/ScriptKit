# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 47.99.196.116 (MySQL 5.6.46)
# Database: health
# Generation Time: 2020-06-15 03:20:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `receiver` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `tel` varchar(255) NOT NULL DEFAULT '0' COMMENT '收货人电话',
  `area` varchar(255) DEFAULT NULL COMMENT '地址区域',
  `address` varchar(255) DEFAULT NULL COMMENT '详情地址',
  `type` tinyint(2) DEFAULT '0' COMMENT '1默认地址',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '用户uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;

INSERT INTO `address` (`id`, `uid`, `receiver`, `tel`, `area`, `address`, `type`, `user_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,606497054654464,'午辰','15172558507','湖北省武汉市洪山区','武汉大学',1,604360484585472,1,'2020-04-16 19:21:23','2020-05-08 22:44:46',NULL,NULL),
	(2,608651567955968,'苏会钰','15927119183','湖北省十堰市郧西县','上津镇',0,604357523406848,0,'2020-04-19 18:42:01','2020-04-19 18:42:01',NULL,NULL),
	(3,610901837217792,'徐京','17371889502','湖北省武汉市洪山区','华城花园',0,604354855829504,1,'2020-04-22 21:12:54','2020-05-25 23:14:47',NULL,NULL),
	(4,611473948672000,'田田','15623367334','湖北省武汉市洪山区','武汉大学101宿舍',1,604362413965312,0,'2020-04-23 16:09:35','2020-04-23 16:09:35',NULL,NULL),
	(5,622197064335360,'摸摸','15623333333','北京市市辖区东城区','哦哦哦哦哦哦哦哦哦哦哦',0,604357137530880,1,'2020-05-08 11:14:30','2020-05-08 11:14:44',NULL,NULL),
	(6,622197911584768,'国家科技奖','15655555555','北京市市辖区怀柔区','老家了卡了乐克乐克',0,604357137530880,1,'2020-05-08 11:16:11','2020-05-08 11:16:14',NULL,NULL),
	(7,622407316406272,'yxud','17844603005','北京市市辖区东城区','jddbbdbdbdd',1,622407047970816,0,'2020-05-08 18:12:14','2020-05-08 18:12:14',NULL,NULL),
	(8,625009982701568,'1','13587648248','北京市市辖区东城区','结婚之前25',0,625008833462272,0,'2020-05-12 08:23:16','2020-05-12 08:23:16',NULL,NULL),
	(9,625223078510592,'测试','18888888888','河北省石家庄市长安区','测试地址',1,618579988840449,0,'2020-05-12 15:26:39','2020-05-12 15:26:39',NULL,NULL),
	(10,627351301914624,'夏祥','13012672386','北京市市辖区大兴区','宏盛家园',0,627350790209536,0,'2020-05-15 13:55:03','2020-05-15 13:55:03',NULL,NULL),
	(11,630962262114304,'田田','15623367334','北京市市辖区怀柔区','哦哦哦哦哦哦哦哦哦哦',1,604357137530880,1,'2020-05-20 13:29:23','2020-05-26 11:56:21',NULL,NULL),
	(12,631054545190912,'林静','13529882988','北京市市辖区东城区','飞哥黄金姐姐奶奶家',1,631054276755456,0,'2020-05-20 16:32:44','2020-05-20 16:32:44',NULL,NULL),
	(13,634648912723968,'稳稳','13146397896','湖北省武汉市洪山区','408',1,605909516550144,1,'2020-05-25 15:34:06','2020-05-25 16:16:20',NULL,NULL),
	(14,634874297843712,'xxx','17371889502','北京市市辖区东城区','xxx',0,604354855829504,1,'2020-05-25 23:01:54','2020-05-25 23:14:37',NULL,NULL),
	(15,635198257496064,'正式徐京','17371889502','北京市市辖区东城区','正式',1,604354855829504,1,'2020-05-26 09:45:33','2020-05-26 12:47:29',NULL,NULL),
	(16,635268411424768,'dyydf','15622222222','北京市市辖区东城区','yfufuf',0,604357137530880,1,'2020-05-26 12:04:56','2020-05-26 12:06:20',NULL,NULL),
	(17,635270701514752,'fyfutu','15622222222','北京市市辖区东城区','hcu',0,604357137530880,1,'2020-05-26 12:09:29','2020-05-26 12:09:38',NULL,NULL),
	(18,635306134994944,'徐京','17371889502','湖北省武汉市洪山区','华城花园',1,604354855829504,1,'2020-05-26 13:19:53','2020-05-26 14:38:11',NULL,NULL),
	(19,635389484204032,'xx','17371889502','北京市市辖区东城区','xxx',0,604354855829504,0,'2020-05-26 16:05:29','2020-05-26 16:05:29',NULL,NULL),
	(20,635393938554880,'hfufuf','15623367334','北京市市辖区东城区','gjgigi',1,604357137530880,0,'2020-05-26 16:14:20','2020-05-26 16:14:20',NULL,NULL),
	(21,637451789926400,'测试账户','15811111111','北京市市辖区东城区','某某某大街某某某户',1,625138957549568,0,'2020-05-29 12:22:55','2020-05-29 12:22:55',NULL,NULL),
	(22,644605267673088,'稳稳','13146397805','湖北省武汉市洪山区','南湖康泰花园',0,605909516550144,1,'2020-06-08 09:15:36','2020-06-12 13:17:16',NULL,NULL),
	(23,647716711432192,'稳稳','13146697885','湖北省武汉市江岸区','银泰',1,605909516550144,0,'2020-06-12 16:17:29','2020-06-12 16:17:29',NULL,NULL);

/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ask
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ask`;

CREATE TABLE `ask` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT '0' COMMENT '发帖用户ID',
  `state_id` bigint(20) DEFAULT '2' COMMENT '帖子状态ID',
  `title` varchar(255) DEFAULT NULL COMMENT '帖子题目',
  `content` mediumtext COMMENT '帖子内容',
  `details` varchar(255) DEFAULT NULL COMMENT '帖子摘要',
  `covers` mediumtext COMMENT '帖子封面图片下载路径，使用#作为分隔符',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频下载路径',
  `source` int(11) NOT NULL DEFAULT '0' COMMENT '帖子来源：1：自建；2：转发',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型：0：帖子；1：问答',
  `topic_id` bigint(20) DEFAULT NULL COMMENT '话题ID',
  `is_anonymous` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否匿名发表',
  `collect_num` int(11) DEFAULT '0' COMMENT '帖子收藏数',
  `comment_num` int(11) NOT NULL DEFAULT '0' COMMENT '文章评论数',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子阅读数',
  `favourite_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子喜欢数',
  `transponder_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子转发数',
  `city` varchar(255) DEFAULT NULL COMMENT '帖子城市',
  `ask_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '提问时间',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基础信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基础信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新用户，基础信息',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基础信息',
  PRIMARY KEY (`id`,`uid`),
  KEY `FKd166pgxvaav9ja19gf4p094jo` (`state_id`),
  KEY `FK24f528pbxo619s7wt4j00grwj` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

LOCK TABLES `ask` WRITE;
/*!40000 ALTER TABLE `ask` DISABLE KEYS */;

INSERT INTO `ask` (`id`, `uid`, `user_id`, `state_id`, `title`, `content`, `details`, `covers`, `video_url`, `source`, `type`, `topic_id`, `is_anonymous`, `collect_num`, `comment_num`, `read_num`, `favourite_num`, `transponder_num`, `city`, `ask_time`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,605515629461504,605515210031104,2,'防晒该如何选择呢？','怎么区分适合自己的防晒呀？','',NULL,'',0,1,NULL,b'1',0,1,0,0,0,NULL,'2020-04-15 10:51:28','2020-04-15 10:51:28','2020-04-15 10:51:28',NULL,NULL),
	(2,605518053769216,605515210031104,2,'中药会过期吗？','家里的老人把中药材藏了很久之后才拿出来服用，他们认为“中药材越陈越好”，中药材会过期吗？','','http://lovepinpin.com/FtqnCQcr7PP389E3PwCnmn88qI9T','',0,1,NULL,b'0',0,3,0,0,0,NULL,'2020-04-15 10:56:17','2020-04-15 10:56:17','2020-04-15 10:56:17',NULL,NULL),
	(4,614476474744832,604354855829504,2,'增肌粉有用么？','如题','',NULL,'',0,1,NULL,b'0',0,0,0,0,0,NULL,'2020-04-27 19:35:04','2020-04-27 19:35:04','2020-04-27 19:35:04',NULL,NULL),
	(5,625139267928064,625138957549568,2,'如何拯救秃头','如题','',NULL,'',0,1,NULL,b'0',0,0,0,0,0,NULL,'2020-05-12 12:40:08','2020-05-12 12:40:08','2020-05-12 12:40:08',NULL,NULL);

/*!40000 ALTER TABLE `ask` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ask_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ask_comment`;

CREATE TABLE `ask_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '评论用户ID',
  `state_id` bigint(20) DEFAULT '2' COMMENT '状态ID',
  `ask_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `target_id` bigint(20) DEFAULT NULL COMMENT '回复评论ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父评论ID',
  `content` mediumtext COMMENT '评论内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '父评论允许有一张图片',
  `favourite_number` int(11) DEFAULT '0' COMMENT '评论喜欢数',
  `comment_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '评论创建时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基本信息',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基本信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基本信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新操作用户，基本信息',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ask_comment` WRITE;
/*!40000 ALTER TABLE `ask_comment` DISABLE KEYS */;

INSERT INTO `ask_comment` (`id`, `uid`, `user_id`, `state_id`, `ask_id`, `target_id`, `parent_id`, `content`, `image_url`, `favourite_number`, `comment_time`, `create_user_id`, `create_date`, `last_update_date`, `last_update_user_id`)
VALUES
	(1,605516325715968,604360484585472,2,605515629461504,NULL,NULL,'给大家普及两个日常误区：一个是不要以为防晒只是夏天才要做的，第二是不要以为防晒只是小姐姐要做的哦。','',0,'2020-04-15 10:52:51',NULL,'2020-04-15 10:52:51','2020-04-15 10:52:51',NULL),
	(2,605518758412288,604360484585472,2,605518053769216,NULL,NULL,'一般来说，中药材最好是趁早食用，一旦药材质量下降，药效降低，有时非但起不到保健养生作用，还会影响身体健康。目前，中医药界比较普遍的看法是，中草药在保质期内，且采用了适当的保存方法，才能真正保质 。一旦中草药质量下降，药效降低，起不到治病救人的作用，自然无法保值增值 ，收藏也毫无价值。\n','',2,'2020-04-15 10:57:41',NULL,'2020-04-15 10:57:41','2020-04-15 10:57:41',NULL),
	(3,605518884241408,604360484585472,2,605518053769216,NULL,NULL,'▲如何辨中药材是否过期？\n\n☞观其形：外形失去固定形状者，如原为粉末状或颗粒状，现黏成一团或潮解成糊状，或胶囊变扁成凹凸不平，手感潮湿粘手等都是变质的表现。\n\n☞观其色：片剂、胶囊、糖衣片、水剂、糖浆变色等是变质的表现。\n\n☞闻其香：中成药都有其特有的气味，若有酸败发霉的气味，也是变质的结果。含有西药成分的中成药其保质期应按照西药执行，通常不应超过3年。\n\n虽然说很多中草药都是经过炮制并且晒干、烘干了的，但是按照上面的内容来看，朋友们还是不要做 囤药族 了，最好的方法就是中药材用多少、配多少。','',0,'2020-04-15 10:57:56',NULL,'2020-04-15 10:57:56','2020-04-15 10:57:56',NULL),
	(4,608649462415360,604357523406848,2,605518053769216,605518758412288,605518758412288,'涨知识啦！',NULL,0,'2020-04-19 18:37:50',NULL,'2020-04-19 18:37:50','2020-04-19 18:37:50',NULL);

/*!40000 ALTER TABLE `ask_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table banner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `img` varchar(255) DEFAULT NULL COMMENT 'banner图片地址',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'banner类型(0-待定,1-商城首页,2-商城分类,3-健康首页)',
  `action` tinyint(2) DEFAULT '0' COMMENT 'banner跳转(0-仅展示,1-h5地址,2-食谱列表,3-商品详情,4-分享帖详情，5-问题帖详情)',
  `extra` mediumtext COMMENT '不同的action对应不同的内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;

INSERT INTO `banner` (`id`, `uid`, `img`, `type`, `action`, `extra`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(14,567958866755584,'http://lovepinpin.com/1585559154951',3,2,'{}',0,'2020-04-09 13:17:31','2020-04-09 13:17:31',NULL,NULL),
	(41,891046302786332,'http://lovepinpin.com/WechatIMG929.png',1,1,'{\"h5\":\"https://mp.weixin.qq.com/s/p43k5MkRrJmGC6RByki_xQ\"}',0,'2020-05-19 19:45:27','2020-05-19 19:45:27',NULL,NULL),
	(42,891046302786331,'http://lovepinpin.com/1585451425134',1,3,'{\"goods_uid\":12345}',0,'2020-05-19 19:45:27','2020-05-19 19:45:27',NULL,NULL);

/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bm_json
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bm_json`;

CREATE TABLE `bm_json` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `certification_json` mediumtext COMMENT '推荐专家json',
  `topic_json` mediumtext COMMENT '推荐话题json',
  `extra_json` mediumtext COMMENT '扩展：版本信息',
  `type` tinyint(2) DEFAULT '0' COMMENT '0推荐专家1推荐话题2版本信息3帮助中心',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `bm_json` WRITE;
/*!40000 ALTER TABLE `bm_json` DISABLE KEYS */;

INSERT INTO `bm_json` (`id`, `uid`, `certification_json`, `topic_json`, `extra_json`, `type`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,15863201201,'[{\"uid\":587831864983553}]',NULL,NULL,0,0,'2020-04-08 12:27:11','2020-04-14 22:48:53',NULL,NULL),
	(3,15863201202,NULL,'[{\"uid\": 604404986150912},{\"uid\": 604389475614720},{\"uid\": 605642473603072},{\"uid\": 605830713966592},{\"uid\": 604982566977536},{\"uid\": 605832442019840},{\"uid\": 605833264103424},{\"uid\": 605829950603264}]',NULL,1,0,'2020-04-08 12:29:12','2020-04-14 23:09:52',NULL,NULL),
	(4,15863201203,NULL,NULL,'[{\n	\"platform\": \"Android\",\n         \"versionCode\":4,\n	\"versionId\": \"v1.0.0.125\",\n	\"forceUpdate\": false,\n	\"downloadUrl\": \"http://lovepinpin.com/0.5022869886416308\",\n	\"versionLog\": \"新增红包抵扣\"\n}, {\n	\"platform\": \"iOS\",\n	\"versionId\": \"v0.1.0.91\",\n	\"forceUpdate\": true,\n	\"downloadUrl\": \"http://www.baidu.com\",\n	\"versionLog\": \"界面图标修改\"\n}]',2,0,'2020-04-15 17:27:07','2020-04-16 20:22:22',NULL,NULL),
	(5,15863201204,NULL,NULL,'[{\n	\"title\": \"账号相关\",\n	\"data\": [{\n		\"question\": \"如何使用密码登录？\",\n		\"answer\": [{\n			\"content\": \"通过手机号注册的账号，可以直接在我的-设置-账号与安全中设置密码；使用微信登录的账号，需要先绑定手机号。设置密码后，可以通过手机号+密码的方式登录。\"\n		}]\n     }]\n}, {\n	\"title\": \"社区相关\",\n	\"data\": [{\n		\"question\": \"如何删除我发布的动态？\",\n		\"answer\": [{\n			\"content\": \"目前暂不支持用户编辑或删除已发布的动态，如确实需要更改或删除，请联系客服手动处理。1\"\n		}, {\n			\"image\": \"http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A\"\n		},{\n			\"content\": \"目前暂不支持用户编辑或删除已发布的动态，如确实需要更改或删除，请联系客服手动处理。1\"\n		}, {\n			\"image\": \"http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A\"\n		}\n]\n	}]\n}, {\n	\"title\": \"商城相关\",\n	\"data\": [{\n		\"question\": \"如何获得红包？\",\n		\"answer\": [{\n			\"content\": \"我的-邀请好友活动中，每成功邀请一名好友注册app即可获得一个随机红包。可以在我的-红包中查看红包余额。\"\n		}]\n	},{\n		\"question\": \"如何使用红包？\",\n		\"answer\": [{\n			\"content\": \"账号中的红包可以用于商城购买商品时抵扣，请在创建订单时勾选即可。\"\n		},{\n                        \"content\":\"不同商品不同规格，可抵扣红包金额不同，请在具体商品处查看。\"\n                 }\n		\n		]\n	}]\n}]',3,0,'2020-04-23 21:34:26','2020-05-06 10:28:12',NULL,NULL);

/*!40000 ALTER TABLE `bm_json` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `add_nums` int(20) DEFAULT '1' COMMENT '添加数量',
  `g_s_r_uid` bigint(20) NOT NULL COMMENT '规格uid',
  `user_uid` bigint(20) NOT NULL COMMENT '用户uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`),
  KEY `fk_c_g_s_r_uid` (`g_s_r_uid`),
  CONSTRAINT `fk_c_g_s_r_uid` FOREIGN KEY (`g_s_r_uid`) REFERENCES `goods_specification_relation` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;

INSERT INTO `cart` (`id`, `uid`, `add_nums`, `g_s_r_uid`, `user_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,604990955585536,1,602031395962882,604651502174208,0,'2020-04-14 17:29:02','2020-04-14 17:29:02',NULL,NULL),
	(2,605938583076864,1,12213123,605909516550144,1,'2020-04-16 00:51:48','2020-05-15 10:24:23',NULL,NULL),
	(3,606655347687424,5,601961342697473,606654508826624,0,'2020-04-17 00:35:53','2020-04-17 00:38:17',NULL,NULL),
	(4,607946673225728,1,602020155228166,607945893085184,1,'2020-04-18 19:21:31','2020-04-18 19:21:55',NULL,NULL),
	(5,611709484007424,1,601961342697473,605909516550144,1,'2020-04-23 23:57:33','2020-04-23 23:57:37',NULL,NULL),
	(6,612182836379648,1,601961342697473,605909516550144,1,'2020-04-24 15:38:01','2020-04-24 15:38:03',NULL,NULL),
	(7,612443302658048,1,601961342697473,605909516550144,1,'2020-04-25 00:15:31','2020-04-25 00:16:34',NULL,NULL),
	(8,624566820929536,1,601941268758529,605909516550144,1,'2020-05-11 17:42:47','2020-05-11 17:42:49',NULL,NULL),
	(9,624567273914368,1,601941268758529,605909516550144,1,'2020-05-11 17:43:41','2020-05-20 15:11:20',NULL,NULL),
	(10,627621624807424,1,601941268758529,627350790209536,1,'2020-05-15 22:52:08','2020-05-15 22:52:22',NULL,NULL),
	(11,629848229806080,2,12213123,604354855829504,1,'2020-05-19 00:36:00','2020-05-19 00:36:20',NULL,NULL),
	(12,630948739678208,1,12213123,604357137530880,1,'2020-05-20 13:02:31','2020-05-20 13:19:26',NULL,NULL),
	(13,630989491535872,3,12213123,604362413965312,1,'2020-05-20 14:23:29','2020-05-20 14:23:38',NULL,NULL),
	(14,630989508313088,1,601941268758529,604362413965312,1,'2020-05-20 14:23:31','2020-05-20 14:23:38',NULL,NULL),
	(15,636849940856832,1,636795532345345,604360484585472,0,'2020-05-28 16:27:09','2020-05-28 16:27:09',NULL,NULL),
	(16,646047277776896,1,636793351307266,605909516550144,1,'2020-06-10 09:00:37','2020-06-12 09:48:21',NULL,NULL);

/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `top_img` varchar(255) DEFAULT NULL COMMENT '分类top图',
  `order` int(2) NOT NULL DEFAULT '0' COMMENT '0不展示1第一个2第二个',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `uid`, `name`, `desc`, `img`, `top_img`, `order`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,895771572201622,'营养餐','吃上健康营养','http://lovepinpin.com/1585379462290','http://lovepinpin.com/1585451481979',1,0,'2020-02-24 21:46:02','2020-04-07 18:44:22',NULL,NULL),
	(2,868085961604784,'健康菜园','新鲜时蔬直达','http://lovepinpin.com/1585379484580','http://lovepinpin.com/1585451481979',2,0,'2020-02-24 21:47:57','2020-04-16 14:06:44',NULL,NULL);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table certification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `certification`;

CREATE TABLE `certification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) NOT NULL DEFAULT '0' COMMENT '手机号',
  `id_card` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `organization_name` varchar(255) DEFAULT NULL COMMENT '机构名称或组织名称',
  `position` varchar(255) DEFAULT NULL COMMENT '职位或称号',
  `certification_info` varchar(255) DEFAULT NULL COMMENT '认证说明：组织名称+职位/称号名称',
  `proof_information` varchar(255) DEFAULT NULL COMMENT '职业证明材料/机构证明',
  `id_card_front` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `id_card_back` varchar(255) DEFAULT NULL COMMENT '身份证国徽面',
  `social_credit_code` varchar(255) DEFAULT NULL COMMENT '社会信用代码',
  `industry_type` varchar(255) DEFAULT NULL COMMENT '行业类型',
  `area` varchar(255) DEFAULT NULL COMMENT '所在区域',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0个人1机构',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '用户uid',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0待审核1审核通过2审核失败',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;

INSERT INTO `certification` (`id`, `uid`, `name`, `tel`, `id_card`, `organization_name`, `position`, `certification_info`, `proof_information`, `id_card_front`, `id_card_back`, `social_credit_code`, `industry_type`, `area`, `type`, `user_uid`, `state`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(15,587831864983550,'锐杰','15623367334','42102319950210127X','武汉大学','job','武大男神','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6',NULL,'移动互联网','湖北-武汉',0,604362413965312,1,1,'2020-03-22 01:16:59','2020-04-26 19:19:19',NULL,NULL),
	(16,587831864983553,'远行健康','15172558507','42102319950210127X','远行健康','产品经理','远行健康','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','91110105MA0023364P','移动互联网','湖北-武汉',1,604360484585472,1,0,'2020-04-02 11:17:26','2020-04-14 17:01:37',NULL,NULL),
	(17,587831864983554,'刘医生','17612745294','42102319950210127X','刘医生','job','刘医生','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6',NULL,'移动互联网','湖北-武汉',0,604810969612288,1,0,'2020-04-26 19:08:48','2020-04-26 19:13:02',NULL,NULL),
	(88,631192009310208,'刚刚','15172558597','420625199706190010','？给','v刚刚好','哈哈','http://lovepinpin.com/1589979547290.8486','http://lovepinpin.com/1589979525570.2395','http://lovepinpin.com/1589978939560.639','','','',0,605515210031104,2,0,'2020-05-20 21:05:51','2020-05-20 21:05:51',NULL,NULL);

/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer_feedback
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_feedback`;

CREATE TABLE `customer_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `text` mediumtext COMMENT '反馈内容',
  `tel` varchar(255) NOT NULL DEFAULT '0' COMMENT '联系电话（可选）',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `customer_feedback` WRITE;
/*!40000 ALTER TABLE `customer_feedback` DISABLE KEYS */;

INSERT INTO `customer_feedback` (`id`, `uid`, `text`, `tel`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,621606372114432,'hello,你好啊！','17371889502',0,'2020-05-07 15:40:54','2020-05-07 15:40:54',NULL,NULL),
	(2,621609794666496,'hello,你好啊123123！','',0,'2020-05-07 15:47:42','2020-05-07 15:47:42',NULL,NULL),
	(3,621611220729856,'hello,你好啊123123！','',0,'2020-05-07 15:50:32','2020-05-07 15:50:32',NULL,NULL),
	(4,621611271061504,'hello,你好啊12312xxx3！','',0,'2020-05-07 15:50:38','2020-05-07 15:50:38',NULL,NULL),
	(5,621635572858880,'摸摸摸','0',0,'2020-05-07 16:38:55','2020-05-07 16:38:55',NULL,NULL),
	(6,621636487217152,'hello,你好啊！','17371889502',0,'2020-05-07 16:40:44','2020-05-07 16:40:44',NULL,NULL),
	(7,621636881481728,'hello,你好啊！','0',0,'2020-05-07 16:41:31','2020-05-07 16:41:31',NULL,NULL),
	(8,621638190104576,'米开朗基罗','15623367334',0,'2020-05-07 16:44:07','2020-05-07 16:44:07',NULL,NULL),
	(9,621639330955264,'米开朗基罗','15623367334',0,'2020-05-07 16:46:23','2020-05-07 16:46:23',NULL,NULL),
	(10,621640211759104,'erwqrerawra','15623367334',0,'2020-05-07 16:48:08','2020-05-07 16:48:08',NULL,NULL),
	(11,621640379531264,'erwqrerawra','15623367334',0,'2020-05-07 16:48:28','2020-05-07 16:48:28',NULL,NULL),
	(12,621640614412288,'哦哦米开朗基罗','15623367334',0,'2020-05-07 16:48:56','2020-05-07 16:48:56',NULL,NULL),
	(13,621648357097472,'米开朗基罗','15623367334',0,'2020-05-07 17:04:19','2020-05-07 17:04:19',NULL,NULL),
	(14,621793983332352,'哈哈','0',0,'2020-05-07 21:53:39','2020-05-07 21:53:39',NULL,NULL),
	(15,621794033664000,'嘘嘘嘘','1245784',0,'2020-05-07 21:53:45','2020-05-07 21:53:45',NULL,NULL);

/*!40000 ALTER TABLE `customer_feedback` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_market
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_market`;

CREATE TABLE `data_market` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `post_publish_count` int(10) NOT NULL DEFAULT '0' COMMENT '分享帖发布量',
  `post_comment_count` int(10) NOT NULL DEFAULT '0' COMMENT '分享帖评论量',
  `post_like_count` int(10) NOT NULL DEFAULT '0' COMMENT '分享帖点赞量',
  `ask_publish_count` int(10) NOT NULL DEFAULT '0' COMMENT '问答帖发布量',
  `ask_comment_count` int(10) NOT NULL DEFAULT '0' COMMENT '问答帖评论量',
  `mall_order_count` int(10) NOT NULL DEFAULT '0' COMMENT '支付订单总数',
  `mall_money_count` int(10) NOT NULL DEFAULT '0' COMMENT '支付金额总数',
  `user_count` int(10) NOT NULL DEFAULT '0' COMMENT '新增注册用户数',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `data_market` WRITE;
/*!40000 ALTER TABLE `data_market` DISABLE KEYS */;

INSERT INTO `data_market` (`id`, `uid`, `date`, `post_publish_count`, `post_comment_count`, `post_like_count`, `ask_publish_count`, `ask_comment_count`, `mall_order_count`, `mall_money_count`, `user_count`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,613560698798080,'2020-04-24',0,0,0,0,0,0,0,0,0,'2020-04-26 13:15:35','2020-04-27 17:10:30',NULL,NULL),
	(2,613560698798089,'2020-04-25',0,0,0,0,0,0,0,0,0,'2020-04-26 13:15:35','2020-04-27 17:10:25',NULL,NULL),
	(3,614224170582016,'2020-04-26',5,1,1,0,1,1,2,1,0,'2020-04-27 11:13:47','2020-04-27 17:10:20',NULL,NULL),
	(4,613560698798081,'2020-04-27',0,0,0,1,0,0,0,0,0,'2020-04-26 13:15:35','2020-04-27 17:10:16',NULL,NULL),
	(5,614609820057600,'2020-04-28',6,0,0,0,0,0,0,1,0,'2020-04-28 00:00:00','2020-04-28 00:00:00',NULL,NULL),
	(6,615334595788800,'2020-04-29',5,2,0,0,0,0,0,0,0,'2020-04-29 00:00:00','2020-04-29 00:00:00',NULL,NULL),
	(7,616059371520000,'2020-04-30',2,0,0,0,0,0,0,0,0,'2020-04-30 00:00:00','2020-04-30 00:00:00',NULL,NULL),
	(8,616784147251200,'2020-05-01',0,0,0,0,0,0,0,0,0,'2020-05-01 00:00:00','2020-05-01 00:00:00',NULL,NULL),
	(9,617508922982400,'2020-05-02',0,0,0,0,0,0,0,0,0,'2020-05-02 00:00:00','2020-05-02 00:00:00',NULL,NULL),
	(10,618233698713600,'2020-05-03',1,0,1,0,0,0,0,1,0,'2020-05-03 00:00:00','2020-05-03 00:00:00',NULL,NULL),
	(11,618958474444800,'2020-05-04',0,0,0,0,0,0,0,0,0,'2020-05-04 00:00:00','2020-05-04 00:00:00',NULL,NULL),
	(12,619683250176000,'2020-05-05',0,0,0,0,0,0,0,0,0,'2020-05-05 00:00:00','2020-05-05 00:00:00',NULL,NULL),
	(13,620408025907200,'2020-05-06',0,0,0,0,0,0,0,0,0,'2020-05-06 00:00:00','2020-05-06 00:00:00',NULL,NULL),
	(14,621132801638400,'2020-05-07',0,0,1,0,0,0,0,3,0,'2020-05-07 00:00:00','2020-05-07 00:00:00',NULL,NULL),
	(15,621857577369600,'2020-05-08',3,1,3,0,0,0,0,3,0,'2020-05-08 00:00:00','2020-05-08 00:00:00',NULL,NULL),
	(16,622582353100800,'2020-05-09',0,0,0,0,0,0,0,0,0,'2020-05-09 00:00:00','2020-05-09 00:00:00',NULL,NULL),
	(17,623307128832000,'2020-05-10',0,0,0,0,0,0,0,0,0,'2020-05-10 00:00:00','2020-05-10 00:00:00',NULL,NULL),
	(18,624031904563200,'2020-05-11',0,0,0,0,0,0,0,3,0,'2020-05-11 00:00:00','2020-05-11 00:00:00',NULL,NULL),
	(19,624756680294400,'2020-05-12',0,0,2,1,0,0,0,16,0,'2020-05-12 00:00:00','2020-05-12 00:00:00',NULL,NULL),
	(20,625481456025600,'2020-05-13',0,0,0,0,0,0,0,1,0,'2020-05-13 00:00:00','2020-05-13 00:00:00',NULL,NULL),
	(21,626206231756800,'2020-05-14',0,0,0,0,0,0,0,1,0,'2020-05-14 00:00:00','2020-05-14 00:00:00',NULL,NULL),
	(22,626931007488000,'2020-05-15',0,0,1,0,0,0,0,2,0,'2020-05-15 00:00:00','2020-05-15 00:00:00',NULL,NULL),
	(23,627655783219200,'2020-05-16',0,0,0,0,0,0,0,1,0,'2020-05-16 00:00:00','2020-05-16 00:00:00',NULL,NULL),
	(24,628380558950400,'2020-05-17',0,0,2,0,0,0,0,1,0,'2020-05-17 00:00:00','2020-05-17 00:00:00',NULL,NULL),
	(25,629105334681600,'2020-05-18',0,0,0,0,0,0,0,1,0,'2020-05-18 00:00:00','2020-05-18 00:00:00',NULL,NULL),
	(26,629830110412800,'2020-05-19',0,0,0,0,0,1,2,1,0,'2020-05-19 00:00:00','2020-05-19 00:00:00',NULL,NULL),
	(27,630554886144000,'2020-05-20',0,0,0,0,0,4,104,3,0,'2020-05-20 00:00:00','2020-05-20 00:00:00',NULL,NULL),
	(28,631279661875200,'2020-05-21',0,0,0,0,0,0,0,4,0,'2020-05-21 00:00:00','2020-05-21 00:00:00',NULL,NULL),
	(29,632004437606400,'2020-05-22',0,0,0,0,0,0,0,1,0,'2020-05-22 00:00:00','2020-05-22 00:00:00',NULL,NULL),
	(30,632729213337600,'2020-05-23',0,0,0,0,0,0,0,0,0,'2020-05-23 00:00:00','2020-05-23 00:00:00',NULL,NULL),
	(31,633453989068800,'2020-05-24',0,0,1,0,0,0,0,2,0,'2020-05-24 00:00:00','2020-05-24 00:00:00',NULL,NULL),
	(32,634178764800000,'2020-05-25',0,0,0,0,0,0,0,0,0,'2020-05-25 00:00:00','2020-05-25 00:00:00',NULL,NULL),
	(33,634903540531200,'2020-05-26',0,0,0,0,0,1,1,2,0,'2020-05-26 00:00:00','2020-05-26 00:00:00',NULL,NULL),
	(34,635628316262400,'2020-05-27',0,0,0,0,0,0,0,0,0,'2020-05-27 00:00:00','2020-05-27 00:00:00',NULL,NULL),
	(35,636353091993600,'2020-05-28',0,0,0,0,0,0,0,0,0,'2020-05-28 00:00:00','2020-05-28 00:00:00',NULL,NULL),
	(36,637077867724800,'2020-05-29',0,0,0,0,0,0,0,1,0,'2020-05-29 00:00:00','2020-05-29 00:00:00',NULL,NULL),
	(37,637802643456000,'2020-05-30',0,0,0,0,0,0,0,0,0,'2020-05-30 00:00:00','2020-05-30 00:00:00',NULL,NULL),
	(38,638527419187200,'2020-05-31',0,0,0,0,0,0,0,0,0,'2020-05-31 00:00:00','2020-05-31 00:00:00',NULL,NULL),
	(39,639252194918400,'2020-06-01',0,0,0,0,0,0,0,0,0,'2020-06-01 00:00:00','2020-06-01 00:00:00',NULL,NULL),
	(40,639976970649600,'2020-06-02',0,0,0,0,0,0,0,0,0,'2020-06-02 00:00:00','2020-06-02 00:00:00',NULL,NULL),
	(41,640701746380800,'2020-06-03',0,0,0,0,0,0,0,0,0,'2020-06-03 00:00:00','2020-06-03 00:00:00',NULL,NULL),
	(42,641426522112000,'2020-06-04',0,0,0,0,0,0,0,0,0,'2020-06-04 00:00:00','2020-06-04 00:00:00',NULL,NULL),
	(43,642151297843200,'2020-06-05',0,0,0,0,0,0,0,1,0,'2020-06-05 00:00:00','2020-06-05 00:00:00',NULL,NULL),
	(44,642876073574400,'2020-06-06',0,0,0,0,0,0,0,0,0,'2020-06-06 00:00:00','2020-06-06 00:00:00',NULL,NULL),
	(45,643600849305600,'2020-06-07',0,0,0,0,0,1,2,0,0,'2020-06-07 00:00:00','2020-06-07 00:00:00',NULL,NULL),
	(46,644325625036800,'2020-06-08',0,0,0,0,0,4,8,2,0,'2020-06-08 00:00:00','2020-06-08 00:00:00',NULL,NULL),
	(47,645050400768000,'2020-06-09',0,0,0,0,0,1,2,0,0,'2020-06-09 00:00:00','2020-06-09 00:00:00',NULL,NULL),
	(48,645775176499200,'2020-06-10',0,0,0,0,0,2,4,0,0,'2020-06-10 00:00:00','2020-06-10 00:00:00',NULL,NULL),
	(49,646499952230400,'2020-06-11',0,0,0,0,0,0,0,1,0,'2020-06-11 00:00:00','2020-06-11 00:00:00',NULL,NULL),
	(50,647224727961600,'2020-06-12',0,1,0,0,0,3,6,0,0,'2020-06-12 00:00:00','2020-06-12 00:00:00',NULL,NULL),
	(51,647949503692800,'2020-06-13',0,0,0,0,0,0,0,0,0,'2020-06-13 00:00:00','2020-06-13 00:00:00',NULL,NULL),
	(52,648674279424000,'2020-06-14',0,0,0,0,0,0,0,0,0,'2020-06-14 00:00:00','2020-06-14 00:00:00',NULL,NULL),
	(53,649399055155200,'2020-06-15',0,0,0,0,0,0,0,0,0,'2020-06-15 00:00:00','2020-06-15 00:00:00',NULL,NULL);

/*!40000 ALTER TABLE `data_market` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table file_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `file_info`;

CREATE TABLE `file_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `uid` bigint(20) NOT NULL COMMENT '全局唯一主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '文件所属用户的UID',
  `type` int(11) NOT NULL COMMENT '文件所属实体的类型，1为POST，2为POST_COMMENT，3为USER_AVATAR，4为user_background，5为activity，6为activity_comment;7为topic',
  `url` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '下载url',
  `target_id` bigint(20) DEFAULT NULL COMMENT '文件所关联的实体ID',
  `active` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否被激活',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `file_info` WRITE;
/*!40000 ALTER TABLE `file_info` DISABLE KEYS */;

INSERT INTO `file_info` (`id`, `uid`, `user_id`, `type`, `url`, `target_id`, `active`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(117,586064804708352,581758974164992,3,'http://lovepinpin.com/FoIyHZRZPvQOgtmPpTQyzqKS3QSN',581758974164992,b'0',NULL,'2020-03-19 14:46:09',NULL,'2020-03-19 14:46:09'),
	(118,586076104163328,581758974164992,4,'http://lovepinpin.com/FiZRQxFJc8AhpiRWk9kq8c6xr5ub',581758974164992,b'0',NULL,'2020-03-19 15:08:36',NULL,'2020-03-19 15:08:36'),
	(119,586083528081408,581758974164992,4,'http://lovepinpin.com/FtCkFNiBUH6Gs1OY0v104YMceusb',581758974164992,b'0',NULL,'2020-03-19 15:23:21',NULL,'2020-03-19 15:23:21'),
	(120,588469382414337,499122066948096,1,'www.baidu.com',588469382414336,b'1',NULL,'2020-03-22 22:23:35',NULL,'2020-03-22 22:23:35'),
	(121,588938464985089,581758974164992,1,'http://lovepinpin.com/FtCkFNiBUH6Gs1OY0v104YMceusb',588938464985088,b'1',NULL,'2020-03-23 13:55:36',NULL,'2020-03-23 13:55:36'),
	(122,588939991711745,581758974164992,1,'http://lovepinpin.com/FtCkFNiBUH6Gs1OY0v104YMceusb',588939991711744,b'1',NULL,'2020-03-23 13:58:38',NULL,'2020-03-23 13:58:38'),
	(123,589003048878080,499122066948096,1,'www.baidu.com',589003023712256,b'1',NULL,'2020-03-23 16:03:53',NULL,'2020-03-23 16:03:53'),
	(124,589003048878081,499122066948096,1,'www.taobao.com',589003023712256,b'1',NULL,'2020-03-23 16:03:53',NULL,'2020-03-23 16:03:53'),
	(125,589003535417345,499122066948096,1,'www.baidu.com',589003535417344,b'1',NULL,'2020-03-23 16:04:51',NULL,'2020-03-23 16:04:51'),
	(126,589003535417346,499122066948096,1,'www.taobao.com',589003535417344,b'1',NULL,'2020-03-23 16:04:51',NULL,'2020-03-23 16:04:51'),
	(127,589121529577473,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589121529577472,b'1',NULL,'2020-03-23 19:59:19',NULL,'2020-03-23 19:59:19'),
	(128,589687970332673,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589687970332672,b'1',NULL,'2020-03-24 14:44:44',NULL,'2020-03-24 14:44:44'),
	(129,589688012275713,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589688012275712,b'1',NULL,'2020-03-24 14:44:49',NULL,'2020-03-24 14:44:49'),
	(130,589688037441537,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589688037441536,b'1',NULL,'2020-03-24 14:44:52',NULL,'2020-03-24 14:44:52'),
	(131,589688305876993,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589688305876992,b'1',NULL,'2020-03-24 14:45:24',NULL,'2020-03-24 14:45:24'),
	(132,589688993742849,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589688993742848,b'1',NULL,'2020-03-24 14:46:46',NULL,'2020-03-24 14:46:46'),
	(133,589688993742850,581758974164992,1,'http://lovepinpin.com/FiZds9Zqc0ch2G519sS632rUXYDC',589688993742848,b'1',NULL,'2020-03-24 14:46:46',NULL,'2020-03-24 14:46:46'),
	(134,589689111183361,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589689111183360,b'1',NULL,'2020-03-24 14:47:00',NULL,'2020-03-24 14:47:00'),
	(135,589689111183362,581758974164992,1,'http://lovepinpin.com/FiZds9Zqc0ch2G519sS632rUXYDC',589689111183360,b'1',NULL,'2020-03-24 14:47:00',NULL,'2020-03-24 14:47:00'),
	(136,589689245401089,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',589689245401088,b'1',NULL,'2020-03-24 14:47:16',NULL,'2020-03-24 14:47:16'),
	(137,590282135437313,581758974164992,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',590282135437312,b'1',NULL,'2020-03-25 10:25:14',NULL,'2020-03-25 10:25:14'),
	(138,590362557022209,581758974164992,2,'',590362557022208,b'1',NULL,'2020-03-25 13:05:01',NULL,'2020-03-25 13:05:01'),
	(139,591197642948609,581758974164992,1,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',591197642948608,b'1',NULL,'2020-03-26 16:44:11',NULL,'2020-03-26 16:44:11'),
	(140,591200209862657,581758974164992,1,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',591200209862656,b'1',NULL,'2020-03-26 16:49:17',NULL,'2020-03-26 16:49:17'),
	(141,591769217531905,591221340766208,1,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',591769217531904,b'1',NULL,'2020-03-27 11:39:48',NULL,'2020-03-27 11:39:48'),
	(142,591769519521793,591221340766208,1,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',591769519521792,b'1',NULL,'2020-03-27 11:40:24',NULL,'2020-03-27 11:40:24'),
	(143,591776146522113,591221340766208,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591776146522112,b'1',NULL,'2020-03-27 11:53:34',NULL,'2020-03-27 11:53:34'),
	(144,591777111212033,591221340766208,1,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591777111212032,b'1',NULL,'2020-03-27 11:55:29',NULL,'2020-03-27 11:55:29'),
	(145,591890667798529,591221340766208,2,'',591890667798528,b'1',NULL,'2020-03-27 15:41:06',NULL,'2020-03-27 15:41:06'),
	(146,591892236468225,591221340766208,2,'',591892236468224,b'1',NULL,'2020-03-27 15:44:13',NULL,'2020-03-27 15:44:13'),
	(147,591895734517761,591221340766208,2,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',591895734517760,b'1',NULL,'2020-03-27 15:51:10',NULL,'2020-03-27 15:51:10'),
	(148,591908166434817,586999916396544,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591908166434816,b'1',NULL,'2020-03-27 16:15:53',NULL,'2020-03-27 16:15:53'),
	(149,591908384538625,586999916396544,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591908384538624,b'1',NULL,'2020-03-27 16:16:18',NULL,'2020-03-27 16:16:18'),
	(150,591908678139905,586999916396544,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591908678139904,b'1',NULL,'2020-03-27 16:16:53',NULL,'2020-03-27 16:16:53'),
	(151,591913669361664,586999916396544,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',591913568698368,b'1',NULL,'2020-03-27 16:26:48',NULL,'2020-03-27 16:26:48'),
	(152,592109006487553,131,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',592109006487552,b'1',NULL,'2020-03-27 22:54:54',NULL,'2020-03-27 22:54:54'),
	(153,592110633877504,131,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',592110608711680,b'1',NULL,'2020-03-27 22:58:08',NULL,'2020-03-27 22:58:08'),
	(154,592111439183872,131,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',592111397240832,b'1',NULL,'2020-03-27 22:59:43',NULL,'2020-03-27 22:59:43'),
	(155,592113217568768,131,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',592113192402944,b'1',NULL,'2020-03-27 23:03:16',NULL,'2020-03-27 23:03:16'),
	(156,592114014486528,131,2,'http://lovepinpin.com/FvKr-vobRyLp77qy9kqJaDyD4r1A',592113980932096,b'1',NULL,'2020-03-27 23:04:51',NULL,'2020-03-27 23:04:51'),
	(157,592732129067009,591221340766208,2,'',592732129067008,b'1',NULL,'2020-03-28 19:32:56',NULL,'2020-03-28 19:32:56'),
	(158,592732892430337,591221340766208,2,'',592732892430336,b'1',NULL,'2020-03-28 19:34:27',NULL,'2020-03-28 19:34:27'),
	(159,592738932228097,591221340766208,2,'http://lovepinpin.com/FmrxmH4ay0gyvV5SXNjrWN7qqnvL',592738932228096,b'1',NULL,'2020-03-28 19:46:27',NULL,'2020-03-28 19:46:27'),
	(160,593458649628672,591858052890624,3,'http://lovepinpin.com/FgS7yrbISztsEBgWpD17mQ7aeYWn',591858052890624,b'1',NULL,'2020-03-29 19:36:24',NULL,'2020-03-29 19:36:24'),
	(161,593459421380609,591858052890624,1,'http://lovepinpin.com/FsK9j_iuaJjUE3LoYd5ktC45Ptvf',593459421380608,b'1',NULL,'2020-03-29 19:37:56',NULL,'2020-03-29 19:37:56'),
	(162,593459916308481,591858052890624,2,'',593459916308480,b'1',NULL,'2020-03-29 19:38:55',NULL,'2020-03-29 19:38:55'),
	(163,593460151189505,591858052890624,2,'http://lovepinpin.com/Fn8HZxuSm0rEWikOGP3L7P-qzSW8',593460151189504,b'1',NULL,'2020-03-29 19:39:23',NULL,'2020-03-29 19:39:23'),
	(164,593460704837633,591858052890624,1,'http://lovepinpin.com/FsK9j_iuaJjUE3LoYd5ktC45Ptvf',593460704837632,b'1',NULL,'2020-03-29 19:40:29',NULL,'2020-03-29 19:40:29'),
	(165,593504686309377,593504686309376,3,'http://lovepinpin.com/20200329210752JaaydTFS',593504686309376,b'1',NULL,'2020-03-29 21:07:52',NULL,'2020-03-29 21:07:52'),
	(166,593504686309378,593504686309376,4,'http://lovepinpin.com/20200329210752EnduCJLj',593504686309376,b'1',NULL,'2020-03-29 21:07:52',NULL,'2020-03-29 21:07:52'),
	(167,593536638517248,593536630128640,3,'http://lovepinpin.com/20200329221120uwVSEjGX',593536630128640,b'1',NULL,'2020-03-29 22:11:21',NULL,'2020-03-29 22:11:21'),
	(168,593536638517249,593536630128640,4,'http://lovepinpin.com/20200329221121fSUPITbQ',593536630128640,b'1',NULL,'2020-03-29 22:11:21',NULL,'2020-03-29 22:11:21'),
	(169,593543819165697,593543819165696,3,'http://lovepinpin.com/20200329222537WzEQZUmP',593543819165696,b'1',NULL,'2020-03-29 22:25:37',NULL,'2020-03-29 22:25:37'),
	(170,593543819165698,593543819165696,4,'http://lovepinpin.com/20200329222537FQwWdVgH',593543819165696,b'1',NULL,'2020-03-29 22:25:37',NULL,'2020-03-29 22:25:37'),
	(171,593943318233088,593943309844480,3,'http://lovepinpin.com/20200330113920AZcbsZEQ',593943309844480,b'1',NULL,'2020-03-30 11:39:21',NULL,'2020-03-30 11:39:21'),
	(172,593943318233089,593943309844480,4,'http://lovepinpin.com/20200330113921sHHbXvWq',593943309844480,b'1',NULL,'2020-03-30 11:39:21',NULL,'2020-03-30 11:39:21'),
	(173,594035685195776,591221340766208,3,'http://lovepinpin.com/FucPhAj6ytKLpZUV7hMTAxHgcfOI',591221340766208,b'0',NULL,'2020-03-30 14:42:52',NULL,'2020-03-30 14:42:52'),
	(174,594044426125312,591221340766208,3,'http://lovepinpin.com/Fn6TEK4x5AkCiLchnXaP1oL73oEa',591221340766208,b'0',NULL,'2020-03-30 15:00:14',NULL,'2020-03-30 15:00:14'),
	(175,594047538298880,591221340766208,3,'http://lovepinpin.com/Fl3epd_OFPWfcw65joFufzCciHH9',591221340766208,b'0',NULL,'2020-03-30 15:06:25',NULL,'2020-03-30 15:06:25'),
	(176,594056438611968,591221340766208,3,'http://lovepinpin.com/FsIbF4hTkIAaexKTsdBk19MMtBtE',591221340766208,b'0',NULL,'2020-03-30 15:24:06',NULL,'2020-03-30 15:24:06'),
	(177,594058527375360,591221340766208,3,'http://lovepinpin.com/FlX4_zo6HvQTQwc65LUkHGZw2v_5',591221340766208,b'1',NULL,'2020-03-30 15:28:15',NULL,'2020-03-30 15:28:15'),
	(178,594105209978880,594105201590272,3,'http://lovepinpin.com/20200330170059usZnNblw',594105201590272,b'1',NULL,'2020-03-30 17:01:00',NULL,'2020-03-30 17:01:00'),
	(179,594105209978881,594105201590272,4,'http://lovepinpin.com/20200330170100ufbkgJGj',594105201590272,b'1',NULL,'2020-03-30 17:01:00',NULL,'2020-03-30 17:01:00'),
	(180,594979638476801,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',594979638476800,b'1',NULL,'2020-03-31 21:58:20',NULL,'2020-03-31 21:58:20'),
	(181,595425719484416,595425711095808,3,'http://lovepinpin.com/20200401124436DcadJIgU',595425711095808,b'1',NULL,'2020-04-01 12:44:37',NULL,'2020-04-01 12:44:37'),
	(182,595425719484417,595425711095808,4,'http://lovepinpin.com/20200401124437ASYDCCLW',595425711095808,b'1',NULL,'2020-04-01 12:44:37',NULL,'2020-04-01 12:44:37'),
	(183,595452361703425,591870182817792,2,'',595452361703424,b'1',NULL,'2020-04-01 13:37:33',NULL,'2020-04-01 13:37:33'),
	(184,595453997481985,591870182817792,2,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',595453997481984,b'1',NULL,'2020-04-01 13:40:48',NULL,'2020-04-01 13:40:48'),
	(185,595485781917697,591870182817792,1,'http://lovepinpin.com/FsvI8pJckf_lzfhqeTs8Xnoe1BX8',595485781917696,b'1',NULL,'2020-04-01 14:43:57',NULL,'2020-04-01 14:43:57'),
	(186,595487535136769,591870182817792,1,'http://lovepinpin.com/FsvI8pJckf_lzfhqeTs8Xnoe1BX8',595487535136768,b'1',NULL,'2020-04-01 14:47:26',NULL,'2020-04-01 14:47:26'),
	(187,595501393117185,591870182817792,2,'',595501393117184,b'1',NULL,'2020-04-01 15:14:58',NULL,'2020-04-01 15:14:58'),
	(188,595508976418817,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',595508976418816,b'1',NULL,'2020-04-01 15:30:02',NULL,'2020-04-01 15:30:02'),
	(189,595513564987393,591870182817792,2,'http://lovepinpin.com/FsvI8pJckf_lzfhqeTs8Xnoe1BX8',595513564987392,b'1',NULL,'2020-04-01 15:39:09',NULL,'2020-04-01 15:39:09'),
	(190,595535778021377,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',595535778021376,b'1',NULL,'2020-04-01 16:23:17',NULL,'2020-04-01 16:23:17'),
	(191,595535778021378,591870182817792,1,'http://lovepinpin.com/FmXHdANnulHtHBkpLtqHgXmuGBzf',595535778021376,b'1',NULL,'2020-04-01 16:23:17',NULL,'2020-04-01 16:23:17'),
	(192,595535778021379,591870182817792,1,'http://lovepinpin.com/FsvI8pJckf_lzfhqeTs8Xnoe1BX8',595535778021376,b'1',NULL,'2020-04-01 16:23:17',NULL,'2020-04-01 16:23:17'),
	(193,595535778021380,591870182817792,1,'http://lovepinpin.com/FqLpBIG1-sLfjV-ZOjMMl8oJgsI2',595535778021376,b'1',NULL,'2020-04-01 16:23:17',NULL,'2020-04-01 16:23:17'),
	(194,595702954590208,595702946201600,3,'http://lovepinpin.com/20200401215525OyRVWRRk',595702946201600,b'1',NULL,'2020-04-01 21:55:26',NULL,'2020-04-01 21:55:26'),
	(195,595702954590209,595702946201600,4,'http://lovepinpin.com/20200401215526AogWGcNR',595702946201600,b'1',NULL,'2020-04-01 21:55:26',NULL,'2020-04-01 21:55:26'),
	(196,595706125484033,595702946201600,1,'http://lovepinpin.com/FpQG_tyYDEHuTaZA0tgAGt1tf2_e',595706125484032,b'1',NULL,'2020-04-01 22:01:44',NULL,'2020-04-01 22:01:44'),
	(197,595726014873601,593536630128640,2,'',595726014873600,b'1',NULL,'2020-04-01 22:41:15',NULL,'2020-04-01 22:41:15'),
	(198,596047072067585,581758974164992,1,'http://lovepinpin.com/FmPoWDAdwBuq4GdpIOd56reO_kIi',596047072067584,b'1',NULL,'2020-04-02 09:19:08',NULL,'2020-04-02 09:19:08'),
	(199,596047743156225,581758974164992,1,'http://lovepinpin.com/FjPXC8oYbs6UpmnuwpEv5Wc62cVV',596047743156224,b'1',NULL,'2020-04-02 09:20:28',NULL,'2020-04-02 09:20:28'),
	(200,596048741400577,581758974164992,2,'http://lovepinpin.com/FmPoWDAdwBuq4GdpIOd56reO_kIi',596048741400576,b'1',NULL,'2020-04-02 09:22:27',NULL,'2020-04-02 09:22:27'),
	(201,596155645820929,590365929242624,2,'',596155645820928,b'1',NULL,'2020-04-02 12:54:51',NULL,'2020-04-02 12:54:51'),
	(202,596209626513408,581758974164992,3,'http://lovepinpin.com/FlX4_zo6HvQTQwc65LUkHGZw2v_5',581758974164992,b'0',NULL,'2020-04-02 14:42:06',NULL,'2020-04-02 14:42:06'),
	(203,596209827840000,581758974164992,3,'http://lovepinpin.com/FlX4_zo6HvQTQwc65LUkHGZw2v_5',581758974164992,b'0',NULL,'2020-04-02 14:42:30',NULL,'2020-04-02 14:42:30'),
	(204,596210440208384,581758974164992,3,'http://lovepinpin.com/Fltd-il1uFrMF4eiJCkTXNArwSGK',581758974164992,b'1',NULL,'2020-04-02 14:43:43',NULL,'2020-04-02 14:43:43'),
	(205,596210574426112,581758974164992,4,'http://lovepinpin.com/FvkDCLNMxZPI4ln1pzacSqnQLy9y',581758974164992,b'0',NULL,'2020-04-02 14:43:59',NULL,'2020-04-02 14:43:59'),
	(206,596210909970432,581758974164992,4,'http://lovepinpin.com/FsaDKScZ1X3P7H_JuIuS01ojyZOx',581758974164992,b'0',NULL,'2020-04-02 14:44:39',NULL,'2020-04-02 14:44:39'),
	(207,596211497172992,581758974164992,4,'http://lovepinpin.com/FkuuQZmYaZO9DU8-b7VG9fM46Bq2',581758974164992,b'0',NULL,'2020-04-02 14:45:49',NULL,'2020-04-02 14:45:49'),
	(208,596212000489472,581758974164992,4,'http://lovepinpin.com/FiOLp5gDVvgJTaDwi2i5H5uAbWbb',581758974164992,b'1',NULL,'2020-04-02 14:46:49',NULL,'2020-04-02 14:46:49'),
	(209,596239758393345,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',596239758393344,b'1',NULL,'2020-04-02 15:41:58',NULL,'2020-04-02 15:41:58'),
	(210,596240093937665,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',596240093937664,b'1',NULL,'2020-04-02 15:42:38',NULL,'2020-04-02 15:42:38'),
	(211,596292455628801,590365929242624,1,'http://lovepinpin.com/FgPO8ipc9331dfZTPUPNDXMY3BHw',596292455628800,b'1',NULL,'2020-04-02 17:26:40',NULL,'2020-04-02 17:26:40'),
	(212,596293973966849,590365929242624,2,'',596293973966848,b'1',NULL,'2020-04-02 17:29:41',NULL,'2020-04-02 17:29:41'),
	(213,596307412516865,590365929242624,1,'http://lovepinpin.com/FhTxVxgWmcFSYng3A-Z9RFu69GHg',596307412516864,b'1',NULL,'2020-04-02 17:56:23',NULL,'2020-04-02 17:56:23'),
	(214,596398772846592,591858052890624,4,'http://lovepinpin.com/FgG1JIyS9wOotNpTRW2OgzsS2WyC',591858052890624,b'1',NULL,'2020-04-02 20:57:54',NULL,'2020-04-02 20:57:54'),
	(215,596820006797313,591870182817792,1,'http://lovepinpin.com/Fid_cqonL1plvmKyhntq3jsgnGd1',596820006797312,b'1',NULL,'2020-04-03 10:54:49',NULL,'2020-04-03 10:54:49'),
	(216,597710331707393,591858052890624,2,'',597710331707392,b'1',NULL,'2020-04-04 16:23:44',NULL,'2020-04-04 16:23:44'),
	(217,597710826635265,591858052890624,2,'',597710826635264,b'1',NULL,'2020-04-04 16:24:43',NULL,'2020-04-04 16:24:43'),
	(218,599750994821121,599750994821120,3,'http://lovepinpin.com/20200407115810XDkuFVNG',599750994821120,b'1',NULL,'2020-04-07 11:58:10',NULL,'2020-04-07 11:58:10'),
	(219,599751003209728,599750994821120,4,'http://lovepinpin.com/20200407115810KytHYmoz',599750994821120,b'1',NULL,'2020-04-07 11:58:11',NULL,'2020-04-07 11:58:11'),
	(220,599753964388353,599753964388352,3,'http://lovepinpin.com/20200407120404RIJOlusG',599753964388352,b'1',NULL,'2020-04-07 12:04:04',NULL,'2020-04-07 12:04:04'),
	(221,599753964388354,599753964388352,4,'http://lovepinpin.com/20200407120404rIpdmMoG',599753964388352,b'1',NULL,'2020-04-07 12:04:04',NULL,'2020-04-07 12:04:04'),
	(222,599769718194177,599769718194176,3,'http://lovepinpin.com/20200407123522sVbbkwFm',599769718194176,b'1',NULL,'2020-04-07 12:35:22',NULL,'2020-04-07 12:35:22'),
	(223,599769718194178,599769718194176,4,'http://lovepinpin.com/20200407123522hHXLVuFV',599769718194176,b'1',NULL,'2020-04-07 12:35:22',NULL,'2020-04-07 12:35:22'),
	(224,599948093554689,599948093554688,3,'http://lovepinpin.com/20200407182946XInReoZF',599948093554688,b'1',NULL,'2020-04-07 18:29:46',NULL,'2020-04-07 18:29:46'),
	(225,599948101943296,599948093554688,4,'http://lovepinpin.com/20200407182946LTTNLHgE',599948093554688,b'1',NULL,'2020-04-07 18:29:47',NULL,'2020-04-07 18:29:47'),
	(226,599952438853633,599952128475136,2,'',599952438853632,b'1',NULL,'2020-04-07 18:38:24',NULL,'2020-04-07 18:38:24'),
	(227,599952665346049,599952128475136,2,'http://lovepinpin.com/FmXHdANnulHtHBkpLtqHgXmuGBzf',599952665346048,b'1',NULL,'2020-04-07 18:38:51',NULL,'2020-04-07 18:38:51'),
	(228,599957136474113,599952128475136,1,'http://lovepinpin.com/FmsTjv-nxgKxxJLQI8XKO6Cq4_cN',599957136474112,b'1',NULL,'2020-04-07 18:47:44',NULL,'2020-04-07 18:47:44'),
	(229,599957304246273,599952128475136,1,'http://lovepinpin.com/FoqYL_Es6j-UFNTSBIDMsJcovlLu',599957304246272,b'1',NULL,'2020-04-07 18:48:04',NULL,'2020-04-07 18:48:04'),
	(230,599961834094593,599952128475136,1,'http://lovepinpin.com/Foj3U2U8o3dIBll8vhjN0E_t-87g',599961834094592,b'1',NULL,'2020-04-07 18:57:04',NULL,'2020-04-07 18:57:04'),
	(231,599963285323777,599952128475136,2,'',599963285323776,b'1',NULL,'2020-04-07 18:59:57',NULL,'2020-04-07 18:59:57'),
	(232,599963478261761,599952128475136,2,'',599963478261760,b'1',NULL,'2020-04-07 19:00:20',NULL,'2020-04-07 19:00:20'),
	(233,599964174516225,599952128475136,2,'',599964174516224,b'1',NULL,'2020-04-07 19:01:43',NULL,'2020-04-07 19:01:43'),
	(234,599976111505408,599971044786176,3,'http://lovepinpin.com/FoVVZ1nWiKybdfkqfa-7GT4tqnRK',599971044786176,b'1',NULL,'2020-04-07 19:25:26',NULL,'2020-04-07 19:25:26'),
	(235,599977319464961,599971044786176,2,'',599977319464960,b'1',NULL,'2020-04-07 19:27:50',NULL,'2020-04-07 19:27:50'),
	(236,600383596527617,590365929242624,1,'http://lovepinpin.com/Fm4-0KG3iqxE3cDJdO2qMbSc6b7g',600383596527616,b'1',NULL,'2020-04-08 08:55:02',NULL,'2020-04-08 08:55:02'),
	(237,600598143565825,593537108279296,1,'http://lovepinpin.com/FspamzmvY1857aZzTNJlne8EEdJ0',600598143565824,b'1',NULL,'2020-04-08 16:01:18',NULL,'2020-04-08 16:01:18'),
	(238,600598420389889,593537108279296,2,'',600598420389888,b'1',NULL,'2020-04-08 16:01:51',NULL,'2020-04-08 16:01:51'),
	(239,601453353762817,601453353762816,3,'http://lovepinpin.com/20200409202027UOOrDpFk',601453353762816,b'1',NULL,'2020-04-09 20:20:27',NULL,'2020-04-09 20:20:27'),
	(240,601453353762818,601453353762816,4,'http://lovepinpin.com/20200409202027txTWzsqL',601453353762816,b'1',NULL,'2020-04-09 20:20:27',NULL,'2020-04-09 20:20:27'),
	(241,601486262272001,601486262272000,3,'http://lovepinpin.com/20200409212550QRpsLMxo',601486262272000,b'1',NULL,'2020-04-09 21:25:50',NULL,'2020-04-09 21:25:50'),
	(242,601486262272002,601486262272000,4,'http://lovepinpin.com/20200409212550lxjjupWA',601486262272000,b'1',NULL,'2020-04-09 21:25:50',NULL,'2020-04-09 21:25:50'),
	(243,604357523406849,604357523406848,3,'http://lovepinpin.com/20200413203031CiSEsbfb',604357523406848,b'1',NULL,'2020-04-13 20:30:31',NULL,'2020-04-13 20:30:31'),
	(244,604357523406850,604357523406848,4,'http://lovepinpin.com/20200413203031IfBtBjNU',604357523406848,b'1',NULL,'2020-04-13 20:30:31',NULL,'2020-04-13 20:30:31'),
	(245,604362413965313,604362413965312,3,'http://lovepinpin.com/20200413204014xQPzQDLn',604362413965312,b'0',NULL,'2020-04-13 20:40:14',NULL,'2020-04-13 20:40:14'),
	(246,604362422353920,604362413965312,4,'http://lovepinpin.com/20200413204014vkMPqxln',604362413965312,b'0',NULL,'2020-04-13 20:40:15',NULL,'2020-04-13 20:40:15'),
	(247,604365744242688,604354855829504,3,'http://lovepinpin.com/FtvPICdSfmvwkNxXdrFnappSmih9',604354855829504,b'1',NULL,'2020-04-13 20:46:51',NULL,'2020-04-13 20:46:51'),
	(248,604424263172096,604362413965312,3,'http://lovepinpin.com/Fltd-il1uFrMF4eiJCkTXNArwSGK',604362413965312,b'0',NULL,'2020-04-13 22:43:07',NULL,'2020-04-13 22:43:07'),
	(249,604424539996160,604362413965312,4,'http://lovepinpin.com/FpuowhOF1n4-fXxf3nvTJp3-MIo4',604362413965312,b'0',NULL,'2020-04-13 22:43:40',NULL,'2020-04-13 22:43:40'),
	(250,604424791654400,604362413965312,4,'http://lovepinpin.com/FiHc8Mbkj6r2IlbkfeSjHmOlUYEp',604362413965312,b'0',NULL,'2020-04-13 22:44:10',NULL,'2020-04-13 22:44:10'),
	(251,604425051701248,604362413965312,4,'http://lovepinpin.com/FpkDSoG1a0_wQDasXL2ttUjMfVi9',604362413965312,b'1',NULL,'2020-04-13 22:44:41',NULL,'2020-04-13 22:44:41'),
	(252,604425362079744,604362413965312,3,'http://lovepinpin.com/FqdbzH1DlENIApyf6VrrhdS7JJZ6',604362413965312,b'1',NULL,'2020-04-13 22:45:18',NULL,'2020-04-13 22:45:18'),
	(253,604430227472385,604360484585472,1,'http://lovepinpin.com/Fj_yls19z85_erbVTgtSpANa16FH',604430227472384,b'1',NULL,'2020-04-13 22:54:58',NULL,'2020-04-13 22:54:58'),
	(254,604430227472386,604360484585472,1,'http://lovepinpin.com/FvxBjHaXWPmyAfk0lRyHAluVe_C2',604430227472384,b'1',NULL,'2020-04-13 22:54:58',NULL,'2020-04-13 22:54:58'),
	(255,604430227472387,604360484585472,1,'http://lovepinpin.com/FsM5g65BCfUUXsAeoxfNq52_T0t2',604430227472384,b'1',NULL,'2020-04-13 22:54:58',NULL,'2020-04-13 22:54:58'),
	(256,604430755954689,604360484585472,2,'',604430755954688,b'1',NULL,'2020-04-13 22:56:01',NULL,'2020-04-13 22:56:01'),
	(257,604434841206785,604360484585472,1,'http://lovepinpin.com/FjHZZFss21zX7uL73_re2hxhxFNX',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(258,604434841206786,604360484585472,1,'http://lovepinpin.com/Foi29ZTlXislMAqH9hC2pRGmHz9f',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(259,604434841206787,604360484585472,1,'http://lovepinpin.com/FvT6OcA5gZiZVCBwTvCQmMs9wqpJ',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(260,604434841206788,604360484585472,1,'http://lovepinpin.com/FnDdIJKKFuBHsORF0yF47GZyiSn0',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(261,604434841206789,604360484585472,1,'http://lovepinpin.com/FsOTYABQosFpjDxEwAHQoxUvrr1_',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(262,604434841206790,604360484585472,1,'http://lovepinpin.com/FnBvjIGrfy_-wPZdV_m2OeUULa0S',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(263,604434841206791,604360484585472,1,'http://lovepinpin.com/FojjQ4zLwcznOTTuHDhtVHyEQg94',604434841206784,b'1',NULL,'2020-04-13 23:04:08',NULL,'2020-04-13 23:04:08'),
	(264,604436602814465,604360484585472,1,'http://lovepinpin.com/Fjb-3VT4tco0-TgDGA7cDeI-ZX-k',604436602814464,b'1',NULL,'2020-04-13 23:07:38',NULL,'2020-04-13 23:07:38'),
	(265,604916783513601,604354855829504,2,'',604916783513600,b'1',NULL,'2020-04-14 15:01:40',NULL,'2020-04-14 15:01:40'),
	(266,604924341649409,604354855829504,2,'http://lovepinpin.com/banner_1.jpg',604924341649408,b'1',NULL,'2020-04-14 15:16:41',NULL,'2020-04-14 15:16:41'),
	(267,604927621595137,604354855829504,1,'http://lovepinpin.com/FnwveeDOsSOTyAIBJxboVhrCs06o',604927621595136,b'1',NULL,'2020-04-14 15:23:12',NULL,'2020-04-14 15:23:12'),
	(268,604947343212545,604357137530880,2,'http://lovepinpin.com/FjCudIYZjlwWDDeIk8TdfL6LTFrI',604947343212544,b'1',NULL,'2020-04-14 16:02:23',NULL,'2020-04-14 16:02:23'),
	(269,604947485818881,604357137530880,2,'http://lovepinpin.com/FjCudIYZjlwWDDeIk8TdfL6LTFrI',604947485818880,b'1',NULL,'2020-04-14 16:02:40',NULL,'2020-04-14 16:02:40'),
	(270,604948794441729,604362413965312,2,'http://lovepinpin.com/FolCVrC3-wzWWxpF0ZteuYRlCDbp',604948794441728,b'1',NULL,'2020-04-14 16:05:16',NULL,'2020-04-14 16:05:16'),
	(271,604951168417793,604354855829504,2,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',604951168417792,b'1',NULL,'2020-04-14 16:09:59',NULL,'2020-04-14 16:09:59'),
	(272,604972248989696,604360484585472,3,'http://lovepinpin.com/FizZyHQ5O0cx_Y4jM1F-NauvHueQ',604360484585472,b'1',NULL,'2020-04-14 16:51:52',NULL,'2020-04-14 16:51:52'),
	(273,604976309075969,604360484585472,1,'http://lovepinpin.com/Fmh_dq-EW9aQvkG30HQcN3pRHMYm',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(274,604976309075970,604360484585472,1,'http://lovepinpin.com/Fo5QM8Aoj1EdDA5dNlEwS63hgEuo',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(275,604976309075971,604360484585472,1,'http://lovepinpin.com/FsiulnUuGwRau-b_-5O0awu_THdh',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(276,604976309075972,604360484585472,1,'http://lovepinpin.com/Fon4po6oxt9vN7utO2DK1WPBiaPk',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(277,604976309075973,604360484585472,1,'http://lovepinpin.com/FjZvpoT0-vfPhpcEJW5hZmbQh0eU',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(278,604976309075974,604360484585472,1,'http://lovepinpin.com/Fmo3AV4TiYwjOVE7NEVoG7yQhsIO',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(279,604976309075975,604360484585472,1,'http://lovepinpin.com/FuvXmsdsI0OxI9i0JxEou6UzXPTm',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(280,604976309075976,604360484585472,1,'http://lovepinpin.com/FkY2e1ewjBi3yXOhTWgL3GYc6tSb',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(281,604976309075977,604360484585472,1,'http://lovepinpin.com/FoiOrrjLqJ66Zp6hhuhVzciEKGaf',604976309075968,b'1',NULL,'2020-04-14 16:59:56',NULL,'2020-04-14 16:59:56'),
	(282,604983036739585,604360484585472,1,'http://lovepinpin.com/FgeCFZVygv_kEInED1nFyO9AK82J',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(283,604983036739586,604360484585472,1,'http://lovepinpin.com/FlDZphJr-9ub0cI4nCrMC7LkoBTC',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(284,604983036739587,604360484585472,1,'http://lovepinpin.com/FmetzrIGBRj5LBCqQ1Wn1PwT4a-C',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(285,604983036739588,604360484585472,1,'http://lovepinpin.com/FubrJa1IkdTw3g-nnUQfodhJzO9P',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(286,604983036739589,604360484585472,1,'http://lovepinpin.com/FoTrNzMtQxM6R4PgeL4V8fU1EFZL',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(287,604983036739590,604360484585472,1,'http://lovepinpin.com/Fmqu29X3n9PeGty2i2SJhBNq7k9w',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(288,604983036739591,604360484585472,1,'http://lovepinpin.com/FpHEUqUgGs_qo2FlRMNOlIouCdX8',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(289,604983036739592,604360484585472,1,'http://lovepinpin.com/FlZLqCRqetd32IzPhxo1pnKy0iCM',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(290,604983036739593,604360484585472,1,'http://lovepinpin.com/FldfWu4Jd6OnVCoMIwBDLZkSgFNQ',604983036739584,b'1',NULL,'2020-04-14 17:13:18',NULL,'2020-04-14 17:13:18'),
	(291,605059347906561,604357137530880,1,'http://lovepinpin.com/FobBWRjgUlQkj63bTf-v5LjLTaaD',605059347906560,b'1',NULL,'2020-04-14 19:44:55',NULL,'2020-04-14 19:44:55'),
	(292,605059347906562,604357137530880,1,'http://lovepinpin.com/FvnR2uth_ODbQqQ_ERQ3OJA6wxye',605059347906560,b'1',NULL,'2020-04-14 19:44:55',NULL,'2020-04-14 19:44:55'),
	(293,605059347906563,604357137530880,1,'http://lovepinpin.com/FolIE9kgQ9Yf5pfifRxAlPtaS-mf',605059347906560,b'1',NULL,'2020-04-14 19:44:55',NULL,'2020-04-14 19:44:55'),
	(294,605059347906564,604357137530880,1,'http://lovepinpin.com/FnJzhomHhje-ALeSZ3Oc2Sw2k7f3',605059347906560,b'1',NULL,'2020-04-14 19:44:55',NULL,'2020-04-14 19:44:55'),
	(295,605242244726785,604354855829504,1,'http://lovepinpin.com/FpkaMAK1d-ol6QThPKmA4kF3ao7e',605242244726784,b'1',NULL,'2020-04-15 01:48:18',NULL,'2020-04-15 01:48:18'),
	(296,605515218419712,605515210031104,3,'http://lovepinpin.com/20200415105038tjDDRIWT',605515210031104,b'1',NULL,'2020-04-15 10:50:39',NULL,'2020-04-15 10:50:39'),
	(297,605515218419713,605515210031104,4,'http://lovepinpin.com/20200415105039OpXatlvc',605515210031104,b'1',NULL,'2020-04-15 10:50:39',NULL,'2020-04-15 10:50:39'),
	(298,605516325715969,604360484585472,2,'',605516325715968,b'1',NULL,'2020-04-15 10:52:51',NULL,'2020-04-15 10:52:51'),
	(299,605517097467905,604360484585472,1,'http://lovepinpin.com/FjX24UBVW4ii5Ygq5BVZiacC4xux',605517097467904,b'1',NULL,'2020-04-15 10:54:23',NULL,'2020-04-15 10:54:23'),
	(300,605518053769217,605515210031104,1,'http://lovepinpin.com/FtqnCQcr7PP389E3PwCnmn88qI9T',605518053769216,b'1',NULL,'2020-04-15 10:56:17',NULL,'2020-04-15 10:56:17'),
	(301,605518758412289,604360484585472,2,'',605518758412288,b'1',NULL,'2020-04-15 10:57:41',NULL,'2020-04-15 10:57:41'),
	(302,605518884241409,604360484585472,2,'',605518884241408,b'1',NULL,'2020-04-15 10:57:56',NULL,'2020-04-15 10:57:56'),
	(303,605631744573441,604360484585472,1,'http://lovepinpin.com/FsHEuOPbIkh-_xBD7NpZQMPL4AtQ',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(304,605631744573442,604360484585472,1,'http://lovepinpin.com/FmDhc3gUDDmEgngK_z4C29NE-wwf',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(305,605631744573443,604360484585472,1,'http://lovepinpin.com/FmmUGLGneeGe2PlTZ5Rvf71DpWXU',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(306,605631744573444,604360484585472,1,'http://lovepinpin.com/FjxnSxxlt3j5kzVrFD1ApeXoHdGI',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(307,605631744573445,604360484585472,1,'http://lovepinpin.com/FpQc7qaElmaIUIrALGAYpFvyYAhE',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(308,605631744573446,604360484585472,1,'http://lovepinpin.com/Fr0-ha2qfim1BH7Wbn-PVMKiTQym',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(309,605631744573447,604360484585472,1,'http://lovepinpin.com/Ft4_KFf4vrlNpe4tb2W6aU2dVQF3',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(310,605631744573448,604360484585472,1,'http://lovepinpin.com/FhU55gGSUkpX0psqfn71bS21y1D6',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(311,605631744573449,604360484585472,1,'http://lovepinpin.com/FnF4lm6mDVVytix2Z31MC9v5OGA6',605631744573440,b'1',NULL,'2020-04-15 14:42:10',NULL,'2020-04-15 14:42:10'),
	(312,605690674544641,605690674544640,3,'http://lovepinpin.com/20200415163915MTbbrUHv',605690674544640,b'1',NULL,'2020-04-15 16:39:15',NULL,'2020-04-15 16:39:15'),
	(313,605690674544642,605690674544640,4,'http://lovepinpin.com/20200415163915srsmHKzM',605690674544640,b'1',NULL,'2020-04-15 16:39:15',NULL,'2020-04-15 16:39:15'),
	(314,605840788684801,604360484585472,1,'http://lovepinpin.com/FhjkDYlpUfDMGCSc7lGDVzIYLkkq',605840788684800,b'1',NULL,'2020-04-15 21:37:30',NULL,'2020-04-15 21:37:30'),
	(315,605841392664577,604360484585472,1,'http://lovepinpin.com/FvU1jtpQowa_Fi0Xc2-TVpRsNU6P',605841392664576,b'1',NULL,'2020-04-15 21:38:42',NULL,'2020-04-15 21:38:42'),
	(316,605846526492673,604360484585472,1,'http://lovepinpin.com/FqDGeIFYOSsN6YJUyKj5QZTjjtdY',605846526492672,b'1',NULL,'2020-04-15 21:48:54',NULL,'2020-04-15 21:48:54'),
	(317,605846526492674,604360484585472,1,'http://lovepinpin.com/FsW3_4wiOif32ecsr7-eM6wIagFO',605846526492672,b'1',NULL,'2020-04-15 21:48:54',NULL,'2020-04-15 21:48:54'),
	(318,605846526492675,604360484585472,1,'http://lovepinpin.com/FnBKkjFKZuauC0Qofev7x27d8peP',605846526492672,b'1',NULL,'2020-04-15 21:48:54',NULL,'2020-04-15 21:48:54'),
	(319,605847264690177,604360484585472,1,'http://lovepinpin.com/Fp9gShNOsrrDoWf4c-NbscABi-5F',605847264690176,b'1',NULL,'2020-04-15 21:50:22',NULL,'2020-04-15 21:50:22'),
	(320,605853665198081,604360484585472,1,'http://lovepinpin.com/FimK46FV4_nIYPEF4RodZYYoedwO',605853665198080,b'1',NULL,'2020-04-15 22:03:05',NULL,'2020-04-15 22:03:05'),
	(321,605853665198082,604360484585472,1,'http://lovepinpin.com/FnjdmUvMa9_19TZDTWh1pgpEq1_X',605853665198080,b'1',NULL,'2020-04-15 22:03:05',NULL,'2020-04-15 22:03:05'),
	(322,605939606487041,604354855829504,2,'http://lovepinpin.com/Fvrt1E6dwFWV2tpwXKH5nOWOXCFw',605939606487040,b'1',NULL,'2020-04-16 00:53:50',NULL,'2020-04-16 00:53:50'),
	(323,605943079370753,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605943079370752,b'1',NULL,'2020-04-16 01:00:44',NULL,'2020-04-16 01:00:44'),
	(324,605944572542977,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',605944572542976,b'1',NULL,'2020-04-16 01:03:42',NULL,'2020-04-16 01:03:42'),
	(325,605947953152001,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605947953152000,b'1',NULL,'2020-04-16 01:10:25',NULL,'2020-04-16 01:10:25'),
	(326,605947953152002,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605947953152000,b'1',NULL,'2020-04-16 01:10:26',NULL,'2020-04-16 01:10:26'),
	(327,605951182766081,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605951182766080,b'1',NULL,'2020-04-16 01:16:50',NULL,'2020-04-16 01:16:50'),
	(328,605951182766082,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605951182766080,b'1',NULL,'2020-04-16 01:16:50',NULL,'2020-04-16 01:16:50'),
	(329,605952222953473,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952222953472,b'1',NULL,'2020-04-16 01:18:54',NULL,'2020-04-16 01:18:54'),
	(330,605952222953474,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952222953472,b'1',NULL,'2020-04-16 01:18:54',NULL,'2020-04-16 01:18:54'),
	(331,605952508166145,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952508166144,b'1',NULL,'2020-04-16 01:19:28',NULL,'2020-04-16 01:19:28'),
	(332,605952508166146,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952508166144,b'1',NULL,'2020-04-16 01:19:28',NULL,'2020-04-16 01:19:28'),
	(333,605952592052225,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952592052224,b'1',NULL,'2020-04-16 01:19:38',NULL,'2020-04-16 01:19:38'),
	(334,605952592052226,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952592052224,b'1',NULL,'2020-04-16 01:19:38',NULL,'2020-04-16 01:19:38'),
	(335,605952743047169,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952743047168,b'1',NULL,'2020-04-16 01:19:56',NULL,'2020-04-16 01:19:56'),
	(336,605952743047170,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952743047168,b'1',NULL,'2020-04-16 01:19:56',NULL,'2020-04-16 01:19:56'),
	(337,605952810156033,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952810156032,b'1',NULL,'2020-04-16 01:20:04',NULL,'2020-04-16 01:20:04'),
	(338,605952810156034,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952810156032,b'1',NULL,'2020-04-16 01:20:04',NULL,'2020-04-16 01:20:04'),
	(339,605952835321857,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952835321856,b'1',NULL,'2020-04-16 01:20:07',NULL,'2020-04-16 01:20:07'),
	(340,605952835321858,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605952835321856,b'1',NULL,'2020-04-16 01:20:07',NULL,'2020-04-16 01:20:07'),
	(341,605954001338369,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954001338368,b'1',NULL,'2020-04-16 01:22:26',NULL,'2020-04-16 01:22:26'),
	(342,605954001338370,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954001338368,b'1',NULL,'2020-04-16 01:22:26',NULL,'2020-04-16 01:22:26'),
	(343,605954068447233,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954068447232,b'1',NULL,'2020-04-16 01:22:34',NULL,'2020-04-16 01:22:34'),
	(344,605954068447234,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954068447232,b'1',NULL,'2020-04-16 01:22:34',NULL,'2020-04-16 01:22:34'),
	(345,605954143944705,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954143944704,b'1',NULL,'2020-04-16 01:22:43',NULL,'2020-04-16 01:22:43'),
	(346,605954143944706,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954143944704,b'1',NULL,'2020-04-16 01:22:43',NULL,'2020-04-16 01:22:43'),
	(347,605954294939649,605954294939648,3,'http://lovepinpin.com/20200416012301dfGkjERK',605954294939648,b'1',NULL,'2020-04-16 01:23:01',NULL,'2020-04-16 01:23:01'),
	(348,605954294939650,605954294939648,4,'http://lovepinpin.com/20200416012301qqGRWZmq',605954294939648,b'1',NULL,'2020-04-16 01:23:01',NULL,'2020-04-16 01:23:01'),
	(349,605954328494081,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954328494080,b'1',NULL,'2020-04-16 01:23:05',NULL,'2020-04-16 01:23:05'),
	(350,605954328494082,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954328494080,b'1',NULL,'2020-04-16 01:23:05',NULL,'2020-04-16 01:23:05'),
	(351,605954353659905,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954353659904,b'1',NULL,'2020-04-16 01:23:08',NULL,'2020-04-16 01:23:08'),
	(352,605954353659906,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954353659904,b'1',NULL,'2020-04-16 01:23:08',NULL,'2020-04-16 01:23:08'),
	(353,605954378825729,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954378825728,b'1',NULL,'2020-04-16 01:23:11',NULL,'2020-04-16 01:23:11'),
	(354,605954378825730,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954378825728,b'1',NULL,'2020-04-16 01:23:11',NULL,'2020-04-16 01:23:11'),
	(355,605954395602945,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954395602944,b'1',NULL,'2020-04-16 01:23:13',NULL,'2020-04-16 01:23:13'),
	(356,605954395602946,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954395602944,b'1',NULL,'2020-04-16 01:23:13',NULL,'2020-04-16 01:23:13'),
	(357,605954420768769,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954420768768,b'1',NULL,'2020-04-16 01:23:16',NULL,'2020-04-16 01:23:16'),
	(358,605954420768770,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954420768768,b'1',NULL,'2020-04-16 01:23:16',NULL,'2020-04-16 01:23:16'),
	(359,605954437545985,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954437545984,b'1',NULL,'2020-04-16 01:23:18',NULL,'2020-04-16 01:23:18'),
	(360,605954437545986,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954437545984,b'1',NULL,'2020-04-16 01:23:18',NULL,'2020-04-16 01:23:18'),
	(361,605954462711809,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954462711808,b'1',NULL,'2020-04-16 01:23:21',NULL,'2020-04-16 01:23:21'),
	(362,605954462711810,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954462711808,b'1',NULL,'2020-04-16 01:23:21',NULL,'2020-04-16 01:23:21'),
	(363,605954479489025,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954479489024,b'1',NULL,'2020-04-16 01:23:23',NULL,'2020-04-16 01:23:23'),
	(364,605954479489026,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954479489024,b'1',NULL,'2020-04-16 01:23:23',NULL,'2020-04-16 01:23:23'),
	(365,605954504654849,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954504654848,b'1',NULL,'2020-04-16 01:23:26',NULL,'2020-04-16 01:23:26'),
	(366,605954504654850,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954504654848,b'1',NULL,'2020-04-16 01:23:26',NULL,'2020-04-16 01:23:26'),
	(367,605954521432065,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954521432064,b'1',NULL,'2020-04-16 01:23:28',NULL,'2020-04-16 01:23:28'),
	(368,605954521432066,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954521432064,b'1',NULL,'2020-04-16 01:23:29',NULL,'2020-04-16 01:23:29'),
	(369,605954554986497,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954554986496,b'1',NULL,'2020-04-16 01:23:32',NULL,'2020-04-16 01:23:32'),
	(370,605954554986498,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954554986496,b'1',NULL,'2020-04-16 01:23:32',NULL,'2020-04-16 01:23:32'),
	(371,605954571763713,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954571763712,b'1',NULL,'2020-04-16 01:23:34',NULL,'2020-04-16 01:23:34'),
	(372,605954571763714,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954571763712,b'1',NULL,'2020-04-16 01:23:34',NULL,'2020-04-16 01:23:34'),
	(373,605954596929537,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954596929536,b'1',NULL,'2020-04-16 01:23:37',NULL,'2020-04-16 01:23:37'),
	(374,605954596929538,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954596929536,b'1',NULL,'2020-04-16 01:23:37',NULL,'2020-04-16 01:23:37'),
	(375,605954630483969,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954630483968,b'1',NULL,'2020-04-16 01:23:41',NULL,'2020-04-16 01:23:41'),
	(376,605954630483970,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954630483968,b'1',NULL,'2020-04-16 01:23:41',NULL,'2020-04-16 01:23:41'),
	(377,605954689204225,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954689204224,b'1',NULL,'2020-04-16 01:23:48',NULL,'2020-04-16 01:23:48'),
	(378,605954689204226,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954689204224,b'1',NULL,'2020-04-16 01:23:48',NULL,'2020-04-16 01:23:48'),
	(379,605954739535873,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954739535872,b'1',NULL,'2020-04-16 01:23:54',NULL,'2020-04-16 01:23:54'),
	(380,605954739535874,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954739535872,b'1',NULL,'2020-04-16 01:23:54',NULL,'2020-04-16 01:23:54'),
	(381,605954907308033,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(382,605954907308034,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(383,605954907308035,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(384,605954907308036,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(385,605954907308037,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(386,605954907308038,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605954907308032,b'1',NULL,'2020-04-16 01:24:14',NULL,'2020-04-16 01:24:14'),
	(387,605956048158721,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(388,605956048158722,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(389,605956048158723,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(390,605956048158724,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(391,605956048158725,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(392,605956048158726,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956048158720,b'1',NULL,'2020-04-16 01:26:30',NULL,'2020-04-16 01:26:30'),
	(393,605956341760001,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(394,605956341760002,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(395,605956341760003,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(396,605956341760004,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(397,605956341760005,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(398,605956341760006,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956341760000,b'1',NULL,'2020-04-16 01:27:05',NULL,'2020-04-16 01:27:05'),
	(399,605956383703041,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(400,605956392091648,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(401,605956392091649,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(402,605956392091650,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(403,605956392091651,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(404,605956392091652,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956383703040,b'1',NULL,'2020-04-16 01:27:11',NULL,'2020-04-16 01:27:11'),
	(405,605956425646081,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:15',NULL,'2020-04-16 01:27:15'),
	(406,605956425646082,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:15',NULL,'2020-04-16 01:27:15'),
	(407,605956425646083,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:15',NULL,'2020-04-16 01:27:15'),
	(408,605956425646084,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:15',NULL,'2020-04-16 01:27:15'),
	(409,605956425646085,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:15',NULL,'2020-04-16 01:27:15'),
	(410,605956425646086,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605956425646080,b'1',NULL,'2020-04-16 01:27:16',NULL,'2020-04-16 01:27:16'),
	(411,605957155454977,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:42',NULL,'2020-04-16 01:28:42'),
	(412,605957155454978,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:42',NULL,'2020-04-16 01:28:42'),
	(413,605957155454979,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:42',NULL,'2020-04-16 01:28:42'),
	(414,605957155454980,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:42',NULL,'2020-04-16 01:28:42'),
	(415,605957155454981,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:43',NULL,'2020-04-16 01:28:43'),
	(416,605957163843584,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605957155454976,b'1',NULL,'2020-04-16 01:28:43',NULL,'2020-04-16 01:28:43'),
	(417,605960854831105,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',605960854831104,b'1',NULL,'2020-04-16 01:36:03',NULL,'2020-04-16 01:36:03'),
	(418,605962213785601,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(419,605962213785602,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(420,605962213785603,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(421,605962213785604,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(422,605962213785605,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(423,605962213785606,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962213785600,b'1',NULL,'2020-04-16 01:38:45',NULL,'2020-04-16 01:38:45'),
	(424,605962289283073,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(425,605962289283074,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(426,605962289283075,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(427,605962289283076,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(428,605962289283077,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(429,605962289283078,604354855829504,1,'http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',605962289283072,b'1',NULL,'2020-04-16 01:38:54',NULL,'2020-04-16 01:38:54'),
	(430,605965183352833,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',605965183352832,b'1',NULL,'2020-04-16 01:44:39',NULL,'2020-04-16 01:44:39'),
	(431,606231563599873,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606231563599872,b'1',NULL,'2020-04-16 10:33:54',NULL,'2020-04-16 10:33:54'),
	(432,606241361494017,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606241361494016,b'1',NULL,'2020-04-16 10:53:22',NULL,'2020-04-16 10:53:22'),
	(433,606241940307969,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606241940307968,b'1',NULL,'2020-04-16 10:54:31',NULL,'2020-04-16 10:54:31'),
	(434,606242670116865,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606242670116864,b'1',NULL,'2020-04-16 10:55:58',NULL,'2020-04-16 10:55:58'),
	(435,606242904997889,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606242904997888,b'1',NULL,'2020-04-16 10:56:26',NULL,'2020-04-16 10:56:26'),
	(436,606244029071361,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606244029071360,b'1',NULL,'2020-04-16 10:58:40',NULL,'2020-04-16 10:58:40'),
	(437,606246847643649,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606246847643648,b'1',NULL,'2020-04-16 11:04:16',NULL,'2020-04-16 11:04:16'),
	(438,606247183187969,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606247183187968,b'1',NULL,'2020-04-16 11:04:56',NULL,'2020-04-16 11:04:56'),
	(439,606250890952705,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606250890952704,b'1',NULL,'2020-04-16 11:12:18',NULL,'2020-04-16 11:12:18'),
	(440,606250916118529,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606250916118528,b'1',NULL,'2020-04-16 11:12:21',NULL,'2020-04-16 11:12:21'),
	(441,606250932895745,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606250932895744,b'1',NULL,'2020-04-16 11:12:23',NULL,'2020-04-16 11:12:23'),
	(442,606252090523649,604354855829504,1,'http://lovepinpin.com/Fg2k5jb0Fj397rqirjo4JtA7oStb',606252090523648,b'1',NULL,'2020-04-16 11:14:41',NULL,'2020-04-16 11:14:41'),
	(443,606316607307777,604357137530880,2,'',606316607307776,b'1',NULL,'2020-04-16 13:22:52',NULL,'2020-04-16 13:22:52'),
	(444,606323544686593,604357137530880,2,'',606323544686592,b'1',NULL,'2020-04-16 13:36:39',NULL,'2020-04-16 13:36:39'),
	(445,606325063024641,604357137530880,2,'',606325063024640,b'1',NULL,'2020-04-16 13:39:40',NULL,'2020-04-16 13:39:40'),
	(446,606327101456385,604357137530880,2,'',606327101456384,b'1',NULL,'2020-04-16 13:43:43',NULL,'2020-04-16 13:43:43'),
	(447,606442201546753,605690674544640,1,'http://lovepinpin.com/Fi0r0WOzcGDulftcropH5JJ3Mr9A',606442201546752,b'1',NULL,'2020-04-16 17:32:24',NULL,'2020-04-16 17:32:24'),
	(448,606446706229249,606446706229248,3,'http://lovepinpin.com/20200416174121KeJsvnFU',606446706229248,b'1',NULL,'2020-04-16 17:41:21',NULL,'2020-04-16 17:41:21'),
	(449,606446706229250,606446706229248,4,'http://lovepinpin.com/20200416174121wvnjXgPs',606446706229248,b'1',NULL,'2020-04-16 17:41:21',NULL,'2020-04-16 17:41:21'),
	(450,606472836743169,606472836743168,3,'http://lovepinpin.com/20200416183316ugPaeUxl',606472836743168,b'1',NULL,'2020-04-16 18:33:16',NULL,'2020-04-16 18:33:16'),
	(451,606472836743170,606472836743168,4,'http://lovepinpin.com/20200416183316kHRIuBae',606472836743168,b'1',NULL,'2020-04-16 18:33:16',NULL,'2020-04-16 18:33:16'),
	(452,606478901706753,606478901706752,3,'http://lovepinpin.com/20200416184519IUWBqXLC',606478901706752,b'1',NULL,'2020-04-16 18:45:19',NULL,'2020-04-16 18:45:19'),
	(453,606478901706754,606478901706752,4,'http://lovepinpin.com/20200416184519EeedWUry',606478901706752,b'1',NULL,'2020-04-16 18:45:19',NULL,'2020-04-16 18:45:19'),
	(454,606507641077761,604360484585472,1,'http://lovepinpin.com/Fow9p3FxQHqygXBAYwnqhA30nsGp',606507641077760,b'1',NULL,'2020-04-16 19:42:25',NULL,'2020-04-16 19:42:25'),
	(455,606508354109441,604360484585472,1,'http://lovepinpin.com/FvonuWV34dwUoMbvWfx1e0ANgrRW',606508354109440,b'1',NULL,'2020-04-16 19:43:50',NULL,'2020-04-16 19:43:50'),
	(456,606508354109442,604360484585472,1,'http://lovepinpin.com/FkYdvk2aBuG8P2eyFRf1HtICi6xI',606508354109440,b'1',NULL,'2020-04-16 19:43:51',NULL,'2020-04-16 19:43:51'),
	(457,606508362498048,604360484585472,1,'http://lovepinpin.com/Fgt7SD6ef7jY598EXW9_u1cFyWHr',606508354109440,b'1',NULL,'2020-04-16 19:43:51',NULL,'2020-04-16 19:43:51'),
	(458,606654517215232,606654508826624,3,'http://lovepinpin.com/20200417003413aGadsTJK',606654508826624,b'1',NULL,'2020-04-17 00:34:14',NULL,'2020-04-17 00:34:14'),
	(459,606654517215233,606654508826624,4,'http://lovepinpin.com/20200417003414dXaHTSvC',606654508826624,b'1',NULL,'2020-04-17 00:34:14',NULL,'2020-04-17 00:34:14'),
	(460,607945893085185,607945893085184,3,'http://lovepinpin.com/20200418191958MTySDtSh',607945893085184,b'1',NULL,'2020-04-18 19:19:58',NULL,'2020-04-18 19:19:58'),
	(461,607945893085186,607945893085184,4,'http://lovepinpin.com/20200418191958DfVAkwCH',607945893085184,b'1',NULL,'2020-04-18 19:19:58',NULL,'2020-04-18 19:19:58'),
	(462,608648279621633,604357523406848,2,'',608648279621632,b'1',NULL,'2020-04-19 18:35:29',NULL,'2020-04-19 18:35:29'),
	(463,608648875212801,604357523406848,2,'',608648875212800,b'1',NULL,'2020-04-19 18:36:40',NULL,'2020-04-19 18:36:40'),
	(464,609170420137985,604810969612288,1,'http://lovepinpin.com/FqubD7Ljo5u2yFqq42ehpvSullBM',609170420137984,b'1',NULL,'2020-04-20 11:52:53',NULL,'2020-04-20 11:52:53'),
	(465,609172852834305,604810969612288,1,'http://lovepinpin.com/FoA3BD7NJCI06K51d5UoRaYC3K0m',609172852834304,b'1',NULL,'2020-04-20 11:57:43',NULL,'2020-04-20 11:57:43'),
	(466,609377492926465,604810969612288,1,'http://lovepinpin.com/FuuhaRxy2KM_P6RHPTyIqS2H3OHX',609377492926464,b'1',NULL,'2020-04-20 18:44:18',NULL,'2020-04-20 18:44:18'),
	(467,609378424061953,604810969612288,1,'http://lovepinpin.com/FnVT9ZcxQ1ppbxP_9T4o3alQTC-e',609378424061952,b'1',NULL,'2020-04-20 18:46:09',NULL,'2020-04-20 18:46:09'),
	(468,609380445716481,604810969612288,1,'http://lovepinpin.com/Fg4OTtg1AUxM6yOE5N1FBUIsWazy',609380445716480,b'1',NULL,'2020-04-20 18:50:11',NULL,'2020-04-20 18:50:11'),
	(469,609380454105088,604810969612288,1,'http://lovepinpin.com/FudkyEn6BQOfTdYQUW5DRYMuA4u9',609380445716480,b'1',NULL,'2020-04-20 18:50:11',NULL,'2020-04-20 18:50:11'),
	(470,609380454105089,604810969612288,1,'http://lovepinpin.com/Fh2Q8vygAHhUmSHrzeqdpax2AYYA',609380445716480,b'1',NULL,'2020-04-20 18:50:11',NULL,'2020-04-20 18:50:11'),
	(471,609382333153281,604810969612288,2,'',609382333153280,b'1',NULL,'2020-04-20 18:53:55',NULL,'2020-04-20 18:53:55'),
	(472,610106672676864,604358311936000,3,'http://lovepinpin.com/Fm82OCJE3SYJQ-rXNH80b17xWSlb',604358311936000,b'1',NULL,'2020-04-21 18:53:03',NULL,'2020-04-21 18:53:03'),
	(473,610116445405185,604810969612288,1,'http://lovepinpin.com/Fv5YKCbto83FmB76-HsbYR6Em7si',610116445405184,b'1',NULL,'2020-04-21 19:12:28',NULL,'2020-04-21 19:12:28'),
	(474,610118735495169,604810969612288,1,'http://lovepinpin.com/Frh7NslByG3AWZPO2ni3LtV2OPwP',610118735495168,b'1',NULL,'2020-04-21 19:17:01',NULL,'2020-04-21 19:17:01'),
	(475,610118735495170,604810969612288,1,'http://lovepinpin.com/FsVKN904VUnEsZZqpodFITnVoetC',610118735495168,b'1',NULL,'2020-04-21 19:17:01',NULL,'2020-04-21 19:17:01'),
	(476,610118735495171,604810969612288,1,'http://lovepinpin.com/FkUbJ2tsJNDbcthOJScoAn7uHUqa',610118735495168,b'1',NULL,'2020-04-21 19:17:01',NULL,'2020-04-21 19:17:01'),
	(477,610121470181377,604810969612288,1,'http://lovepinpin.com/FojCHZOVYZdMh55vNah66Jez12dy',610121470181376,b'1',NULL,'2020-04-21 19:22:27',NULL,'2020-04-21 19:22:27'),
	(478,610121470181378,604810969612288,1,'http://lovepinpin.com/FmLbfpOStSy9rBxXllwrDECL4mBs',610121470181376,b'1',NULL,'2020-04-21 19:22:27',NULL,'2020-04-21 19:22:27'),
	(479,610121470181379,604810969612288,1,'http://lovepinpin.com/FjxiHbBbUEZcTb-fHrJtV9SMcv9Y',610121470181376,b'1',NULL,'2020-04-21 19:22:27',NULL,'2020-04-21 19:22:27'),
	(480,610122594254849,604810969612288,1,'http://lovepinpin.com/FqbM0RdsrLsOg2f6Yy0fUhuV270U',610122594254848,b'1',NULL,'2020-04-21 19:24:41',NULL,'2020-04-21 19:24:41'),
	(481,610124305530881,604810969612288,1,'http://lovepinpin.com/Fji-SWxEa2k8DLFEPAMINQqRHSSo',610124305530880,b'1',NULL,'2020-04-21 19:28:05',NULL,'2020-04-21 19:28:05'),
	(482,610126369128449,604810969612288,1,'http://lovepinpin.com/Fji-SWxEa2k8DLFEPAMINQqRHSSo',610126369128448,b'1',NULL,'2020-04-21 19:32:11',NULL,'2020-04-21 19:32:11'),
	(483,610756546527233,604810969612288,1,'http://lovepinpin.com/FrCArj71c_jfFjFOs-A_HYTby6ze',610756546527232,b'1',NULL,'2020-04-22 16:24:14',NULL,'2020-04-22 16:24:14'),
	(484,610756546527234,604810969612288,1,'http://lovepinpin.com/Foy6r_qfUcPcc164wwZtBzHsCK_Y',610756546527232,b'1',NULL,'2020-04-22 16:24:14',NULL,'2020-04-22 16:24:14'),
	(485,610756546527235,604810969612288,1,'http://lovepinpin.com/FgfKYSLF2Qte_A-fIrqY0dZOqaHa',610756546527232,b'1',NULL,'2020-04-22 16:24:14',NULL,'2020-04-22 16:24:14'),
	(486,610760019410945,604810969612288,1,'http://lovepinpin.com/FltQhH-6M3xkngCDfRu8ufwG-oEF',610760019410944,b'1',NULL,'2020-04-22 16:31:08',NULL,'2020-04-22 16:31:08'),
	(487,610761520971777,604810969612288,1,'http://lovepinpin.com/Fiyda9cMifOnX9DGBS2XPv_wHSSA',610761520971776,b'1',NULL,'2020-04-22 16:34:07',NULL,'2020-04-22 16:34:07'),
	(488,610761520971778,604810969612288,1,'http://lovepinpin.com/FnVzwcK78KDmN05Y0JWncGeWxvc3',610761520971776,b'1',NULL,'2020-04-22 16:34:07',NULL,'2020-04-22 16:34:07'),
	(489,610761520971779,604810969612288,1,'http://lovepinpin.com/FqINs5LttAXLlXGhc7P8XIc10Y5t',610761520971776,b'1',NULL,'2020-04-22 16:34:07',NULL,'2020-04-22 16:34:07'),
	(490,610765790773249,604810969612288,1,'http://lovepinpin.com/FoVHJvW1_JLqCKIwNJU3D9uTf7P0',610765790773248,b'1',NULL,'2020-04-22 16:42:36',NULL,'2020-04-22 16:42:36'),
	(491,610768475127809,604810969612288,1,'http://lovepinpin.com/FnTz_GSgwQ-5KRRmsbkYNdHaXFrw',610768475127808,b'1',NULL,'2020-04-22 16:47:56',NULL,'2020-04-22 16:47:56'),
	(492,610777761316865,604810969612288,1,'http://lovepinpin.com/FgFdHpekegs8pfKHAQWOuJoVgUYv',610777761316864,b'1',NULL,'2020-04-22 17:06:23',NULL,'2020-04-22 17:06:23'),
	(493,611460443013121,604810969612288,1,'http://lovepinpin.com/FvxTwbVY5roVxxHsYZ4QMTNbSAex',611460443013120,b'1',NULL,'2020-04-23 15:42:45',NULL,'2020-04-23 15:42:45'),
	(494,611460443013122,604810969612288,1,'http://lovepinpin.com/Fluq1rhcjvnQY8E3glT_-oVPy2wt',611460443013120,b'1',NULL,'2020-04-23 15:42:45',NULL,'2020-04-23 15:42:45'),
	(495,611460443013123,604810969612288,1,'http://lovepinpin.com/FvMRBdlWZ3i0gzNbvgKqt79gNByy',611460443013120,b'1',NULL,'2020-04-23 15:42:45',NULL,'2020-04-23 15:42:45'),
	(496,611461835522049,604810969612288,1,'http://lovepinpin.com/FhqhynaroP_wSFSye0iELCOfKdXw',611461835522048,b'1',NULL,'2020-04-23 15:45:31',NULL,'2020-04-23 15:45:31'),
	(497,611468244418561,604810969612288,1,'http://lovepinpin.com/FvoN-RhJYclXTAaAVEgzRlpWO0_M',611468244418560,b'1',NULL,'2020-04-23 15:58:15',NULL,'2020-04-23 15:58:15'),
	(498,611471994126337,604810969612288,1,'http://lovepinpin.com/Fr4teRUQfhuK9Ad8jfVYvmazRRRd',611471994126336,b'1',NULL,'2020-04-23 16:05:42',NULL,'2020-04-23 16:05:42'),
	(499,611473923506177,604810969612288,1,'http://lovepinpin.com/Fg269FrQoV9aqaQM7-R5A4gW6TVo',611473923506176,b'1',NULL,'2020-04-23 16:09:32',NULL,'2020-04-23 16:09:32'),
	(500,611477924872193,604810969612288,1,'http://lovepinpin.com/Fm-3_KMP1wzPZJb2EzZGjvHL_hW-',611477924872192,b'1',NULL,'2020-04-23 16:17:29',NULL,'2020-04-23 16:17:29'),
	(501,611477924872194,604810969612288,1,'http://lovepinpin.com/FtH2gQB-yokKzDcb1tDzvgCGTj8Q',611477924872192,b'1',NULL,'2020-04-23 16:17:29',NULL,'2020-04-23 16:17:29'),
	(502,611477924872195,604810969612288,1,'http://lovepinpin.com/Fhl6rCj2xO6cqn-EX7KDIwaYA2nH',611477924872192,b'1',NULL,'2020-04-23 16:17:29',NULL,'2020-04-23 16:17:29'),
	(503,612180286242817,604810969612288,1,'http://lovepinpin.com/Fur5ZPYlm-JgA9MBdGmqCTjpNC6q',612180286242816,b'1',NULL,'2020-04-24 15:32:57',NULL,'2020-04-24 15:32:57'),
	(504,612182559555585,604810969612288,1,'http://lovepinpin.com/FtU8Jxl9Oqbk08zmhokrOWBfKXbg',612182559555584,b'1',NULL,'2020-04-24 15:37:28',NULL,'2020-04-24 15:37:28'),
	(505,612182559555586,604810969612288,1,'http://lovepinpin.com/FmCaDFmYoCAkXTD23MH6crcE5q8W',612182559555584,b'1',NULL,'2020-04-24 15:37:28',NULL,'2020-04-24 15:37:28'),
	(506,612182559555587,604810969612288,1,'http://lovepinpin.com/Fh8AXAi_0UD_vAzDIeGFbiUZNkPc',612182559555584,b'1',NULL,'2020-04-24 15:37:28',NULL,'2020-04-24 15:37:28'),
	(507,612183826235393,604810969612288,1,'http://lovepinpin.com/Fof0GdXmKwtb_m1o8pPOn8JFZ0Li',612183826235392,b'1',NULL,'2020-04-24 15:39:59',NULL,'2020-04-24 15:39:59'),
	(508,612184858034177,604810969612288,1,'http://lovepinpin.com/FqP3y_YTdGik8Ditzrpx5meM1sM_',612184858034176,b'1',NULL,'2020-04-24 15:42:02',NULL,'2020-04-24 15:42:02'),
	(509,612186225377281,604810969612288,1,'http://lovepinpin.com/FrCkesjIFLmtOPRakm8ywu1YOfbc',612186225377280,b'1',NULL,'2020-04-24 15:44:45',NULL,'2020-04-24 15:44:45'),
	(510,612187735326721,604810969612288,1,'http://lovepinpin.com/FuHtfCNodqo8YAvnt2K4VNlS1quh',612187735326720,b'1',NULL,'2020-04-24 15:47:45',NULL,'2020-04-24 15:47:45'),
	(511,612188842622977,604810969612288,1,'http://lovepinpin.com/Fhy2F_8Qwk1mjY_21Sd84VojKQZr',612188842622976,b'1',NULL,'2020-04-24 15:49:57',NULL,'2020-04-24 15:49:57'),
	(512,613641715974145,604810969612288,1,'http://lovepinpin.com/FlTcf1CH0ZSsD1sQli5HcrDFSumB',613641715974144,b'1',NULL,'2020-04-26 15:56:33',NULL,'2020-04-26 15:56:33'),
	(513,613642437394433,604810969612288,1,'http://lovepinpin.com/FqsXQW1sNpPbNf-GvdBXGU97NZDy',613642437394432,b'1',NULL,'2020-04-26 15:57:59',NULL,'2020-04-26 15:57:59'),
	(514,613646572978177,604810969612288,1,'http://lovepinpin.com/Fgg9cXFJK-jnTG2kL04rrMA3LbVO',613646572978176,b'1',NULL,'2020-04-26 16:06:12',NULL,'2020-04-26 16:06:12'),
	(515,613648586244097,604810969612288,1,'http://lovepinpin.com/FqYqoNeTXatAIHCV7rLsjadZbmjR',613648586244096,b'1',NULL,'2020-04-26 16:10:12',NULL,'2020-04-26 16:10:12'),
	(516,613649802592257,604810969612288,1,'http://lovepinpin.com/FpKWcT4jeU5wOHGxp8cS9W2S8Zfx',613649802592256,b'1',NULL,'2020-04-26 16:12:37',NULL,'2020-04-26 16:12:37'),
	(517,613652184956929,604810969612288,1,'http://lovepinpin.com/FgHrMJ3aHTzzJFo9XITMULzxzD_c',613652184956928,b'1',NULL,'2020-04-26 16:17:21',NULL,'2020-04-26 16:17:21'),
	(518,614196496564225,604354855829504,1,'http://lovepinpin.com/Flfzz_NSbCJ75JtvfoQDw2HG1Rpo',614196496564224,b'1',NULL,'2020-04-27 10:18:48',NULL,'2020-04-27 10:18:48'),
	(519,614196748222465,604354855829504,2,'',614196748222464,b'1',NULL,'2020-04-27 10:19:18',NULL,'2020-04-27 10:19:18'),
	(520,614196806942721,604354855829504,2,'',614196806942720,b'1',NULL,'2020-04-27 10:19:25',NULL,'2020-04-27 10:19:25'),
	(521,614197972959233,604354855829504,1,'http://lovepinpin.com/Fgf9XPQZOQVOYPthup-7dfmmi29N',614197972959232,b'1',NULL,'2020-04-27 10:21:44',NULL,'2020-04-27 10:21:44'),
	(522,614198157508609,604354855829504,2,'',614198157508608,b'1',NULL,'2020-04-27 10:22:06',NULL,'2020-04-27 10:22:06'),
	(523,614211528949760,614211520561152,3,'http://lovepinpin.com/20200427104840OGcKLbIE',614211520561152,b'1',NULL,'2020-04-27 10:48:40',NULL,'2020-04-27 10:48:40'),
	(524,614211528949761,614211520561152,4,'http://lovepinpin.com/20200427104840iDNVmYUk',614211520561152,b'1',NULL,'2020-04-27 10:48:40',NULL,'2020-04-27 10:48:40'),
	(525,614226804604929,604354855829504,2,'',614226804604928,b'1',NULL,'2020-04-27 11:19:01',NULL,'2020-04-27 11:19:01'),
	(526,614226955599873,604354855829504,2,'',614226955599872,b'1',NULL,'2020-04-27 11:19:19',NULL,'2020-04-27 11:19:19'),
	(527,614385735172097,604810969612288,1,'http://lovepinpin.com/FvPRt55r-9LOP0GQPZn-5RKp11xx',614385735172096,b'1',NULL,'2020-04-27 16:34:47',NULL,'2020-04-27 16:34:47'),
	(528,614386490146817,604810969612288,1,'http://lovepinpin.com/FrpZtxYEkWsL6EaVQr6dCMkolA9N',614386490146816,b'1',NULL,'2020-04-27 16:36:17',NULL,'2020-04-27 16:36:17'),
	(529,614392244731905,604810969612288,1,'http://lovepinpin.com/Fml50nNoz1DWxWWZ17d_HvaRbe1W',614392244731904,b'1',NULL,'2020-04-27 16:47:43',NULL,'2020-04-27 16:47:43'),
	(530,614397017849857,604810969612288,1,'http://lovepinpin.com/FqT31l0r0NypMzXJRM5RFGIxUG2z',614397017849856,b'1',NULL,'2020-04-27 16:57:12',NULL,'2020-04-27 16:57:12'),
	(531,614397017849858,604810969612288,1,'http://lovepinpin.com/FsBTtMK58VO4JiK3EWdL0ONEAF2P',614397017849856,b'1',NULL,'2020-04-27 16:57:12',NULL,'2020-04-27 16:57:12'),
	(532,614397017849859,604810969612288,1,'http://lovepinpin.com/FmGJRJWqT-kpggw_kS1doFbdZsfc',614397017849856,b'1',NULL,'2020-04-27 16:57:12',NULL,'2020-04-27 16:57:12'),
	(533,614890184114176,614890175725568,3,'http://lovepinpin.com/20200428091701qZuZsucw',614890175725568,b'1',NULL,'2020-04-28 09:17:02',NULL,'2020-04-28 09:17:02'),
	(534,614890184114177,614890175725568,4,'http://lovepinpin.com/20200428091702RFcnxJNs',614890175725568,b'1',NULL,'2020-04-28 09:17:02',NULL,'2020-04-28 09:17:02'),
	(535,615107717496833,604810969612288,1,'http://lovepinpin.com/FvaYhqFZEprcpEoT9TB43895EM4R',615107717496832,b'1',NULL,'2020-04-28 16:29:14',NULL,'2020-04-28 16:29:14'),
	(536,615108682186753,604810969612288,1,'http://lovepinpin.com/Fl11IBeHHQJuqarxqxRnjq9FQYWV',615108682186752,b'1',NULL,'2020-04-28 16:31:09',NULL,'2020-04-28 16:31:09'),
	(537,615110427017217,604810969612288,1,'http://lovepinpin.com/FpzdaZGb8KtyqrhUnanL9ElRxCNJ',615110427017216,b'1',NULL,'2020-04-28 16:34:37',NULL,'2020-04-28 16:34:37'),
	(538,615111895023617,604810969612288,1,'http://lovepinpin.com/FuCtERMb2aob9O-pD7ubbgWBp8-W',615111895023616,b'1',NULL,'2020-04-28 16:37:32',NULL,'2020-04-28 16:37:32'),
	(539,615113438527489,604810969612288,1,'http://lovepinpin.com/FtvP_i3MvHTMrrS_DTrXf0folkX8',615113438527488,b'1',NULL,'2020-04-28 16:40:36',NULL,'2020-04-28 16:40:36'),
	(540,615114369662977,604810969612288,1,'http://lovepinpin.com/FltnZGCanYBFaRnB3IKZ5GfYywso',615114369662976,b'1',NULL,'2020-04-28 16:42:27',NULL,'2020-04-28 16:42:27'),
	(541,615828105986049,604810969612288,1,'http://lovepinpin.com/FrFr8sbKqZ4jSCret_llVn3X9FQ7',615828105986048,b'1',NULL,'2020-04-29 16:20:31',NULL,'2020-04-29 16:20:31'),
	(542,615828617691137,604810969612288,1,'http://lovepinpin.com/Fi9_futdFw87Q_Gk5tRPRfLDIjeE',615828617691136,b'1',NULL,'2020-04-29 16:21:32',NULL,'2020-04-29 16:21:32'),
	(543,615830278635521,604810969612288,1,'http://lovepinpin.com/Fip9mVPZIfZnq4ajJPliPd0QPY4Y',615830278635520,b'1',NULL,'2020-04-29 16:24:50',NULL,'2020-04-29 16:24:50'),
	(544,615830974889985,604810969612288,1,'http://lovepinpin.com/FpPiB-zM4iDiTXTFKAoOUDx1DFyH',615830974889984,b'1',NULL,'2020-04-29 16:26:13',NULL,'2020-04-29 16:26:13'),
	(545,615836117106689,604810969612288,1,'http://lovepinpin.com/FvbVHAhpYT1q_4UZbJzkQCRtBQQt',615836117106688,b'1',NULL,'2020-04-29 16:36:26',NULL,'2020-04-29 16:36:26'),
	(546,616413504995329,604810969612288,1,'http://lovepinpin.com/FhoeRWoeTrqi1xrg9BzQYqPpjzWL',616413504995328,b'1',NULL,'2020-04-30 11:43:36',NULL,'2020-04-30 11:43:36'),
	(547,616415325323265,604810969612288,1,'http://lovepinpin.com/FoPw2jmab7lm9Vnz_fFxKHn-HANG',616415325323264,b'1',NULL,'2020-04-30 11:47:13',NULL,'2020-04-30 11:47:13'),
	(548,618773941846017,604357523406848,1,'http://lovepinpin.com/Fjm3tlBl-H-3C1lvoyQikDJ_ud41',618773941846016,b'1',NULL,'2020-05-03 17:53:22',NULL,'2020-05-03 17:53:22'),
	(549,621504702185473,621504702185472,3,'http://lovepinpin.com/20200507121854pFOBHSps',621504702185472,b'1',NULL,'2020-05-07 12:18:54',NULL,'2020-05-07 12:18:54'),
	(550,621504702185474,621504702185472,4,'http://lovepinpin.com/20200507121854zqmATAEG',621504702185472,b'1',NULL,'2020-05-07 12:18:54',NULL,'2020-05-07 12:18:54'),
	(551,621552651468801,621552651468800,3,'http://lovepinpin.com/20200507135410yNtzBtlO',621552651468800,b'1',NULL,'2020-05-07 13:54:10',NULL,'2020-05-07 13:54:10'),
	(552,621552651468802,621552651468800,4,'http://lovepinpin.com/20200507135410TlcPsMGO',621552651468800,b'1',NULL,'2020-05-07 13:54:10',NULL,'2020-05-07 13:54:10'),
	(553,621763205529600,621763197140992,3,'http://lovepinpin.com/20200507205229KwkydImG',621763197140992,b'1',NULL,'2020-05-07 20:52:30',NULL,'2020-05-07 20:52:30'),
	(554,621763205529601,621763197140992,4,'http://lovepinpin.com/20200507205230VgfHNvhh',621763197140992,b'1',NULL,'2020-05-07 20:52:30',NULL,'2020-05-07 20:52:30'),
	(555,622035617185793,622035617185792,3,'http://lovepinpin.com/20200508055344WfugocwN',622035617185792,b'1',NULL,'2020-05-08 05:53:44',NULL,'2020-05-08 05:53:44'),
	(556,622035625574400,622035617185792,4,'http://lovepinpin.com/20200508055344YlfMvUaX',622035617185792,b'1',NULL,'2020-05-08 05:53:45',NULL,'2020-05-08 05:53:45'),
	(557,622292753186817,622292753186816,3,'http://lovepinpin.com/20200508142437CYxgClfQ',622292753186816,b'1',NULL,'2020-05-08 14:24:37',NULL,'2020-05-08 14:24:37'),
	(558,622292753186818,622292753186816,4,'http://lovepinpin.com/20200508142437kNbeeemj',622292753186816,b'1',NULL,'2020-05-08 14:24:37',NULL,'2020-05-08 14:24:37'),
	(559,622407056359424,622407047970816,3,'http://lovepinpin.com/20200508181142hwdQPyhN',622407047970816,b'1',NULL,'2020-05-08 18:11:43',NULL,'2020-05-08 18:11:43'),
	(560,622407056359425,622407047970816,4,'http://lovepinpin.com/20200508181143LKOQXhnR',622407047970816,b'1',NULL,'2020-05-08 18:11:43',NULL,'2020-05-08 18:11:43'),
	(561,622529186103297,604810969612288,1,'http://lovepinpin.com/Fqz0RMeMuTEiiwFRl8bhnf5sDo-4',622529186103296,b'1',NULL,'2020-05-08 22:14:22',NULL,'2020-05-08 22:14:22'),
	(562,622530519891969,604810969612288,1,'http://lovepinpin.com/Fi6Ymh9K-I51YrGzn3Mju_TnVKeu',622530519891968,b'1',NULL,'2020-05-08 22:17:01',NULL,'2020-05-08 22:17:01'),
	(563,622530519891970,604810969612288,1,'http://lovepinpin.com/FoHORjZpsb5jqgYvj936ij11jW31',622530519891968,b'1',NULL,'2020-05-08 22:17:01',NULL,'2020-05-08 22:17:01'),
	(564,622530519891971,604810969612288,1,'http://lovepinpin.com/Frb-S3tbX4PwJYFgXRE6M2zhPZns',622530519891968,b'1',NULL,'2020-05-08 22:17:01',NULL,'2020-05-08 22:17:01'),
	(565,622531794960385,604810969612288,1,'http://lovepinpin.com/Fu7sFyoyczY_BeiqfDonTGgh4MSk',622531794960384,b'1',NULL,'2020-05-08 22:19:33',NULL,'2020-05-08 22:19:33'),
	(566,624782995357697,624782995357696,3,'http://lovepinpin.com/20200512005217SzcSMgqG',624782995357696,b'1',NULL,'2020-05-12 00:52:17',NULL,'2020-05-12 00:52:17'),
	(567,624782995357698,624782995357696,4,'http://lovepinpin.com/20200512005217SdUFwWLc',624782995357696,b'1',NULL,'2020-05-12 00:52:17',NULL,'2020-05-12 00:52:17'),
	(568,624816231022592,624816222633984,3,'http://lovepinpin.com/20200512015818RiUWGkLV',624816222633984,b'1',NULL,'2020-05-12 01:58:19',NULL,'2020-05-12 01:58:19'),
	(569,624816231022593,624816222633984,4,'http://lovepinpin.com/20200512015819EDzdmngx',624816222633984,b'1',NULL,'2020-05-12 01:58:19',NULL,'2020-05-12 01:58:19'),
	(570,624965615353856,624965565022208,3,'http://lovepinpin.com/20200512065501pNLlOPxz',624965565022208,b'1',NULL,'2020-05-12 06:55:07',NULL,'2020-05-12 06:55:07'),
	(571,624965690851328,624965565022208,4,'http://lovepinpin.com/20200512065507tUFPYVWM',624965565022208,b'1',NULL,'2020-05-12 06:55:16',NULL,'2020-05-12 06:55:16'),
	(572,624991108333569,624991108333568,3,'http://lovepinpin.com/20200512074546tbUbzqlD',624991108333568,b'1',NULL,'2020-05-12 07:45:46',NULL,'2020-05-12 07:45:46'),
	(573,624991108333570,624991108333568,4,'http://lovepinpin.com/20200512074546umSZuAHE',624991108333568,b'1',NULL,'2020-05-12 07:45:46',NULL,'2020-05-12 07:45:46'),
	(574,625000688123905,625000688123904,3,'http://lovepinpin.com/20200512080448qdWziNRz',625000688123904,b'1',NULL,'2020-05-12 08:04:48',NULL,'2020-05-12 08:04:48'),
	(575,625000688123906,625000688123904,4,'http://lovepinpin.com/20200512080448UceyBEZg',625000688123904,b'1',NULL,'2020-05-12 08:04:48',NULL,'2020-05-12 08:04:48'),
	(576,625008841850880,625008833462272,3,'http://lovepinpin.com/20200512082059uBUdBANb',625008833462272,b'1',NULL,'2020-05-12 08:21:00',NULL,'2020-05-12 08:21:00'),
	(577,625008841850881,625008833462272,4,'http://lovepinpin.com/20200512082100jEmjAkMZ',625008833462272,b'1',NULL,'2020-05-12 08:21:00',NULL,'2020-05-12 08:21:00'),
	(578,625042949931009,625042949931008,3,'http://lovepinpin.com/20200512092846sIaKnqct',625042949931008,b'1',NULL,'2020-05-12 09:28:46',NULL,'2020-05-12 09:28:46'),
	(579,625042949931010,625042949931008,4,'http://lovepinpin.com/20200512092846smzsxVyd',625042949931008,b'1',NULL,'2020-05-12 09:28:46',NULL,'2020-05-12 09:28:46'),
	(580,625124361371648,625124352983040,3,'http://lovepinpin.com/20200512121030aWTZmxME',625124352983040,b'1',NULL,'2020-05-12 12:10:31',NULL,'2020-05-12 12:10:31'),
	(581,625124361371649,625124352983040,4,'http://lovepinpin.com/20200512121031SQJbmzVm',625124352983040,b'1',NULL,'2020-05-12 12:10:31',NULL,'2020-05-12 12:10:31'),
	(582,625138957549569,625138957549568,3,'http://lovepinpin.com/20200512123931hbOmFyLv',625138957549568,b'1',NULL,'2020-05-12 12:39:31',NULL,'2020-05-12 12:39:31'),
	(583,625138957549570,625138957549568,4,'http://lovepinpin.com/20200512123931yoANikfJ',625138957549568,b'1',NULL,'2020-05-12 12:39:31',NULL,'2020-05-12 12:39:31'),
	(584,625275876409344,625275868020736,3,'http://lovepinpin.com/20200512171132wxVtdaVr',625275868020736,b'1',NULL,'2020-05-12 17:11:33',NULL,'2020-05-12 17:11:33'),
	(585,625275876409345,625275868020736,4,'http://lovepinpin.com/20200512171133oqiCnDme',625275868020736,b'1',NULL,'2020-05-12 17:11:33',NULL,'2020-05-12 17:11:33'),
	(586,625324765216769,625324765216768,3,'http://lovepinpin.com/20200512184841nuCMkgmF',625324765216768,b'1',NULL,'2020-05-12 18:48:41',NULL,'2020-05-12 18:48:41'),
	(587,625324773605376,625324765216768,4,'http://lovepinpin.com/20200512184841TAbCXRUE',625324765216768,b'1',NULL,'2020-05-12 18:48:42',NULL,'2020-05-12 18:48:42'),
	(588,627350790209537,627350790209536,3,'http://lovepinpin.com/20200515135402rqmAyQPq',627350790209536,b'1',NULL,'2020-05-15 13:54:02',NULL,'2020-05-15 13:54:02'),
	(589,627350790209538,627350790209536,4,'http://lovepinpin.com/20200515135402IzOiuGIN',627350790209536,b'1',NULL,'2020-05-15 13:54:03',NULL,'2020-05-15 13:54:03'),
	(590,630290317836288,630290309447680,3,'http://lovepinpin.com/20200519151420CgxVsYuR',630290309447680,b'1',NULL,'2020-05-19 15:14:21',NULL,'2020-05-19 15:14:21'),
	(591,630290317836289,630290309447680,4,'http://lovepinpin.com/20200519151421xctUVxao',630290309447680,b'1',NULL,'2020-05-19 15:14:21',NULL,'2020-05-19 15:14:21'),
	(592,630940032303105,630940032303104,3,'http://lovepinpin.com/20200520124513VZFdwIEX',630940032303104,b'1',NULL,'2020-05-20 12:45:13',NULL,'2020-05-20 12:45:13'),
	(593,630940032303106,630940032303104,4,'http://lovepinpin.com/20200520124513UJIJYYku',630940032303104,b'1',NULL,'2020-05-20 12:45:13',NULL,'2020-05-20 12:45:13'),
	(594,631054276755457,631054276755456,3,'http://lovepinpin.com/20200520163212roJWSiGB',631054276755456,b'1',NULL,'2020-05-20 16:32:12',NULL,'2020-05-20 16:32:12'),
	(595,631054285144064,631054276755456,4,'http://lovepinpin.com/20200520163212PrdsglqS',631054276755456,b'1',NULL,'2020-05-20 16:32:13',NULL,'2020-05-20 16:32:13'),
	(596,631088208674817,631088208674816,3,'http://lovepinpin.com/20200520173937GaxZfrEN',631088208674816,b'1',NULL,'2020-05-20 17:39:37',NULL,'2020-05-20 17:39:37'),
	(597,631088208674818,631088208674816,4,'http://lovepinpin.com/20200520173937HVmpEVYk',631088208674816,b'1',NULL,'2020-05-20 17:39:37',NULL,'2020-05-20 17:39:37'),
	(598,634015950307329,634015950307328,3,'http://lovepinpin.com/20200524183631jebPRjUb',634015950307328,b'1',NULL,'2020-05-24 18:36:31',NULL,'2020-05-24 18:36:31'),
	(599,634015950307330,634015950307328,4,'http://lovepinpin.com/20200524183631vtpjDkRm',634015950307328,b'1',NULL,'2020-05-24 18:36:31',NULL,'2020-05-24 18:36:31'),
	(600,635541435449344,635541427060736,3,'http://lovepinpin.com/20200526210722eddkXVrY',635541427060736,b'1',NULL,'2020-05-26 21:07:23',NULL,'2020-05-26 21:07:23'),
	(601,635541435449345,635541427060736,4,'http://lovepinpin.com/20200526210723NIpnstdW',635541427060736,b'1',NULL,'2020-05-26 21:07:23',NULL,'2020-05-26 21:07:23'),
	(602,637799959101440,637799950712832,3,'http://lovepinpin.com/20200529235439kDwppxaR',637799950712832,b'1',NULL,'2020-05-29 23:54:40',NULL,'2020-05-29 23:54:40'),
	(603,637799959101441,637799950712832,4,'http://lovepinpin.com/20200529235440QNWnlBCZ',637799950712832,b'1',NULL,'2020-05-29 23:54:40',NULL,'2020-05-29 23:54:40'),
	(604,647498590846977,605909516550144,2,'',647498590846976,b'1',NULL,'2020-06-12 09:04:07',NULL,'2020-06-12 09:04:07');

/*!40000 ALTER TABLE `file_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table follow_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `follow_info`;

CREATE TABLE `follow_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `follow_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '关注时间',
  `scene` int(11) DEFAULT NULL COMMENT '关注场景1帖子3认证列表',
  `from_user_id` bigint(20) DEFAULT NULL COMMENT '关注者ID',
  `to_user_id` bigint(20) DEFAULT NULL COMMENT '被关注者ID',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT NULL COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`),
  KEY `FKdoct0mlvks4dntqkiap7fa6p5` (`from_user_id`),
  KEY `FKfjs7cw18pvh8eh3n48taed8r9` (`to_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `follow_info` WRITE;
/*!40000 ALTER TABLE `follow_info` DISABLE KEYS */;

INSERT INTO `follow_info` (`id`, `uid`, `follow_time`, `scene`, `from_user_id`, `to_user_id`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(1,604656459841536,'2020-04-14 06:24:27',1,604651502174208,604360484585472,NULL,NULL,NULL,'2020-04-14 06:24:27'),
	(2,604775460634624,'2020-04-14 10:20:53',1,604357523406848,604360484585472,NULL,NULL,NULL,'2020-04-14 10:20:53'),
	(24,632480172343296,'2020-05-22 15:45:12',3,604354855829504,605515210031104,NULL,NULL,NULL,'2020-05-22 15:45:12'),
	(4,606443124293632,'2020-04-16 17:34:14',1,605690674544640,604360484585472,NULL,NULL,NULL,'2020-04-16 17:34:14'),
	(6,608648170569728,'2020-04-19 18:35:16',1,604357523406848,604354855829504,NULL,NULL,NULL,'2020-04-19 18:35:16'),
	(27,632481455800320,'2020-05-22 15:47:45',3,604354855829504,604810969612288,NULL,NULL,NULL,'2020-05-22 15:47:45'),
	(9,610037575712768,'2020-04-21 16:35:46',2,604354855829504,604357523406848,NULL,NULL,NULL,'2020-04-21 16:35:46'),
	(19,624773222629376,'2020-05-12 00:32:52',3,607945893085184,604360484585472,NULL,NULL,NULL,'2020-05-12 00:32:52'),
	(11,610104911069184,'2020-04-21 18:49:33',1,604358311936000,604360484585472,NULL,NULL,NULL,'2020-04-21 18:49:33'),
	(18,624467852132352,'2020-05-11 14:26:09',3,624466694504448,604360484585472,NULL,NULL,NULL,'2020-05-11 14:26:09'),
	(20,624773348458496,'2020-05-12 00:33:07',2,607945893085184,604357523406848,NULL,NULL,NULL,'2020-05-12 00:33:07'),
	(21,624773407178752,'2020-05-12 00:33:14',2,607945893085184,604354855829504,NULL,NULL,NULL,'2020-05-12 00:33:14'),
	(22,630282625482752,'2020-05-19 14:59:04',1,604357137530880,604354855829504,NULL,NULL,NULL,'2020-05-19 14:59:04'),
	(23,631011452911616,'2020-05-20 15:07:07',1,605909516550144,604360484585472,NULL,NULL,NULL,'2020-05-20 15:07:07'),
	(28,645042423201792,'2020-06-08 23:44:09',2,645041508843520,604357523406848,NULL,NULL,NULL,'2020-06-08 23:44:09');

/*!40000 ALTER TABLE `follow_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gold_coin_record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gold_coin_record`;

CREATE TABLE `gold_coin_record` (
  `id` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` int(11) DEFAULT '0' COMMENT '资金总额',
  `event_type` int(1) DEFAULT '0' COMMENT '产生这笔记录的类型(0 充值金币,1 金币提现,2 收到礼物,3 送出礼物)',
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pre_coin_sum` int(10) DEFAULT '0',
  `after_coin_sum` int(10) DEFAULT '0',
  `context` varchar(255) DEFAULT NULL COMMENT '金币记录的内容',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `title` longtext COMMENT '商品名称',
  `imgs` longtext NOT NULL COMMENT '商品图片集url',
  `desc` longtext NOT NULL COMMENT '商品详情长图url',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `paid` int(20) NOT NULL DEFAULT '0' COMMENT '已付款人数',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;

INSERT INTO `goods` (`id`, `uid`, `title`, `imgs`, `desc`, `status`, `paid`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(3,12345,'久久简餐（测试商品请勿下单）','http://lovepinpin.com/1585379640092⑨http://lovepinpin.com/1585379925623','http://lovepinpin.com/1585380166156',1,104,'2020-02-20 15:53:29','2020-06-12 10:35:04',NULL,NULL),
	(63,601941268758528,'蓝胖子脱脂奶粉','http://lovepinpin.com/1586501542145','http://lovepinpin.com/1586501562550',1,1,'2020-04-10 12:29:51','2020-05-20 14:23:57',NULL,NULL),
	(72,601961342697472,'贵州茅台酒精品53度500ml酱香型白酒单瓶装精品茅台酒年货节送礼','http://lovepinpin.com/1586501737366⑨http://lovepinpin.com/1586501745941⑨http://lovepinpin.com/1586501754550','http://lovepinpin.com/1586501728068',1,0,'2020-04-10 13:09:44','2020-04-10 13:09:44',NULL,NULL),
	(73,602020155228160,'一次性三层熔喷布防飞沫防护口罩大包装','http://lovepinpin.com/1586502253758⑨http://lovepinpin.com/1586502260523⑨http://lovepinpin.com/1586502276005','http://lovepinpin.com/1586502283141',1,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(74,602031395962880,'大香蕉 新鲜水果 青香蕉 香蕉9斤装','http://lovepinpin.com/1586503669225','http://lovepinpin.com/1586503675726⑨http://lovepinpin.com/1586503675726',1,0,'2020-04-10 15:28:55','2020-04-10 15:28:55',NULL,NULL),
	(76,634611541475328,'123阿萨德','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6','http://lovepinpin.com/Fjjt2NrO6hwOH3jxC5Ywv6uUhYg6',1,0,'2020-05-25 14:19:51','2020-05-25 14:19:51',NULL,NULL),
	(79,636793351307264,'[绥化]远行健康餐','http://lovepinpin.com/0.6014068845313243⑨http://lovepinpin.com/0.5131979022841333⑨http://lovepinpin.com/0.4098046359099832⑨http://lovepinpin.com/0.06528413074196315⑨http://lovepinpin.com/0.7426641910597076','http://lovepinpin.com/0.283119271969015⑨http://lovepinpin.com/0.6113663098759439⑨http://lovepinpin.com/0.41574045949821437',0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(80,636795532345344,'[明水]远行健康餐','http://lovepinpin.com/0.6014068845313243⑨http://lovepinpin.com/0.5131979022841333⑨http://lovepinpin.com/0.4098046359099832⑨http://lovepinpin.com/0.06528413074196315⑨http://lovepinpin.com/0.7426641910597076','http://lovepinpin.com/0.42952613706063114⑨http://lovepinpin.com/0.7474413722288686⑨http://lovepinpin.com/0.9470247183296765',0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL);

/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table goods_categories_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods_categories_relation`;

CREATE TABLE `goods_categories_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `goods_uid` bigint(255) DEFAULT NULL COMMENT '商品uid',
  `categories_uid` bigint(255) DEFAULT NULL COMMENT '分类uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `goods_categories_relation` WRITE;
/*!40000 ALTER TABLE `goods_categories_relation` DISABLE KEYS */;

INSERT INTO `goods_categories_relation` (`id`, `uid`, `goods_uid`, `categories_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(75,602023149961216,601941268758528,868085961604784,0,'2020-04-10 15:12:32','2020-04-10 15:12:32',NULL,NULL),
	(76,602023149961217,601961342697472,868085961604784,0,'2020-04-10 15:12:32','2020-04-10 15:12:32',NULL,NULL),
	(77,602023149961218,602020155228160,868085961604784,0,'2020-04-10 15:12:32','2020-04-10 15:12:32',NULL,NULL),
	(94,606353408131072,601941268758528,895771572201622,0,'2020-04-16 14:35:59','2020-04-16 14:35:59',NULL,NULL),
	(95,606353408131073,601961342697472,895771572201622,0,'2020-04-16 14:35:59','2020-04-16 14:35:59',NULL,NULL),
	(96,606353408131074,602020155228160,895771572201622,0,'2020-04-16 14:35:59','2020-04-16 14:35:59',NULL,NULL);

/*!40000 ALTER TABLE `goods_categories_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table goods_specification_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goods_specification_relation`;

CREATE TABLE `goods_specification_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '商品单价(分)',
  `freight` int(10) NOT NULL DEFAULT '0' COMMENT '运费(分)',
  `goods_uid` bigint(255) DEFAULT NULL COMMENT '商品uid',
  `specification_uid` bigint(255) DEFAULT NULL COMMENT '商品规格uid',
  `deduction` int(10) NOT NULL DEFAULT '0' COMMENT '可抵扣金额(分)',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`),
  KEY `fk_goods_uid` (`goods_uid`),
  KEY `fk_specification_uid` (`specification_uid`),
  CONSTRAINT `fk_goods_uid` FOREIGN KEY (`goods_uid`) REFERENCES `goods` (`uid`),
  CONSTRAINT `fk_specification_uid` FOREIGN KEY (`specification_uid`) REFERENCES `specification` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

LOCK TABLES `goods_specification_relation` WRITE;
/*!40000 ALTER TABLE `goods_specification_relation` DISABLE KEYS */;

INSERT INTO `goods_specification_relation` (`id`, `uid`, `price`, `freight`, `goods_uid`, `specification_uid`, `deduction`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,12213123,1,1,12345,124124135,0,0,'2020-02-20 22:13:53','2020-05-19 17:28:07',NULL,NULL),
	(69,601941268758529,12900,0,601941268758528,602013536616448,50,0,'2020-04-10 12:29:51','2020-05-20 16:15:29',NULL,NULL),
	(71,601961342697473,319900,0,601961342697472,602015549882368,0,0,'2020-04-10 13:09:44','2020-04-10 13:09:44',NULL,NULL),
	(72,602020155228162,9900,0,602020155228160,602020155228161,0,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(73,602020155228164,19600,0,602020155228160,602020155228163,0,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(74,602020155228166,29400,0,602020155228160,602020155228165,0,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(75,602020155228168,39200,0,602020155228160,602020155228167,0,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(76,602020155228170,49000,0,602020155228160,602020155228169,1,0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(77,602031395962882,2980,1000,602031395962880,602031395962881,0,0,'2020-04-10 15:28:55','2020-04-10 15:28:55',NULL,NULL),
	(79,611398535086081,4980,1,12345,124124136,0,0,'2020-04-23 13:39:45','2020-05-11 15:51:44',NULL,NULL),
	(80,611398535086083,0,0,12345,611398535086082,0,1,'2020-04-23 13:39:45','2020-04-23 13:39:45',NULL,NULL),
	(81,611398535086084,0,0,12345,611398535086082,0,1,'2020-04-23 13:39:45','2020-04-23 13:39:45',NULL,NULL),
	(82,615780601298945,1,1,12345,615780601298944,0,1,'2020-04-29 14:46:08','2020-04-29 14:46:08',NULL,NULL),
	(83,634611541475329,20,1,634611541475328,124124135,3,0,'2020-05-25 14:19:51','2020-05-25 14:19:51',NULL,NULL),
	(85,634746111524864,4354,2,12345,124124137,1000,0,'2020-05-25 18:47:13','2020-05-25 18:47:13',NULL,NULL),
	(86,634807306420224,15,1,634611541475328,124124136,2,0,'2020-05-25 20:48:48','2020-05-25 20:48:48',NULL,NULL),
	(87,634854249070592,1,0,12345,615780601298944,1,1,'2020-05-25 22:22:04','2020-05-25 22:22:04',NULL,NULL),
	(88,636793351307266,1200,0,636793351307264,636793351307265,0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(89,636793351307268,1200,0,636793351307264,636793351307267,0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(90,636793351307270,1200,0,636793351307264,636793351307269,0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(91,636793351307272,1200,0,636793351307264,636793351307271,0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(92,636793351307274,1200,0,636793351307264,636793351307273,0,0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(93,636795532345345,900,0,636795532345344,636793351307265,0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL),
	(94,636795532345346,900,0,636795532345344,636793351307267,0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL),
	(95,636795532345347,900,0,636795532345344,636793351307269,0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL),
	(96,636795532345348,900,0,636795532345344,636793351307271,0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL),
	(97,636795532345349,900,0,636795532345344,636793351307273,0,0,'2020-05-28 14:39:03','2020-05-28 14:39:03',NULL,NULL);

/*!40000 ALTER TABLE `goods_specification_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table health_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `health_info`;

CREATE TABLE `health_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `sex` varchar(5) DEFAULT NULL COMMENT '男或女',
  `birthday` varchar(50) NOT NULL DEFAULT '' COMMENT '生日',
  `height` varchar(50) DEFAULT NULL COMMENT '身高',
  `weight` varchar(50) DEFAULT NULL COMMENT '体重',
  `score` varchar(50) DEFAULT NULL COMMENT '健康分数',
  `bmi` varchar(50) DEFAULT NULL COMMENT 'BMI',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '用户uid',
  `recipe_uid` bigint(20) DEFAULT NULL COMMENT '推荐食谱uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `health_info` WRITE;
/*!40000 ALTER TABLE `health_info` DISABLE KEYS */;

INSERT INTO `health_info` (`id`, `uid`, `sex`, `birthday`, `height`, `weight`, `score`, `bmi`, `user_uid`, `recipe_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,604775913619456,'男','1997-11-20','176cm','58kg','100分','18.7',604357523406848,739054855209157,0,'2020-04-14 10:21:47','2020-04-14 10:21:47',NULL,NULL),
	(2,605020726755328,'女','2020-01-14','160cm','48kg','100分','18.7',604810969612288,739054855209157,0,'2020-04-14 18:28:11','2020-04-14 18:31:22',NULL,NULL),
	(3,606442755194880,'男','1987-10-24','180cm','85kg','80分','26.2',605690674544640,669246171227159,0,'2020-04-16 17:33:30','2020-04-16 17:33:30',NULL,NULL),
	(4,606447092105216,'女','1993-03-27','158cm','48kg','100分','19.2',606446706229248,739054855209157,0,'2020-04-16 17:42:07','2020-04-16 17:42:07',NULL,NULL),
	(5,607268202610688,'男','1999-04-17','178cm','65kg','100分','20.5',606654508826624,739054855209157,0,'2020-04-17 20:53:31','2020-04-17 20:53:31',NULL,NULL),
	(6,613265621123072,'男','1993-09-25','172cm','59kg','100分','19.9',606478901706752,739054855209157,0,'2020-04-26 03:29:19','2020-04-26 03:29:19',NULL,NULL),
	(7,622036028227584,'男','2007-12-07','172cm','53kg','100分','17.9',622035617185792,411670405552713,0,'2020-05-08 05:54:33','2020-05-08 05:54:33',NULL,NULL),
	(8,624467600474112,'男','1971-08-28','163cm','55kg','100分','20.7',624466694504448,739054855209157,0,'2020-05-11 14:25:39','2020-05-11 14:25:39',NULL,NULL),
	(9,624783221850112,'男','2000-06-12','177cm','70kg','100分','22.3',624782995357696,739054855209157,0,'2020-05-12 00:52:44','2020-05-12 00:52:44',NULL,NULL),
	(10,625180346941440,'男','2010-02-04','157cm','64kg','80分','26.0',625179742961664,669246171227159,0,'2020-05-12 14:01:45','2020-05-12 14:01:45',NULL,NULL),
	(11,625277336027136,'女','1970-04-15','160cm','102kg','60分','39.8',625275868020736,19731443975911,0,'2020-05-12 17:14:27','2020-05-12 17:14:27',NULL,NULL),
	(12,627636581695488,'男','1992-09-18','172cm','70kg','100分','23.7',627633234640896,739054855209157,0,'2020-05-15 23:21:51','2020-05-15 23:21:51',NULL,NULL),
	(13,627971664642048,'男','1999-05-16','179cm','68kg','100分','21.2',625138957549568,739054855209157,0,'2020-05-16 10:27:36','2020-05-16 10:27:36',NULL,NULL),
	(14,628699569324032,'女','1975-05-09','166cm','55kg','100分','20.0',628698738851840,739054855209157,0,'2020-05-17 10:33:49','2020-05-17 10:33:49',NULL,NULL),
	(15,630152375566336,'女','2020-06-12','160cm','55kg','100分','21.5',605909516550144,739054855209157,0,'2020-05-19 10:40:17','2020-06-12 15:24:11',NULL,NULL),
	(16,632595591200768,'男','1966-05-22','172cm','72kg','80分','24.3',632594894946304,669246171227159,0,'2020-05-22 19:34:31','2020-05-22 19:34:31',NULL,NULL),
	(17,635542089760768,'女','2001-09-06','171cm','52kg','100分','17.8',635541427060736,411670405552713,0,'2020-05-26 21:08:41','2020-05-26 21:08:41',NULL,NULL);

/*!40000 ALTER TABLE `health_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table id_card_certification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `id_card_certification`;

CREATE TABLE `id_card_certification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT '用户系统ID',
  `id_card_number` varchar(20) NOT NULL COMMENT '用户身份证号',
  `real_name` varchar(255) NOT NULL COMMENT '真实姓名',
  `state_id` tinyint(4) DEFAULT '2' COMMENT '审核状态Id，详细对应见state表；默认为通过，不通过不会插入到数据库中',
  `auditor_id` bigint(20) DEFAULT '-1' COMMENT '审核员的User_Uid，系统认证为-1',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基础信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基础信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新用户，基础信息',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基础信息',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table img_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `img_info`;

CREATE TABLE `img_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可以，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table invite_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invite_info`;

CREATE TABLE `invite_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `invite_code` varchar(255) NOT NULL DEFAULT '0' COMMENT '邀请码',
  `invite_verified` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未使用1已使用',
  `invite_counts` int(11) NOT NULL DEFAULT '0' COMMENT '已邀请人数',
  `user_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `invite_info` WRITE;
/*!40000 ALTER TABLE `invite_info` DISABLE KEYS */;

INSERT INTO `invite_info` (`id`, `uid`, `invite_code`, `invite_verified`, `invite_counts`, `user_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,625975729586176,'24JCOZ1C',1,5,604354855829504,0,'2020-05-13 16:22:02','2020-05-20 15:22:29',NULL,NULL),
	(5,626546154930176,'9LGE7QJR',1,0,604357523406848,0,'2020-05-14 11:15:22','2020-05-14 11:48:12',NULL,NULL),
	(6,626562051342336,'SMTDSPJ0',1,1,604360484585472,0,'2020-05-14 11:46:57','2020-05-18 22:19:18',NULL,NULL),
	(7,627550724292608,'XOT3REAG',1,0,604810969612288,0,'2020-05-15 20:31:16','2020-05-15 20:43:27',NULL,NULL),
	(8,627550783012864,'JSYCV2PQ',1,0,605515210031104,0,'2020-05-15 20:31:23','2020-05-18 22:19:18',NULL,NULL),
	(9,627550833344512,'H4JIJIJ2',0,0,605690674544640,0,'2020-05-15 20:31:29','2020-05-15 20:31:29',NULL,NULL),
	(10,629456515366912,'VZUC9ULM',0,1,611408408477696,0,'2020-05-18 11:37:44','2020-05-20 15:22:29',NULL,NULL),
	(11,629885114515456,'72U8ZENA',0,0,605909516550144,0,'2020-05-19 01:49:17','2020-05-19 01:49:17',NULL,NULL),
	(12,630282952638464,'B0VO1J29',1,0,604357137530880,0,'2020-05-19 14:59:43','2020-05-20 13:37:04',NULL,NULL),
	(13,630964980023296,'1RT2W266',0,1,604362413965312,0,'2020-05-20 13:34:47','2020-05-20 13:37:05',NULL,NULL),
	(14,631889463345152,'Y2I7XLFZ',0,0,627633234640896,0,'2020-05-21 20:11:34','2020-05-21 20:11:34',NULL,NULL),
	(15,634593514356736,'BCQF9EFY',0,0,607945893085184,0,'2020-05-25 13:44:02','2020-05-25 13:44:02',NULL,NULL),
	(16,635542156869632,'K6QVX6KK',0,0,635541427060736,0,'2020-05-26 21:08:49','2020-05-26 21:08:49',NULL,NULL),
	(17,637800286257152,'B4WKWKS8',0,0,637799950712832,0,'2020-05-29 23:55:19','2020-05-29 23:55:19',NULL,NULL),
	(18,642742493380608,'JT9FZQWU',0,0,642741956509696,0,'2020-06-05 19:34:36','2020-06-05 19:34:36',NULL,NULL),
	(19,648252542156800,'8MAUIIYN',0,0,625138957549568,0,'2020-06-13 10:02:05','2020-06-13 10:02:05',NULL,NULL);

/*!40000 ALTER TABLE `invite_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table invite_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `invite_relation`;

CREATE TABLE `invite_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `inviter_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '邀请人uid',
  `invitee_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '被邀请人uid',
  `red_packet` varchar(11) NOT NULL DEFAULT '0' COMMENT '红包金额（单位分）',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `invite_relation` WRITE;
/*!40000 ALTER TABLE `invite_relation` DISABLE KEYS */;

INSERT INTO `invite_relation` (`id`, `uid`, `inviter_uid`, `invitee_uid`, `red_packet`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(19,626562680487936,604354855829504,604357523406848,'260',0,'2020-05-14 11:48:12','2020-05-14 11:48:12',NULL,NULL),
	(20,626562722430976,604354855829504,604360484585472,'250',0,'2020-05-14 11:48:17','2020-05-14 11:48:17',NULL,NULL),
	(22,627556856365056,604354855829504,604810969612288,'290',0,'2020-05-15 20:43:27','2020-05-15 20:43:27',NULL,NULL),
	(23,629779426443264,604360484585472,605515210031104,'310',0,'2020-05-18 22:19:18','2020-05-18 22:19:18',NULL,NULL),
	(24,630966129262592,604362413965312,604357137530880,'290',0,'2020-05-20 13:37:04','2020-05-20 13:37:04',NULL,NULL),
	(26,631019187208192,611408408477696,604354855829504,'460',0,'2020-05-20 15:22:29','2020-05-20 15:22:29',NULL,NULL);

/*!40000 ALTER TABLE `invite_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jpush_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jpush_info`;

CREATE TABLE `jpush_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '单机记录Id',
  `uid` bigint(20) NOT NULL COMMENT '全局记录Id',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '系统用户uid',
  `registration_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '极光推送设备注册Id',
  `tags` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT '极光推送用户tag，用标签来进行大规模的设备属性、用户属性分群',
  `platform` varchar(30) CHARACTER SET latin1 DEFAULT 'android' COMMENT 'JPush 当前支持 Android, iOS, Windows Phone 三个平台的推送。其关键字分别为：android, ios, winphone',
  `alias` varchar(100) CHARACTER SET latin1 DEFAULT NULL COMMENT '用别名来标识一个用户。一个设备只能绑定一个别名，但多个设备可以绑定同一个别名。一次推送最多 1000 个',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='极光推送设备信息与系统用户对应表';

LOCK TABLES `jpush_info` WRITE;
/*!40000 ALTER TABLE `jpush_info` DISABLE KEYS */;

INSERT INTO `jpush_info` (`id`, `uid`, `user_uid`, `registration_id`, `tags`, `platform`, `alias`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(49,581758982553600,581758974164992,'1104a897922bf91b083',NULL,'Android',NULL,NULL,'2020-03-13 16:11:15',NULL,'2020-03-13 16:11:15'),
	(50,589806904016897,589806904016896,'',NULL,'Android',NULL,NULL,'2020-03-24 18:41:02',NULL,'2020-03-24 18:41:02'),
	(51,590365929242625,590365929242624,'18071adc0393d37f779',NULL,'Android',NULL,NULL,'2020-03-25 13:11:43',NULL,'2020-03-25 13:11:43'),
	(52,591221349154816,591221340766208,'1104a897922bf91b083',NULL,'Android',NULL,NULL,'2020-03-26 17:31:17',NULL,'2020-03-26 17:31:17'),
	(53,591858052890625,591858052890624,'1104a8979230696a714',NULL,'Android',NULL,NULL,'2020-03-27 14:36:18',NULL,'2020-03-27 14:36:18'),
	(54,591870182817793,591870182817792,'100d855909df46991ca',NULL,'Android',NULL,NULL,'2020-03-27 15:00:24',NULL,'2020-03-27 15:00:24'),
	(55,593535707381760,586999916396544,'',NULL,'Android',NULL,NULL,'2020-03-29 22:09:30',NULL,'2020-03-29 22:09:30'),
	(56,593537108279297,593537108279296,'1104a8979230c9a245b',NULL,'Android',NULL,NULL,'2020-03-29 22:12:17',NULL,'2020-03-29 22:12:17'),
	(57,594026348675072,593504686309376,'',NULL,'Android',NULL,NULL,'2020-03-30 14:24:19',NULL,'2020-03-30 14:24:19'),
	(58,594105209978882,594105201590272,'',NULL,'Android',NULL,NULL,'2020-03-30 17:01:00',NULL,'2020-03-30 17:01:00'),
	(59,594197107179520,593536630128640,'1104a8979230c9a245b',NULL,'Android',NULL,NULL,'2020-03-30 20:03:35',NULL,'2020-03-30 20:03:35'),
	(60,594300530327552,593943309844480,'140fe1da9e370c85ba0',NULL,'Android',NULL,NULL,'2020-03-30 23:29:04',NULL,'2020-03-30 23:29:04'),
	(61,594301453074433,594301453074432,'140fe1da9e370c85ba0',NULL,'Android',NULL,NULL,'2020-03-30 23:30:55',NULL,'2020-03-30 23:30:55'),
	(62,595425719484418,595425711095808,'1104a8979230696a714',NULL,'Android',NULL,NULL,'2020-04-01 12:44:37',NULL,'2020-04-01 12:44:37'),
	(63,595702954590210,595702946201600,'',NULL,'Android',NULL,NULL,'2020-04-01 21:55:26',NULL,'2020-04-01 21:55:26'),
	(64,599751003209729,599750994821120,'100d855909deea03bd8',NULL,'Android',NULL,NULL,'2020-04-07 11:58:11',NULL,'2020-04-07 11:58:11'),
	(65,599753964388355,599753964388352,'190e35f7e0c7398d455',NULL,'Android',NULL,NULL,'2020-04-07 12:04:04',NULL,'2020-04-07 12:04:04'),
	(66,599769726582784,599769718194176,'120c83f760bd14b4839',NULL,'Android',NULL,NULL,'2020-04-07 12:35:23',NULL,'2020-04-07 12:35:23'),
	(67,599948101943297,599948093554688,'100d855909dbb07dd30',NULL,'Android',NULL,NULL,'2020-04-07 18:29:47',NULL,'2020-04-07 18:29:47'),
	(68,599952128475137,599952128475136,'100d855909c58fb74be',NULL,'Android',NULL,NULL,'2020-04-07 18:37:47',NULL,'2020-04-07 18:37:47'),
	(69,599971044786177,599971044786176,'100d855909df0fdc66c',NULL,'Android',NULL,NULL,'2020-04-07 19:15:22',NULL,'2020-04-07 19:15:22'),
	(70,601453353762819,601453353762816,'100d855909def1fcf28',NULL,'Android',NULL,NULL,'2020-04-09 20:20:27',NULL,'2020-04-09 20:20:27'),
	(71,601486262272003,601486262272000,'18071adc0394775764c',NULL,'Android',NULL,NULL,'2020-04-09 21:25:50',NULL,'2020-04-09 21:25:50'),
	(72,604354855829505,604354855829504,'18071adc0393d37f779',NULL,'Android',NULL,NULL,'2020-04-13 20:25:13',NULL,'2020-04-13 20:25:13'),
	(73,604357137530881,604357137530880,'1104a897922bf91b083',NULL,'Android',NULL,NULL,'2020-04-13 20:29:45',NULL,'2020-04-13 20:29:45'),
	(74,604357523406851,604357523406848,'1104a8979230c9a245b',NULL,'Android',NULL,NULL,'2020-04-13 20:30:31',NULL,'2020-04-13 20:30:31'),
	(75,604358311936001,604358311936000,'100d855909df46991ca',NULL,'Android',NULL,NULL,'2020-04-13 20:32:05',NULL,'2020-04-13 20:32:05'),
	(76,604360484585473,604360484585472,'1104a897922bf91b083',NULL,'Android',NULL,NULL,'2020-04-13 20:36:24',NULL,'2020-04-13 20:36:24'),
	(77,604362422353921,604362413965312,'1a0018970a24a5f65eb',NULL,'Android',NULL,NULL,'2020-04-13 20:40:15',NULL,'2020-04-13 20:40:15'),
	(78,604651502174209,604651502174208,'170976fa8a19e1249e7',NULL,'Android',NULL,NULL,'2020-04-14 06:14:36',NULL,'2020-04-14 06:14:36'),
	(79,604810969612289,604810969612288,'18071adc03945dec7da',NULL,'Android',NULL,NULL,'2020-04-14 11:31:26',NULL,'2020-04-14 11:31:26'),
	(80,605515226808320,605515210031104,'1104a8979230696a714',NULL,'Android',NULL,NULL,'2020-04-15 10:50:40',NULL,'2020-04-15 10:50:40'),
	(81,605690674544643,605690674544640,'100d855909da3d668fb',NULL,'Android',NULL,NULL,'2020-04-15 16:39:15',NULL,'2020-04-15 16:39:15'),
	(82,605909516550145,605909516550144,'190e35f7e0c6c8e6ee1',NULL,'Android',NULL,NULL,'2020-04-15 23:54:03',NULL,'2020-04-15 23:54:03'),
	(83,605954303328256,605954294939648,'1104a8979236f1bef40',NULL,'Android',NULL,NULL,'2020-04-16 01:23:02',NULL,'2020-04-16 01:23:02'),
	(84,606446714617856,606446706229248,'18071adc0395256b744',NULL,'Android',NULL,NULL,'2020-04-16 17:41:22',NULL,'2020-04-16 17:41:22'),
	(85,606450875367424,606450866978816,'1a0018970a3fa6a4779',NULL,'Android',NULL,NULL,'2020-04-16 17:49:38',NULL,'2020-04-16 17:49:38'),
	(86,606472836743171,606472836743168,'140fe1da9e346c4a84b',NULL,'Android',NULL,NULL,'2020-04-16 18:33:16',NULL,'2020-04-16 18:33:16'),
	(87,606475185553408,606475177164800,'160a3797c8994fa44a9',NULL,'Android',NULL,NULL,'2020-04-16 18:37:56',NULL,'2020-04-16 18:37:56'),
	(88,606478910095360,606478901706752,'170976fa8a19ec7432e',NULL,'Android',NULL,NULL,'2020-04-16 18:45:20',NULL,'2020-04-16 18:45:20'),
	(89,606654525603840,606654508826624,'100d855909dbb07dd30',NULL,'Android',NULL,NULL,'2020-04-17 00:34:15',NULL,'2020-04-17 00:34:15'),
	(90,607945893085187,607945893085184,'1104a89792303c7dc0c',NULL,'Android',NULL,NULL,'2020-04-18 19:19:58',NULL,'2020-04-18 19:19:58'),
	(91,611408408477697,611408408477696,'120c83f760a298d903d',NULL,'Android',NULL,NULL,'2020-04-23 13:59:22',NULL,'2020-04-23 13:59:22'),
	(92,614211537338368,614211520561152,'18071adc0393d37f779',NULL,'Android',NULL,NULL,'2020-04-27 10:48:41',NULL,'2020-04-27 10:48:41'),
	(93,614890184114178,614890175725568,'140fe1da9e370c85ba0',NULL,'Android',NULL,NULL,'2020-04-28 09:17:02',NULL,'2020-04-28 09:17:02'),
	(94,618579988840449,618579988840448,'13065ffa4e8944d19bb',NULL,'Android',NULL,NULL,'2020-05-03 11:28:01',NULL,'2020-05-03 11:28:01'),
	(95,621031207206912,618579988840449,'100d855909c0033a9d8',NULL,'Android',NULL,NULL,'2020-05-06 20:38:09',NULL,'2020-05-06 20:38:09'),
	(96,621504702185475,621504702185472,'18071adc03933f8b46f',NULL,'Android',NULL,NULL,'2020-05-07 12:18:54',NULL,'2020-05-07 12:18:54'),
	(97,621552651468803,621552651468800,'100d855909dac21b6de',NULL,'Android',NULL,NULL,'2020-05-07 13:54:10',NULL,'2020-05-07 13:54:10'),
	(98,621763205529602,621763197140992,'120c83f760a6be9c181',NULL,'Android',NULL,NULL,'2020-05-07 20:52:30',NULL,'2020-05-07 20:52:30'),
	(99,622035625574401,622035617185792,'13065ffa4e8a4e4b186',NULL,'Android',NULL,NULL,'2020-05-08 05:53:45',NULL,'2020-05-08 05:53:45'),
	(100,622292761575424,622292753186816,'18071adc039331a4d95',NULL,'Android',NULL,NULL,'2020-05-08 14:24:38',NULL,'2020-05-08 14:24:38'),
	(101,622407056359426,622407047970816,'1507bfd3f745fe2367e',NULL,'Android',NULL,NULL,'2020-05-08 18:11:43',NULL,'2020-05-08 18:11:43'),
	(102,624418032189441,624418032189440,'100d855909c718985fd',NULL,'Android',NULL,NULL,'2020-05-11 12:47:10',NULL,'2020-05-11 12:47:10'),
	(103,624466694504449,624466694504448,'1104a8979236586b171',NULL,'Android',NULL,NULL,'2020-05-11 14:23:51',NULL,'2020-05-11 14:23:51'),
	(104,624700770222081,624700770222080,'190e35f7e0c6449cf51',NULL,'Android',NULL,NULL,'2020-05-11 22:08:55',NULL,'2020-05-11 22:08:55'),
	(105,624783003746304,624782995357696,'18071adc039337945c8',NULL,'Android',NULL,NULL,'2020-05-12 00:52:18',NULL,'2020-05-12 00:52:18'),
	(106,624816231022594,624816222633984,'120c83f760b934ca2f4',NULL,'Android',NULL,NULL,'2020-05-12 01:58:19',NULL,'2020-05-12 01:58:19'),
	(107,624965867012097,624965867012096,'1a0018970a38ea93a05',NULL,'Android',NULL,NULL,'2020-05-12 06:55:37',NULL,'2020-05-12 06:55:37'),
	(108,624991108333571,624991108333568,'190e35f7e0c5ee5d94d',NULL,'Android',NULL,NULL,'2020-05-12 07:45:46',NULL,'2020-05-12 07:45:46'),
	(109,625000688123907,625000688123904,'160a3797c886594ed9d',NULL,'Android',NULL,NULL,'2020-05-12 08:04:48',NULL,'2020-05-12 08:04:48'),
	(110,625008841850882,625008833462272,'160a3797c8981d7b11b',NULL,'Android',NULL,NULL,'2020-05-12 08:21:00',NULL,'2020-05-12 08:21:00'),
	(111,625042958319616,625042949931008,'160a3797c89ac145fc4',NULL,'Android',NULL,NULL,'2020-05-12 09:28:47',NULL,'2020-05-12 09:28:47'),
	(112,625078073032705,625078073032704,'1104a897922883b0246',NULL,'Android',NULL,NULL,'2020-05-12 10:38:33',NULL,'2020-05-12 10:38:33'),
	(113,625102886535168,625102878146560,'170976fa8a03300d9a3',NULL,'Android',NULL,NULL,'2020-05-12 11:27:51',NULL,'2020-05-12 11:27:51'),
	(114,625124361371650,625124352983040,'18071adc03915459c56',NULL,'Android',NULL,NULL,'2020-05-12 12:10:31',NULL,'2020-05-12 12:10:31'),
	(115,625138957549571,625138957549568,'1104a897922e7df8c1b',NULL,'Android',NULL,NULL,'2020-05-12 12:39:31',NULL,'2020-05-12 12:39:31'),
	(116,625158972768257,625158972768256,'',NULL,'Android',NULL,NULL,'2020-05-12 13:19:17',NULL,'2020-05-12 13:19:17'),
	(117,625179742961665,625179742961664,'190e35f7e0da7b5c0a5',NULL,'Android',NULL,NULL,'2020-05-12 14:00:33',NULL,'2020-05-12 14:00:33'),
	(118,625275876409346,625275868020736,'170976fa8a1c3a305fd',NULL,'Android',NULL,NULL,'2020-05-12 17:11:33',NULL,'2020-05-12 17:11:33'),
	(119,625324773605377,625324765216768,'190e35f7e0d9d8985ad',NULL,'Android',NULL,NULL,'2020-05-12 18:48:42',NULL,'2020-05-12 18:48:42'),
	(120,625707923275777,625707923275776,'100d855909c44db8d61',NULL,'Android',NULL,NULL,'2020-05-13 07:29:57',NULL,'2020-05-13 07:29:57'),
	(121,626495655510017,626495655510016,'13065ffa4e887369693',NULL,'Android',NULL,NULL,'2020-05-14 09:35:02',NULL,'2020-05-14 09:35:02'),
	(122,627350798598144,627350790209536,'160a3797c8985c1c5a2',NULL,'Android',NULL,NULL,'2020-05-15 13:54:03',NULL,'2020-05-15 13:54:03'),
	(123,627633234640897,627633234640896,'140fe1da9e2b8f09b3a',NULL,'Android',NULL,NULL,'2020-05-15 23:15:12',NULL,'2020-05-15 23:15:12'),
	(124,628380550561793,628380550561792,'18071adc0388bd5cc8c',NULL,'Android',NULL,NULL,'2020-05-16 23:59:59',NULL,'2020-05-16 23:59:59'),
	(125,628698738851841,628698738851840,'13065ffa4e88b61f380',NULL,'Android',NULL,NULL,'2020-05-17 10:32:10',NULL,'2020-05-17 10:32:10'),
	(126,629507870425089,629507870425088,'1a0018970a22b340529',NULL,'Android',NULL,NULL,'2020-05-18 13:19:46',NULL,'2020-05-18 13:19:46'),
	(127,630290317836290,630290309447680,'160a3797c882ffc8f4d',NULL,'Android',NULL,NULL,'2020-05-19 15:14:21',NULL,'2020-05-19 15:14:21'),
	(128,630940040691712,630940032303104,'1507bfd3f744a2b3b77',NULL,'Android',NULL,NULL,'2020-05-20 12:45:14',NULL,'2020-05-20 12:45:14'),
	(129,631054285144065,631054276755456,'18071adc038c6923c2c',NULL,'Android',NULL,NULL,'2020-05-20 16:32:13',NULL,'2020-05-20 16:32:13'),
	(130,631088208674819,631088208674816,'100d855909c0033a9d8',NULL,'Android',NULL,NULL,'2020-05-20 17:39:37',NULL,'2020-05-20 17:39:37'),
	(131,631565193314305,631565193314304,'140fe1da9e2ddf4cba2',NULL,'Android',NULL,NULL,'2020-05-21 09:27:18',NULL,'2020-05-21 09:27:18'),
	(132,631710945378304,631710936989696,'18071adc038976dbcb2',NULL,'Android',NULL,NULL,'2020-05-21 14:16:53',NULL,'2020-05-21 14:16:53'),
	(133,632594894946305,632594894946304,'170976fa8a0705ee7ac',NULL,'Android',NULL,NULL,'2020-05-22 19:33:08',NULL,'2020-05-22 19:33:08'),
	(134,633836157272065,633836157272064,'1104a897922ec024ea1',NULL,'Android',NULL,NULL,'2020-05-24 12:39:18',NULL,'2020-05-24 12:39:18'),
	(135,634015958695936,634015950307328,'170976fa8a0443dc0f2',NULL,'Android',NULL,NULL,'2020-05-24 18:36:32',NULL,'2020-05-24 18:36:32'),
	(136,635384560091137,635384560091136,'1104a897922d817d167',NULL,'Android',NULL,NULL,'2020-05-26 15:55:42',NULL,'2020-05-26 15:55:42'),
	(137,635541443837952,635541427060736,'100d855909deea03bd8',NULL,'Android',NULL,NULL,'2020-05-26 21:07:24',NULL,'2020-05-26 21:07:24'),
	(138,637799967490048,637799950712832,'1a0018970a2147beda6',NULL,'Android',NULL,NULL,'2020-05-29 23:54:41',NULL,'2020-05-29 23:54:41'),
	(139,642741956509697,642741956509696,'120c83f760aef564c1e',NULL,'Android',NULL,NULL,'2020-06-05 19:33:32',NULL,'2020-06-05 19:33:32'),
	(140,644797131915265,644797131915264,'160a3797c885d980ffc',NULL,'Android',NULL,NULL,'2020-06-08 15:36:48',NULL,'2020-06-08 15:36:48'),
	(141,645041508843521,645041508843520,'190e35f7e0c538148ee',NULL,'Android',NULL,NULL,'2020-06-08 23:42:20',NULL,'2020-06-08 23:42:20'),
	(142,647053852016641,647053852016640,'160a3797c882cb3687f',NULL,'Android',NULL,NULL,'2020-06-11 18:20:30',NULL,'2020-06-11 18:20:30');

/*!40000 ALTER TABLE `jpush_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nutritionist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nutritionist`;

CREATE TABLE `nutritionist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='营养师表';



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '用户uid',
  `address_uid` bigint(20) DEFAULT NULL COMMENT '收货地址uid',
  `receiver` varchar(20) DEFAULT NULL COMMENT '收件人',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话号',
  `freight_sum` int(10) NOT NULL DEFAULT '0' COMMENT '运费(分)',
  `area` varchar(50) DEFAULT NULL COMMENT '地址区域',
  `address` varchar(50) DEFAULT NULL COMMENT '购买时收货地址',
  `note` longtext COMMENT '订单备注',
  `sum` int(10) NOT NULL COMMENT '订单总金额(包含运费)(分)',
  `pay_method` int(11) DEFAULT '0' COMMENT '0支付宝1微信2红包全额支付',
  `use_red_bag` int(11) NOT NULL DEFAULT '0' COMMENT '0不使用1使用红包',
  `redBagAmount` int(10) NOT NULL DEFAULT '0' COMMENT '可抵扣红包金额',
  `payment` int(10) NOT NULL DEFAULT '0' COMMENT '实付金额',
  `logistics_name` varchar(20) DEFAULT NULL COMMENT '物流公司',
  `logistics_num` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0待付款1待发货2待收货3历史订单4取消支付5过期订单6已退款订单',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pay_date` datetime DEFAULT NULL COMMENT '支付时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `uid`, `user_uid`, `address_uid`, `receiver`, `tel`, `freight_sum`, `area`, `address`, `note`, `sum`, `pay_method`, `use_red_bag`, `redBagAmount`, `payment`, `logistics_name`, `logistics_num`, `type`, `status`, `create_date`, `pay_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,648252298887168,625138957549568,637451789926400,'测试账户','15811111111',0,'北京市市辖区东城区','某某某大街某某某户',NULL,900,0,0,0,0,NULL,NULL,5,0,'2020-06-13 10:01:36',NULL,'2020-06-14 10:02:00',NULL,NULL);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders_goods_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders_goods_relation`;

CREATE TABLE `orders_goods_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `orders_uid` bigint(20) DEFAULT NULL,
  `goods_uid` bigint(20) NOT NULL COMMENT '购买商品uid',
  `title` varchar(50) DEFAULT NULL COMMENT '商品名称',
  `imgs` longtext COMMENT '商品图片',
  `price` int(10) NOT NULL DEFAULT '0' COMMENT '购买时单价(单位分)',
  `specification` varchar(255) DEFAULT NULL COMMENT '购买时规格',
  `nums` int(11) DEFAULT NULL COMMENT '购买数量',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `orders_goods_relation` WRITE;
/*!40000 ALTER TABLE `orders_goods_relation` DISABLE KEYS */;

INSERT INTO `orders_goods_relation` (`id`, `uid`, `orders_uid`, `goods_uid`, `title`, `imgs`, `price`, `specification`, `nums`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,648252298887169,648252298887168,636795532345344,'[明水]远行健康餐','http://lovepinpin.com/0.6014068845313243⑨http://lovepinpin.com/0.5131979022841333⑨http://lovepinpin.com/0.4098046359099832⑨http://lovepinpin.com/0.06528413074196315⑨http://lovepinpin.com/0.7426641910597076',900,'周一',1,0,'2020-06-13 10:01:36','2020-06-13 10:01:36',NULL,NULL);

/*!40000 ALTER TABLE `orders_goods_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT '0' COMMENT '发帖用户ID',
  `state_id` bigint(20) DEFAULT '2' COMMENT '帖子状态ID',
  `topic_id` bigint(20) DEFAULT NULL COMMENT '所属话题ID',
  `title` varchar(255) DEFAULT NULL COMMENT '帖子题目',
  `content` mediumtext COMMENT '帖子内容',
  `details` varchar(255) DEFAULT NULL COMMENT '帖子摘要',
  `covers` mediumtext COMMENT '帖子封面图片下载路径，使用#作为分隔符',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频下载路径',
  `source` int(11) NOT NULL DEFAULT '0' COMMENT '帖子来源：1：自建；2：转发',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '帖子类型：前端控制',
  `collect_num` int(11) DEFAULT '0' COMMENT '帖子收藏数',
  `comment_num` int(11) NOT NULL DEFAULT '0' COMMENT '文章评论数',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子阅读数',
  `favourite_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子喜欢数',
  `transponder_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子转发数',
  `city` varchar(255) DEFAULT NULL COMMENT '帖子城市',
  `post_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发帖时间',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基础信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基础信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新用户，基础信息',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基础信息',
  PRIMARY KEY (`id`,`uid`),
  KEY `FKd166pgxvaav9ja19gf4p094jo` (`state_id`),
  KEY `FK24f528pbxo619s7wt4j00grwj` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `uid`, `user_id`, `state_id`, `topic_id`, `title`, `content`, `details`, `covers`, `video_url`, `source`, `type`, `collect_num`, `comment_num`, `read_num`, `favourite_num`, `transponder_num`, `city`, `post_time`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,604430227472384,604360484585472,2,NULL,'泡茶、煮粥、煮肉时的泡沫，吃了有害吗','泡茶、榨果汁、煮肉时，水上面都会出现一层泡沫。\n有的人说这是食材的精华要保留，有的人怀疑其中含有害物质得除掉，有人并没有什么所谓。\n到底该如何和泡沫「和平相处」呢？今天来为大家说一说。\n\n泡茶产生的泡沫、冲咖啡时的泡沫、榨果蔬汁的泡沫，是茶、咖啡或蔬果里的一些特殊物质，可以放心饮用。\n泡茶时产生泡沫的物质叫做「茶皂素」，是皂苷的一种。\n根据目前的科学研究，它可能具有抗菌作用，并能抑制脂肪的吸收。\n因此，喝茶时不要把这层泡沫去掉。不过，茶中的茶皂素实在太少，距离产生抗菌等健康作用所需要的量差得很远。\n\n榨果蔬汁时的泡沫跟咖啡中的泡沫一样，有多种物质可能产生，它们也都是果蔬汁中的营养成分，并不影响健康。\n\n咖啡中能产生泡沫的成分很多，细微的咖啡颗粒本身也能产生泡沫。而卡布其诺的泡沫则是牛奶产生的。不管是咖啡本身还是牛奶产生的泡沫，不损害健康，可以尽情享用。\n\n大米和面粉中都含有一些蛋白质，煮的过程中会有一些溶到水中起到表面活性剂的作用。此外，大米和面中的淀粉也会有一些溶到水中，增加水的黏度。\n高黏度的汤有助于泡沫的稳定存在，也就是说汤的黏度越高，泡沫可能越多。这些泡沫对健康没有害处，可以放心食用。\n\n有两种泡沫需要特殊处理，一是炖肉或煮肉汤时的泡沫，一是打豆浆时的泡沫。\n烹调中产生的泡沫，应该撇掉。\n煮肉时的泡沫稍微复杂一些，其起泡的主要成分也是蛋白质。\n肉中的脂肪以及其他成分也都会出现在泡沫中，此外，肉中的许多血管，以及残留的一些血液也会跑到汤里，经常产生令人反感的气味和外观。\n所以，煮肉初期产生的泡沫主要源自肉中残留的血水，伴随着一些杂质，最好撇去。如果此后再产生白色的泡沫，主要是肉中的蛋白质，可以保留。\n\n打豆浆时产生的泡沫应该用油消泡，并且继续加热。\n打豆浆时产生的泡沫主要是其中的皂苷产生的。它本身没有什么问题，但它的存在会使得豆浆在没有被加热到沸腾时就满锅泡沫，造成沸腾的假象。\n此时的豆浆中含有蛋白酶抑制剂等反营养物质，会影响蛋白质的吸收。所以，可以加一点油来消泡，或者小火加热等泡沫消失，把豆浆加热到真正沸腾。','','http://lovepinpin.com/Fj_yls19z85_erbVTgtSpANa16FH,http://lovepinpin.com/FvxBjHaXWPmyAfk0lRyHAluVe_C2,http://lovepinpin.com/FsM5g65BCfUUXsAeoxfNq52_T0t2','',0,1,0,2,0,3,0,NULL,'2020-04-13 22:54:58','2020-04-13 22:54:58','2020-04-13 22:54:58',NULL,NULL),
	(2,604434841206784,604360484585472,2,NULL,'男生改造丨挫男变型男的秘诀?','利用一百天的时间去改变自己！练出腹肌、提高气质、学会护肤、学会穿搭、学会自律，努力养成气质干净品味高级的男生吧！你与男神只差100天的逆袭，加油兄弟们！✌️','','http://lovepinpin.com/FjHZZFss21zX7uL73_re2hxhxFNX,http://lovepinpin.com/Foi29ZTlXislMAqH9hC2pRGmHz9f,http://lovepinpin.com/FvT6OcA5gZiZVCBwTvCQmMs9wqpJ,http://lovepinpin.com/FnDdIJKKFuBHsORF0yF47GZyiSn0,http://lovepinpin.com/FsOTYABQosFpjDxEwAHQoxUvrr1_,http://lovepinpin.com/FnBvjIGrfy_-wPZdV_m2OeUULa0S,http://lovepinpin.com/FojjQ4zLwcznOTTuHDhtVHyEQg94','',0,1,0,1,0,1,0,NULL,'2020-04-13 23:04:08','2020-04-13 23:04:08','2020-04-13 23:04:08',NULL,NULL),
	(8,604976309075968,604360484585472,2,NULL,'内脏有多干净，脸蛋就多漂亮','脸蛋是人体健康的晴雨表——脸上冒痘痘、气色不好、鼻子发红……统统要从身体内部找原因，比如，你最近额头冒了很多痘痘，那么你要小心压力过大引起的血液循环问题了。所以，要想脸蛋漂亮，首先得保持内脏的干净哦。','','http://lovepinpin.com/Fmh_dq-EW9aQvkG30HQcN3pRHMYm,http://lovepinpin.com/Fo5QM8Aoj1EdDA5dNlEwS63hgEuo,http://lovepinpin.com/FsiulnUuGwRau-b_-5O0awu_THdh,http://lovepinpin.com/Fon4po6oxt9vN7utO2DK1WPBiaPk,http://lovepinpin.com/FjZvpoT0-vfPhpcEJW5hZmbQh0eU,http://lovepinpin.com/Fmo3AV4TiYwjOVE7NEVoG7yQhsIO,http://lovepinpin.com/FuvXmsdsI0OxI9i0JxEou6UzXPTm,http://lovepinpin.com/FkY2e1ewjBi3yXOhTWgL3GYc6tSb,http://lovepinpin.com/FoiOrrjLqJ66Zp6hhuhVzciEKGaf','',0,1,0,0,0,0,0,NULL,'2020-04-14 16:59:56','2020-04-14 16:59:56','2020-04-14 16:59:56',NULL,NULL),
	(9,604983036739584,604360484585472,2,604982566977536,'人生必做的健康功课','人在各个年龄段需要注意什么，怎样保持健康，预防疾病，好好看一看，为自己的身体上点心！','','http://lovepinpin.com/FgeCFZVygv_kEInED1nFyO9AK82J,http://lovepinpin.com/FlDZphJr-9ub0cI4nCrMC7LkoBTC,http://lovepinpin.com/FmetzrIGBRj5LBCqQ1Wn1PwT4a-C,http://lovepinpin.com/FubrJa1IkdTw3g-nnUQfodhJzO9P,http://lovepinpin.com/FoTrNzMtQxM6R4PgeL4V8fU1EFZL,http://lovepinpin.com/Fmqu29X3n9PeGty2i2SJhBNq7k9w,http://lovepinpin.com/FpHEUqUgGs_qo2FlRMNOlIouCdX8,http://lovepinpin.com/FlZLqCRqetd32IzPhxo1pnKy0iCM,http://lovepinpin.com/FldfWu4Jd6OnVCoMIwBDLZkSgFNQ','',0,1,0,0,0,0,0,NULL,'2020-04-14 17:13:18','2020-04-14 17:13:18','2020-04-14 17:13:18',NULL,NULL),
	(10,604994420080640,604360484585472,2,NULL,'鬼压床到底是啥？是科学还是迷信？','鬼压床到底是啥？是科学还是迷信？',NULL,'http://lovepinpin.com/1586919408001','http://lovepinpin.com/1586881307648',0,4,0,0,0,0,0,NULL,'2020-04-14 18:03:11','2020-04-14 18:03:11','2020-04-14 18:03:11',NULL,NULL),
	(11,605059347906560,604357137530880,2,604404986150912,'平心静气的进行生活','有了好身体才有一切可能','','http://lovepinpin.com/FobBWRjgUlQkj63bTf-v5LjLTaaD,http://lovepinpin.com/FvnR2uth_ODbQqQ_ERQ3OJA6wxye,http://lovepinpin.com/FolIE9kgQ9Yf5pfifRxAlPtaS-mf,http://lovepinpin.com/FnJzhomHhje-ALeSZ3Oc2Sw2k7f3','',0,1,0,0,0,1,0,NULL,'2020-04-14 19:44:55','2020-04-14 19:44:55','2020-04-14 19:44:55',NULL,NULL),
	(12,605242244726784,604354855829504,2,604389475614720,'年前卷腹','年前卷腹','','http://lovepinpin.com/FpkaMAK1d-ol6QThPKmA4kF3ao7e','http://lovepinpin.com/FgJ45AxUl195w5uBkWve24Cx9r21',0,4,0,5,0,2,0,NULL,'2020-04-15 01:48:18','2020-04-15 01:48:18','2020-04-15 01:48:18',NULL,NULL),
	(13,605517097467904,604360484585472,2,NULL,'你喝的杯子有毒吗？','塑料瓶看底部三角形内数字：\n1号PET：耐热至65℃，耐冷至-20℃。\n2号HDPE：建议不要循环使用。\n3号PVC：最好不要购买。\n4号LDPE：耐热性不强。\n5号PP：微波炉餐盒、保鲜盒，耐高温120℃。\n6号PS：又耐热又抗寒，但不能放进微波炉中。\n7号PC其它类：水壶、水杯、奶瓶。','','http://lovepinpin.com/FjX24UBVW4ii5Ygq5BVZiacC4xux','',0,1,0,0,0,1,0,NULL,'2020-04-15 10:54:23','2020-04-15 10:54:23','2020-04-15 10:54:23',NULL,NULL),
	(14,605519949594624,604360484585472,2,NULL,'吃火锅会得痛风？','吃火锅会得痛风？',NULL,'http://lovepinpin.com/1586920410807','http://lovepinpin.com/1586920293247',0,4,0,0,0,0,0,NULL,'2020-04-15 11:00:14','2020-04-15 11:00:14','2020-04-15 11:00:14',NULL,NULL),
	(15,605535091032064,604360484585472,2,NULL,'看绿色真的可以保护视力吗?','看绿色真的可以保护视力吗?',NULL,'http://lovepinpin.com/1586921385514','http://lovepinpin.com/374802daec634879a726252f95317d23',0,4,0,0,0,0,0,NULL,'2020-04-15 11:28:15','2020-04-15 11:28:15','2020-04-15 11:28:15',NULL,NULL),
	(16,605535921504256,604360484585472,2,NULL,'长期用嘴巴呼吸会变丑？','长期用嘴巴呼吸会变丑？',NULL,'http://lovepinpin.com/1586921576631','http://lovepinpin.com/cea995f268054b2b917e0586ac11f8f0',0,4,0,0,0,1,0,NULL,'2020-04-15 11:32:06','2020-04-15 11:32:06','2020-04-15 11:32:06',NULL,NULL),
	(17,605537397899264,604360484585472,2,NULL,'肚脐眼里的“泥”可以抠吗？','肚脐眼里的“泥”可以抠吗？',NULL,'http://lovepinpin.com/1586921661183','http://lovepinpin.com/7e94752e21004c9bbd4a73680d2d2617',0,4,0,0,0,0,0,NULL,'2020-04-15 11:33:42','2020-04-15 11:33:42','2020-04-15 11:33:42',NULL,NULL),
	(18,605538983346176,604360484585472,2,NULL,'网传！姨妈期间大吃大喝不会胖？','网传！姨妈期间大吃大喝不会胖？',NULL,'http://lovepinpin.com/1586921771646','http://lovepinpin.com/cecdd4d426104e70bf003cb5add5e698',0,4,0,0,0,0,0,NULL,'2020-04-15 11:35:36','2020-04-15 11:35:36','2020-04-15 11:35:36',NULL,NULL),
	(19,605539033677824,604360484585472,2,NULL,'睡觉时为何身体会突然抖一下？','睡觉时为何身体会突然抖一下？',NULL,'http://lovepinpin.com/1586921839067','http://lovepinpin.com/000cab9a31af436dad2be1efa39ee058',0,4,0,0,0,0,0,NULL,'2020-04-15 11:36:41','2020-04-15 11:36:41','2020-04-15 11:36:41',NULL,NULL),
	(20,605540241637376,604360484585472,2,NULL,'看恐怖片可以减肥？','看恐怖片可以减肥？',NULL,'http://lovepinpin.com/1586922095585','http://lovepinpin.com/f3f38b5d4d8a4ce4a4ae8b413c2fb04b',0,4,0,0,0,0,0,NULL,'2020-04-15 11:43:10','2020-04-15 11:43:10','2020-04-15 11:43:10',NULL,NULL),
	(21,605542129074176,604360484585472,2,NULL,'男性裸睡更健康是真的吗？','男性裸睡更健康是真的吗？',NULL,'http://lovepinpin.com/1586922304839','http://lovepinpin.com/9f4d488d5a0f436e990802524c39d9de',0,4,0,0,0,1,0,NULL,'2020-04-15 11:45:16','2020-04-15 11:45:16','2020-04-15 11:45:16',NULL,NULL),
	(22,605543035043840,604360484585472,2,NULL,'玩吃鸡可以锻炼大脑？','玩吃鸡可以锻炼大脑？',NULL,'http://lovepinpin.com/1586922385500','http://lovepinpin.com/e9148c1576354b42b9b026f58e2ba1d7',0,4,0,0,0,0,0,NULL,'2020-04-15 11:46:37','2020-04-15 11:46:37','2020-04-15 11:46:37',NULL,NULL),
	(23,605543513194496,604360484585472,2,NULL,'朋友圈售M医用口罩犯法？','朋友圈售M医用口罩犯法？',NULL,'http://lovepinpin.com/1586922447802','http://lovepinpin.com/e1dbfee77dd04a6d940d43bde42a5323',0,4,0,0,0,0,0,NULL,'2020-04-15 11:47:40','2020-04-15 11:47:40','2020-04-15 11:47:40',NULL,NULL),
	(24,605546499538944,604360484585472,2,NULL,'有的人唱歌跑调，这是为什么？','有的人唱歌跑调，这是为什么？',NULL,'http://lovepinpin.com/1586922497674','http://lovepinpin.com/61e5ea9f8fb945a5a9cf443af0ec4005',0,4,0,0,0,1,0,NULL,'2020-04-15 11:48:30','2020-04-15 11:48:30','2020-04-15 11:48:30',NULL,NULL),
	(25,605544570159104,604360484585472,2,NULL,'撸猫有助于缓解老年痴呆','撸猫有助于缓解老年痴呆',NULL,'http://lovepinpin.com/1586922569450','http://lovepinpin.com/b02c857cb837402ea1376db95a144df4',0,4,0,0,0,0,0,NULL,'2020-04-15 11:49:40','2020-04-15 11:49:40','2020-04-15 11:49:40',NULL,NULL),
	(26,605546625368064,604360484585472,2,NULL,'拥抱原来有这么大的好处？','拥抱原来有这么大的好处？',NULL,'http://lovepinpin.com/1586922621229','http://lovepinpin.com/74396f073f034e3caaa1d867ffa9c53c',0,4,0,0,0,4,0,NULL,'2020-04-15 11:50:33','2020-04-15 11:50:33','2020-04-15 11:50:33',NULL,NULL),
	(27,605545467740160,604360484585472,2,NULL,'手机辐射会致癌？','手机辐射会致癌？',NULL,'http://lovepinpin.com/1586922697966','http://lovepinpin.com/05270e2cde19418786fc6011ac5e5c07',0,4,0,0,0,0,0,NULL,'2020-04-15 11:51:50','2020-04-15 11:51:50','2020-04-15 11:51:50',NULL,NULL),
	(28,605546977689600,604360484585472,2,NULL,'女性心情不好会导致皮肤变差？','女性心情不好会导致皮肤变差？',NULL,'http://lovepinpin.com/1586922871051','http://lovepinpin.com/e5944d517ac54b59a2592939e96d34f9',0,4,0,0,0,0,0,NULL,'2020-04-15 11:54:55','2020-04-15 11:54:55','2020-04-15 11:54:55',NULL,NULL),
	(29,605547598446592,604360484585472,2,NULL,'多照镜子可以延缓衰老？','多照镜子可以延缓衰老？',NULL,'http://lovepinpin.com/1586922947112','http://lovepinpin.com/0969d1f0254e45f7bd6889f10e61c5c5',0,4,0,0,0,0,0,NULL,'2020-04-15 11:56:14','2020-04-15 11:56:14','2020-04-15 11:56:14',NULL,NULL),
	(30,605548336644096,604360484585472,2,NULL,'喜欢睡回笼觉的人更容易生病？','喜欢睡回笼觉的人更容易生病？',NULL,'http://lovepinpin.com/1586923014614','http://lovepinpin.com/fc01db3fe8fb43a4b5ce856742109ddd',0,4,0,0,0,0,0,NULL,'2020-04-15 11:57:43','2020-04-15 11:57:43','2020-04-15 11:57:43',NULL,NULL),
	(31,605549251002368,604360484585472,2,NULL,'发际线越来越高？教你护发秘方！','发际线越来越高？教你护发秘方！',NULL,'http://lovepinpin.com/1586923112481','http://lovepinpin.com/c3017b02deab4fe387aef6d5ad4d9c34',0,4,0,0,0,0,0,NULL,'2020-04-15 11:59:02','2020-04-15 11:59:02','2020-04-15 11:59:02',NULL,NULL),
	(32,605549771096064,604360484585472,2,NULL,'你可能患上了屏幕依赖症','你可能患上了屏幕依赖症',NULL,'http://lovepinpin.com/1586923185077','http://lovepinpin.com/4a327a512742487e8be8b89227a45346',0,4,0,0,0,0,0,NULL,'2020-04-15 12:00:04','2020-04-15 12:00:04','2020-04-15 12:00:04',NULL,NULL),
	(33,605550450573312,604360484585472,2,NULL,'人在饥饿状态下会乱花Q？','人在饥饿状态下会乱花Q？',NULL,'http://lovepinpin.com/1586923249246','http://lovepinpin.com/8a1982014aa949bf8abfa005f90e305d',0,4,0,0,0,0,0,NULL,'2020-04-15 12:01:02','2020-04-15 12:01:02','2020-04-15 12:01:02',NULL,NULL),
	(34,605551230713856,604360484585472,2,NULL,'为什么一个字看久了就不认识了？','为什么一个字看久了就不认识了？',NULL,'http://lovepinpin.com/1586923314656','http://lovepinpin.com/65b4b479dcbe4bf6acc05ec9676109c4',0,4,0,0,0,0,0,NULL,'2020-04-15 12:02:16','2020-04-15 12:02:16','2020-04-15 12:02:16',NULL,NULL),
	(36,605631744573440,604360484585472,2,NULL,'九大体质科学养生法','分辨你是哪一种体质，请对号入座吧。 ​​​​','','http://lovepinpin.com/FsHEuOPbIkh-_xBD7NpZQMPL4AtQ,http://lovepinpin.com/FmDhc3gUDDmEgngK_z4C29NE-wwf,http://lovepinpin.com/FmmUGLGneeGe2PlTZ5Rvf71DpWXU,http://lovepinpin.com/FjxnSxxlt3j5kzVrFD1ApeXoHdGI,http://lovepinpin.com/FpQc7qaElmaIUIrALGAYpFvyYAhE,http://lovepinpin.com/Fr0-ha2qfim1BH7Wbn-PVMKiTQym,http://lovepinpin.com/Ft4_KFf4vrlNpe4tb2W6aU2dVQF3,http://lovepinpin.com/FhU55gGSUkpX0psqfn71bS21y1D6,http://lovepinpin.com/FnF4lm6mDVVytix2Z31MC9v5OGA6','',0,1,0,0,0,0,0,NULL,'2020-04-15 14:42:10','2020-04-15 14:42:10','2020-04-15 14:42:10',NULL,NULL),
	(37,605840788684800,604360484585472,2,NULL,'女性月经不调如何调理？','除了药物治疗外，还要配以健康的生活方式，少吃冰冻食品，保持营养充足，不要过度节食，同时学会调节释放自己的压力，保证充分的休息时间等。\n1、保持精神愉快，避免精神刺激和情绪波动。个别女性在月经期有下腹发胀、腰酸、乳房胀痛、轻度腹泻、容易疲倦、嗜睡、情绪不稳定、易怒或易忧郁等现象，均属正常，不必过分紧张。\n2、注意卫生，预防感染。注意外生殖器的卫生清洁。注意保暖，避免寒冷刺激。避免过劳。经血量多者忌食红糖。\n3、防止过度节食，戒烟限酒，注意自己的饮食结构，多食用瘦肉、谷类、深绿叶蔬菜及含钙丰富的食物，不宜过食生冷，保持心情舒畅，加强锻炼，提高身体素质。\n4、注意内裤要柔软、棉质，通风透气性能良好，要勤洗勤换，换洗的内裤要放在阳光下晒干。\n5、不宜吃生冷、酸辣等刺激性食物，多饮开水，保持大便通畅。血热者经期前宜多食新鲜水果和蔬菜，忌食葱蒜韭姜等刺激运火之物。气血虚者平时必须增加营养，如牛奶、鸡蛋、豆浆、猪肝、菠菜、猪肉、鸡肉、羊肉等，忌食生冷瓜果。\n6、长期月经不调要注意饮食调理，如多喝黑木耳红枣茶、浓茶红糖饮、山楂红糖饮等。如果症状仍未改善建议及时到医院检查，明确病因，以便遵医嘱及早针对性的治疗。','','http://lovepinpin.com/FhjkDYlpUfDMGCSc7lGDVzIYLkkq','',0,1,0,0,0,0,0,NULL,'2020-04-15 21:37:30','2020-04-15 21:37:30','2020-04-15 21:37:30',NULL,NULL),
	(38,605841392664576,604360484585472,2,605642473603072,'预防流感的几种常用小措施','1、室内经常开窗通风，保持空气新鲜。\n2、少去人群密集的公共场所，避免感染流感病毒。\n3、加强户外体育锻炼，提高身体抗病能力。\n4、秋冬气候多变，注意加减衣服。\n5、多饮开水，多吃清淡食物。\n6、注射流感疫苗。','','http://lovepinpin.com/FvU1jtpQowa_Fi0Xc2-TVpRsNU6P','',0,1,0,0,0,0,0,NULL,'2020-04-15 21:38:42','2020-04-15 21:38:42','2020-04-15 21:38:42',NULL,NULL),
	(39,605846526492672,604360484585472,2,605832442019840,'只吃素就是健康饮食吗？','如今，吃素已经成为一种时尚，无论为了环保、减肥还是健康，越来越多的人加入了吃素的大军。但是，成为不折不扣的素食主义者，只吃蔬菜、水果就能健康了吗？长期吃素会导致什么后果？\n1、营养元素缺乏\n2、免疫力下降\n3、导致不孕\n4、不利于降压\n5、引起胆结石\n并不是长期只吃蔬果就能发挥吃素的益处。正确、科学地吃素才能让身体变得更健康。一定要记得营养均衡哦~','','http://lovepinpin.com/FqDGeIFYOSsN6YJUyKj5QZTjjtdY,http://lovepinpin.com/FsW3_4wiOif32ecsr7-eM6wIagFO,http://lovepinpin.com/FnBKkjFKZuauC0Qofev7x27d8peP','',0,1,0,0,0,0,0,NULL,'2020-04-15 21:48:54','2020-04-15 21:48:54','2020-04-15 21:48:54',NULL,NULL),
	(40,605847264690176,604360484585472,2,NULL,'糖尿病患者的治疗中，需要注意什么呢？','▲热量摄入过多导致血糖控制不佳，建议根据患者的活动量、身高、体重来计算合理的每日热量需求，以指导进食量。\n▲注意避免暴饮暴食，尤其是大量粥类、油煎油炸食物、动物内脏的摄入，导致血糖波动过大，波动过大表现出的变异率大是加重心脑血管意外的危险因素。\n▲需要注意防控低血糖的发生，尤其是老年人、存在心脑血管意外的患者，一次低血糖发生，相当于一次医疗事故，严重时可导致不可挽回的结局。\n▲注意通过合理而积极的个体化治疗方案，使血糖控制达标，从而延缓血管病变、神经病变的出现，改善生活质量，避免致伤致残。','','http://lovepinpin.com/Fp9gShNOsrrDoWf4c-NbscABi-5F','',0,1,0,0,0,0,0,NULL,'2020-04-15 21:50:22','2020-04-15 21:50:22','2020-04-15 21:50:22',NULL,NULL),
	(41,605853665198080,604360484585472,2,NULL,'春夏季减肥需要注意什么？','一晃天气逐渐变得暖和起来了，春天已经到来了，经过一个冬天的热量贮备之后女性也开始进行减肥了。今天远行君就跟大家详细介绍一些这些注意事项。想了解的接着往下看。\n　　1、晚餐要少吃\n　　2、多吃新鲜蔬菜水果\n　　3、多吃维生素C\n　　4、烹饪尽可能用中式蒸煮法：不要放入太多的油，减少脂肪的摄入\n希望所有的女性在春夏季减肥的时候能够要这些要点全部注意到位。这样能够帮助大家在较短的时间内看到不错的减肥效果，加油！','','http://lovepinpin.com/FimK46FV4_nIYPEF4RodZYYoedwO,http://lovepinpin.com/FnjdmUvMa9_19TZDTWh1pgpEq1_X','',0,1,0,0,0,0,0,NULL,'2020-04-15 22:03:05','2020-04-15 22:03:05','2020-04-15 22:03:05',NULL,NULL),
	(103,606442201546752,605690674544640,2,NULL,'运动风','这是我喜欢的运动！','','http://lovepinpin.com/Fi0r0WOzcGDulftcropH5JJ3Mr9A','',0,1,0,1,0,3,0,NULL,'2020-04-16 17:32:24','2020-04-16 17:32:24','2020-04-16 17:32:24',NULL,NULL),
	(104,606507641077760,604360484585472,2,605832442019840,'食物“趁热吃”对不对？','据研究表明，吃得过热会危害健康。中医也不提倡“热吃”，吃温热的食物才是饮食养生之道。\n某医院消化内科医生指出，饮食过热和食道癌等多种消化道疾病息息相关。这是因为人的食道壁是由黏膜组成的，非常娇嫩，只能耐受50—60℃的食物，超过这个温度，食道的黏膜就会被烫伤。过烫的食物温度在70—80℃左右，像刚沏好的茶水，温度可达80—90℃，很容易烫伤食道壁。如果经常吃烫的食物，黏膜损伤尚未修复又受到烫伤，可形成浅表溃疡。反复地烫伤、修复，就会引起黏膜质的变化，进一步发展变成肿瘤。\n另外过热的饭菜对牙龈和牙齿有害处，会引起牙龈溃烂和过敏性牙痛。\n因而，最适合的食物温度是“不凉也不热”。','','http://lovepinpin.com/Fow9p3FxQHqygXBAYwnqhA30nsGp','',0,1,0,0,0,0,0,NULL,'2020-04-16 19:42:25','2020-04-16 19:42:25','2020-04-16 19:42:25',NULL,NULL),
	(105,606508354109440,604360484585472,2,NULL,'喝酒前吃什么不容易醉？','于酒来说，喝多伤身，但是好多人还是选择在重大场合喝很多的酒。你知道喝酒前吃哪些食物可以不醉吗？让远行健康告诉你，一起来看看吧。\n在我们参加重要聚会的时候，在喝酒前应该让胃里有点东西可以消耗，这样才能避免酒精对胃的直接伤害。喝酒前吃点零食：面包、馒头、饼干一类的食物，这样才不会那么免容易醉。\n　　1、牛奶、酸奶\n　　2、淡盐水\n　　3、生黄豆\n　　4、面类食物\n　　喝酒前最好让胃中有些东西能消耗，这样才可以防止酒精对胃的直接伤害。喝酒之前不妨能吃面包、馒头，就不会那么容易醉了。','','http://lovepinpin.com/FvonuWV34dwUoMbvWfx1e0ANgrRW,http://lovepinpin.com/FkYdvk2aBuG8P2eyFRf1HtICi6xI,http://lovepinpin.com/Fgt7SD6ef7jY598EXW9_u1cFyWHr','',0,1,0,0,0,0,0,NULL,'2020-04-16 19:43:50','2020-04-16 19:43:50','2020-04-16 19:43:50',NULL,NULL),
	(106,609170420137984,604810969612288,2,NULL,'如何缓解胃疼？','患者平时可以在家里备一些胃药，如果出现胃疼，可以先暂时吃一些胃药来缓解症状。比如可以备一些奥美拉唑，或者是达喜，这些都可以很好并且迅速缓解胃疼症状。\n\n但是不是吃完药就不管它了，要及时去医院就诊，进行的胃镜或者是上消化道造影的检查。因为胃痛最常见的是胃溃疡和十二指肠球部的溃疡。如果溃疡放任不管，很有可能会延误病情，出现消化道出血、消化道穿孔等严重的并发症。当然除药物治疗以外，平时饮食和作息时间也需要非常的重视。\n\n在饮食上要尽量避免一些刺激性的食物，包括辛辣、油腻、油炸、生冷以及坚硬不容易消化的食物，还是要避免浓茶、咖啡、烈酒等饮料。\n\n在平时的生活中要多吃一些低盐、低脂、容易消化的食物。同时在作息时间上要尽量不要熬夜，要保持早睡早起，保持心情愉悦，要尽量缓解自己精神上的压力，这些措施都是非常关键的。','','http://lovepinpin.com/FqubD7Ljo5u2yFqq42ehpvSullBM','',0,1,0,1,0,1,0,NULL,'2020-04-20 11:52:53','2020-04-20 11:52:53','2020-04-20 11:52:53',NULL,NULL),
	(107,609172852834304,604810969612288,2,604404986150912,'蹲久后站立会头晕是贫血吗？','不仅仅是贫血的症状，还有一部分人是因为没有吃早饭、体力劳动过度的人群更容易出现这种现象。这种现象其实叫暂时性脑供血不足。\n\n因此，在平时蹲久了的情况下我们就需要注意，最好是慢慢的站起，或扶持身边一些牢固的物体，给身体一个缓冲的时间以免站起后因头晕而发生意外。尤其是贫血的患者更容易出现这种暂时性缺氧的现象，那么在贫血之后更需要多注意，并且及时的进行治疗，那么就可以防止这种现象出现。\n\n刘医生建议贫血的患者在平时需要多吃一些能够起到补血补铁的作用的食物，多吃一些动物食品，比如动物血、动物肝脏，还可以多吃一些大枣、木耳、阿胶，为了促进铁质的吸收，还应吃一些酸性的食物，维生素C、蛋白质也可促进铁质的吸收和利用。\n\n另外刘医生还建议患贫血的病人在平时需要多休息，适度的锻炼身体，增强自身的抵抗力。','','http://lovepinpin.com/FoA3BD7NJCI06K51d5UoRaYC3K0m','',0,1,0,0,0,2,0,NULL,'2020-04-20 11:57:43','2020-04-20 11:57:43','2020-04-20 11:57:43',NULL,NULL),
	(108,609377492926464,604810969612288,2,NULL,'如何保护肝胀 杜绝损害？','刘医生给大家总结了三个要点：\n\n❌高脂肪、高胆固醇饮食：\n长期高脂肪、高胆固醇食物容易导致脂肪肝，严重的脂肪肝也是会引起肝损害的。所有平时要低脂饮食，多吃新鲜的蔬菜、水果，减少冷冻、熟食、快食及小食品，饮食要有节制，食不过饱，避免暴饮暴食，更不可饮酒，奶茶也要少喝。严格控制食用肥肉、辛辣食物、油炸食品，以及含油脂多的干果、果仁类(核桃、花生仁、腰果等)及蛋黄、动物内脏、鱼子等。\n\n❌辛辣刺激食物：\n建议少食用辛辣刺激食物，特别是不要过量食用。其中红辣椒里面含有辣椒素，少量的辣椒素是可以保护肝脏的，但不可过量食用。如果对于肝功能不全或者有肝硬化的患者，禁忌辣椒，辣椒会引起血管曲张，出现呕血及便血的可能，而且辣椒也容易导致胃肠功能紊乱以及痔疮出血。\n\n❌不要吃过多工业加工食品，含有重金属元素，平时要少吃这些食物。','','http://lovepinpin.com/FuuhaRxy2KM_P6RHPTyIqS2H3OHX','',0,1,0,0,0,0,0,NULL,'2020-04-20 18:44:18','2020-04-20 18:44:18','2020-04-20 18:44:18',NULL,NULL),
	(109,609378424061952,604810969612288,2,NULL,'女性朋友日常经期应该如何保养呢?','女人处于经期身体是非常脆弱的，很容易导致细菌和病毒的侵袭?那么女性经期应该如何保养呢？?\n\n1、避免着凉\n2、避免剧烈运动\n3、避免性生活\n4、避免熬夜\n5、保持个人卫生\n\n经期很容易导致各种疾病的发生，因此女性朋友们在经期一定要保护好自己，平时注意清洁的同时还可以适当的做下运动缓解经期压力哦~','','http://lovepinpin.com/FnVT9ZcxQ1ppbxP_9T4o3alQTC-e','',0,1,0,0,0,0,0,NULL,'2020-04-20 18:46:09','2020-04-20 18:46:09','2020-04-20 18:46:09',NULL,NULL),
	(110,609380445716480,604810969612288,2,NULL,'可以减肥的中药有哪些呢？','刘医生给大家找到了以下的中药材：决明子、炒山楂、火麻仁、莱菔子、陈皮、何首乌、甘草。\n\n?做法\n头天晚上用砂锅装好，放入清水，超过药物的三倍左右为宜。次日早晨将砂锅放在火上烧开，转为小火炖大约30分钟。\n\n?如何服用\n最好药汁稍凉后变为粘稠状的时候，空腹服用，服用后一小时内不要进食。此为一剂的量，也可以晚上加水再煮一次，晚饭后一小时服用，第二天需更换新药。\n\n?功效\n这副药方是热性体质的人比较适合，对于通便有良好的作用，有降低血脂、血压的功效。','','http://lovepinpin.com/Fg4OTtg1AUxM6yOE5N1FBUIsWazy,http://lovepinpin.com/FudkyEn6BQOfTdYQUW5DRYMuA4u9,http://lovepinpin.com/Fh2Q8vygAHhUmSHrzeqdpax2AYYA','',0,1,0,0,0,0,0,NULL,'2020-04-20 18:50:10','2020-04-20 18:50:10','2020-04-20 18:50:10',NULL,NULL),
	(118,610116445405184,604810969612288,2,605642473603072,'女人大腿内侧为什么会发黑？','刘医生呢给大家总结了以下三点原因：\n\n1、大腿内侧皮肤发黑主要是摩擦导致。这是由于长期走路摩擦、衣物摩擦引起的色素沉着。而体型较肥胖的人更易摩擦到这个部位，因此肥胖的人大腿根部内侧颜色会更黑。\n2、有的女生喜欢穿紧身裤，尤其是如果内裤很紧，就很容易压迫血管影响血液流通，这种就很容易发生黑色素沉着，这里的皮肤颜色自然就会慢慢变深了。\n3、当女性有了性生活以后，性生活会引起体内激素水平发生改变，腹股沟接近性器官的位置，受激素影响，也可能会引起大腿内侧皮肤变黑。\n\n那么大腿内侧皮肤发黑该怎么办？?\n\n一般来说，大腿内侧皮肤黑并不需要特别关注，如果是爱美人士想要穿比基尼，觉得大腿内侧太黑不好看，可以到医院做相关的美白处理。?但如果发黑的地方有瘙痒、皮疹的情况出现，则建议及时就医，因为很可能是湿疹或者股藓。','','http://lovepinpin.com/Fv5YKCbto83FmB76-HsbYR6Em7si','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:12:28','2020-04-21 19:12:28','2020-04-21 19:12:28',NULL,NULL),
	(119,610118735495168,604810969612288,2,604404986150912,'糖尿病患者每天应该怎么吃？','相信每一位糖尿病人都有一个愿望，就是既能吃好，又不影响血糖。糖尿病患者每天该怎么吃？刘医生觉得关键是“学会总热量控制、均衡营养，少量多餐，食物多样化，学会食物搭配“。\n\n?在选择食物时，尽量避免一些糖份比较高的食物，如葡萄糖、蔗糖等单糖类物质，食物要多样化，碳水化合物、蛋白质、脂肪等三大营养物质供能为主；\n\n?主食同副食搭配、粗细搭配、高生糖指数的食物同低生糖指数的食物搭配、少纤维同多纤维搭配、成酸性食物同成碱性食物搭配、粮食同奶类、豆类搭配。\n\n?烹饪方面可用酸度食物，如醋，柠檬汁，注意食物的生熟度影响其升糖指数。平时的烹调方法多用蒸、煮、烧、烤、凉拌，避免油炸，同时要注意“三少一多”，即无糖、低盐、少油、多水。','','http://lovepinpin.com/Frh7NslByG3AWZPO2ni3LtV2OPwP,http://lovepinpin.com/FsVKN904VUnEsZZqpodFITnVoetC,http://lovepinpin.com/FkUbJ2tsJNDbcthOJScoAn7uHUqa','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:17:01','2020-04-21 19:17:01','2020-04-21 19:17:01',NULL,NULL),
	(120,610121470181376,604810969612288,2,605642473603072,'你的早餐真的吃对了吗？','一日之计在于晨，早餐要吃饱吃好吃对，才能为一天的工作和学习提供足够的能量。健康吃早餐，千万别踏入下面这几个误区。\n\n?1、早餐必须要吃“好”：\n吃早餐的时候一定要注意饮食营养平衡。选取低脂，低糖且好消化的食物进行摄入，这样更加有利于身体健康。\n\n?2、牛奶鸡蛋就是最完美的早餐：\n建议大家除了牛奶鸡蛋之外，还要适当搭配面包，粥等食物来进行食用效果更好。\n\n?3.、早餐为了图方便就吃剩菜：\n剩菜会渐渐产生亚硝酸盐这种有害物质，对人的身体是极其不利的。建议大家一定不要把吃剩的蔬菜再食用，其他剩下的食物也最好别吃。如果打算吃，也要从冰箱中取出彻底加热再食用。\n\n?4、把经常吃的零食当作早餐食用\n这些零食提供能量也只是一时的，很快就会让你再次有饥饿感。所以建议大家早饭尽量选择一些有水分的食物等，不要吃太过干的食物，比如饼干。','','http://lovepinpin.com/FojCHZOVYZdMh55vNah66Jez12dy,http://lovepinpin.com/FmLbfpOStSy9rBxXllwrDECL4mBs,http://lovepinpin.com/FjxiHbBbUEZcTb-fHrJtV9SMcv9Y','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:22:27','2020-04-21 19:22:27','2020-04-21 19:22:27',NULL,NULL),
	(121,610122594254848,604810969612288,2,605829749276672,'减肥应该怎么做？怎样才能减肥？','要想减肥，主要是使摄入的能量小于消耗的能量，从这两方面入手。\n\n1、减少饮食的摄入，改善饮食的结构，不吃高脂肪、高热量的食物，多吃低脂肪、低热量，富含有丰富的维生素的蔬菜、水果，以及蛋白质等等。\n2、多运动，增加热量的消耗，可以选择有氧运动，比如慢跑、游泳等等。\n\n?刘医生提示：\n\n①选择健康正确的减肥饮食首先不应节食。长期过度节食会造成身体营养不良、新陈代谢下降等，会给人造成不愉快的感觉，应该合理地调整饮食结构。\n②吃饭时要细嚼慢咽，可以让食物更容易被消化，能够很好地避免脂肪被堆积，也很好地控制摄入的食物总量，对减肥来说是很重要的。\n③不能吃脂肪含量过高和油腻油炸的食物。\n减肥期间应多喝水，可以帮助排毒，喝热水还能让身体出汗，通过排行让多余的脂肪燃烧。也可以选择一些健康的茶水，如冬瓜茶，菊花茶，普洱茶，绿茶都是很好的。','','http://lovepinpin.com/FqbM0RdsrLsOg2f6Yy0fUhuV270U','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:24:41','2020-04-21 19:24:41','2020-04-21 19:24:41',NULL,NULL),
	(122,610124305530880,604810969612288,2,604982566977536,'女性威为什么会宫颈粘连呢？','宫腔粘连损害子宫内膜的基底层，导致子宫内膜不能及时的修复，不同程度的引起子宫内膜的纤维化，瘢痕化甚至引起宫腔容积的不同程度的缩小，引起子宫内环境的改变，导致宫腔粘连。\n\n发生宫腔粘连以后最常见的是会引起不孕症?还有月经量减少，还有些病人即使怀孕了出现反复的胚胎停孕，自然流产等等情况。\n\n?宫腔镜手术是目前治疗宫腔粘连的有效手段，同时也是诊断的金标准，由于宫腔粘连容易复发，尤其是重度的粘连复发率可高达62.5%，炎症感染的情况下也容易导致再次粘连。\n\n刘医生建议宫腔镜术后，尽快怀孕。','','http://lovepinpin.com/Fji-SWxEa2k8DLFEPAMINQqRHSSo','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:28:05','2020-04-21 19:28:05','2020-04-21 19:28:05',NULL,NULL),
	(123,610126369128448,604810969612288,2,604982566977536,'女性为什么会宫腔粘连呢？','宫腔粘连损害子宫内膜的基底层，导致子宫内膜不能及时的修复，不同程度的引起子宫内膜的纤维化，瘢痕化甚至引起宫腔容积的不同程度的缩小，引起子宫内环境的改变，导致宫腔粘连。\n\n发生宫腔粘连以后最常见的是会引起不孕症，还有月经量减少?还有些病人即使怀孕了出现反复的胚胎停孕，自然流产等等情况。\n\n?宫腔镜手术是目前治疗宫腔粘连的有效手段，同时也是诊断的金标准，由于宫腔粘连容易复发，尤其是重度的粘连复发率可高达62.5%，炎症感染的情况下也容易导致再次粘连。\n\n建议宫腔镜术后，尽快怀孕。','','http://lovepinpin.com/Fji-SWxEa2k8DLFEPAMINQqRHSSo','',0,1,0,0,0,0,0,NULL,'2020-04-21 19:32:11','2020-04-21 19:32:11','2020-04-21 19:32:11',NULL,NULL),
	(124,610756546527232,604810969612288,2,605829749276672,'有什么食物适合减肥的时候吃？','刘医生为大家介绍几种适合制作减肥餐的食物，每天坚持运动，再配合减肥餐，相信很快就能瘦下去的。\n\n▲减肥期间，早餐适合吃燕麦片\n\n燕麦片含有丰富的膳食纤维和β-葡聚糖，对身体也是有好处的，另外燕麦还具有非常强的饱腹感，记得要选纯麦片，麦片的外观呈压扁状。\n\n▲西兰花是减肥人士的心头好\n\n西兰花的热量非常低，而且含水量很高，不仅有很高的饱腹感，而且吃西兰花不容易发胖。最重要的是，西兰花中的蛋白质含量非常高，营养丰富、口感美味，适合作为减肥食物食用。\n\n▲减肥时，鸡胸肉是首选肉类\n\n鸡胸肉含有的脂肪量不高，蛋白质含量高，此外还含有高含量的不饱和脂肪酸，对于人体新陈代谢具有促进作用。不过需要注意的是，吃鸡胸肉的时候一定要去皮，因为鸡皮含有的脂肪含量可是相当高的。\n\n不管是处于哪种原因，想要减肥成功，就一定要开始运动。并且在饮食上要注意，有一些高脂肪的食物最好少吃，特别是外卖，最好不要经常吃，可以选择自己制作减肥餐，既营养，又有助于减肥，是一个一举两得的好主意。','','http://lovepinpin.com/FrCArj71c_jfFjFOs-A_HYTby6ze,http://lovepinpin.com/Foy6r_qfUcPcc164wwZtBzHsCK_Y,http://lovepinpin.com/FgfKYSLF2Qte_A-fIrqY0dZOqaHa','',0,1,0,0,0,0,0,NULL,'2020-04-22 16:24:14','2020-04-22 16:24:14','2020-04-22 16:24:14',NULL,NULL),
	(125,610760019410944,604810969612288,2,604404986150912,'经期前乳房疼痛，4个方法轻松解决！','经期乳房疼痛怎么办？远行健康为你推荐几个治疗经前乳房疼的消防法，可以试试：\n\n1、热敷：热敷是传统的中医理疗法，但是需要提醒大家的是热敷只能暂时缓解症状，没有治疗的作用。\n\n2、内衣的选择：不合适的内衣会使乳房神经受到压迫，另外合适的内衣还可以防止乳房下垂等问题。\n\n3、按摩：轻轻按摩乳房可以使大量的体液回到淋巴系统，而且还能预防乳腺疾病的发生。\n\n4、饮食：多吃低脂肪，高纤维的食物，还可以多吃一些五谷杂粮、豆类、新鲜的蔬菜、水果等，另外经期前后以及月经期间都不建议喝咖啡。\n\n远行健康温馨提示：温馨提示:乳房胀痛除了服药外，更重要的一点是保持乐观情绪，切忌常常发怒或生闷气，平时多运动与参加适当的社交活动，在月经前一周少吃食盐和辛辣刺激的饮食。','','http://lovepinpin.com/FltQhH-6M3xkngCDfRu8ufwG-oEF','',0,1,0,0,0,0,0,NULL,'2020-04-22 16:31:08','2020-04-22 16:31:08','2020-04-22 16:31:08',NULL,NULL),
	(126,610761520971776,604810969612288,2,605832442019840,'三高人群多吃这9种食物！','        1、苹果\n　　苹果中富含果胶，能与胆汁酸相结合，促进胆汁的分泌，将肠胃中的胆固醇和甘油三酯吸收，并将其排出体外。\n\n　　2、山楂\n　　山楂含有丰富的果胶，这些可溶性膳食纤维可以溶解人体的胆固醇，预防动脉血管堵塞，避免动脉粥样硬化。有助于调节高血压的症状，减少血压的过度波动。经常吃山楂还能除油解腻，调节肠胃的吸收功能，促进消化。\n\n　　3、大蒜\n　　大蒜、生姜等具有挥发性辣味素，可以促进肠胃的蠕动，增强肠胃的吸收效率，清除血管和肠胃中的脂肪，达到降低胆固醇，减少体重的效果。\n\n　　4、茄子\n　　紫色茄子皮还有大量维生素、皂草甙，有助于扩张血管，避免血管堵塞，促进血液的循环，也能达到降低胆固醇，减少动脉血管硬化的风险。\n\n　　不过需要注意的是，茄子炒的时候特别容易吸油，所以建议选择蒸、煮等少油的烹饪方法。\n\n　　5、芹菜\n　　具有丰富的膳食纤维，能够有效降低人体血压，血脂血糖的效果。而且芹菜中也含有比较丰富的胡萝卜素和维生素，能够为人体补充足够的营养成分，保障均衡的营养结构，促进机体的正常功能。\n\n　　6、海藻\n　　有丰富的营养维生素，比如植物多糖，钙，镁，磷等等，具有良好的抗氧化作用，可以帮助食物的吸收和消化，提高抵抗能力，降低胆固醇，延缓皮肤衰老。另外海藻中含有大量胶体纤维，帮助人体调节代谢功能，降低血清胆固醇。\n\n　　7、三文鱼\n　　三文鱼是非常常见的营养补品，具有大量不饱和脂肪酸，可以减少甘油三酯的含量，促进高密度脂蛋白胆固醇的合成。\n\n　　8、银耳\n　　银耳滋而不腻，味道可口，既能熬汤，又可作为凉水饮用。其富含膳食纤维，可以促进肠胃的蠕动，减少脂肪的形成，还可以降低胆固醇的浓度，非常适合三高的人群。\n\n　　9、燕麦\n　　含有丰富的膳食纤维，这些膳食纤维具有可溶性，有助于降低胆固醇和血脂。早上喝一杯燕麦牛奶，有助于提升营养，而且还能清洗肠胃，降解胆固醇。\n\n　　以上的内容介绍的就是三高人群适合吃的食物，希望能够帮助大家更好地调控饮食的平衡，从而为机体提供足够的营养，提升抵抗能力，减轻三高的症状。','','http://lovepinpin.com/Fiyda9cMifOnX9DGBS2XPv_wHSSA,http://lovepinpin.com/FnVzwcK78KDmN05Y0JWncGeWxvc3,http://lovepinpin.com/FqINs5LttAXLlXGhc7P8XIc10Y5t','',0,1,0,0,0,0,0,NULL,'2020-04-22 16:34:07','2020-04-22 16:34:07','2020-04-22 16:34:07',NULL,NULL),
	(127,610765790773248,604810969612288,2,604404986150912,'口腔溃疡应该怎么办？','口腔溃疡我们都知道是很常见的一种疾病，疼痛发作的时候就会使患者寝室难安，那么严重口腔溃疡怎么办呢??\n\n严重的口腔溃疡患者可以服用西药，西药对于疾病的治疗见效是非常快的，可以口服复合维生素B2，也可以使用青黛散或者是锡类散在患有溃疡的地方进行涂抹。\n\n如果口腔溃疡已经发展到口腔粘膜充血并且还有疼痛和红肿的症状，除此之外在舌头部位还有粒状的小红点的话，这种情况是属于毒性的口疮，可以使用中药进行治疗，如枳壳、白术、木香、神曲、旋复花、佩兰、葛根、藿香、银花、代赭石、茯苓加入适量的水后进行煎煮，煮好后就可以服用了，每天的时候服用一剂。\n\n在舌尖部位的溃疡，一般是因为心火引起的，所以可以选用劳宫、关冲、少泽以及少冲四个穴位进行刺血，大陵刮痧，两三天可作为一个治疗的疗程。如果是在舌头的中部或者是有糜烂生疮的症状，并且还有灼热异常的现象，同时伴有黄尿、口渴、舌红苔黄的不适症状时，是因为脾胃生热造成的，所以可以用中药竹叶、甘草、薄荷、黄连、大黄、芒硝、山栀以及黄岑加入适量的水后开始煎煮，煮好后开始服用，每天服用一剂就可以了。\n\n在以上的内容中已经为大家做了详细的介绍了?这些方法对于严重的口腔溃疡有着很好的治疗效果，当大家发现自己患有口腔溃疡之后一定要及时治疗，如果发展严重的话，治疗起来比较困难并且还会承受着比较大的痛苦。','','http://lovepinpin.com/FoVHJvW1_JLqCKIwNJU3D9uTf7P0','',0,1,0,0,0,0,0,NULL,'2020-04-22 16:42:36','2020-04-22 16:42:36','2020-04-22 16:42:36',NULL,NULL),
	(128,610768475127808,604810969612288,2,605830713966592,'备孕时需要注意些什么呢？','1、准备怀孕的妇女，没有生育过孩子的，有不良的习惯，比方抽烟、喝酒，尽量要戒掉。\n\n2、之前采取过避孕措施，比方上了环，或者是吃过药物来避孕，建议取环后，2-3个月以后再考虑怀孕。另外如果是吃的药物，避孕药，要停半年以上再考虑怀孕，准备怀孕之前，要吃叶酸片，也斯利安片0.4mg，1天1次，3个月以后再考虑怀孕。\n\n3、有传染性疾病，或者是活动性的肺结核，还有肝炎、梅毒、艾滋做检查，有疾病需要提前进行治疗，治疗痊愈以后再考虑怀孕。\n\n4、对于生育过孩子的妈妈，在考虑怀二胎，或者三胎的时候，尽量建议大家，心理上要做好准备，心情各方面要舒畅，也是需要做相关的检查，要提前吃药物。\n\n5、第一次分娩的孩子有畸形，或者是有其它的疾病，要检查有没有遗传性的，或者是代谢性疾病，确定适合不适合再怀第二个孩子，能保证分娩健康聪明的宝宝。','','http://lovepinpin.com/FnTz_GSgwQ-5KRRmsbkYNdHaXFrw','',0,1,0,0,0,0,0,NULL,'2020-04-22 16:47:56','2020-04-22 16:47:56','2020-04-22 16:47:56',NULL,NULL),
	(129,610777761316864,604810969612288,2,605829950603264,'喝茶能刮油减肥吗？','饮茶一直以来都是我国的传统文化，好饮茶者更有“宁可终身无酒，不可一日无茶”的说法。很多人认为喝茶能刮油解腻，甚至能减肥，这是真的吗?\n\n实际上，茶叶中含有咖啡因、茶碱和可可碱等复杂成分，可以显著刺激胃酸分泌，促进胃动力，使胃酸分泌增加，有助食物消化。但是，喝茶改变的只是消化的过程和感受,并不是消化的结果，食物的能量并没有因为喝茶而损耗掉。更需要注意的是，茶叶中含有鞣酸，当人体大量饮用浓茶后，鞣酸与铁\n质的结合就会更加活跃，给人体对铁的吸收带来障碍和影响，使人体表现为缺铁性贫血。\n\n因此，喝茶不仅没有刮油瘦身的功效，相反，大量饮用浓茶还可能会对身体产生不良影响。','','http://lovepinpin.com/FgFdHpekegs8pfKHAQWOuJoVgUYv','',0,1,0,0,0,0,0,NULL,'2020-04-22 17:06:23','2020-04-22 17:06:23','2020-04-22 17:06:23',NULL,NULL),
	(130,610815057068032,604354855829504,2,NULL,'管理端测试发帖','发帖内容',NULL,'http://lovepinpin.com/Fjb-3VT4tco0-TgDGA7cDeI-ZX-k',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 18:20:29','2020-04-22 18:20:29','2020-04-22 18:20:29',NULL,NULL),
	(138,610916844437504,604360484585472,2,NULL,'自我按摩法防治腰椎病','由于伏案劳累，或不慎造成腰部扭伤，或腰肌劳损及老年退行性腰椎病，均可采用自我按摩法锻炼。\n　　其一，腰部屈伸。直立两足分开，两手叉腰，做腰背的前后左右屈伸运动，尽量放松腰背部肌肉，活动达到最大幅度，屈伸可10至15次左右。\n　　其二，腰部扭转。两足分开站立，两上肢向前平伸或自然平垂，颈部和躯干保持中立位，双下肢不动，先将上身向左旋转到最大限度，再向右转，各3至5次。\n　　其三，下蹲站立。两足分开，下蹲，站起，如此反复10至15次，足腿不动。\n　　其四，两手贴后腰，上下交换按摩或自上而下用微力按摩。两手轻握拳，沿着脊柱两侧自腰开始自上而下轻轻叩击，直到骶尾部，反复多次。',NULL,'http://lovepinpin.com/1587562940231,http://lovepinpin.com/1587562943445,http://lovepinpin.com/1587562947046',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:42:43','2020-04-22 21:42:43','2020-04-22 21:42:43',NULL,NULL),
	(139,610918933200896,604360484585472,2,NULL,'敲击手三里，防治颈椎病！','手三里穴位位于肘弯曲成直角，在肘横纹尽头两指宽处。\n▲敲击方法：左手握空心拳敲击右手臂的手三里，不要用力过大。共敲击108下，每敲6下，作一次呼吸，一至三下为吸气，四至六下为呼气，以此类推。然后换右手敲击左臂手三里。',NULL,'http://lovepinpin.com/1587563163234',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:46:52','2020-04-22 21:46:52','2020-04-22 21:46:52',NULL,NULL),
	(140,610919621066752,604360484585472,2,605832442019840,'脱发怎么办？有什么好的中药食疗办法','远行君介绍大家几个小方子：\n　　一、车前草200克，米酷适量。将车前草全草焙成炭，浸入米醋，一周后用该药醋外涂患处，每日2--3次。\n　　二、芝麻花、鸡冠花各60克，樟脑1.5克，白酒500克。将芝麻花，鸡冠花撕碎。然后浸泡人酒内密封，15日后过滤、再将樟脑人药酒中，使之溶化，备用。以药棉蘸药酒，涂搽脱发区，每日搽3--4次。本方尤适用于神经性脱发。\n　　三、枸杞子15克，大米50克。将枸杞子、大米洗净，放砂锅中煮成粥，食用。\n　　四、何首乌30克，大米50克，冰糖适量。将何首乌放人砂锅中煎取浓汁后去药渣，然后放人大米和冰糖，将米煮成粥即成，食用。本方尤适用于脱发久不愈。\n　　五、须藤草50克，煎洗，2-3日一次，1-3个月愈，防止脱发，生发，平衡油脂等。\n　　六、生半夏,生姜各300克,麻油1000克.将药研末,以麻油浸渍半月,用时先以生姜片涂擦患处,后用药油涂之,每日1次。\n　　七、首乌藤20克，葛根12克，生地、蝉衣、辛荑花、当归、仙灵脾、紫草、菟丝子各10克，制成糖浆500毫升，每日3次，每次服50毫升。\n　　八、蜀椒500克，生半夏、骨碎补各250克。将药研粗末，以白酒浸渍7日后，外用涂擦患处，每日3次，生发为止。',NULL,'http://lovepinpin.com/1587563259118,http://lovepinpin.com/1587563261906,http://lovepinpin.com/1587563264745',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:48:14','2020-04-22 21:48:14','2020-04-22 21:48:14',NULL,NULL),
	(141,610920451538944,604360484585472,2,605642473603072,'在家拔罐需要注意什么？','拔罐是中医治疗中的一种手法，利用好拔罐对身体十分有好处，今天我们就来看看在家拔罐需要注意什么吧？\n▲拔罐时要选择适当体位和肌肉丰满的部位，若体位不当、移动或骨骼凸凹、毛发较多的都位均不适宜。一般拔背部的穴位，多选取俯卧位；一些颈部的穴位如果环境条件有限，可以选取坐位。\n▲预防烫伤（拔罐前先将棉球上多余的酒精挤出，燃火勿接触罐口），也可在拔罐地方，事前先涂些水（冬季涂温水）。涂水可使局部降温，保护皮肤，不致烫伤。\n▲根据部位选择大小合适的罐具。\n▲走罐时特别注意检查罐口是否光滑。\n▲对精神紧张者要先做好解释工作。\n▲拔罐动作要求稳、准、轻、快，起罐时手法要轻缓，以一手抵住罐边皮肤，按压一下，使气漏人，罐子即能脱下，不可硬拉或旋动。\n▲一些部位是不宜拔罐的，如心尖区、大血管分布部位、体表大动脉搏动处，五官及肛门等孔窍部。\n▲孕妇慎用拔罐，孕妇的腹部、腰骶部禁拔。\n▲应用投火法拔罐时，火焰须旺，动作要快，使罐口向上倾斜，避免火源掉下烫伤皮肤。应用闪火法时，棉花棒蘸酒精不要太多，以防酒精滴下烧、伤皮肤。用贴棉法时，须防止燃着棉花脱下。用架火法时，扣罩要准确，不要把燃着的火架撞翻。用煮水罐时，应甩去罐中的热水，以免烫伤病人的皮肤。',NULL,'http://lovepinpin.com/1587563375701,http://lovepinpin.com/1587563378783,http://lovepinpin.com/1587563381719',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:49:53','2020-04-22 21:49:53','2020-04-22 21:49:53',NULL,NULL),
	(142,610921030352896,604360484585472,2,610792483323904,'女性私处用品，是必需品吗？','营销当前，耗费金钱倒是其次。人们更该引起注意的是，这些产品可能给健康带来威胁。\n　　▲一是，私处洗涤剂破坏阴道细菌平衡，增加感染风险。\n滥用清洁用品会赶走阴道的天然“好”细菌，还可能致使“坏”细菌越发顽固。此外，不恰当的私处清洁会刮伤皮肤，容易使私处组织变得更脆弱，增加刺激性。\n　　▲二是，并非一竹竿“拍死”所有女性卫生用品。\n满足合理医疗需求的一种产品是简单的外用保湿剂，前提是这种产品不含对羟基苯甲酸酯和防腐剂，温和不刺激。保湿外阴对老化、干燥，或打蜡或剃须后的皮肤有所功用。当然，这也不代表着可以滥用保湿产品。\n保持私处卫生固然重要，但莫让不必要的产品钻了空子。于女性而言，用水清洁私处足矣。特定的清洁产品、肥皂之类物品除了洗掉健康细菌外，令皮肤逐日干燥敏感。哪怕是常见的沐浴露，也应尽量避免在私密区域使用。',NULL,'http://lovepinpin.com/1587563441294,http://lovepinpin.com/1587563444479,http://lovepinpin.com/1587563447407',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:51:02','2020-04-22 21:51:02','2020-04-22 21:51:02',NULL,NULL),
	(143,610921458171904,604360484585472,2,610792483323904,'女性更年期吃什么好？2个食疗方改善更年期症状','女性45岁之后，会开始进入更年期，女性更年期后就会被月经紊乱、潮热、腰背痛、情绪波动大等一系列问题所困扰。更年期不适该如何调理？不妨试试下面这几个食疗方。\n▲百合生地粥▲\n　　材料：百合60克，鲜生地30克，鸡蛋黄2颗，适量白糖。\n　　做法：先将生地洗净切碎，加适量水熬30分钟，去渣，加入捣碎的百合，煮至糊状后，再加入捣烂的鸡蛋黄搅匀，煮沸后加入白糖即可。\n　　功效：百合生地粥适用于月经紊乱，头晕耳鸣，腰膝酸软，失眠多梦的女性，但不适合肾阳虚型的患者。\n▲羊肉栗子煲▲\n材料：羊肉一斤，栗子200克，枸杞子50克。\n　　做法：先将羊肉洗净切块，加水用大火煮开，再小火煮至半熟，放入去壳的栗子、枸杞，再煮20分钟，加盐即可食用。\n　　功效：羊肉栗子煲不适合阴虚内热的患者。',NULL,'http://lovepinpin.com/1587563500390,http://lovepinpin.com/1587563503109',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:51:53','2020-04-22 21:51:53','2020-04-22 21:51:53',NULL,NULL),
	(144,610922489970688,604360484585472,2,605642473603072,'想要长寿一定要远离这些误区，否则后悔莫及！','为了达到长寿的目的，我们大家也尝试了非常多的方法。但是事实上也有很多我们大家误以为长寿的误区，那么想要长寿的话就应该需要远离哪些误区呢？\n一、过度使用补品\n二、大量运动\n三、依赖营养剂\n四、黑发不一定高寿\n关于长寿的误区在生活当中还是有很多的，我们大家要做到的就是要擦亮自己的双眼，用理智的头脑来判断这些信息到底是否正确。',NULL,'http://lovepinpin.com/1587563613380',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:53:56','2020-04-22 21:53:56','2020-04-22 21:53:56',NULL,NULL),
	(145,610923043618816,604360484585472,2,605830344867840,'备孕女性该如何合理安排睡眠？如何提高睡眠质量？','建议备孕女性的睡眠时间为7-9小时。由于睡眠过多存在肥胖、糖尿病、智力下降，严重时导致死亡的风险，所以，应注意避免睡眠过多。\n那么如何有效提高备孕女性的睡眠质量？\n答：提高睡眠质量可以从饮食调整、睡眠环境、睡前运动和泡脚这些方面着手。\n①饮食调整：少吃油腻食物、咖啡、茶叶、辛辣食物、红薯、玉米、豌豆等食物，以免影响睡眠。而夜班族则最好少吃甜食，可以多吃一些蔬菜、蛋黄、坚果等含有维生素B族、维生素A的食物。\n②睡眠环境：保持居室安静，睡前1小时别玩手机。手机屏幕亮光会让大脑误以为仍是白天，影响褪黑激素的分泌，不利睡眠。\n③睡前运动和泡脚：1、睡前1-3小时动一动：可以选择一些轻松的运动，比如吃完饭散散步，揉揉涌泉穴等。/2、睡前半小时泡泡脚：睡前烫脚，胜服安眠药。睡前用温水泡脚15-20分钟，使脚部血管扩张，促进血液循环。',NULL,'http://lovepinpin.com/1587563680444',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:55:02','2020-04-22 21:55:02','2020-04-22 21:55:02',NULL,NULL),
	(146,610923446272000,604360484585472,2,605832442019840,'这三类人不适合食用豆腐，看看有你吗？','豆腐营养多，但是有三类人却不适合食用：\n1、豆腐的嘌呤值不低，痛风患者或尿酸过高者要注意摄取量；\n2、豆腐性偏寒，胃寒者、脾虚者及常出现遗精的肾亏者不宜食用；\n3、容易有腹胀、腹泻症状者，不宜食用过量豆腐。\n看起来平平无奇的豆腐，隐藏的“功力”却如此之深，你是否也爱吃豆腐呢？',NULL,'http://lovepinpin.com/1587563732173,http://lovepinpin.com/1587563735007',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:55:50','2020-04-22 21:55:50','2020-04-22 21:55:50',NULL,NULL),
	(147,610923890868224,604360484585472,2,605642473603072,'每天必须喝够8杯水吗？','喝水对身体大有益处，之前有人称每天必须喝够8杯水，可是也有研究称，一天喝太多水也会中毒，到底该怎么喝水呢？喝水有没有最佳时间？\n答：每天喝够8杯水不一定健康！《中国居民膳食指南》中就有指出，健康成年人每天需水2500 ml左右，但除了单单水中的水分之外，还要考虑到食物中的水分。\n所以专家建议轻体力的成年人，一天至少喝1200 ml的水。如果体力活动量大，可以适当多喝。',NULL,'http://lovepinpin.com/1587563791551',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:56:43','2020-04-22 21:56:43','2020-04-22 21:56:43',NULL,NULL),
	(148,610925165936640,604360484585472,2,605830437142528,'最简单的五个瘦臀的最快方法！','塑造小翘臀往往要比挺起胸前曲线要容易得多。因此赶紧练习瘦臀的最快方法才能让你的身材不再一马平川。\n　　1、多跑楼梯：层数以10层最为恰当\n　 2、注意坐姿：坐下的时候最好只坐椅子的1/3，保持上半身挺直。\n　　3、不要久坐：建议大家连续坐1小时候后就起身稍微运动一下。\n　 4、走路姿势：走路的时候双腿不要分得太开，也不要夹得太紧，以双脚不摩擦为最佳。同时走路的速度也不要过快哦\n　 5、饮食瘦臀：多吃含胶原蛋白多的食物，含胶原蛋白的食物常见的有鱼皮、猪皮、猪蹄、筒骨、软骨、鸡翅等。但是这些食物的热量颇高，因此建议用清淡的烹调方法。',NULL,'http://lovepinpin.com/1587563939792',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:59:15','2020-04-22 21:59:15','2020-04-22 21:59:15',NULL,NULL),
	(149,610925442760704,605830437142528,2,605830437142528,'只吃水果不吃饭可以减肥吗？','只吃水果不吃饭，肯定是有减肥作用的，但是这种减肥效果，相信也不是对健康需求的人所要的，因为这是一种不科学的减肥手段。\n为什么说只吃水果不吃饭可以减肥？其实这种减肥主要是说减重，因为水果含糖量低，热量也低，那么摄入后，基本上不会在体内存留，也就不会有脂肪形成，那么身体每天所消耗的热量就需要从身体中来获取，从而人的体重会下降。\n体重下降并不是真正的减肥，想要减肥还是要消耗体内的脂肪。而且长期只吃水果，体重虽然便很快，但是一旦回归到正常饮食，那么体重反弹也会超快，甚至极有可能比之前还要重。因为没有人可以一辈子只吃水果，不吃其他任何食物。',NULL,'http://lovepinpin.com/1587563986794',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 21:59:48','2020-04-22 21:59:48','2020-04-22 21:59:48',NULL,NULL),
	(150,610925778305024,604360484585472,2,NULL,'每一个糖尿病友都该知道这些事！','远行健康给糖尿病患者总结了4点建议供参考：\n1、饮食控制：控制总热量，扩充食物种类、每餐七八分饱、少吃多餐、定时定量进餐。\n　 2、运动治疗：通过运动增加身体的热量消耗、促进脂肪代谢以及改善胰岛素的敏感性，达到降低血糖的作用。\n　 3、降血糖药物：一开始先从小剂量开始服用，通过血糖监测，逐渐调整药物剂量。即使服用药物，也需要控制饮食和运动治疗。\n　 4、监测血糖：根据血糖监测结果，调整饮食、运动和药物，使血糖得到良好控制。',NULL,'http://lovepinpin.com/1587564020963',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:00:28','2020-04-22 22:00:28','2020-04-22 22:00:28',NULL,NULL),
	(151,610926197735424,604360484585472,2,605832442019840,'长期吃素真能把“三高”降下来？','这种说法是不科学、不正确的，更是不利于身体健康的，完全是一种认识上的误区。\n素食的确有益健康，但过犹不及。那么，防治“三高”，如何吃素才更健康、更科学、更合理呢？专家给出四点建议：\n　　1、坚持少油、少盐、少糖的饮食原则不动摇，菜肴是否清淡健康，烹饪方法是关键。\n　　2、要摄入足够的蛋白质。\n　　3、蔬菜要吃够、水果要适量。\n　　4、可以食用一些鱼肉、虾肉、鸡胸肉。',NULL,'http://lovepinpin.com/1587564069086',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:01:18','2020-04-22 22:01:18','2020-04-22 22:01:18',NULL,NULL),
	(152,610926810103808,604360484585472,2,605642473603072,'中老年人每天走路多少好？','有的人可能平时运动比较少，但是经常会在饭后去散步，其实走路散步也是很好的健身方式，而且简单又安全，那一天走多少步最合适？中老年人每天走路多少好？\n答：中老年人推荐每天走6000步.\n一、6000步可以降压让血管运动起来；\n二、6000步可以降脂让血液变干净；\n三、6000步可以降糖大量消耗葡萄糖\n另外研究表明，老年人经常健身走不仅能可以预防肥胖、有效预防糖尿病，还可以大量燃烧血液中的葡萄糖、增强体质，改善新陈代谢和心肺功能，以减少心血管的并发症。所以有时间多陪陪家中的老人吧~',NULL,'http://lovepinpin.com/1587564134332',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:02:31','2020-04-22 22:02:31','2020-04-22 22:02:31',NULL,NULL),
	(153,610927355363328,604360484585472,2,605832442019840,'金针菇变黄了还能吃吗？金针菇放久了黄了可以吃吗？','很多人都会买金针菇吃，但是每次买着不肯一次吃完，所以大家会选择将剩余的金针菇放在冰箱里，可是放了两天后的发现金针菇变黄了，那金针菇变黄了还能吃吗？\n答：没坏就能吃但是会导致营养会降低\n远行健康温馨小提示：金针菇一般放不了几天，特别是在天气热的时候最好是放在冰箱里面，放在外面估计一天不到可能就坏了，放在冰箱的保鲜室应该可以放三天左右，但是最好放冰箱之前不要经根去掉，也不要洗金针菇，更不要把金针菇弄伤，这样保存的时间会久一点。',NULL,'http://lovepinpin.com/1587564184483,http://lovepinpin.com/1587564186460',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:03:36','2020-04-22 22:03:36','2020-04-22 22:03:36',NULL,NULL),
	(154,610927867068416,604360484585472,2,605642473603072,'转呼啦圈真的可以减肥吗？','运动减肥是最有效的，大多数的妹纸喜欢转呼啦圈减肥，那么，转呼啦圈真的可以减肥吗？转呼啦圈减肥有效果吗？\n答：可以减肥，但是转呼啦圈一天最好不要超过半小时，否则可能会导致内脏移位。\n转呼啦圈一般都需要坚持很长一段时间才能够瘦下来，同时还要搭配合理饮食，不要吃太过油腻的食物，并且最好不要吃零食，否则就算转再多呼啦圈也没用，减肥不仅仅要运动，还要搭配合理的饮食。',NULL,'http://lovepinpin.com/1587564251112',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:04:37','2020-04-22 22:04:37','2020-04-22 22:04:37',NULL,NULL),
	(156,610928630431744,604360484585472,2,605832442019840,'吃完的柚子别扔掉！柚子皮止咳又祛痰的用','很多人吃完了柚子以后会把柚子皮给扔掉，那真的是太可惜了，殊不知柚子皮还有其他的妙用哟。\n1.柚子皮食疗\n治疗咳嗽气喘：柚子皮用开水泡，代茶饮用。燥咳干咳无痰者，可以与川贝、梨、罗汉果、百合等煲水饮；寒咳可同生姜、红糖煲水饮。\n治消化不良、呕逆少食：用柚子皮15克，鸡内金、山楂、麦芽各10克水煎服。\n2.柚子皮泡脚\n将柚子皮晒干煮水泡脚，对于消化不良、咳嗽痰多以及冻疮，皮肤美白都有作用。\n不过，中医认为柚子性凉，故气虚体弱、脾虚泄泻之人不宜多食。',NULL,'http://lovepinpin.com/1587564338066,http://lovepinpin.com/1587564340636,http://lovepinpin.com/1587564343788',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:06:08','2020-04-22 22:06:08','2020-04-22 22:06:08',NULL,NULL),
	(158,610929234411520,604360484585472,2,610792483323904,'女性经常美甲会怎样？这4种伤害你承受不起！','美甲虽美，但是远行君不建议大家常做，那么女性经常美甲会怎样呢？这4种伤害你承受不起。\n1、引起甲周皮肤病，甲沟炎等问题\n2、手足肌肤老化\n3、患乳腺癌几率增高\n4、孕妇易流产或胎儿畸形\n很多美甲场所都存在卫生方面的问题，如果去到那种不正规的美甲场所，很容易传染手癣、灰指甲。甲沟炎、肝炎等疾病，爱美之心人人皆有，但是为了健康着想，不要经常性的美甲哦~',NULL,'http://lovepinpin.com/1587564424240,http://lovepinpin.com/1587564426783',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:07:20','2020-04-22 22:07:20','2020-04-22 22:07:20',NULL,NULL),
	(159,610929813225472,604360484585472,2,605642473603072,'哪些食物是护眼食物？','眼睛，被人喻为\"心灵的窗户\"。它是五官之首，是人的重要器官，对于人们的工作、学习和生活均至关重要。多食以下六类食物，对我们保护双眼有意想不到的妙用。\n　　1、维生素A\n　　2、钙\n　　3、微量元素硒、锌、铬\n　　4、维生素C\n　　5、海带\n　　6、粗粮和新鲜蔬菜\n人人都希望自己有双明亮而有神的眼睛，而要保护好自己的眼睛，日常膳食的调理是件重要事情。',NULL,'http://lovepinpin.com/1587564481251,http://lovepinpin.com/1587564485203,http://lovepinpin.com/1587564493906',NULL,0,1,0,0,0,0,0,NULL,'2020-04-22 22:08:29','2020-04-22 22:08:29','2020-04-22 22:08:29',NULL,NULL),
	(160,611460443013120,604810969612288,2,604404986150912,'蒲公英并不是万能药，它的好处只有这四点','春天，正是蒲公英盛开的季节，蒲公英除了可以欣赏，还可以入药，具有不过的疗效。\n\n1、清热解毒\n蒲公英适合用在各种热毒疾病方面，其中尤以清肝热的效果最佳，甚至对于治疗一些由于肝热所引起的严重发红、肿痛的症状，以及多种伤口感染后或者是化脓的疾病治疗效果也是很好的。\n\n2、预防心血管疾病\n蒲公英中色素的主要成分有β－胡萝卜素，而β－胡萝卜素具有较强的抗氧化作用，对某些肿瘤和心血管疾病有一定的预防作用。同时，在人体中转化的维生素A还可以提高暗适应能力，保护夜间视力。\n\n3、美容养颜\n蒲公英还有一个备受人们喜爱的功效，就是其富含蛋白质、碳水化合物、脂肪、微量元素及维生素，叶子中更是含有改善湿疹和舒缓皮肤炎的成分，花朵还有去除雀斑的功效。简而言之，就是有一定的美容养颜的效果！\n\n4、清泻胃火\n对于胃热有火气的朋友，古代中医就有“一味蒲公英，功胜白虎汤”的说法，蒲公英能够清泻胃火而不伤胃，久服而无碍，是治疗和缓解胃火旺盛导致的慢性胃炎等疾病的良药。除此之外，蒲公英对于急性支气管炎，肝炎，胆囊炎，尿路感染等也都有一定的辅助治疗作用。','','http://lovepinpin.com/FvxTwbVY5roVxxHsYZ4QMTNbSAex,http://lovepinpin.com/Fluq1rhcjvnQY8E3glT_-oVPy2wt,http://lovepinpin.com/FvMRBdlWZ3i0gzNbvgKqt79gNByy','',0,1,0,0,0,0,0,NULL,'2020-04-23 15:42:45','2020-04-23 15:42:45','2020-04-23 15:42:45',NULL,NULL),
	(161,611461835522048,604810969612288,2,NULL,'红枣的禁忌！糖尿病患者不能吃这种食物！','红枣由于含有多种营养元素，因此多吃它对于我们的身体很好，具有保健功效。红枣的禁忌是什么？和远行健康一起来了解下吧~\n\n▲糖尿病患者不能吃\n　　红枣含糖丰富，如果吃它有可能会让我们的血糖出现比较大的波动，所以患有糖尿病的朋友们，一般是不建议吃红枣的哦！红枣由于含糖多，所以如果正在减肥的话，也不建议吃它，可能会导致体重增加，减肥期间应该清淡饮食。\n\n▲经期易水肿的女性不能吃\n　　有一些女性朋友在经期时会出现身体水肿的问题，如果你也有这样的情况，那么一定不要吃红枣哦！因为红枣会让人的储水能力进一步的上升，从而导致体内的水分更加难以代谢。所以水肿的时候，我们是不能吃红枣的。\n\n▲长痘的人\n由于红枣里面含有大量的糖，所以长痘的朋友也不推荐吃。糖是会刺激皮肤分泌出更多的油脂的，会导致毛孔被进一步的堵住，从而加重痘痘。所以如果你长痘痘的问题比较严重，那么就不要吃含糖多的食物了，比如说红枣。\n\n▲体质燥热的人不能吃\n　　体质比较燥热的人，不适合吃红枣。红枣从中医的角度来看，是一种温性的食物，也就是说吃了会上火。对于那些体质寒凉的人，吃红枣是很好的，能够暖身，但是本身就有上火的问题了，红枣建议少吃，应该吃点去火的东西。\n\n▲外感风热不能吃大枣\n　　感冒在中医里一般分为风寒、风热、暑湿、体虚感冒等几种情况。\n\n　　如果属于风寒感冒，怕冷、少汗、咳嗽、流涕、鼻塞，有时还会发烧，或者气虚感冒者如老年体弱者，少气懒言、周身乏力、咯痰无力，或有自汗症状，舌淡苔白等可以食用大枣。\n\n　　风热感冒，发热、汗出、咽喉疼痛、舌苔白厚等;或暑湿感冒，恶寒发烧、热度不高、恶心呕吐、腹痛泻下，或头重头痛、无汗，或四肢倦怠，这些人不太适合吃红枣。因为大枣会使风热之邪或暑湿之邪不易散去，感冒不容易治愈。','','http://lovepinpin.com/FhqhynaroP_wSFSye0iELCOfKdXw','',0,1,0,0,0,0,0,NULL,'2020-04-23 15:45:31','2020-04-23 15:45:31','2020-04-23 15:45:31',NULL,NULL),
	(162,611468244418560,604810969612288,2,605642473603072,'创可贴一次贴多久最好就撕下来？','创可贴使用时间不宜过长，一般需要每天更换，最长不要超过二天。\n\n　　创可贴主要用于处理急性小伤口的止血和保护，但应注意使用之前要对伤口进行消毒清洁处理。创可贴的透气性较差，尤其是在夏天温度较高，长时间不换可能会导致局部角质层水合程度较高，出现浸渍发白的现象，伤口在高温闷热的环境下更容易发炎、感染，从而使伤口恶化，影响伤口的恢复，一般建议一天更换一次。更换时要观察伤口情况，如果出现红肿、流脓等感染迹象，应停止使用创可贴并及时就医对伤口进行处理。\n\n　　需注意对于小而深的伤口、创面较大的伤口、有污染的伤口、感染的伤口不宜使用创可贴。','','http://lovepinpin.com/FvoN-RhJYclXTAaAVEgzRlpWO0_M','',0,1,0,0,0,0,0,NULL,'2020-04-23 15:58:15','2020-04-23 15:58:15','2020-04-23 15:58:15',NULL,NULL),
	(163,611471994126336,604810969612288,2,605833725476864,'女性甜食吃太多容易长皱纹和痘痘吗？','吃太多甜食和精制碳水化合物，如蛋糕、糕点和精白米等，你的脸会慢慢失去弹性。?因为这些食物会在体内迅速转化为糖，引发糖化，使原先有弹性的胶原纤维变得僵硬。直观地说，皮肤会失去弹性、变薄，出现皱纹。\n\n另外过多的糖分进入肠道后，会影响肠道菌群的平衡，触发脸部、肩膀和胸部出现痤疮。\n\n当然也有些依赖糖分的人虽然不会长痤疮，但同样会表现出皮肤苍白、气色差。这是因为糖会引发胰岛素水平的上升，刺激应激激素皮质醇的分泌，从而使血管收缩，使皮肤变得发白。长期以往还会导致皮肤干燥。\n\n所以刘医生建议：大家可以在饮食范围内合理德进行控糖。?','','http://lovepinpin.com/Fr4teRUQfhuK9Ad8jfVYvmazRRRd','',0,1,0,0,0,0,0,NULL,'2020-04-23 16:05:42','2020-04-23 16:05:42','2020-04-23 16:05:42',NULL,NULL),
	(164,611473923506176,604810969612288,2,605833004056576,'孩子吃完饭马上午睡易得癌症？','有句话说得很好，“中午不睡，下午崩溃”。孩子午睡能够让孩子在下午精力充沛，提高注意力，有利于下午的学习。但是，让孩子吃完午餐马上就睡午觉，并不利于身体健康。?\n\n因为刚吃了午饭，胃内充满了食物，消化系统正在撸起袖子加油干，此时血液集中在消化系统，血流速度减慢，血液变得粘稠，心脏、大脑等重要部位的血流量相对减少，此时容易感到犯困。但是如果立马躺下，孩子的胃比较小，贲门括约肌的压力承受能力有限，很容易引起食物反流，胃液对食道造成刺激，轻则引起不适，重则导致反流性食管炎。\n\n另外，孩子进入睡眠状态后，机体新陈代谢慢慢减低，而消化系统还处于运转状态，此时午睡容易影响消化，不利于食物的吸收，长期容易导致胃病，也影响午睡的睡眠质量。\n\n?正确的方式是：午餐后让孩子先休息20分钟到半个小时，最好进行散步等轻微的体力活动，促进食物在胃内的排空，之后再睡午觉。\n\n?另外家长要注意，孩子饭后也不能进行太剧烈的身体活动，同样会导致消化不良。因为剧烈的运动就会迫使血液分布到运动器官去满足运动的需要，造成胃肠道供血不足，消化液分泌减少。久之，还会引起消化不良和慢性胃肠炎等疾病。再者，餐后胃中充满食物，运动时容易发生震动、牵拉肠系膜，会引起腹部不适、腹痛、胃下垂等。','','http://lovepinpin.com/Fg269FrQoV9aqaQM7-R5A4gW6TVo','',0,1,0,0,0,0,0,NULL,'2020-04-23 16:09:32','2020-04-23 16:09:32','2020-04-23 16:09:32',NULL,NULL),
	(165,611477924872192,604810969612288,2,605833264103424,'育儿误区盘点，这些旧观念一定要矫正！','刘医生整理了平时几个最常见的老一辈人的育儿误区，供大家参考，并在日常生活中小心提防，对照一下，看看是不是你也中枪了？?\n\n1、吃得多，长得胖就好？\n宝宝吃得越多越好，长得越胖越好，这绝对是一种误解。宝宝吃的太多，小小的心脏就必须增加更多负荷以供养多余的脂肪，肝和肾也要处理过量摄入的营养，而导致超负荷运动，而且这种变化在宝宝小的时候是无法看出来的，一旦造成营养过剩，对宝宝的危害绝对不是单纯的肥胖这么简单。\n\n2、出牙越早就越好？\n长牙并不是所谓的越早越好，有的孩子4个月就已经出牙了，有的孩子可能到9个月也还没出牙，造成这其中差异的因素有很多，有种族、性别等遗传因素，还有气温、营养、疾病等环境因素的影响。正常情况下营养好的宝宝，身高和体重高比营养差、身高和体重低的儿童出牙早，而且寒冷地区的婴儿比温热地区的婴儿出牙迟。\n\n3、枕秃一定是缺钙征兆？\n事实上枕秃与缺钙几乎无关，究其原因是由于宝宝很大一部分时间都是躺在床上，脑袋跟枕头接触的比较多。同时，小宝宝还不能用手抓，又无法用言语表达自己的不舒服，所以宝宝就会通过左右摇头，来摩擦自己后脑勺。在经常摩擦之后，宝宝的枕部头发就容易被磨掉而发生枕秃。此外，如果给孩子睡觉的枕头太硬，也会引起枕秃现象。\n\n一般孩子1岁之后，能够坐、站立、行走时，头部受到摩擦的机会就减少了，头发就会重新长出来，到孩子2-3岁之后枕秃就慢慢消失了。研究发现，在出生之后习惯趴着睡觉的宝宝很少枕秃，所以不能把枕秃直接和缺钙联系在一起。','','http://lovepinpin.com/Fm-3_KMP1wzPZJb2EzZGjvHL_hW-,http://lovepinpin.com/FtH2gQB-yokKzDcb1tDzvgCGTj8Q,http://lovepinpin.com/Fhl6rCj2xO6cqn-EX7KDIwaYA2nH','',0,1,0,0,0,0,0,NULL,'2020-04-23 16:17:29','2020-04-23 16:17:29','2020-04-23 16:17:29',NULL,NULL),
	(166,611544907907072,604360484585472,2,NULL,'剖腹产多久可以运动？','这个需要根据产妇伤口及身体恢复情况而定。通常建议剖腹产6周后可进行舒缓活动，3个月之后再根据自身情况恢复正常运动。\n剖腹产的产妇由于手术对子宫、腹部的创伤较大，恢复周期较长，相对于顺产产妇来说，恢复运动的时间要适当延长。根据伤口以及身体恢复情况，通常在产后6周左右可适当进行舒缓活动，如慢走、强度较小的家务以及盆底修复运动等帮助子宫恢复。在进行运动时可通过深呼吸、腹部收缩等运动来进行腹部锻炼，以减少腹部赘肉。当产后3个月左右身体各器官以及伤口完全恢复后，可以根据自身身体状况恢复到正常体育运动。',NULL,'http://lovepinpin.com/1587637699891,http://lovepinpin.com/1587637703019',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:30:34','2020-04-23 18:30:34','2020-04-23 18:30:34',NULL,NULL),
	(167,611545797099520,604360484585472,2,605832442019840,'奶片可以代替牛奶吗？','很多宝宝不爱喝牛奶，爱吃奶片，很多妈妈也以为奶片是与牛奶营养价值相当的食品，奶片宣传上号称：“一板奶片相当于一杯鲜奶“，那奶片真的可以代替牛奶吗？\n①奶片的配料主要是全脂奶粉、糖、植脂末和香精，这些添加剂的使用，会减少奶粉的用量，营养价值降低；\n②奶片是牛奶经过高温干燥成为奶粉后又二次深加工的成品，脱水、高温等工艺会破坏一部分营养；\n③奶片中的香精一般都是化学合成的，不是从天然水果中提取的。\n所以，虽然与膨化类、油炸类等高脂高糖的零食相比，奶片中含有一些钙质和蛋白质，算得上是比较优质一点的零食，但奶片远远不能作为牛奶替代品。',NULL,'http://lovepinpin.com/1587637915482',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:32:20','2020-04-23 18:32:20','2020-04-23 18:32:20',NULL,NULL),
	(168,611546979893248,604360484585472,2,605833004056576,'外出游玩时，幼儿如何做好安全防护？','随着天气升温和疫情形势向好，孩子们外出游玩的机会增多了，如何做好安全防护？宝爸宝妈看过来！',NULL,'http://lovepinpin.com/1587638044482,http://lovepinpin.com/1587638048359,http://lovepinpin.com/1587638051519',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:34:41','2020-04-23 18:34:41','2020-04-23 18:34:41',NULL,NULL),
	(169,611547684536320,604360484585472,2,605829950603264,'哪些减肥方式是错误的？减肥的5个误区不要踩！','近年来，对于许多的女性来说，减肥一直是比较主流的话题，甚至不少人总是把减肥挂在嘴边，吃也舍不得吃，喝也舍不得喝，日子过得苦兮兮的，但其实虽然她们对减肥辅助了行动，但却不一定会有什么好的效果，那么哪些减肥方式是错误的呢？减肥的3个误区不要踩。\n误区一：不吃早餐——继而增加饥饿感，容易在午餐进食过多高热量的食物。反而愈减愈肥！\n误区二：每日只进食蔬果——不足以提供全面的营养需要及能量，长期更容易引致营养不良。\n误区三：不吃主食——这方法等同节食，一般热量过低，热量不足当然减磅，但主要减水同肌肉量，并非真正减脂肪，而体重容易反弹，甚至比从前更肥！\n要减肥，其实不需盲目挨饿节食，只要以多谷多蔬果、少肉少油的均衡饮食再配合运动便能成功。',NULL,'http://lovepinpin.com/1587638140973',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:36:05','2020-04-23 18:36:05','2020-04-23 18:36:05',NULL,NULL),
	(170,611548649226240,604360484585472,2,605642473603072,'起床后不宜做这么事情！久而久之会危害生命！','在生活中有很多朋友有不少的习惯，比如说起床后有很多人会立马叠好被子，有些人会立马吃东西，其实起床后不宜做的事情有很多，一起来看看吧~\n起床后哪些事情不宜做：\n1、叠被子：刚起床时被子还有余温和汗液，起床后立马叠被子很容易打造细菌的生存环境、导致螨虫的滋生，所以建议平时起床后将被子反翻过来；\n2、马上起床：有很多朋友是睁开眼睛后猛的起床，会感觉脑袋一阵眩晕，这是因为起床的时候氧气还没有完全输送给大脑，所以这样起床会造成头晕眼花的症状，建议多赖几分钟的床哦；\n3、剧烈运动：空腹运动对体质没有特别好的人容易造成低血糖晕厥的情况，而且早上运动过于激烈会导致交感神经的兴奋，容易引起焦虑；\n4、立即吃饭：刚起床时，肠胃功能还没有回复，这时建议先喝一杯温开水，促进肠胃蠕动。',NULL,'http://lovepinpin.com/1587638256205,http://lovepinpin.com/1587638259060',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:38:00','2020-04-23 18:38:00','2020-04-23 18:38:00',NULL,NULL),
	(171,611549127376896,604360484585472,2,610792483323904,'女性春季养生保健的三个要点！','春暖花开，万物复苏，因此，女人们必须做好春季养生保健工作，那么女人春季如何养生保健呢？这里远行健康推荐几个养生保健的要点，供大家参考：\n1、要保暖；\n2、多泡脚；\n3、多通风；\n核心提示：人在冬季的活动量很小，因此在春天，应该加强锻炼，使身体更健康。',NULL,'http://lovepinpin.com/1587638316837,http://lovepinpin.com/1587638319815',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:38:57','2020-04-23 18:38:57','2020-04-23 18:38:57',NULL,NULL),
	(172,611549429366784,604360484585472,2,605828247715840,'宝宝吃手好处多，千万别拦着！','十个宝宝有九个都爱吃手指，这让很多妈妈特别头疼。一是担心宝宝吃手起口水疹，二是担心会把手上的细菌吃到肚子里，长时间改不掉会病从口入。但是，你知道吗?0-1岁是宝宝的口欲期，吃手是正常现象，不吃反而不正常。而且还有以下这些好处。\n　　1.宝宝变得更聪明\n　　2.稳定情绪 自我安抚\n　　3.锻炼手眼协调性\n　　4. 缓减长牙的不适感\n如果孩子超过5岁还吃手，这时妈妈们就需要进行干预了。因为这个阶段还吃手，弊远远大于利。',NULL,'http://lovepinpin.com/1587638360691',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:39:33','2020-04-23 18:39:33','2020-04-23 18:39:33',NULL,NULL),
	(173,611549739745280,604360484585472,2,605642473603072,'白醋泡脚能治脚气，是偏方还是真有效？','大家都听说过用白醋泡脚可以去脚气，那么这个说法可信吗？白醋泡脚真的可以治脚气吗？让我们听听专家怎么说。\n中医认为，白醋具有消肿痛、散水气的作用，还可以止痒收敛，所以说用白醋泡脚是可以去脚气的，即白醋泡脚具有一定的治疗作用。在日常生活中，泡脚时在水中加入一些白醋，然后跟平常泡脚一样就可以起到很不错的杀菌作用。\n但是白醋泡脚只适用于那些脚气情况比较轻的患者。对于情况严重者还是需要及时就医，按照医嘱用药。',NULL,'http://lovepinpin.com/1587638399561',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:40:10','2020-04-23 18:40:10','2020-04-23 18:40:10',NULL,NULL),
	(174,611550066900992,604360484585472,2,610792483323904,'阿胶吃多久才能见效？','阿胶是用驴皮熬制的胶，具有补血养血、滋阴润燥的功效，服用后多久见效不可一概而论。\n　　阿胶具有补血、补气、活血、补虚等功效，经常食用可以补气益血、改善睡眠，能使面色红润，是女性美容养颜的佳品。同时，阿胶含有丰富的胶原蛋白，经过水解可产生蛋白质以及多种氨基酸。此外，阿胶还含有钙、硫等多种矿物质，不但能益气补血，还能达到抗衰老、延年益寿的效果。而服用阿胶后多久可以见效，主要与个人体质有关。部分人群可能1周见效，也有的人群可能服用1个月后才能显现出效果。\n　　阿胶属于药食同源的食材，既可作为养生食品长期食用，又可用于治疗贫血等疾病，但建议患者在医生的指导下应用。',NULL,'http://lovepinpin.com/1587638440568',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:40:49','2020-04-23 18:40:49','2020-04-23 18:40:49',NULL,NULL),
	(175,611550435999744,604360484585472,2,610792483323904,'来月经可以吃巧克力吗？','来月经是可以吃巧克力的。\n在月经期间由于盆腔充血，有下腹坠痛的表现。月经期间的胃肠功能也比较弱、抵抗力比较低，在月经期间应该少吃生冷寒凉有刺激性的食物，饮食要清淡。\n巧克力比较美味，而且能够提供能量，在女性来月经的时候食欲差，可以通过巧克力补充能量，并补充体力。\n巧克力也可以在经期稳定情绪，对月经期的焦虑和不安起到稳定的作用，而且巧克力也可以加速体内血液循环。对身体有一定活血化瘀的作用，能够减轻月经期间痛经等不舒服的反应，所以月经期间吃巧克力是有一定好处，但不建议多吃。因为巧克力毕竟是高能量的食物，多吃可能会增加体重。',NULL,'http://lovepinpin.com/1587638481553,http://lovepinpin.com/1587638484542',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:41:33','2020-04-23 18:41:33','2020-04-23 18:41:33',NULL,NULL),
	(176,611550796709888,604360484585472,2,604404986150912,'靠墙静蹲练习避免4点错误','①膝盖超过脚尖:膝盖超过脚尖，造成髌股关节压力过大，容易引发疼痛，增加软骨损伤风险；\n②膝关节内扣:内扣给会膝关节周围的组织造成伤害，易引起膝关节疼痛，甚至损伤；\n③静蹲角度不对:静蹲时，大小腿夹角应＞90°，有些人练习心切，做此动作时，下蹲过低，大小腿夹角太小，反而会造成膝关节损伤；\n④静蹲时间太短:静蹲开始一会后，大腿前股四头肌会发紧，继续坚持会肌肉酸疼感，接着肌肉会出现抽动，直到无法坚持才起到锻炼效果，时间太短锻炼效果会大打折扣。',NULL,'http://lovepinpin.com/1587638531929',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:42:16','2020-04-23 18:42:16','2020-04-23 18:42:16',NULL,NULL),
	(177,611551056756736,604360484585472,2,604404986150912,'痛风不是苦修，肉是能吃的，但烹饪有讲究！','痛风患者经常被说教：不能吃肉！这其实是错误的。\n鱼、肉类的食物中，蛋白质、维生素、矿物质等含量丰富，而且含有不饱和脂肪酸等有利于人体的物质，适量进食有利于抵御疾病、促进生长、增强免疫力。其中鱼肉中所含的蛋白质属于完全蛋白质，其必需氨基酸的量和比值更是人体的最佳选择。\n鱼类和肉类的食物嘌呤的含量通常较高，痛风患者如何避免摄入过多的嘌呤呢？那就需要学一下烹饪方法和食用方法了。\n【切小块，沸水焯】\n嘌呤是水溶性物质，很容易溶于水，高温更加速其溶解。吃鱼、肉之前，先将其切小块，然后在沸水中焯一下，能够使得鱼、肉中部分嘌呤溶于水中，减少其中嘌呤的含量。而且其中饱和脂肪酸含量也能减少30% ~50% ，减少对心血管健康的影响。\n【少喝汤，加配料】\n在吃鱼或肉时，少喝汤能很好地减少嘌呤的摄入。在食用时还可以加大蒜和姜，可以使胆固醇吸收率下降10%~ 15% ，还能促进全身循环，起到辅助降低血脂、防止肥胖的功效。\n另外，清蒸、红烧、烘烤等没有减少嘌呤的效果，而油炸和烧烤不仅不能减少嘌呤，反而会增加脂肪的摄入量，不利于预防痛风，还会增加患高尿酸血症和痛风的风险。',NULL,'http://lovepinpin.com/1587638564392',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:42:47','2020-04-23 18:42:47','2020-04-23 18:42:47',NULL,NULL),
	(178,611551325192192,604360484585472,2,604404986150912,'经常咬指甲，小心惹来这两种病！','咬指甲习惯在医学上也称为咬指甲症，因此是一种疾病，常见于儿童，大多数儿童随着年龄的增长，这个习惯会消失，也有少数能够保持到成年，那么经常咬指甲会对身体造成什么伤害呢？\n1.导致甲沟炎\n　　在牙齿与指甲的接触过程中，很容易损伤到甲沟，口腔其实也有许多细菌，加上指甲缝之中的病原体，会导致甲沟的感染率大大上升。\n2.诱发肠胃病\n　　儿童指甲其实是非常容易藏污纳垢的，因为四处抓挠，污垢物质会在指甲缝之中残留，如果此时咬指甲，无疑是等同于直接吃了脏东西，此时会严重的会引起腹痛腹泻等消化道疾病。\n咬指甲的习惯无论是对于儿童还是大人，都是非常有害的，我们要积极寻找病因，并持之以恒的改变它，这样才不至于让咬指甲的坏毛病跟随自己一辈子。',NULL,'http://lovepinpin.com/1587638592133',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:43:19','2020-04-23 18:43:19','2020-04-23 18:43:19',NULL,NULL),
	(179,611551719456768,604360484585472,2,604404986150912,'压力大、应酬多，白领如何赶走亚健康？','针对亚健康，中医有四个“绿色疗法”\n　　（1）拔罐：\n　　拔罐法又名 “吸筒疗法”，古称“角法”。这是一种以杯罐作工具，借热力排去其中的空气产生负压，使吸着于皮肤，造成郁血现象的一种疗法。拔罐法的作用，有通经活络，行气活血，消肿止痛，法风散寒等。其适用范围较为广泛，如风湿痹痛、各种神经麻痹，以及一些急、慢性疼痛，如腹痛、背腰痛、痛经等。\n　　（2）刮痧：\n　　刮痧是以中医脏腑经络学说为理论指导，众采针灸、按摩、点穴、拔罐等中医非药物疗法之所长，所用工具是水牛角为材料制做的刮痧板，对人体具有活血化瘀、调整阴阳、舒筋通络、调整信息、排除毒素、自家溶血等作用，既可保健又可治疗的一种自然疗法。\n　　（3）中药熏蒸：\n　　熏蒸疗法是用中草药煎煮产生的药汽熏蒸人体来治疗疾病的一种外治方法。它通过皮肤直接作用于人体的患病部位，药力强大，作用集中，同时避免了口服药带给胃肠的不适和肝脏的吸收负担。\n（4）针灸：\n　　针灸，是我国传统医学中一门独特的疗法。“针”即针刺，以针刺入人体穴位治病；“灸”即艾灸，以火点燃艾炷或艾条，烧灼穴位，将热力透入肌肤，以温通气血。\n　　那些日常生活中看来不起眼的问题，其实都可能是人体生病信号，都值得引起你的注意，不如试试用中医赶走亚健康吧。',NULL,'http://lovepinpin.com/1587638633171,http://lovepinpin.com/1587638636123,http://lovepinpin.com/1587638639189',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:44:06','2020-04-23 18:44:06','2020-04-23 18:44:06',NULL,NULL),
	(180,611552029835264,604360484585472,2,604405481078784,'备孕妈妈注意：这6类食物千万别吃','开始备孕了，备孕爸爸妈妈都要开始调整作息，注意饮食，不适合备孕期的食物一定要避免。比如下面这几种食物，无论是对孕妈妈的身体还是对将来宝宝的健康，都是不好的，备孕妈妈一定要避开。\n1.含咖啡因的食物\n咖啡因会导致骨骼中钙的流失，而钙对孕妇是一种重要的营养素。此外，一天的摄入量大于300毫克，还会增加流产危险。\n2.高糖食物\n高糖的食物，会引起糖代谢紊乱，甚至还会导致备孕者成为潜在的糖尿病患者。在怀孕后，如果孕妇继续保持着吃高糖食物的习惯，就会导致出现孕期糖尿病。\n3.腌制食物\n腌制食物虽然很美味，但腌制食物中都含有大量的亚硝酸盐、苯丙芘等，对身体很不利。特别是一些过敏体质的孕妇，对于这类食物更应该避免食用，以免对胎儿造成不可逆转的影响。\n4.辛辣食物\n辛辣食物会导致人体出现胃部不适、消化不良、便秘等消化功能紊乱的症状，甚至导致痔疮。在怀孕前的三个月时间里，无论是准爸妈们都应该停止吃辛辣食物。\n5.可能致敏的食物\n很多人都没有注意到进食可能致敏的食物会对胎儿造成的影响，但事实上，致敏食品很可能会引起流产、早产，导致胎儿畸形等多种恶性后果。因此，孕前的妈妈应该慎食。\n6.不熟的烧烤类食物\n当人们接触了感染弓形虫病的畜禽并吃了这些畜禽未熟的肉时易被感染。被感染弓形虫后的妇女可能没有自觉症状，而当其妊娠时，感染的弓形虫可通过子宫感染给胎儿，引发胎儿畸形等。',NULL,'http://lovepinpin.com/1587638682342',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:44:43','2020-04-23 18:44:43','2020-04-23 18:44:43',NULL,NULL),
	(181,611552306659328,604360484585472,2,604405481078784,'备孕需提前多久戒烟戒酒？','一般建议提前3个月到半年比较好。抽烟喝酒对于怀孕来说有一定的影响，孕妇直接或间接吸烟过多，可使末梢血管收缩，不能充分供应和交换氧气，引起胎儿缺氧，造成流产、早产和胎死宫内；由于胎儿宫内缺氧，造成胎儿宫内发育迟缓，智力相对低下；孕早期时，还可造成胎儿畸形和发育不全，例如心血管畸形、腭裂、无脑儿等。\n孕妇饮酒，可以造成胎儿生理上种种缺陷，其主要表现是流产、早产、死胎，幸存下来的胎儿也容易患这样或那样的疾病，所生婴儿智力低下、发育不良。大量饮酒的妇女，怀孕后易生出具有这些特征的孩子：如小眼睛、短眼毛、眼角向下、眼睑下垂，内眦皲裂，严重者可伴有白内障、视网膜色素异常；常可见小关节畸形、心脏畸形；女孩有大阴唇发育不良等。',NULL,'http://lovepinpin.com/1587638710825',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:45:16','2020-04-23 18:45:16','2020-04-23 18:45:16',NULL,NULL),
	(182,611552717701120,604360484585472,2,604405481078784,'备孕前男士注意什么','怀孕的过程是非常艰苦的，其实在怀孕之前的备孕阶段也是比较辛苦的一个过程，很多人都认为备孕是女性朋友的事情，其实并不是这样的，备孕是夫妻双方的，并且对于男性朋友来讲也是有很多事情需要注意的，那么备孕前男士注意什么呢？\n对于男性朋友来讲，在备孕之前也是有很多注意事项的，如不可以滥用药物，更不可以使用含有一些激素的护肤脂，很多的化学药品对于精子的生存能力是有一定影响的，也容易引起精子畸形的情况，或者是提高精子畸形的发生率。\n对于男性朋友来讲，在饮食方面也是需要注意的，千万不可以有偏食的习惯，精子的生成是需要优质蛋白质、锌以及钙质等矿物质与微量元素的、精氨酸多种维生素等，如果说在平时生活中有着偏食的饮食习惯，这样的坏习惯对于精子的生成来讲，是会受到很大影响的，或者是使精子的质量有了很大的下降。\n在备孕之前男性朋友还要注意做好戒烟戒酒，在烟酒里面有很多种有害物质，对于精子来讲是非常具有杀伤力的，在怀孕之前的三个月就要注意不能喝酒，也是不能抽烟的。\n另外还要注意保持良好的情绪，如果说经常烦恼、忧郁或者是脾气暴躁的话，对于睾丸生精的功能以及性功能会有着很大的影响，对于精子的产生与质量也是有影响的。',NULL,'http://lovepinpin.com/1587638764254',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:46:05','2020-04-23 18:46:05','2020-04-23 18:46:05',NULL,NULL),
	(183,611552994525184,604360484585472,2,604405481078784,'备孕需要检查哪些项目','一般按流程做检查的话项目比较多，不过具体检查什么完全要看个人情况，需要针对安排。孕育宝宝是一件非常重要的事情，备孕期做好检查至关重要。其中夫妻双方需要同时检查的项目有：血液检查、肝功能检查、心电图、尿液检查等。每一项检查都要根据结果去分析是否有进一步检查的需求，夫妻多听听医生的建议，配合医生做好相关安排即可。\n在孕前检查时，男性女性也有各自的一些检查项目需要分别进行，一般女性检查的项目重点在于妇科检查包括：外阴检查、阴道检查、宫颈检查，输卵管与卵巢检查等，这些妇科检查主要目的是确认女性是否有先天性生殖器发育不全。通过做内分泌检查、激素检查以及白带常规检查确认女性是否有妇科炎症等问题。\n相比起女性，男性需要检查的项目并不是很多，男性主要需要检查的是精液健康情况，了解精子质量，精子存活率以及精子活力，这些都是决定女性是否可顺利怀孕的重要因素。\n夫妻双方通过一系列检查后，如果确认没有任何问题，那么就合理安排日常生活，从饮食与运动锻炼上做好充分准备，随时保持愉悦的心情。在备孕期间性生活不要过于频繁，保存精子实力，在女性排卵期可隔天进行同房，加大受孕率。那么关于备孕需要检查哪些项目就做以上内容说明，希望大家在做检查前提前了解。',NULL,'http://lovepinpin.com/1587638789823',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:46:38','2020-04-23 18:46:38','2020-04-23 18:46:38',NULL,NULL),
	(184,611553279737856,604389475614720,2,604389475614720,'没有健身器材怎么健身？','很多朋友由于平常没有什么时间，很难去健身房进行训练，而且家里也没有健身器材。那么究竟没有健身器材怎么健身呢?\n　　 1、压颈屈伸\n　　 首先，将按在头右边的手用力的把头往左边推压，同时颈部需要用力顶住，不能够轻易的被压到，但是仍旧会慢慢的压倒。之后，颈部用力将头往上向右边抬起，这个时候右手需要用力的压住自己的头部，不能够让头部轻易的被抬起，不过也需要慢慢的完全竖直。这个动作需要反复进行练习，知道颈部感觉到酸胀，再换到另外一边进行。\n　　 2、单腿下蹲\n　　 这个动作能够将下半身所有部位的肌肉都练习到，尤其是臀肌和大腿上面的负荷更加集中一些。在练习的过程中，需要将不用动作的腿放到身后名的长凳上，然后慢慢下蹲等到大腿跟地面平行就行。需要注意的是，下蹲的时候是屈髋不是通过弯腰来降低身体，这样会让腰部的负担太重。在整个练习的过程中，腰部必须要始终伸直。\n事实上，除了这些锻炼方法以外，不用器械锻炼身体的方法还有很多，比如俯卧撑和仰卧起坐都是比较常见和经典的锻炼方式。只要大家持之以恒的进行锻炼，就算不用健身器械也能够拥有完美的身材。',NULL,'http://lovepinpin.com/1587638823630',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:47:12','2020-04-23 18:47:12','2020-04-23 18:47:12',NULL,NULL),
	(185,611553724334080,604360484585472,2,604389475614720,'健身前的6个热身运动有哪些','有效的热身运动可避免在健身过程中受到不必要的伤害，并且必须正确健身才可以起到理想的健身效果，所以说现在人们对于健身前的热身也重视了起来，那么健身前的6个热身运动有哪些呢？\n1、慢跑：这是任何健身运动前很好的热身运动，可以使身体更好的活动开，慢慢的适应接下来的运动，不过在刚开始时跑步的速度不要太快，慢跑的距离也要在五百左右，这样才会达到更好的效果。\n　　2、开合跳：其实就是在原定站好做上下跳，跳时手臂与腿脚要张开与合拢，有利于拉筋，对手臂、背部以及腿脚有很多的好处，需要做十分钟左右。\n　　3、臀踢跳：把手放到身后，人体像跑步一样慢慢的跑起来，在跑时脚往后踢，注意动作要尽可能的大一些，有利于小腿、膝盖以及大腿的活动。\n　　4、髂腰肌拉伸：很多人没听过，其实很简单，就是前后压腿，听到前后压腿相信基本上都做过的，拉的主要是大腿肌肉。\n5、斜方肌拉伸：虽然有些人也没有听说过，但同样是很简单，就是扭脖子，脖子很容易受伤，因此需要好好的锻炼。\n　　6、扩胸运动：主要是指通过手臂拉伸腰部与胸部，做起来其实是很简单的，需要的时间也不会太长，只是需要用点力。',NULL,'http://lovepinpin.com/1587638879123',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:48:05','2020-04-23 18:48:05','2020-04-23 18:48:05',NULL,NULL),
	(186,611554395422720,604360484585472,2,604389475614720,'练腹肌的健身器材有哪些','练出腹肌已经是很多人的健身目标了，或者是有些人为了练出腹肌而选择了健身，不过想要练出更好的腹肌，最好是借助健身器材，这时就需要有针对性的选择一些健身器材了，那么练腹肌的健身器材有哪些呢?一起来了解下吧。\n借助健身器材练出腹肌是非常明智的选择，如健腹轮，主要是锻炼关节以及肌肉的一个小型的推动器，可以锻炼出腹直肌以及腹横肌，对腹肌锻炼需求的人来讲是很好的选择，健腹轮可以采取站姿式、瑜伽式、跪姿式以及面壁式等多种方法来锻炼而达到很好的练腹肌的效果。\n仰卧板也是一个很好的选择，又被称为了腹肌板以及健腹板，在仰卧板上面做仰卧起坐或者是仰卧抬腿等动作，对于腹部的肌肉有着很好的锻炼效果，仰卧板则是练腹肌的好选择。\n还有健身球，也是可以练出很好的腹肌效果的，最基本的动作是在健身球上面平躺好，两只脚在地面上平放好，两只手放到头侧，手臂打开，下颏往胸前稍微收敛，呼气时收缩腹肌抬起上身大概四十五度，并且保持两秒钟的时间，之后慢慢的回到原始姿势。\n除此之外杠铃也是非常不错的选择，使用杠铃的话可以做负重体侧屈以及负重体旋转等方式的健身，长期坚持下去会达到很好的腹肌锻炼的效果。',NULL,'http://lovepinpin.com/1587638955164',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:49:25','2020-04-23 18:49:25','2020-04-23 18:49:25',NULL,NULL),
	(187,611554756132864,604360484585472,2,604388653531136,'出现打喷嚏、流鼻涕的症状就不会是新冠肺炎？专家教你辨别','有传言称如果出现流鼻涕、打喷嚏或咳痰，就不可能是新冠肺炎，因为新冠肺炎的症状是干咳无流鼻涕，人们可以根据这一点来鉴别。这种说法是真的吗？\n感染了新冠病毒会有哪些典型症状？\n　　新冠肺炎在早期（第一周）的症状跟感冒很相似，就是发烧加上呼吸道症状，如咳嗽、嗓子痒，干咳，一般医生难以将二者区别。\n　　不过一般的普通感冒5-7天就好了，而新冠肺炎则会越来越严重，一般一周后会出现胸闷气短， 活动后气促的现象。如果你出现这些现象，就要高度怀疑自己是不是染上了新冠肺炎。\n我们该如何辨别自己患上的是感冒还是新冠肺炎呢？\n　　一个方法是要看自己是不是有接触过新冠肺炎的病例，或是自己有没有去过疫区。如果去过后出现了干咳、发烧等类似症状，就要去医院咨询医生。\n　　此外新冠肺炎的主要症状是干咳，有痰的比较少，像打喷嚏、流鼻涕这样的症状也少见。如果你出现打喷嚏、流鼻涕，很可能就只是普通感冒，甚至有些人连普通感冒都不是，就只是过敏反应而已。比如过敏性鼻炎。包括流感病毒也是，它导致的症状也是发烧、咳嗽，打喷嚏、流鼻涕会少一些，另外流感发病以后发展会快一些，一般两三天就会发展到高烧。全身酸痛、头痛会明显比普通感冒会重。不过流感大部分也是在一周的时间内缓解。新冠肺炎不同的是，刚开始只是慢慢的干咳，到后来会越来越严重，到后面变得严重了，新冠肺炎也是会咳痰的。但是打喷嚏、流鼻涕都是比较少见的。\n所以单从症状上来判断，患者如果出现打喷嚏、流鼻涕的症状，那么大概率可能会是普通感冒，而不是新冠肺炎。但如果患者咳痰，并不能说明没有染上新冠病毒。',NULL,'http://lovepinpin.com/1587638996520',NULL,0,1,0,0,0,0,0,NULL,'2020-04-23 18:50:08','2020-04-23 18:50:08','2020-04-23 18:50:08',NULL,NULL),
	(188,611555762765824,604360484585472,2,604388653531136,'我是不是“无症状感染者”？看完这些就明白了','什么人会成为“无症状感染者”？ “无症状感染者”会传染他人吗？传播途径是什么？如何做好个人防护？往下看↓↓↓答案都在图里！面对疫情大家不用恐慌，科学理性对待，保持良好心态。',NULL,'http://lovepinpin.com/1587639107698,http://lovepinpin.com/1587639110386,http://lovepinpin.com/1587639114898,http://lovepinpin.com/1587639117824,http://lovepinpin.com/1587639120589',NULL,0,1,0,0,0,1,0,NULL,'2020-04-23 18:52:08','2020-04-23 18:52:08','2020-04-23 18:52:08',NULL,NULL),
	(189,612180286242816,604810969612288,2,605642473603072,'——“喝粥养胃”误导了多少人？','喝粥真的养胃吗？不一定！喝粥养胃因人而异，每个人胃不好的原因各种各样，如果不将胃病加以区分，喝粥非但不能养胃，反而会伤害胃。那么，哪些胃病患者适宜喝粥，哪些胃病患者不宜喝粥呢？\n\n哪些胃病患者适宜喝粥？?\n\n　　▲消化不良者宜喝粥\n\n　　粥通常煮得稀烂，属于半流质食物，由于性状与胃消化后的食糜相差无几，因此胃部无须对其进行再次研磨，就可进入小肠中吸收。这样一来，就大大减轻了胃部的负担。\n\n　　此外，喝粥还能促进胃酸的分泌，利于食物消化，减少胃部积食，对于消化功能较弱的急性肠胃炎早期患者、慢性萎缩性胃炎患者、消化性溃疡活动期患者来说，具有不错的胃部调理作用，从这个角度来看，喝粥确实能养胃。\n\n哪些胃病患者不宜喝粥？?\n\n　　▲胃酸过多者不宜喝粥\n\n　　由于喝粥会刺激胃部分泌更多的胃酸，如果胃酸过多的人经常喝粥，可能会增加对胃部的伤害，甚至出现反酸现象，增加胃部负担。\n\n　　对于胃食管反流患者来说，由于胃酸过多会增加对食管的伤害，因此不能经常喝粥；对于处于消化性溃疡愈合期的胃部患者来说，由于胃酸过多不利于溃疡的愈合，因此也不能长期喝粥。\n\n由于每个人的体质不同，喝粥养胃的说法并不适合所有人，因此我们不能盲目相信民间的说法。想要养好肠胃，除了要规律饮食外，我们还要注意营养均衡，戒除烟酒，少吃辛辣、刺激食物。','','http://lovepinpin.com/Fur5ZPYlm-JgA9MBdGmqCTjpNC6q','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:32:57','2020-04-24 15:32:57','2020-04-24 15:32:57',NULL,NULL),
	(190,612182559555584,604810969612288,2,605829950603264,'不油不盐真的可以减肥成功吗？','对于减肥，许多人存在相当的误区和误解。单纯的觉得肥胖是由于脂肪堆积造成，所以一些人认为减肥就是不吃油不吃肉，只吃素，这样才能减肥。\n\n这些错误的观念还比较普遍，减肥不等于不进食油，那么减肥时怎样合理的吃食油，无油无盐才叫做减肥吗？?\n\n?第一：多吃植物油少吃动物油\n减肥期间合理吃油，要做到一多一少，即多吃植物油，少吃动物油。动物油脂中饱和脂肪酸含量比较高，而植物油脂中饱和脂肪酸含量偏低，虽然这两种都脂肪酸人体都需要，但饱和脂肪酸更能让人肥胖。在控制是食油量的同时，在植物油和动物油的比例上，要尽量多一些植物油，少一些动物油。\n\n?第二：避免油炸食物\n减肥期间合理用油，要避免吃油炸食物。油炸食物一方面油脂很高，另一方面在长期高温下容易产生有害物质，损害身体健康。\n\n?第三：做到三餐吃油有规律\n对于每日三餐来讲，早餐吃油尽量少，午餐适当增加，因为下午时间长，而且人的活动很多是在下午，需要消耗更多能量，晚餐可以少吃或者不吃油，做到吃油有规律。\n\n减肥期间，要弄明白减肥不等于不吃油，关键在于要合理用油，合理吃油。人体需要适量的油作为健康的保证，所以合理吃油，是减肥的需要，也是身体健康的需要。','','http://lovepinpin.com/FtU8Jxl9Oqbk08zmhokrOWBfKXbg,http://lovepinpin.com/FmCaDFmYoCAkXTD23MH6crcE5q8W,http://lovepinpin.com/Fh8AXAi_0UD_vAzDIeGFbiUZNkPc','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:37:28','2020-04-24 15:37:28','2020-04-24 15:37:28',NULL,NULL),
	(191,612183826235392,604810969612288,2,604404986150912,'一张口就疼的口腔溃疡，别只补维C！','口腔溃疡，说实话真的不是什么大病，但是疼起来真的很难受，吃东西不舒服，心情还受影响，如果真的很难受，必要的时候还是需要选择药物来改善。\n\n✌第一：口腔溃疡可以口服抗生素，比如甲硝唑，这是可以治疗厌氧菌感染，但是一定要确定自己是因为感染而产生的口腔溃疡，如果不是，那用口服抗生素是没有效果的，因此选择抗生素一定要咨询医生，诊断病情后再用药。\n\n✌第二：口腔溃疡服用重要成分药物可以让病症好得快一点，口腔溃疡在中医看来，都说阴虚火旺导致的，简单说就是上火比较严重，可以选择中成药，如六味地黄丸或利咽解毒颗粒。\n\n口腔溃疡选择的药物有很多，比如一些广谱口含的抗菌药物，但使用药物一定要先咨询医生后再用，这样会更有针对性。','','http://lovepinpin.com/Fof0GdXmKwtb_m1o8pPOn8JFZ0Li','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:39:59','2020-04-24 15:39:59','2020-04-24 15:39:59',NULL,NULL),
	(192,612184858034176,604810969612288,2,604404986150912,'高血压4点饮食禁忌，别犯！','高血压注意什么饮食禁忌？高血压患者的饮食禁忌：\n\n　　1、忌吃过咸：建议高血压患者每天摄入的食盐量不能超过5克，如果大家长期摄入的食盐超标的话会导致身体内水钠储溜，对于血管壁的压力增加，导致血压继续升高。\n\n　　2、忌“三高”食物：这里所说的三高食物指的是高热量、高脂肪和高蛋白，主要指的是一些油炸食物、动物内脏、巧克力、冰淇淋之类的食物。\n\n　　3、忌抽烟酗酒：长期的抽烟会刺激到大家的自主神经，引起血管痉挛和心跳速度变快，此时血压也会升高。\n\n　　4、忌暴饮暴食：不吃早餐，到了中午和晚上的时候大吃大喝，最后血压比正常值升高很多。\n\n刘医生希望所有的高血压患者一定要在平时的饮食中注意这4个禁忌，只要大家把平时的饮食注意到位了，血压是可以慢慢降下来的，这样患者的身体会慢慢恢复健康，相信这也是大家最希望看到的。','','http://lovepinpin.com/FqP3y_YTdGik8Ditzrpx5meM1sM_','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:42:02','2020-04-24 15:42:02','2020-04-24 15:42:02',NULL,NULL),
	(193,612186225377280,604810969612288,2,605642473603072,'喝中药都有哪些饮食禁忌？','?喝了中药一般不建议吃萝卜：\n　　在中医治疗里面最注重五脏六腑的调理，而又由于中医治疗讲究五脏平衡，如果喝了中药以后就一定不能吃消食破气的食物，其中例如萝卜等是不建议吃的，尤其是是服用了人参类滋补中药，如果吃萝卜就会将药效大大降低，从而会使得药物的补益功效受损，最终影响的自然就是中药治疗效果了。\n\n?服用健脾温胃药物禁服大蒜：\n　　在吃中药治疗消化道疾病的时候，是一定要禁服大蒜的，这是因为大蒜当中含有一种能够刺激胃肠粘膜的蒜素，会使得粘膜充血，如果在服用健脾和胃、温胃的药物时候，一定不能吃大蒜，以免影响相关中药的治疗功效。\n\n?喝了中药一般不建议喝冷饮：\n　　炎炎夏日喝上一杯冰饮料可谓是人生一大快事，但是中医认为冷饮会使得机体气滞痰湿，同时也会使得人们的肠胃功能变弱，对于脾胃的养护是非常不利的。另外对于正在服用中药的人群来说，喝冷饮会使得胃部温度下降，非常不利于中药药效的吸收，因此药物也将无法充分发挥功效，因此正在吃中药的人群一定不要喝冷饮。\n\n吃中药是有诸多的禁忌的，如果不注意相关方面的调理，可能会导致中药治疗效果打折，因此一定要注意了。','','http://lovepinpin.com/FrCkesjIFLmtOPRakm8ywu1YOfbc','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:44:45','2020-04-24 15:44:45','2020-04-24 15:44:45',NULL,NULL),
	(194,612187735326720,604810969612288,2,604405481078784,'备孕的时候需要吃些什么呢？','在备孕期间，女性需要把自己的身体状态调整的比较好。☺\n\n首先需要服用钙片，同时需要吃叶酸预防胎儿神经管畸形。在这个阶段还可以适当的服用一些维生素e和胎盘片加强子宫内膜的营养。\n\n在饮食上尽量吃的清淡一点，营养丰富一点，多吃一些高蛋白的饮食比如瘦肉，鸡蛋鱼牛奶之类的，在用药方面也要特别慎重，尽量避免使用孕期禁用的药物。','','http://lovepinpin.com/FuHtfCNodqo8YAvnt2K4VNlS1quh','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:47:45','2020-04-24 15:47:45','2020-04-24 15:47:45',NULL,NULL),
	(195,612188842622976,604810969612288,2,605830713966592,'备孕禁用药物有哪些？','大多数药物在备孕时都不能用。?\n\n平时常用的感冒类非处方药、抗过敏药、治疗腹泻的药、绝大多数抗生素、心脑血管类药、降血压以及降血脂的药、精神类药品备孕时都不能用，激素类药品也不要用，促排卵的激素需要在医生指导下使用。\n\n另外女性在备孕阶段需要调理好身体，尽量不要使用药物，必须用药时也要在医生指导下使用，避免不必要的麻烦。叶酸片、多种维生素制剂要在医生指导下使用。多数药物会不同程度的引起流产、死胎、胚胎停止发育、胎儿畸形等，可以用食疗的方法调节身体。\n','','http://lovepinpin.com/Fhy2F_8Qwk1mjY_21Sd84VojKQZr','',0,1,0,0,0,0,0,NULL,'2020-04-24 15:49:57','2020-04-24 15:49:57','2020-04-24 15:49:57',NULL,NULL),
	(196,613641715974144,604810969612288,2,604404986150912,'西瓜虽好，但这些禁忌须知道！','西瓜甘寒无毒，不仅“消烦止渴，解暑热”，而且“宽中下气，利小水，治血痢，解酒毒，治口疮”。但是食用西瓜也是有其不可忽视的禁忌。\n\n1、不要吃得过多，否则伤脾胃，引起咽喉炎\n\n2、感冒初期不要吃西瓜：否则会使感冒加重或延长治愈的时间。\n\n3、不要吃打开过久的西瓜：气温高，西瓜打开过久易变质、繁殖病菌，食用了会导致肠道传染病。因此，吃西瓜应注意选择成熟的新鲜西瓜。\n\n4、肾功能不全者不要吃：短时间内大量吃西瓜，使体内水分增多，肾功能不全者不能调节及排出体外，致血容量急剧增多，容易因急性心力衰竭而死亡。\n\n5、口腔溃疡者不要吃\n\n6、糖尿病人吃西瓜需适量：西瓜约含糖类5%，且主要是葡萄糖、蔗糖和部分果糖，也就是说吃西瓜后会致血糖增高。\n\n7、产妇不宜多吃西瓜：产妇的体质比较虚弱，中医认为多吃西瓜会过寒而损脾胃。\n\n8、少吃冰西瓜：虽然大热天吃冰西瓜的解暑效果很好，但对胃的刺激很大，容易引起脾胃损伤，所以应注意把握好吃的温度和数量。\n\n9、西瓜是含糖量很高的水果，容易转化为脂肪，不利于健康','','http://lovepinpin.com/FlTcf1CH0ZSsD1sQli5HcrDFSumB','',0,1,0,0,0,0,0,NULL,'2020-04-26 15:56:33','2020-04-26 15:56:33','2020-04-26 15:56:33',NULL,NULL),
	(197,613642437394432,604810969612288,2,605832442019840,'糖尿病不能吃水果？这几样可以适当吃点','水果里面的维生素很丰富，并且还含有多种微量元素，对人们的身体有很大的帮助。但是有些人说自己患病之后就不能吃水果了，因为水果中的糖分太多了。其中患有糖尿病的病人就是不可以吃多糖的水果，那么生活中低糖的水果有哪些呢？\n\n低糖的水果之一：橙子\n橙子是生活中常见的水果，不仅维生素C丰富，还含有充足的水分。但是一天不能吃太多，并且身体湿气严重的人是不能吃橙子的。\n\n低糖的水果之二：黄瓜\n黄瓜既是水果也是蔬菜，而且还是低糖食物，糖尿病患者可以适当吃一些。\n\n低糖的水果之三：柠檬\n柠檬是一种酸味十足的水果，糖分也很低，还具有美容养颜的功效，可制成柠檬水使用。','','http://lovepinpin.com/FqsXQW1sNpPbNf-GvdBXGU97NZDy','',0,1,0,0,0,0,0,NULL,'2020-04-26 15:57:59','2020-04-26 15:57:59','2020-04-26 15:57:59',NULL,NULL),
	(198,613646572978176,604810969612288,2,605833264103424,'母乳喂养小心4个误区！','        误区一：产后前两天奶水很少，还是给宝宝先加点奶粉吧\n\n宝宝在刚出生1天的时候，妈妈的奶水虽然比较少，但这个时候宝宝的胃容量也只是就小玻璃球那么大，他只需要一点点乳汁就能满足全天的能量，所以不用担心自己奶水不够。只要经常让宝宝吸，刺激泌乳机制后乳汁量会慢慢增多，乳汁量与胃容量通常呈正相关增长、最终达到平衡。\n\n        误区二：前奶没营养，哺乳时将开始的乳汁挤掉，或者一边奶水还没吃完，就换另一边喂。\n\n先吸出来的奶我们叫“前奶”，它看上去虽然比较稀薄，但却是富含水分和蛋白质，这也是为什么说纯母乳喂养的宝宝不需要额外喂水。在“前奶”之后，乳汁就变成了白色，而且比较浓稠，这就是“后奶”了，后奶富含脂肪、乳糖和其他的营养素，能提供很多热量，保证宝宝吃了后不会经常饿。应尽量让宝宝吃空一侧乳房后再换另一侧，这样才能保证宝宝摄取到足够的营养。\n\n        误区三：严格定时喂奶，即使宝宝还在睡觉也会唤醒宝宝。\n\n有些妈妈在喂奶的时候会严格按照隔几个小时喂一次的原则，其实，在宝宝吃奶还没有规律以前，需要按需哺乳。既有利于妈妈乳汁的分泌、预防奶胀，又能满足宝宝生长发育的需要。\n\n        误区四：挤奶时挤压乳头\n\n有些妈妈在挤奶时，用手挤压乳头或整个乳房希望尽最多的力量将乳汁挤出，但往往乳汁不但未被挤出反而使乳头或乳房损伤。正确的方法是，在乳头距离乳晕2cm处用拇指及食指向胸壁方向轻轻下压，压力应作用在拇指及食指间乳晕下方的乳房组织上，也就是说，必须压在乳晕下方的乳窦上，反复一压一放，依各个方向按照同样的方法按压，做到使乳房内每一个乳窦的乳汁都被挤出来。这方法一般不会疼痛，否则就要看是否方法错误了。一侧的乳房至少挤压3-5分钟，待乳汁少了，就挤压另一侧，如此反复数次。每一次挤奶至少需要20-30分钟，每天至少6-8次。','','http://lovepinpin.com/Fgg9cXFJK-jnTG2kL04rrMA3LbVO','',0,1,0,0,0,0,0,NULL,'2020-04-26 16:06:12','2020-04-26 16:06:12','2020-04-26 16:06:12',NULL,NULL),
	(199,613648586244096,604810969612288,2,605830713966592,'如何备孕？备孕前应该做些什么呢？','一、调整饮食，多吃富有营养的食物，基本不吃油炸食物和寒性食物，同样水果也不能吃寒性的水果，比如西瓜、香瓜。\n\n二、睡眠充足，睡觉很重要，早睡早起更重要。人体的造血时间主要集中在22点到凌晨2点，一定要保证这个时间段入睡，最好能够达到熟睡状态。\n\n三、适量的锻炼，选择什么样的锻炼方式不重要，重要的是要适合自己，可以选择散步，练瑜伽不提倡剧烈运动，比如打羽毛球等。\n\n四、测量基础体温，基础体温曲线图有助于监测到排卵，通常在早晨起床前监测基础体温在排卵日最低排卵后升高0.3-0.6度。\n\n五、放松心情，心情很重要，越着急，越想着怀孕就会不容易成功。\n\n六、远离电子产品的辐射。','','http://lovepinpin.com/FqYqoNeTXatAIHCV7rLsjadZbmjR','',0,1,0,0,0,0,0,NULL,'2020-04-26 16:10:12','2020-04-26 16:10:12','2020-04-26 16:10:12',NULL,NULL),
	(200,613649802592256,604810969612288,2,604982566977536,'如何预防癌症？','预防癌症的方法有以下几种：\n\n第一种，戒烟戒酒，如今吸烟已经成为了患癌的一大原因之一。\n第二种，多吃一些新鲜蔬菜，瓜果，多摄入维生素，增加身体体质。\n第三种，养成良好的饮食习惯，不能暴饮暴食，不吃过多的腌制食品，不多吃冷，辣食物。\n第四种，放宽心态，不要过多生气，注意多加锻炼，提升自身的免疫力，平时劳逸结合。\n','','http://lovepinpin.com/FpKWcT4jeU5wOHGxp8cS9W2S8Zfx','',0,1,0,0,0,0,0,NULL,'2020-04-26 16:12:37','2020-04-26 16:12:37','2020-04-26 16:12:37',NULL,NULL),
	(201,613652184956928,604810969612288,2,604982566977536,'预防肝癌吃什么好？','肝癌的发生发展与饮食有密切的关系。\n\n霉变食品、污染食品、过期食品、激素农药残留食品和病毒感染的食品都可以导致肝癌的发生发展，所以说预防肝癌饮食非常重要。\n\n预防肝癌应该尽可能吃新鲜的、没有污染的、有机的食品，食用富含纤维素、维生素的食物，这样可以增强肝脏的解毒能力，也可以降低肝脏负荷。另外高脂饮食、高蛋白饮食、高糖饮食容易引起脂肪肝，脂肪肝与肝癌的发生有一定的关系，所以要想预防肝癌应该少吃这些食物。','','http://lovepinpin.com/FgHrMJ3aHTzzJFo9XITMULzxzD_c','',0,1,0,0,0,0,0,NULL,'2020-04-26 16:17:21','2020-04-26 16:17:21','2020-04-26 16:17:21',NULL,NULL),
	(203,614385735172096,604810969612288,2,605833004056576,'儿童春季感冒怎么预防？','        1.“春捂”要恰到好处：所谓“春捂秋冻”中的“春捂”，就是说春季气温刚转暖，不要过早脱掉太多衣服。如果春天忙于减衣，遇到天气变化或倒春寒就容易受凉，引起感冒等疾病。“春捂”要恰到好处，根据天气和个人体质的变化，逐渐减少。\n\n　　2.增强免疫力：部分家长会考虑通过药物来提高宝宝的免疫力。虽然药物可以提高孩子的免疫系统在一定程度上，但它也可能有一些副作用。如丙种球蛋白，可能会带来血源性的病毒感染。通常，我们可以在平时的时候就从几个方面来注意增强宝宝的体质，以抵御疾病的侵袭：如饮食上，要为宝宝准备营养丰富的食物，在流感季节，更是要多食富含维生素的瓜果蔬菜。在作息上，充足的睡眠对于增强宝宝的体质也是非常重要的，所以爸爸妈妈要培养孩子良好的生活习惯，坚持早睡早起，保证充足的睡眠。\n\n　　3.减少接触病菌：在流感季节，尽量避免把孩子带到拥挤、不通风的公共场所，这样可以大大降低感冒的风险。家里有人感冒时，注意戴好口罩，避免与孩子的亲密接触。同时，注意保持室内的通风换气，此外，也要教育宝宝养成勤洗手的好习惯。外出归来和进食前，一定要清洁双手，以减少“病从口入”的机会。\n\n　　4.其他：有些药物，如板蓝根，大青叶等中药，对预防感冒有一定的影响。在流感季节给孩子冲一些板蓝根。足浴也是一个不错的办法，防止寒冷的一天。每天泡脚最好不超过15分钟，这样可以帮助预防和治疗感冒。','','http://lovepinpin.com/FvPRt55r-9LOP0GQPZn-5RKp11xx','',0,1,0,0,0,0,0,NULL,'2020-04-27 16:34:47','2020-04-27 16:34:47','2020-04-27 16:34:47',NULL,NULL),
	(204,614386490146816,604810969612288,2,610792483323904,'痛经吃止痛片有什么危害？','痛经分为原发性与继发性两种。\n\n医生认为，原发性痛经并没有器质性病变，痛经呈现时间短、强度小的特点。\n通常在月经第一天症状特别明显，一天内就可以缓解，在分娩后或婚后会逐渐消失。医生指出，对于原发性痛经而言，必要时可以通过止痛片解除痛苦，也可以采用中药进行调理。\n\n相对于继发性痛经来说，盲目吃药可能会适得其反，因为止痛药会提高痛阈值，令人对疼痛不敏感，可能加重痛经背后的隐形疾病，延误治疗。\n专家指出，如果明确是继发性痛经就要到医院进行相关妇科检查，明确病因才能对症下药。临床显示，痛经可能是很多疾病的征兆，如子宫内膜异位症、盆腔炎、子宫肿瘤等。很多患者也可能将某些疾病引起的疼痛误以为“痛经”，因而明确病因是关键。\n\n俗话说，是药三分毒。任何药物都会有一定的副作用。痛经患者长期服用止痛药也会造成一定的副作用。\n\n1.神经系统功能紊乱。主要表现为记忆力下降，容易失眠等。\n2.肠胃功能失调。长期服用止痛药会对肠胃产生刺激，造成肠胃功能失调。','','http://lovepinpin.com/FrpZtxYEkWsL6EaVQr6dCMkolA9N','',0,1,0,0,0,0,0,NULL,'2020-04-27 16:36:17','2020-04-27 16:36:17','2020-04-27 16:36:17',NULL,NULL),
	(205,614392244731904,604810969612288,2,605830713966592,'怀孕早期的注意事项有哪些？','怀孕初期要注意补充叶酸,，孕期全程补充叶酸可预防孕期高脂血症。叶酸补充剂中的叶酸比食物中的叶酸更容易吸收，因此刘医生建议在怀孕的前3个月开始每天服用400微克叶酸，并持续整个怀孕期间。\n\n?孕期注意事项：\n\n　　1、不要做剧烈运动。\n　　在怀孕的情况下，母亲需要保持适当的运动。但是，怀孕初期，胎儿发育不稳定，孕妇的身体状况也不稳定，这时，孕妇不宜忙于进行剧烈运动，以免发生流产。\n\n　　2、注意个人卫生。\n　　刚怀孕的女性朋友，由于身体的变化，以及对营养需求的增加，怀孕妈妈的身体新陈代谢会很快，阴道分泌物增多，使孕妈妈容易受到细菌的伤害。因此，进入妊娠期后，孕妇应特别注意自己的卫生，经常洗澡，经常换内衣。\n\n　　3、着装得体。\n　　在怀孕初期，母亲应穿软、宽、无腰带、不穿紧身裤、高跟鞋。否则很容易造成流产。而高跟鞋也会导致孕妇腿部疲劳，不利于孕妇的健康。','','http://lovepinpin.com/Fml50nNoz1DWxWWZ17d_HvaRbe1W','',0,1,0,0,0,0,0,NULL,'2020-04-27 16:47:43','2020-04-27 16:47:43','2020-04-27 16:47:43',NULL,NULL),
	(206,614397017849856,604810969612288,2,604405481078784,'孕妇能吃阿胶补血膏吗？','阿胶是广大女性朋友的补血圣品，也是孕妇保胎、安胎的药物。但是，也有人认为孕妇体质较弱，而阿胶又有活血的功效，孕妇食用阿胶会影响胎儿的成长，甚至导致流产。那么，怀孕期间真的不能吃阿胶吗？\n\n孕妇可以吃阿胶吗？可以吃！?\n\n　　阿胶对于孕妇来说同样是补血良品。专家认为，阿胶有增强体质、补血安胎的功效，如果孕妇体质偏寒、贫血可以适当吃一点。但是在怀孕早期和晚期是不可以吃，因为阿胶可能会引起宫缩。建议孕妇在医生的指导下食用阿胶。\n\n哪些人不适合服用阿胶？?\n\n　　1、高血压、糖尿病的人以及阳气旺盛的人不适合服用阿胶。因为阿胶有滋阴的功效，上述人群尽量不要服用膏剂。\n\n　　2、消化功能不好的人不适合服用阿胶。因为阿胶属于不易消化的食物，一旦肠胃功能不好，服用以后可能会引起身体不适。','','http://lovepinpin.com/FqT31l0r0NypMzXJRM5RFGIxUG2z,http://lovepinpin.com/FsBTtMK58VO4JiK3EWdL0ONEAF2P,http://lovepinpin.com/FmGJRJWqT-kpggw_kS1doFbdZsfc','',0,1,0,0,0,0,0,NULL,'2020-04-27 16:57:12','2020-04-27 16:57:12','2020-04-27 16:57:12',NULL,NULL),
	(207,615107717496832,604810969612288,2,605830713966592,'备孕需要多久呢？','如果平时身体比较健康的女性，备孕的时间一般为3-6个月。\n\n男女双方如果有妊娠的计划，应该首先有一段时间备孕，需要一起到医院进行详细的孕前检查，排除传染性疾病和遗传性疾病或者其他影响妊娠的疾病。\n\n另外，备孕期间应该规律生活，避免劳累、着凉、饮酒、吸烟等。另外，要规律饮食，女性在备孕期间，尤其是孕前3个月开始应该口服叶酸，一直口服到怀孕之后3个月。保持体内激素水平或者叶酸水平比较高，能够有效地防止胎儿畸形的发生。另外，备孕期间也可以口服复合维生素等。','','http://lovepinpin.com/FvaYhqFZEprcpEoT9TB43895EM4R','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:29:14','2020-04-28 16:29:14','2020-04-28 16:29:14',NULL,NULL),
	(208,615108682186752,604810969612288,2,605833004056576,'婴儿定型枕什么时候用？','婴儿定型枕需要在出生3个月后才能使用，但临床上并不建议给婴儿使用定型枕。\n\n正常情况下，人体的脊柱会有4个生理性弯曲，颈曲、胸曲、腰曲和骶曲，而宝宝刚出生时由于脊柱尚未发育成熟，并无弯曲，直至3个月左右时才会出现第一个生理弯曲颈曲，所以在3个月之前，为了防止对婴儿的颈椎造成损伤，一般不能枕枕头。而3个月之后则可以，但也不能太高。此时如果给婴儿用定型枕，则可能会在一定程度上会帮助婴儿睡出一个好的头型来。不过，出于安全因素考虑，目前国际上并没有任何一家权威机构推荐婴儿使用定型枕。\n\n所以，为了给婴儿塑造出一个好的头型，最好还是让宝宝左侧卧位或右侧卧位交替睡，或者在成人的看护下，可以短时的仰着睡、趴着玩。','','http://lovepinpin.com/Fl11IBeHHQJuqarxqxRnjq9FQYWV','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:31:09','2020-04-28 16:31:09','2020-04-28 16:31:09',NULL,NULL),
	(209,615110427017216,604810969612288,2,604404986150912,'得了脚气怎么办？饮食需要注意什么？','脚气是十分多发的，而且还会反复的发作，接下来和刘医生一起了解下患上脚气之后怎么处理吧~\n\n?脚气很多都是真菌感染导致的，在明确自己已经患上了脚气之后，一定要注意个人卫生，不能再不洗脚或者是不洗澡，应该每天都对患处进行清洁。另外没有都要换上干净的袜子以及鞋子，尽量穿透气的鞋袜，这样能缓解病情。\n\n?另外脚气如果不是非常严重的话，多数情况下涂抹上一些脚气药膏就会康复了。这些药膏多数都是抗真菌的，每日一次或者两三次，根据具体的病情来看。药膏的使用要经过医生或者药师的同意，不建议自己随意买一个药膏来用。\n\n☺患有脚气的朋友在运动方面要注意，一般不建议做剧烈的运动，避免损伤患处。另外运动的时候我们难免会出很多的汗，汗水会让患处的真菌有一个生长的环境，所以尽量做一些舒缓的运动，不要出汗太多，保持患处的清洁。\n\n?脚气及时治疗，否则病情严重的话，会加重病情，瘙痒，然后皮肤出现裂痕等现在出现，会加重脚部的疼痛，再治疗起来时间比较长，增加了难度;\n\n?不要吃辛辣的食物，辛辣的食物，会引起皮肤出汗，出汗导致脚气加重，因此，平时要多吃些清淡的食物，例如水果和蔬菜;\n\n?得了脚气，千万不要再穿别人的鞋子，也不要跟其他人共用一个洗脚盆洗脚，以免交叉感染给其他人，要及时治疗脚气。','','http://lovepinpin.com/FpzdaZGb8KtyqrhUnanL9ElRxCNJ','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:34:37','2020-04-28 16:34:37','2020-04-28 16:34:37',NULL,NULL),
	(210,615111895023616,604810969612288,2,605832442019840,'南瓜的功效！吃这种蔬菜促进身体发育！】','南瓜是很常见的一种蔬菜，它能够帮助人们解毒，还可以防止糖尿病。但是你知道南瓜的禁忌是什么吗？\n\n南瓜的功效?\n\n        1、解毒:南瓜中含有丰富的果胶，果胶具有很好的吸附性，它到了身体中能够粘连体内的细菌毒素和有害物质，常见的就是汞、铅等，吃南瓜能够起到解毒的作用。\n\n　　2、防止糖尿病：南瓜内含有丰富的钴元素，这个物质能有效活的促进体内的新陈代谢。它含有的物质还可以促进造血功能，并且能够促进人体维生素B12的合成。b12是胰岛细胞必需的微量元素，能够预防糖尿病。\n\n　　3、消除致癌物质：人体常见的致癌物质亚硝胺，吃南瓜能够帮助人们有效抑制其突变，还有防癌作用，南瓜中的物质对肝肾功能的恢复也有极其大的效果。\n\n　　4、促进生长发育。南瓜中含大量的锌元素，它可以对人体内核酸和蛋白质的合成起一定的促进作用，是肾上腺皮质激素的重要成分，为人体生命提供所需要的物质。\n\n　　5、保护胃黏膜、促进消化。南瓜内富含的果胶，可以保护胃道黏膜，阻挡粗糙食物的刺激，促进溃疡处的愈合。南瓜内的成分还可以促进胆汁的分泌，加强肠胃的蠕动，促进消化。\n\n南瓜的禁忌?\n\n        1、南瓜加菠菜：南瓜含丰富维生素C分解酶，会破坏菠菜中的维生素C，同时自身营养价值也会降低。\n\n　　2、南瓜加红薯：皆属易滞气食物，如果不煮熟便食用会引起腹胀，若二者同食，更会导致肠胃气胀、腹痛、吐酸水等。\n\n　　3、南瓜加羊肉：这两种食物都是热性之物，一起吃可能会导致腹胀、便秘等等一些疾病。患感染性疾病和发热症状者不宜食用，以防病情恶化。\n\n以上就是刘医生给大家整理的关于南瓜的功效和禁忌，喜欢吃南瓜的朋友在平时可以多吃一点，它能够为我们的身体补充需要的营养物质，对于预防多种疾病还有不错的功效，是很有营养的一种食物。','','http://lovepinpin.com/FuCtERMb2aob9O-pD7ubbgWBp8-W','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:37:32','2020-04-28 16:37:32','2020-04-28 16:37:32',NULL,NULL),
	(211,615113438527488,604810969612288,2,604404986150912,'夏天到了，如何科学有效的美白？','马上就要到夏季了，很多人的皮肤比较黑，在这个季节甚至不好意思穿短袖和短裤，于是很想知道一些美白的方法。其实美白皮肤可以通过食疗的方法来实现，具体下面会有详细的介绍。\n\n?美白皮肤的方法\n1、多喝水\n2、注意防晒\n3、和香烟说再见\n4、压力是美白的敌人\n\n?如何美白肌肤\n1、热气整脸：可以用蒸脸器，每次蒸3-5分钟，把毛孔里的污垢和油脂进行清除。\n2、深层清洁毛孔：比如去角质，按摩和做深层清洁面膜。但是，不同的肤质深层清洁的需求是不一样的，不能清洁过度或者清洁不到位，根据自己的肌肤情况正确护肤，而不是毁肤。\n3、做好美白防护：出门前半小时一定要做好美白防护\n\n另外女性朋友们日常生活中可以多吃红枣、燕窝、阿胶、绿色蔬菜和水果这些可以帮助美白的东西，这个夏天一起拜白到发光吧?\n','','http://lovepinpin.com/FtvP_i3MvHTMrrS_DTrXf0folkX8','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:40:36','2020-04-28 16:40:36','2020-04-28 16:40:36',NULL,NULL),
	(212,615114369662976,604810969612288,2,605830713966592,'高龄产妇如何备孕呢？','高龄产妇在备孕前一定要做孕前检查和优生优育的检查，同时做染色体等相关项目的检查。\n彩超检查一下子宫内膜的厚度，输卵管及卵巢的情况。\n\n在怀孕前3个月到怀孕后3个月之内要吃叶酸片，预防胎儿神经管畸形。\n\n平时要注意多吃新鲜蔬菜水果、鸡蛋、牛奶、瘦肉等富含优质蛋白的食物。平时注意积极的锻炼身体，增强自己的体质，加强抗免疫能力，以便优生。夫妻双方要戒烟戒酒，放松心情，保证休息和睡眠。','','http://lovepinpin.com/FltnZGCanYBFaRnB3IKZ5GfYywso','',0,1,0,0,0,0,0,NULL,'2020-04-28 16:42:27','2020-04-28 16:42:27','2020-04-28 16:42:27',NULL,NULL),
	(213,615828105986048,604810969612288,2,610792483323904,'乌鸡白凤丸什么时候吃？','乌鸡白凤丸是一种妇科常用中成药，可在月经前或月经后服用，并无太大的限制，且服用时可选择饭前，有利于药物成分的吸收。?\n\n乌鸡白凤丸主要由乌鸡、人参、牡蛎、黄芪、当归、白芍等20多种滋补用的中药组成，具有补气养血、调经止带的作用，可用于治疗气血两虚、身体瘦弱、腰膝酸软、月经不调、白带量多等症。若日常月经量较大，可在月经后服用，但尽量避免在月经期服用，以免导致出血过多，反而使身体更加虚弱。此外，该药物作为滋补作的中成药，对胃肠道刺激和不良反应较小，适合早晨空腹服用和晚上睡前服用，药物吸收效果更佳。\n\n?服用乌鸡白凤丸期间，患者需禁止饮酒，忌生冷、辛辣刺激性食物，以免对药效产生影响。','','http://lovepinpin.com/FrFr8sbKqZ4jSCret_llVn3X9FQ7','',0,1,0,0,0,0,0,NULL,'2020-04-29 16:20:31','2020-04-29 16:20:31','2020-04-29 16:20:31',NULL,NULL),
	(214,615828617691136,604810969612288,2,605832442019840,'秋葵的功效与作用有哪些？','秋葵是一种蔬菜，他含有多种维生素矿物质和适量的膳食纤维，他比其他的蔬菜呢粘液质含量高，含有丰富的植物多糖，因而抗氧化的作用比较强，对于提高免疫力，抗肿瘤，以及保护新老血管都有一定的保健作用，并且在秋葵中含有比较丰富的果胶，他属于一种可溶性的膳食纤维，对于维持血糖，润肠通便，健脾胃都是有很好的帮助的。','','http://lovepinpin.com/Fi9_futdFw87Q_Gk5tRPRfLDIjeE','',0,1,0,0,0,0,0,NULL,'2020-04-29 16:21:32','2020-04-29 16:21:32','2020-04-29 16:21:32',NULL,NULL),
	(215,615830278635520,604810969612288,2,605833004056576,'14个育儿须知，妈妈知道多少？','新手妈妈在面对自己弱小的宝宝时总会有些手忙脚乱，请一个育婴师来又不太放心。下面，远行健康为您奉上育儿禁忌与注意事项，希望对各位年轻妈妈都有帮助。\n\n1、新生儿忌穿衣过厚、过多\n　　若要小儿安，给他三分饥与寒。这句老话是我们的老祖宗总结出来的育儿道理，许多妈妈害怕宝宝着凉，总是给他穿很厚的衣服，但这样容易造成宝宝出汗过多而感冒，还有可能使宝宝长痱子。所以如果在温暖的室内，妈妈应当给宝宝少穿一点衣服。\n\n2、六个月左右再添加辅食\n　　辅食喂养过早容易引发宝宝腹泻、加重宝宝肝、肾负担，世界卫生组织(WHO)已经把推荐添加辅食的时间从四个月推迟到了六个月。\n\n3、带宝宝外出尽量使用婴儿带\n　　婴儿卤门未合，如果长期在婴儿车内被父母推着走难免会颠簸，影响宝宝脑部发育。而且婴儿车的高度刚好可以吸收到马路上浓度最大的汽车尾气，影响宝宝身体健康。\n\n4、宝宝一岁前忌吃蜂蜜\n　　蜂蜜在酿造、运输与储存过程中，易受到肉毒杆菌的污染。婴儿由于抵抗力弱，食入肉毒杆菌后，则会在肠道中繁殖，并产生毒素引起中毒。\n\n5、忌穿开裆裤过久\n　　一岁半以上的宝宝就完全可以不用穿开裆裤了，长期穿开裆裤容易引起宝宝尿路感染，甚至导致肾盂肾炎。\n\n6、一岁以前的宝宝尽量不吃盐\n　　宝宝在年幼时期形成的口味可能会影响一生，如果在一岁以前就给宝宝喂食盐的话不仅会影响钙的吸收，还有可能导致宝宝以后口味变重。\n\n7、三岁以下宝宝不要喝纯净水\n　　对于宝宝来说，温热的白开水才是最好的饮料。\n\n8、新生儿发烧尽量用物理降温法\n　　如果随意使用抗生素，很有可能导致宝宝患上哮喘。\n\n9、婴儿房内慎用加湿器\n　　如果非要使用加湿器，那么尽量在远离宝宝的地方，加入纯净水，并且保证24小时更换一次水，一周清洗一次加湿器，避免细菌扩散。\n\n10、爸爸情绪影响宝宝心情\n　　据调查，爸爸在家中情绪不佳会导致宝宝的哭闹次数增加2倍以上。\n\n11、父母带宝宝，宝宝发展有差别\n　　爸爸带宝宝，孩子智商高;妈妈带宝宝，孩子成绩好。\n\n12、最好不用空调和地毯\n　　据统计，使用空调和地毯的家庭，宝宝得过敏性哮喘的概率是不用的家庭的2-3倍。\n\n13、宝宝1.5岁开始刷牙\n　　保护牙齿要趁早，1.5岁开始刷牙能有效预防宝宝龋齿。\n\n14、最好不用学步车\n　　用了学步车不仅会延缓宝宝学步的进度，而且很不安全。','','http://lovepinpin.com/Fip9mVPZIfZnq4ajJPliPd0QPY4Y','',0,1,0,0,0,0,0,NULL,'2020-04-29 16:24:50','2020-04-29 16:24:50','2020-04-29 16:24:50',NULL,NULL),
	(216,615830974889984,604810969612288,2,605832442019840,'大蒜虽好，吃不对，营养白白浪费！','大蒜营养价值非常高，但若吃不对，就无法最大程度地发挥它的养生保健功效，非常浪费。那么，吃大蒜应注意些什么呢？\n\n1、首选生吃\n大蒜中的大蒜素，是发挥杀菌、防癌、护血管功效的主要元素，但它的形成需要依靠大蒜中的蒜氨酸。只有大蒜被切开或被挤压，细胞壁被破坏后，蒜氨酸才能与蒜氨酸酶结合，并在空气的氧化作用下变为大蒜素。\n\n而且，大蒜素在超过50℃的高温下功效会大打折扣。所以大蒜最好的吃法就是捣成蒜泥，并将它放置十几分钟，让其中的蒜氨酸充分氧化成大蒜素。不方便捣成蒜泥的，最好也将大蒜拍碎，避免整瓣直接食用。\n\n2、大蒜炝锅油温不宜高\n大蒜中含有的氨基酸、脂肪、淀粉和糖类在油炸、烧烤时易产生丙烯酰胺，这是一种2A类致癌物，对人体有一定的致癌风险。所以平常最好少吃蒜蓉炸虾等需要热油大量炸蒜的菜，也应避免在高温下用大蒜炝锅。\n\n如果想增加一些香味，可以在油不太热时煎蒜片，至两面微黄就可以了。这样既能释放蒜香，又能尽量保留大蒜素的功效，还可减少丙烯酰胺的生成。\n\n3、每天3瓣足够\n生蒜中的大蒜素功效虽强，但也有较大的刺激性，食用过量会刺激肠胃，引起胃部不适。特别是本身肠胃功能不佳的人，大量吃生蒜可能导致病情加重。一般来说，每天吃3瓣蒜就能起到保健功效。','','http://lovepinpin.com/FpPiB-zM4iDiTXTFKAoOUDx1DFyH','',0,1,0,0,0,0,0,NULL,'2020-04-29 16:26:13','2020-04-29 16:26:13','2020-04-29 16:26:13',NULL,NULL),
	(217,615836117106688,604810969612288,2,604404986150912,'舌头能反应出哪些身体状况？','舌头对于一般人来讲就是品尝美味的重要工具，但是对于医生来讲，舌头不仅仅是品尝味道的工具，也是可以反应人体健康的工具。\n\n▲健康的舌头什么颜色？\n正常健康的舌头应该是粉红色的，如果有舌头红肿可能是因为过敏或者病毒感染导致的。如果舌头出现了白斑，则可能是患有鹅口疮导致的。\n\n▲舌头颜色变白\n舌头颜色变白，有白苔，一般说明身体有一些寒症，这时候要注意自己的身体情况，按时调理。可以去看看中医，喝中药调理。\n\n▲舌苔变的比较厚\n正常情况下，我们的舌苔是薄薄的一层，不会很厚。如果发现自己的舌苔变得比较厚的时候，可能是由于肠胃功能不好，胃火过盛导致的，也可能与平时饮食油腻和吃的过多有关系。舌苔出现这种异常情况时，建议可以去检查一下肠胃。若是肠胃的确出现问题，建议调整自己的饮食和休息情况，健康饮食。\n\n另外，舌苔变的很厚，还可能是因为最近情绪不要，导致的上火。平时还是要保持良好的心情的，避免着急上火。','','http://lovepinpin.com/FvbVHAhpYT1q_4UZbJzkQCRtBQQt','',0,1,0,0,0,0,0,NULL,'2020-04-29 16:36:26','2020-04-29 16:36:26','2020-04-29 16:36:26',NULL,NULL),
	(218,616413504995328,604810969612288,2,605833264103424,'盘点育儿的八大误区','1、鼻塞、流涕、打喷嚏就是感冒。\n2、宝宝出气呼哧呼哧就是有痰。\n3、宝宝一吃就拉是腹泻，要补充益生菌。\n4、宝宝拉绿便，还夹杂着大量的奶瓣，这是消化不良的表现，要吃一些益生菌。\n5、宝宝睡觉总是动来动去，有时候还会挥挥手，踢踢脚，甚至哭几声，睡得不安稳，会影响长个，这是缺钙的表现。\n6、宝宝老是用手抓脸，有时候指甲太长会把脸抓破，所以要给他戴手套手绑起来。\n7、满月后就开始添加果汁，这样可以给宝宝补充水分和维生素。\n8、母乳6个月后就没有营养了，要断奶给宝宝吃配方奶。','','http://lovepinpin.com/FhoeRWoeTrqi1xrg9BzQYqPpjzWL','',0,1,0,0,0,0,0,NULL,'2020-04-30 11:43:36','2020-04-30 11:43:36','2020-04-30 11:43:36',NULL,NULL),
	(219,616415325323264,604810969612288,2,610792483323904,'女性月经不调怎样调理？','女性如果出现月经不调的情况下，在临床上可以口服一些中成药先给予调理。\n\n比如如果月经不规律，或者在临床上还出现了月经量少的情况，可以口服益母草胶囊进行调理，或者是口服八珍益母胶囊进行调理，都会收到相对比较好的效果。\n\n如果是经过用药以后仍然月经不正常，建议去做B超检查，比如可以通过B超检查排除子宫畸形的可能性，因为子宫的畸形也会导致月经出现不规律的现象。\n\n另外，还建议抽血检查性激素六项来了解内分泌是否异常，根据结果再相应的给予用药调理。如果是长期的焦虑或者是睡眠不足，或者是过于疲劳都可能会导致月经不调，所以建议养成良好的生活习惯。','','http://lovepinpin.com/FoPw2jmab7lm9Vnz_fFxKHn-HANG','',0,1,0,0,0,0,0,NULL,'2020-04-30 11:47:13','2020-04-30 11:47:13','2020-04-30 11:47:13',NULL,NULL),
	(220,618773941846016,604357523406848,2,604404986150912,'田园风光，精神家园','五一假期，放下手机和电脑，回到老家，感受清新的空气和温暖的阳光，心身愉悦。','','http://lovepinpin.com/Fjm3tlBl-H-3C1lvoyQikDJ_ud41','',0,1,0,0,0,3,0,NULL,'2020-05-03 17:53:22','2020-05-03 17:53:22','2020-05-03 17:53:22',NULL,NULL),
	(221,622529186103296,604810969612288,2,NULL,'夏天喝绿豆汤的好处都有哪些，消暑又解毒','在炎热的夏天里，绿豆汤是很多家庭防暑的必备饮品。其实，绿豆汤除了可以防暑以外还有其他的功效。今天，不如就来一起看看夏天喝绿豆汤的好处都有哪些，以及哪些人不宜喝绿豆汤吧。\n\n✔夏天喝绿豆汤的好处\n\n抗菌抑菌：绿豆中的某些成分直接有抑菌作用。通过抑菌试验证实，绿豆衣提取液对葡萄球菌有抑制作用。根据有关研究，绿豆所含的单宁能凝固微生物原生质，可产生抗菌活性。绿豆中的黄酮类化合物、植物甾醇等生物活性物质可能也有一定程度的抑菌抗病毒作用。\n\n降血脂：绿豆有预防及治疗作用，进而明显减轻冠状动脉病变。并能使血清胆固醇含量降低。有降低血清胆固醇的作用。\n\n解毒：绿豆中含有丰富的蛋白质，生绿豆水浸磨成的生绿豆浆蛋白含量颇高，内服可保护胃肠粘膜。绿豆蛋白、鞣质和黄酮类化合物可与有机磷农药、汞、砷、铅化合物结合形成沉淀物，使之减少或失去毒性，并不易被胃肠道吸收。绿豆中的生物活性物质不少具有抗氧化作用。\n\n✔哪些人不宜喝绿豆汤\n\n老年人儿童以及体质虚弱的人：因为绿豆中蛋白质含量比鸡肉还多，大分子蛋白质需要在酶的作用下转化为小分子肽、氨基酸才能被人体吸收。这类人的肠胃消化功能较差，很难在短时间内消化掉绿豆蛋白，容易因消化不良导致腹泻。\n\n属于寒凉体质的人：例如有四肢冰凉、腹胀、腹泻便稀等症状者，不适宜太频密饮用绿豆汤，吃了绿豆反而会加重症状，甚至引发其他疾病。\n\n正在服用各类药物的人：绿豆的解毒作用源于绿豆蛋白等成分与有机磷、重金属结合成沉淀物。然而，这些解毒成分也会分解药效，影响治疗。\n\n夏天喝绿豆汤虽然好处多，但是也要适量哦','','http://lovepinpin.com/Fqz0RMeMuTEiiwFRl8bhnf5sDo-4','',0,1,0,0,0,0,0,NULL,'2020-05-08 22:14:22','2020-05-08 22:14:22','2020-05-08 22:14:22',NULL,NULL),
	(222,622530519891968,604810969612288,2,604404986150912,'按穴位就能长高？','从中医的角度讲，穴位是养生的重要位置，按摩不同穴位可以起到增高长个的目的，那么怎么按穴位就能长高呢?下面为您介绍怎么按摩穴位可以长高，看看吧。\n\n1、点按印堂穴\n\n位置：两眉毛连线中点。\n\n方法：右手拇指用力按压约9秒，也可以心里默默地数9下。然后不松劲，接着按顺时针方向揉9次，逆时针方向揉9次，再按照顺时针方向揉9次，逆时针方向揉9次，一共36次。以下所有穴位，除率谷、风池、膝眼外，都用此方法。\n\n2、点按上星穴\n\n位置：头正中线，前发际往后1寸处。\n\n方法：右手拇指按在上星穴上，按摩方法和按摩印堂穴一样。\n\n3、点按百会穴\n\n位置：头顶正中线与二耳尖连线之交点\n\n方法：右手拇指或中指按在百会穴上，按摩方法和按摩印堂穴的方法是一样的。\n\n4、点按率谷穴\n\n位置：耳尖直上，入发际1、5寸处\n\n方法：两手拇指按在两率谷穴上，同时用力按压约9秒，或心里默数9下。然后不松劲，接着两拇指同时向前揉9次，向后揉9次，再向前揉9次，再向后揉9次，共36次。\n\n中医穴位按摩促进增高\n\n5、点按风池穴\n\n位置：颈后，枕后粗隆下，大筋外侧凹陷处。\n\n方法：两手拇指按在风池穴上，其余4指放在后头部。两拇指同时用力按压约9秒，也可以心里默数9下，然后不松劲，接着两拇指同时向外揉9次，向里揉9次，再向外揉9次，再向里揉9次，共36次。\n\n6、点按大椎穴\n\n位置：低头时，用右手摸到脖子后方最突出的一块骨头，这就是第七颈椎，该处下方的空隙处就是大椎穴。\n\n方法：右手中指按在大椎穴上，同时用力，方法同按摩印堂穴的方法是一样的。\n\n7、点按膻中穴\n\n位置：胸前正中线，两乳头连线中间。\n\n方法：右手拇指按在膻中穴上，方法和按摩印堂穴的方法是一样的。\n\n8、点按风市穴\n\n位置：大拇指外侧中线，膝上7寸处。\n\n方法：双手拇指分别按在两侧腿风市穴上，按摩方法和按摩印堂穴一样。\n\n9、点按血海穴\n\n位置：在髌骨内上缘向上2寸，股内侧肌上。\n\n方法：双手拇指分别按在两侧腿血海穴上，按摩方法和按摩印堂的方法是一样的。\n\n10、点按膝眼穴\n\n位置：在髌骨下两侧凹陷处。\n\n方法：两手拇指分别按在右腿内外膝眼穴上，两拇指同时用力，方法同点按风池穴。\n\n以上就是介绍的按穴位就能长高的简单讲解，希望对您有所帮助，祝您生活愉快。','','http://lovepinpin.com/Fi6Ymh9K-I51YrGzn3Mju_TnVKeu,http://lovepinpin.com/FoHORjZpsb5jqgYvj936ij11jW31,http://lovepinpin.com/Frb-S3tbX4PwJYFgXRE6M2zhPZns','',0,1,0,0,0,0,0,NULL,'2020-05-08 22:17:01','2020-05-08 22:17:01','2020-05-08 22:17:01',NULL,NULL),
	(223,622531794960384,604810969612288,2,605832442019840,'柠檬怎么吃美白去斑？','大家都知道柠檬具有美白的功效，但是具体的怎样利用柠檬达到祛斑的效果的呢？一起和远行君学习下吧~\n\n1、柠檬祛斑的方法\n每天早晚洗脸后，用鲜柠檬汁涂于面部各一次，一周左右可以消除雀斑。\n\n2、柠檬美白皮肤的方法\n将一个鲜柠檬洗净去皮切片，放入一只广口瓶内，加入白酒浸没柠檬，浸泡一夜。次日用消毒脱脂棉，蘸浸泡酒涂于面部，15分钟后用水洗净，一周后可见面容光滑洁白。\n\n3、柠檬润肤祛皱的方法\n取1汤匙鲜柠檬汁，放入杯中，加入鲜鸡蛋黄一个，混合搅拌均匀;再加入2汤匙燕麦粉、2汤匙橄榄油或花生油，一起搅拌均匀成糊状。每晚洗脸后敷面，形成面膜;20—30分钟后取下，用水洗净。每晚一次，连续一周后，可使干性松弛多皱的面容，变得红润光泽并且皱纹消失。\n\n4、柠檬紧缩毛孔的方法\n取1汤匙鲜柠檬汁放入杯中，加入一个鲜鸡蛋清，混合搅拌均匀;每晚洗脸后用清毒脱脂棉蘸此液涂于面部，保持15分钟后，用温水洗净，然后再扑上一层高级化妆香粉。如此可使多油易污的油性皮肤紧缩毛孔，抑制油脂过多分泌，保持清新洁嫩。\n\n5、柠檬润肤面膜\n取一汤匙鲜柠檬汁放入杯中，加入一汤匙蜂蜜及少量啤酒发酵粉，混合搅拌均匀成糊状;每晚睡前洗浴后，在面部涂敷形成面膜，15—20分钟取下，用温水洗净。如此做半月后，促进皮下肌肤血液循环，增加新陈代谢，保持滞留水分，使面容光滑细腻、红润白皙。','','http://lovepinpin.com/Fu7sFyoyczY_BeiqfDonTGgh4MSk','',0,1,0,0,0,0,0,NULL,'2020-05-08 22:19:33','2020-05-08 22:19:33','2020-05-08 22:19:33',NULL,NULL);

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_comment`;

CREATE TABLE `post_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '评论用户ID',
  `state_id` bigint(20) DEFAULT '2' COMMENT '状态ID',
  `post_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `target_id` bigint(20) DEFAULT NULL COMMENT '回复评论ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父评论ID',
  `content` mediumtext COMMENT '评论内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '父评论允许有一张图片',
  `favourite_number` int(11) DEFAULT '0' COMMENT '评论喜欢数',
  `comment_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '评论创建时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基本信息',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基本信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基本信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新操作用户，基本信息',
  PRIMARY KEY (`id`,`uid`),
  KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  KEY `FKrseby7s0wacdam0qusw9qfqp3` (`state_id`),
  KEY `FKe5gxyiun1616cmuocpgvy5448` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `post_comment` WRITE;
/*!40000 ALTER TABLE `post_comment` DISABLE KEYS */;

INSERT INTO `post_comment` (`id`, `uid`, `user_id`, `state_id`, `post_id`, `target_id`, `parent_id`, `content`, `image_url`, `favourite_number`, `comment_time`, `create_user_id`, `create_date`, `last_update_date`, `last_update_user_id`)
VALUES
	(1,604430755954688,604360484585472,2,604430227472384,NULL,NULL,'大家可以一起交流哦','',0,'2020-04-13 22:56:01',NULL,'2020-04-13 22:56:01','2020-04-13 22:56:01',NULL),
	(2,604916783513600,604354855829504,2,604436602814464,NULL,NULL,'阔以阔以~','',0,'2020-04-14 15:01:40',NULL,'2020-04-14 15:01:40','2020-04-14 15:01:40',NULL),
	(3,604924341649408,604354855829504,2,604436602814464,NULL,NULL,'传张图片','http://lovepinpin.com/banner_1.jpg',0,'2020-04-14 15:16:41',NULL,'2020-04-14 15:16:41','2020-04-14 15:16:41',NULL),
	(10,604947343212544,604357137530880,2,604436602814464,NULL,NULL,'','http://lovepinpin.com/FjCudIYZjlwWDDeIk8TdfL6LTFrI',0,'2020-04-14 16:02:23',NULL,'2020-04-14 16:02:23','2020-04-14 16:02:23',NULL),
	(11,604947485818880,604357137530880,2,604436602814464,NULL,NULL,'发图不行？','http://lovepinpin.com/FjCudIYZjlwWDDeIk8TdfL6LTFrI',0,'2020-04-14 16:02:40',NULL,'2020-04-14 16:02:40','2020-04-14 16:02:40',NULL),
	(13,604948794441728,604362413965312,2,604436602814464,NULL,NULL,'发图不行','http://lovepinpin.com/FolCVrC3-wzWWxpF0ZteuYRlCDbp',0,'2020-04-14 16:05:16',NULL,'2020-04-14 16:05:16','2020-04-14 16:05:16',NULL),
	(14,604951168417792,604354855829504,2,604436602814464,NULL,NULL,'','http://lovepinpin.com/FnQ7NS78YnWm3Eb44aFIYE99JSQu',0,'2020-04-14 16:09:59',NULL,'2020-04-14 16:09:59','2020-04-14 16:09:59',NULL),
	(15,605939606487040,604354855829504,2,605242244726784,NULL,NULL,'真是怀恋当时的自己~','http://lovepinpin.com/Fvrt1E6dwFWV2tpwXKH5nOWOXCFw',1,'2020-04-16 00:53:50',NULL,'2020-04-16 00:53:50','2020-04-16 00:53:50',NULL),
	(16,606316607307776,604357137530880,2,604436602814464,NULL,NULL,'666','',0,'2020-04-16 13:22:52',NULL,'2020-04-16 13:22:52','2020-04-16 13:22:52',NULL),
	(17,606323544686592,604357137530880,2,604436602814464,NULL,NULL,'66','',0,'2020-04-16 13:36:39',NULL,'2020-04-16 13:36:39','2020-04-16 13:36:39',NULL),
	(18,606325063024640,604357137530880,2,604436602814464,NULL,NULL,'怎么回事小老弟','',0,'2020-04-16 13:39:40',NULL,'2020-04-16 13:39:40','2020-04-16 13:39:40',NULL),
	(19,606327101456384,604357137530880,2,604430227472384,NULL,NULL,'还不错','',0,'2020-04-16 13:43:43',NULL,'2020-04-16 13:43:43','2020-04-16 13:43:43',NULL),
	(20,608648279621632,604357523406848,2,605242244726784,NULL,NULL,'小哥哥好帅٩(๑´3｀๑)۶','',0,'2020-04-19 18:35:29',NULL,'2020-04-19 18:35:29','2020-04-19 18:35:29',NULL),
	(21,608648875212800,604357523406848,2,606442201546752,NULL,NULL,'这个有点酷啊','',0,'2020-04-19 18:36:40',NULL,'2020-04-19 18:36:40','2020-04-19 18:36:40',NULL),
	(22,609382333153280,604810969612288,2,609170420137984,NULL,NULL,'平时经常性胃疼的一定要收藏一下(亲亲)','',0,'2020-04-20 18:53:55',NULL,'2020-04-20 18:53:55','2020-04-20 18:53:55',NULL),
	(28,615723709759488,604362413965312,2,605242244726784,605939606487040,605939606487040,'我也是',NULL,0,'2020-04-29 12:53:06',NULL,'2020-04-29 12:53:06','2020-04-29 12:53:06',NULL),
	(29,615723776868352,604362413965312,2,605242244726784,615723709759488,605939606487040,'哈哈哈',NULL,0,'2020-04-29 12:53:14',NULL,'2020-04-29 12:53:14','2020-04-29 12:53:14',NULL),
	(30,622370951790592,611408408477696,2,605242244726784,615723709759488,605939606487040,'123',NULL,0,'2020-05-08 16:59:59',NULL,'2020-05-08 16:59:59','2020-05-08 16:59:59',NULL),
	(31,647498590846976,605909516550144,2,604434841206784,NULL,NULL,'','',0,'2020-06-12 09:04:07',NULL,'2020-06-12 09:04:07','2020-06-12 09:04:07',NULL);

/*!40000 ALTER TABLE `post_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_hot_word
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_hot_word`;

CREATE TABLE `post_hot_word` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `hot_word` varchar(255) DEFAULT NULL COMMENT '热词',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者Id',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新的UserId',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新的日期',
  `is_active` bit(1) DEFAULT b'1' COMMENT '是否有效',
  `note` varchar(150) DEFAULT NULL COMMENT '备注，为啥添加该热词',
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '热词生效时间',
  `end_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '热词结束时间',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `post_hot_word` WRITE;
/*!40000 ALTER TABLE `post_hot_word` DISABLE KEYS */;

INSERT INTO `post_hot_word` (`id`, `uid`, `hot_word`, `create_user_id`, `create_date`, `last_update_user_id`, `last_update_date`, `is_active`, `note`, `start_date`, `end_date`)
VALUES
	(69,1,'减肥',NULL,'2020-04-10 20:25:30',NULL,'2020-04-10 20:25:30',b'1',NULL,'2020-04-10 20:25:30','2020-04-10 20:25:30'),
	(70,2,'增肌',NULL,'2020-04-10 20:25:30',NULL,'2020-04-10 20:25:30',b'1',NULL,'2020-04-10 20:25:30','2020-04-10 20:25:30'),
	(71,3,'营养餐',NULL,'2020-04-10 20:25:30',NULL,'2020-04-10 20:25:30',b'1',NULL,'2020-04-10 20:25:30','2020-04-10 20:25:30'),
	(72,4,'新冠肺炎',NULL,'2020-04-10 20:25:30',NULL,'2020-04-10 20:25:30',b'1',NULL,'2020-04-10 20:25:30','2020-04-10 20:25:30');

/*!40000 ALTER TABLE `post_hot_word` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipe
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipe`;

CREATE TABLE `recipe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `title` varchar(20) NOT NULL COMMENT '食谱名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '食谱描述',
  `img` varchar(255) DEFAULT NULL COMMENT '食谱图片',
  `breakfast_note` text COMMENT '早餐备注',
  `lunch_note` text COMMENT '午餐备注',
  `dinner_note` text COMMENT '晚餐备注',
  `assessment` text COMMENT '评测文案',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;

INSERT INTO `recipe` (`id`, `uid`, `title`, `desc`, `img`, `breakfast_note`, `lunch_note`, `dinner_note`, `assessment`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,411670405552713,'全营养套餐','全营养套餐','http://lovepinpin.com/1585559451150',NULL,NULL,'尽量以米饭和粗粮为主，蔬菜和肉类不限','根据你的基础个人信息，你目前偏瘦，建议通过饮食、运动调整，将体重控制在健康的范围内。您目前自身代谢过快造成的，身体的支出大于摄入，体重增长困难。过低的体脂会影响肌肉的生长，建议您首要目标是增重，解决这种现状最好方法是多食多餐、高热量高碳水。',0,'2020-02-21 00:39:25','2020-03-30 17:35:28',NULL,NULL),
	(2,739054855209157,'均衡营养套餐','均衡营养套餐','http://lovepinpin.com/1585559405501','首选红薯、全麦面包、麦片','蔬菜和肉要注意少油少盐，尽量杜绝肥肉','蔬菜和肉要注意少油少盐，晚餐的肉尽量以鱼、海鲜、去皮鸡肉为主','根据你的基础个人信息，你的健康状态很好。建议将体重继续控制在健康范围内，可以通过平衡饮食营养，丰富食物种类，最大化满足身体营养所需。每周适当运动，以保持良好的生理机能状态，帮助代谢，提升活力。',0,'2020-02-21 00:40:48','2020-03-30 17:18:50',NULL,NULL),
	(3,669246171227159,'轻减脂营养套餐','轻减脂营养套餐','http://lovepinpin.com/1585559499864',NULL,'主食以土豆、红薯、米饭首选，青菜后肉水煮，少放一些盐。餐后1小时补充一份水果','主食以土豆、红薯、米饭首选，青菜后肉水煮，少放一些盐','根据你的基础个人信息，你目前超出了正常体重范围，建议通过饮食、运动调整，将体重控制在健康的范围内。减脂期间，控制热量的摄入是关键，需要严格的控制饮食，搭配有效运动。',0,'2020-02-21 00:41:16','2020-03-30 17:38:22',NULL,NULL),
	(4,19731443975911,'减脂营养套餐','减脂营养套餐','http://lovepinpin.com/1585559309272',NULL,NULL,NULL,'根据你的基础个人信息，你目前超出了正常体重范围，建议通过饮食、运动调整，将体重控制在健康的范围内。减脂期间，控制热量的摄入是关键，需要严格的控制饮食，搭配有效运动。',0,'2020-02-21 00:41:40','2020-03-30 17:18:58',NULL,NULL);

/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipe_goods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipe_goods`;

CREATE TABLE `recipe_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `title` varchar(20) NOT NULL COMMENT '食谱名称',
  `img` varchar(255) DEFAULT NULL COMMENT '食谱商品图片',
  `goods_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '对应商城商品uid',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `recipe_goods` WRITE;
/*!40000 ALTER TABLE `recipe_goods` DISABLE KEYS */;

INSERT INTO `recipe_goods` (`id`, `uid`, `title`, `img`, `goods_uid`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,158739957388857,'鸡蛋','http://lovepinpin.com/1585559738129',0,0,'2020-02-21 01:01:45','2020-03-30 17:15:45',NULL,NULL),
	(2,923525842063702,'米饭','http://lovepinpin.com/1585559785220',0,0,'2020-02-21 01:01:57','2020-03-30 17:16:35',NULL,NULL),
	(3,696699305185353,'牛奶','http://lovepinpin.com/1585559754532',0,0,'2020-02-21 01:02:05','2020-03-30 17:16:17',NULL,NULL),
	(4,752075424398629,'蔬菜','http://lovepinpin.com/1585559812809',0,0,'2020-02-21 01:02:14','2020-03-30 17:16:58',NULL,NULL),
	(5,47344877830291,'肉类','http://lovepinpin.com/1585559825670',0,0,'2020-02-21 01:02:25','2020-03-30 17:17:11',NULL,NULL),
	(6,24324238159811375,'主食','http://lovepinpin.com/1585559687466',0,0,'2020-03-09 14:10:48','2020-04-24 15:52:07',NULL,NULL),
	(7,24324238159811376,'馒头或面包','http://lovepinpin.com/1585559687466',0,0,'2020-03-30 17:24:15','2020-03-30 17:29:24',NULL,NULL),
	(8,24324238159811377,'花生酱','http://lovepinpin.com/1585561345273',0,0,'2020-03-30 17:41:36','2020-03-30 17:42:31',NULL,NULL),
	(9,24324238159811378,'新鲜酸奶','http://lovepinpin.com/1585561498913',0,0,'2020-03-30 17:41:36','2020-03-30 17:45:03',NULL,NULL),
	(10,243242381598113789,'西红柿','http://lovepinpin.com/1585561512126',0,0,'2020-03-30 17:41:36','2020-03-30 17:45:26',NULL,NULL),
	(11,243242381598113790,'红枣粟米粥','http://lovepinpin.com/1585561538422',0,0,'2020-03-30 17:41:36','2020-03-30 17:45:48',NULL,NULL),
	(12,243242381598113791,'鸡肉三明治','http://lovepinpin.com/1585561555239',0,0,'2020-03-30 17:41:36','2020-03-30 17:46:04',NULL,NULL),
	(13,243242381598113792,'清淡水煮菜/生菜沙拉','http://lovepinpin.com/1585561578341',0,0,'2020-03-30 17:41:36','2020-03-30 17:46:27',NULL,NULL),
	(14,243242381598113793,'花草茶','http://lovepinpin.com/1585561594788',0,0,'2020-03-30 17:41:36','2020-03-30 17:46:39',NULL,NULL);

/*!40000 ALTER TABLE `recipe_goods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipe_goods_specification_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipe_goods_specification_relation`;

CREATE TABLE `recipe_goods_specification_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `recipe_uid` bigint(20) DEFAULT NULL COMMENT '食谱uid',
  `recipe_goods_uid` bigint(20) DEFAULT NULL COMMENT '食谱商品uid',
  `specification_uid` bigint(20) DEFAULT NULL COMMENT '食谱商品规格uid',
  `type` tinyint(1) DEFAULT '0' COMMENT '食谱分类：0早餐1午餐2晚餐',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `recipe_goods_specification_relation` WRITE;
/*!40000 ALTER TABLE `recipe_goods_specification_relation` DISABLE KEYS */;

INSERT INTO `recipe_goods_specification_relation` (`id`, `uid`, `recipe_uid`, `recipe_goods_uid`, `specification_uid`, `type`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,775885144229132,739054855209157,158739957388857,1234348919853,0,0,'2020-02-21 00:55:00','2020-03-09 14:32:32',NULL,NULL),
	(2,775885144229133,739054855209157,696699305185353,4358724359724358,0,0,'2020-02-21 00:55:00','2020-03-09 14:32:54',NULL,NULL),
	(3,775885144229134,739054855209157,24324238159811375,579488108228683,0,0,'2020-03-09 14:33:07','2020-03-09 14:33:30',NULL,NULL),
	(4,775885144229135,739054855209157,24324238159811375,1234348919856,1,0,'2020-03-09 14:33:07','2020-03-09 14:34:40',NULL,NULL),
	(5,775885144229136,739054855209157,752075424398629,24543524184529,1,0,'2020-03-09 14:33:07','2020-03-09 14:34:50',NULL,NULL),
	(6,775885144229137,739054855209157,47344877830291,1234348919856,1,0,'2020-03-09 14:33:07','2020-03-09 14:35:18',NULL,NULL),
	(7,775885144229138,739054855209157,24324238159811375,1234348919856,2,0,'2020-03-09 14:33:07','2020-03-09 14:35:38',NULL,NULL),
	(8,775885144229139,739054855209157,752075424398629,24543524184529,2,0,'2020-03-09 14:33:07','2020-03-09 14:36:04',NULL,NULL),
	(9,775885144229144,739054855209157,47344877830291,1234348919856,2,0,'2020-03-09 14:33:07','2020-03-09 14:35:18',NULL,NULL),
	(10,775885144229145,411670405552713,158739957388857,1234348919857,0,0,'2020-03-30 17:22:36','2020-03-30 17:23:02',NULL,NULL),
	(11,775885144229146,411670405552713,696699305185353,4358724359724358,0,0,'2020-03-30 17:22:36','2020-03-30 17:23:43',NULL,NULL),
	(12,775885144229147,411670405552713,24324238159811376,1234348919856,0,0,'2020-03-30 17:22:36','2020-03-30 17:24:44',NULL,NULL),
	(13,775885144229148,411670405552713,24324238159811375,52345982480143,1,0,'2020-03-30 17:22:36','2020-03-30 17:28:08',NULL,NULL),
	(14,775885144229149,411670405552713,752075424398629,24543524184529,1,0,'2020-03-30 17:22:36','2020-03-30 17:31:52',NULL,NULL),
	(15,775885144229150,411670405552713,47344877830291,673761588185907,1,0,'2020-03-30 17:22:36','2020-03-30 17:33:48',NULL,NULL),
	(16,775885144229151,411670405552713,24324238159811375,52345982480143,2,0,'2020-03-30 17:22:36','2020-03-30 17:36:45',NULL,NULL),
	(17,775885144229152,411670405552713,752075424398629,24543524184529,2,0,'2020-03-30 17:22:36','2020-03-30 17:37:06',NULL,NULL),
	(18,775885144229153,411670405552713,47344877830291,673761588185907,2,0,'2020-03-30 17:22:36','2020-03-30 17:36:13',NULL,NULL),
	(19,775885144229154,669246171227159,158739957388857,1234348919857,0,0,'2020-03-30 17:38:47','2020-03-30 17:40:33',NULL,NULL),
	(20,775885144229155,669246171227159,24324238159811375,1234348919858,0,0,'2020-03-30 17:38:47','2020-03-30 17:41:17',NULL,NULL),
	(21,775885144229156,669246171227159,24324238159811377,1234348919859,0,0,'2020-03-30 17:38:47','2020-03-30 17:48:20',NULL,NULL),
	(22,775885144229157,669246171227159,24324238159811375,1234348919856,1,0,'2020-03-30 17:38:47','2020-03-30 17:48:43',NULL,NULL),
	(23,775885144229158,669246171227159,752075424398629,52345982480143,1,0,'2020-03-30 17:38:47','2020-03-30 17:48:57',NULL,NULL),
	(24,775885144229159,669246171227159,47344877830291,1234348919860,1,0,'2020-03-30 17:38:47','2020-03-30 17:49:28',NULL,NULL),
	(25,775885144229160,669246171227159,24324238159811375,579488108228683,2,0,'2020-03-30 17:38:47','2020-03-30 17:49:47',NULL,NULL),
	(26,775885144229161,669246171227159,752075424398629,52345982480143,2,0,'2020-03-30 17:38:47','2020-03-30 17:50:06',NULL,NULL),
	(27,775885144229162,669246171227159,47344877830291,1234348919860,2,0,'2020-03-30 17:38:47','2020-03-30 17:52:03',NULL,NULL),
	(28,775885144229163,19731443975911,24324238159811378,1234348919853,0,0,'2020-03-30 17:38:47','2020-03-30 17:56:26',NULL,NULL),
	(29,775885144229164,19731443975911,24324238159811376,1234348919861,0,0,'2020-03-30 17:38:47','2020-03-30 17:57:11',NULL,NULL),
	(30,775885144229165,19731443975911,243242381598113789,1234348919853,0,0,'2020-03-30 17:38:47','2020-03-30 17:56:32',NULL,NULL),
	(31,775885144229166,19731443975911,243242381598113790,1234348919853,1,0,'2020-03-30 17:38:47','2020-03-30 17:56:38',NULL,NULL),
	(32,775885144229167,19731443975911,243242381598113791,1234348919853,1,0,'2020-03-30 17:38:47','2020-03-30 17:56:42',NULL,NULL),
	(34,775885144229169,19731443975911,243242381598113792,1234348919853,2,0,'2020-03-30 17:38:47','2020-03-30 17:56:48',NULL,NULL),
	(35,775885144229170,19731443975911,243242381598113793,1234348919853,2,0,'2020-03-30 17:38:47','2020-03-30 17:56:50',NULL,NULL),
	(36,775885144229171,19731443975911,NULL,NULL,2,1,'2020-03-30 17:38:47','2020-03-30 17:55:08',NULL,NULL);

/*!40000 ALTER TABLE `recipe_goods_specification_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table recipe_specification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recipe_specification`;

CREATE TABLE `recipe_specification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `specification` varchar(255) DEFAULT NULL COMMENT '食谱商品规格',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `recipe_specification` WRITE;
/*!40000 ALTER TABLE `recipe_specification` DISABLE KEYS */;

INSERT INTO `recipe_specification` (`id`, `uid`, `specification`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,47528582780399,'适量',0,'2020-02-21 00:50:23','2020-02-21 00:50:31',NULL,NULL),
	(2,579488108228683,'50g',0,'2020-02-21 00:50:41','2020-02-21 00:50:45',NULL,NULL),
	(3,673761588185907,'150g~200g',0,'2020-02-21 00:51:10','2020-02-21 00:51:34',NULL,NULL),
	(4,435345349928913,'2个',0,'2020-03-09 14:12:08','2020-03-09 14:12:13',NULL,NULL),
	(5,24543524184529,'不限',0,'2020-03-09 14:12:30','2020-03-09 14:12:35',NULL,NULL),
	(6,4358724359724358,'250ml',0,'2020-03-09 14:12:56','2020-03-09 14:13:08',NULL,NULL),
	(7,52345982480143,'200g',0,'2020-03-09 14:13:23','2020-03-09 14:13:23',NULL,NULL),
	(8,1234348919853,'1个',0,'2020-03-09 14:32:25','2020-03-09 14:32:25',NULL,NULL),
	(9,1234348919856,'100g',0,'2020-03-09 14:34:03','2020-03-09 14:34:09',NULL,NULL),
	(10,1234348919857,'2个(蛋清)',0,'2020-03-30 17:21:18','2020-03-30 17:21:30',NULL,NULL),
	(11,1234348919858,'全麦面包2片或麦片50克',0,'2020-03-30 17:41:01','2020-03-30 17:41:06',NULL,NULL),
	(12,1234348919859,'5克',0,'2020-03-30 17:48:02','2020-03-30 17:48:15',NULL,NULL),
	(13,1234348919860,'150g',0,'2020-03-30 17:49:19','2020-03-30 17:49:23',NULL,NULL),
	(14,1234348919861,'2片',0,'2020-03-30 17:57:03','2020-03-30 17:57:06',NULL,NULL);

/*!40000 ALTER TABLE `recipe_specification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table specification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `specification`;

CREATE TABLE `specification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `specification` varchar(255) DEFAULT NULL COMMENT '规格',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `specification` WRITE;
/*!40000 ALTER TABLE `specification` DISABLE KEYS */;

INSERT INTO `specification` (`id`, `uid`, `specification`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(2,13123,'半斤装',0,'2020-02-20 22:05:07','2020-02-20 22:14:31',NULL,NULL),
	(3,123123,'1斤装',0,'2020-02-20 22:05:16','2020-02-20 22:14:32',NULL,NULL),
	(4,1124124,'3斤装',0,'2020-02-20 22:05:31','2020-02-20 22:14:34',NULL,NULL),
	(5,13213221312321,'500克',0,'2020-02-20 21:58:21','2020-02-20 22:09:15',NULL,NULL),
	(6,41412412,'1个',0,'2020-02-20 22:05:43','2020-02-20 22:09:28',NULL,NULL),
	(7,12312321,'2个',0,'2020-02-20 22:10:22','2020-02-20 22:10:22',NULL,NULL),
	(8,124124134,'500ml',0,'2020-02-21 00:21:38','2020-02-21 00:28:31',NULL,NULL),
	(9,124124135,'1份',0,'2020-03-13 14:58:08','2020-03-13 14:58:20',NULL,NULL),
	(10,124124136,'2份',0,'2020-03-13 14:58:08','2020-03-13 14:58:26',NULL,NULL),
	(11,124124137,'3份',0,'2020-03-13 14:58:08','2020-03-13 14:58:33',NULL,NULL),
	(12,595540442087424,'2斤装',0,'2020-04-01 16:32:33','2020-04-01 16:32:33',NULL,NULL),
	(13,601638599393280,'斤装',0,'2020-04-10 02:28:30','2020-04-10 02:28:30',NULL,NULL),
	(14,601640906260480,'T半斤装',0,'2020-04-10 02:33:05','2020-04-10 02:33:05',NULL,NULL),
	(15,601641552183296,'测试半斤装',0,'2020-04-10 02:34:22','2020-04-10 02:34:22',NULL,NULL),
	(16,601923333914625,'一斤',0,'2020-04-10 11:54:13','2020-04-10 11:54:13',NULL,NULL),
	(17,601924231495681,'1斤',0,'2020-04-10 11:56:00','2020-04-10 11:56:00',NULL,NULL),
	(18,601924751589378,'5斤',0,'2020-04-10 11:57:02','2020-04-10 11:57:02',NULL,NULL),
	(19,602013536616448,'1kg',0,'2020-04-10 14:53:26','2020-04-10 14:53:26',NULL,NULL),
	(20,602015549882368,'53%vol贵州茅台（精品）',0,'2020-04-10 14:57:26','2020-04-10 14:57:26',NULL,NULL),
	(21,602020155228161,'1盒(50只)',0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(22,602020155228163,'2盒(100只)',0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(23,602020155228165,'3盒(150只)',0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(24,602020155228167,'4盒(200只)',0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(25,602020155228169,'5盒(250只)',0,'2020-04-10 15:06:35','2020-04-10 15:06:35',NULL,NULL),
	(26,602031395962881,'9斤装',0,'2020-04-10 15:28:55','2020-04-10 15:28:55',NULL,NULL),
	(27,602043030962176,'4斤装',0,'2020-04-10 15:52:02','2020-04-10 15:52:02',NULL,NULL),
	(28,611398535086080,'一斤装',0,'2020-04-23 13:39:45','2020-04-23 13:39:45',NULL,NULL),
	(29,611398535086082,'',0,'2020-04-23 13:39:45','2020-04-23 13:39:45',NULL,NULL),
	(30,615780601298944,'测试',0,'2020-04-29 14:46:08','2020-04-29 14:46:08',NULL,NULL),
	(31,636793351307265,'周一',0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(32,636793351307267,'周二',0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(33,636793351307269,'周三',0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(34,636793351307271,'周四',0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL),
	(35,636793351307273,'周五',0,'2020-05-28 14:34:43','2020-05-28 14:34:43',NULL,NULL);

/*!40000 ALTER TABLE `specification` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '状态ID',
  `description` varchar(255) DEFAULT NULL COMMENT '状态描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;

INSERT INTO `state` (`id`, `description`)
VALUES
	(1,'待审核'),
	(2,'已通过'),
	(3,'未通过'),
	(4,'已删除');

/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_message`;

CREATE TABLE `system_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `from_user_id` bigint(20) DEFAULT NULL COMMENT '消息触发的对象',
  `target_user_id` bigint(20) DEFAULT NULL COMMENT '消息接收者Uid',
  `message` varchar(255) DEFAULT NULL COMMENT '系统内消息内容',
  `title` varchar(100) DEFAULT NULL COMMENT '系统内消息标题',
  `type` int(11) DEFAULT NULL COMMENT '消息种类：1帖子：2拼餐：3主页：4礼物',
  `action` int(11) DEFAULT NULL COMMENT '消息的具体类型：比较复杂，现在还没启用',
  `target_id` bigint(20) DEFAULT NULL COMMENT '帖子Id或者拼餐Id',
  `has_read` bit(1) DEFAULT b'0' COMMENT '是否阅读的标记：0：未读；1：已读',
  `send_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '消息发送时间',
  `is_active` bit(1) DEFAULT b'1' COMMENT '消息是否被删除',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `system_message` WRITE;
/*!40000 ALTER TABLE `system_message` DISABLE KEYS */;

INSERT INTO `system_message` (`id`, `uid`, `from_user_id`, `target_user_id`, `message`, `title`, `type`, `action`, `target_id`, `has_read`, `send_time`, `is_active`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(1,604430638514177,604360484585472,604360484585472,'远行健康点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','远行健康点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-04-13 22:55:47',b'1',NULL,'2020-04-13 22:55:47',NULL,'2020-04-13 22:55:47'),
	(2,604430764343296,604360484585472,604360484585472,'大家可以一起交流哦','远行健康评论了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,51,604430227472384,b'0','2020-04-13 22:56:02',b'1',NULL,'2020-04-13 22:56:02',NULL,'2020-04-13 22:56:02'),
	(3,604656459841537,604651502174208,604360484585472,'男/','游客9292关注了你！',3,70,604651502174208,b'0','2020-04-14 06:24:27',b'1',NULL,'2020-04-14 06:24:27',NULL,'2020-04-14 06:24:27'),
	(4,604775460634625,604357523406848,604360484585472,'','苏会钰 Harris关注了你！',3,70,604357523406848,b'0','2020-04-14 10:20:53',b'1',NULL,'2020-04-14 10:20:53',NULL,'2020-04-14 10:20:53'),
	(5,604780888064000,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','苏会钰 Harris点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-04-14 10:31:40',b'1',NULL,'2020-04-14 10:31:40',NULL,'2020-04-14 10:31:40'),
	(6,604916783513602,604354855829504,604360484585472,'阔以阔以~','慕一春评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 15:01:40',b'1',NULL,'2020-04-14 15:01:40',NULL,'2020-04-14 15:01:40'),
	(7,604924341649410,604354855829504,604360484585472,'传张图片','慕一春评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 15:16:41',b'1',NULL,'2020-04-14 15:16:41',NULL,'2020-04-14 15:16:41'),
	(8,604947343212546,604357137530880,604360484585472,'','游客8271评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 16:02:23',b'1',NULL,'2020-04-14 16:02:23',NULL,'2020-04-14 16:02:23'),
	(9,604947485818882,604357137530880,604360484585472,'发图不行？','游客8271评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 16:02:40',b'1',NULL,'2020-04-14 16:02:40',NULL,'2020-04-14 16:02:40'),
	(10,604948794441730,604362413965312,604360484585472,'发图不行','落花影中游评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 16:05:16',b'1',NULL,'2020-04-14 16:05:16',NULL,'2020-04-14 16:05:16'),
	(11,604951168417794,604354855829504,604360484585472,'','慕一春评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-14 16:09:59',b'1',NULL,'2020-04-14 16:09:59',NULL,'2020-04-14 16:09:59'),
	(12,605088808697857,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:男生改造丨挫男变型男的秘诀?','苏会钰 Harris点赞了你的帖子:男生改造丨挫男变型男的秘诀?',1,52,604434841206784,b'0','2020-04-14 20:43:27',b'1',NULL,'2020-04-14 20:43:27',NULL,'2020-04-14 20:43:27'),
	(13,605088833863681,604357523406848,604357137530880,'苏会钰 Harris点赞了你的帖子:平心静气的进行生活','苏会钰 Harris点赞了你的帖子:平心静气的进行生活',1,52,605059347906560,b'0','2020-04-14 20:43:30',b'1',NULL,'2020-04-14 20:43:30',NULL,'2020-04-14 20:43:30'),
	(14,605495018651649,604354855829504,604360484585472,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-04-15 10:10:31',b'1',NULL,'2020-04-15 10:10:31',NULL,'2020-04-15 10:10:31'),
	(15,605516325715970,604360484585472,605515210031104,'给大家普及两个日常误区：一个是不要以为防晒只是夏天才要做的，第二是不要以为防晒只是小姐姐要做的哦。','远行健康评论了你的问答:防晒该如何选择呢？',5,61,605515629461504,b'0','2020-04-15 10:52:51',b'1',NULL,'2020-04-15 10:52:51',NULL,'2020-04-15 10:52:51'),
	(16,605518758412290,604360484585472,605515210031104,'一般来说，中药材最好是趁早食用，一旦药材质量下降，药效降低，有时非但起不到保健养生作用，还会影响身体健康。目前，中医药界比较普遍的看法是，中草药在保质期内，且采用了适当的保存方法，才能真正保质 。一旦中草药质量下降，药效降低，起不到治病救人的作用，自然无法保值增值 ，收藏也毫无价值。\n','远行健康评论了你的问答:中药会过期吗？',5,61,605518053769216,b'0','2020-04-15 10:57:41',b'1',NULL,'2020-04-15 10:57:41',NULL,'2020-04-15 10:57:41'),
	(17,605518884241410,604360484585472,605515210031104,'▲如何辨中药材是否过期？\n\n☞观其形：外形失去固定形状者，如原为粉末状或颗粒状，现黏成一团或潮解成糊状，或胶囊变扁成凹凸不平，手感潮湿粘手等都是变质的表现。\n\n☞观其色：片剂、胶囊、糖衣片、水剂、糖浆变色等是变质的表现。\n\n☞闻其香：中成药都有其特有的气味，若有酸败发霉的气味，也是变质的结果。含有西药成分的中成药其保质期应按照西药执行，通常不应超过3年。\n\n虽然说很多中草药都是经过炮制并且晒干、烘干了的，但是按照上面的内容来看，朋友们还是不要做 囤药族 了，最好的方法就是中药材用多少、配多少。','远行健康评论了你的问答:中药会过期吗？',5,61,605518053769216,b'0','2020-04-15 10:57:56',b'1',NULL,'2020-04-15 10:57:56',NULL,'2020-04-15 10:57:56'),
	(18,605834983768065,604360484585472,604360484585472,'远行健康点赞了你的帖子:看绿色真的可以保护视力吗?','远行健康点赞了你的帖子:看绿色真的可以保护视力吗?',1,52,605535091032064,b'0','2020-04-15 21:25:58',b'1',NULL,'2020-04-15 21:25:58',NULL,'2020-04-15 21:25:58'),
	(19,605939606487042,604354855829504,604354855829504,'真是怀恋当时的自己~','慕一春评论了你的帖子:年前卷腹',1,51,605242244726784,b'0','2020-04-16 00:53:50',b'1',NULL,'2020-04-16 00:53:50',NULL,'2020-04-16 00:53:50'),
	(20,606316481478656,604357137530880,604360484585472,'游客8271点赞了你的帖子:新手如何练习腹肌？','游客8271点赞了你的帖子:新手如何练习腹肌？',1,52,604436602814464,b'0','2020-04-16 13:22:37',b'1',NULL,'2020-04-16 13:22:37',NULL,'2020-04-16 13:22:37'),
	(21,606316481478658,604357137530880,604360484585472,'游客8271点赞了你的帖子:新手如何练习腹肌？','游客8271点赞了你的帖子:新手如何练习腹肌？',1,52,604436602814464,b'0','2020-04-16 13:22:37',b'1',NULL,'2020-04-16 13:22:37',NULL,'2020-04-16 13:22:37'),
	(22,606316607307778,604357137530880,604360484585472,'666','游客8271评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-16 13:22:52',b'1',NULL,'2020-04-16 13:22:52',NULL,'2020-04-16 13:22:52'),
	(23,606322991038465,604357137530880,604360484585472,'游客8271点赞了你的帖子:新手如何练习腹肌？','游客8271点赞了你的帖子:新手如何练习腹肌？',1,52,604436602814464,b'0','2020-04-16 13:35:33',b'1',NULL,'2020-04-16 13:35:33',NULL,'2020-04-16 13:35:33'),
	(24,606323544686594,604357137530880,604360484585472,'66','游客8271评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-16 13:36:39',b'1',NULL,'2020-04-16 13:36:39',NULL,'2020-04-16 13:36:39'),
	(25,606325063024642,604357137530880,604360484585472,'怎么回事小老弟','游客8271评论了你的帖子:新手如何练习腹肌？',1,51,604436602814464,b'0','2020-04-16 13:39:40',b'1',NULL,'2020-04-16 13:39:40',NULL,'2020-04-16 13:39:40'),
	(26,606327051124737,604357137530880,604360484585472,'游客8271点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','游客8271点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-04-16 13:43:37',b'1',NULL,'2020-04-16 13:43:37',NULL,'2020-04-16 13:43:37'),
	(27,606327101456386,604357137530880,604360484585472,'还不错','游客8271评论了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,51,604430227472384,b'0','2020-04-16 13:43:43',b'1',NULL,'2020-04-16 13:43:43',NULL,'2020-04-16 13:43:43'),
	(28,606443124293633,605690674544640,604360484585472,'','金鸿明13104550061关注了你！',3,70,605690674544640,b'0','2020-04-16 17:34:14',b'1',NULL,'2020-04-16 17:34:14',NULL,'2020-04-16 17:34:14'),
	(29,606491753054208,604360484585472,604360484585472,'远行健康点赞了你的帖子:新手如何练习腹肌？','远行健康点赞了你的帖子:新手如何练习腹肌？',1,52,604436602814464,b'0','2020-04-16 19:10:51',b'1',NULL,'2020-04-16 19:10:51',NULL,'2020-04-16 19:10:51'),
	(30,606493388832769,604354855829504,604360484585472,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-04-16 19:14:06',b'1',NULL,'2020-04-16 19:14:06',NULL,'2020-04-16 19:14:06'),
	(31,606656941522945,606654508826624,604360484585472,'现实的理想主义者点赞了你的帖子:有的人唱歌跑调，这是为什么？','现实的理想主义者点赞了你的帖子:有的人唱歌跑调，这是为什么？',1,52,605546499538944,b'0','2020-04-17 00:39:03',b'1',NULL,'2020-04-17 00:39:03',NULL,'2020-04-17 00:39:03'),
	(32,606656966688768,606654508826624,604360484585472,'现实的理想主义者点赞了你的帖子:拥抱原来有这么大的好处？','现实的理想主义者点赞了你的帖子:拥抱原来有这么大的好处？',1,52,605546625368064,b'0','2020-04-17 00:39:06',b'1',NULL,'2020-04-17 00:39:06',NULL,'2020-04-17 00:39:06'),
	(33,608648170569729,604357523406848,604354855829504,'','苏会钰 Harris关注了你！',3,70,604357523406848,b'0','2020-04-19 18:35:16',b'1',NULL,'2020-04-19 18:35:16',NULL,'2020-04-19 18:35:16'),
	(34,608648288010240,604357523406848,604354855829504,'小哥哥好帅٩(๑´3｀๑)۶','苏会钰 Harris评论了你的帖子:年前卷腹',1,51,605242244726784,b'0','2020-04-19 18:35:30',b'1',NULL,'2020-04-19 18:35:30',NULL,'2020-04-19 18:35:30'),
	(35,608648338341888,604357523406848,604354855829504,'苏会钰 Harris点赞了你在年前卷腹里评论','苏会钰 Harris点赞了你在年前卷腹里评论',1,53,605939606487040,b'0','2020-04-19 18:35:36',b'1',NULL,'2020-04-19 18:35:36',NULL,'2020-04-19 18:35:36'),
	(36,608648464171009,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:新手如何练习腹肌？','苏会钰 Harris点赞了你的帖子:新手如何练习腹肌？',1,52,604436602814464,b'0','2020-04-19 18:35:51',b'1',NULL,'2020-04-19 18:35:51',NULL,'2020-04-19 18:35:51'),
	(37,608648581611521,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:拥抱原来有这么大的好处？','苏会钰 Harris点赞了你的帖子:拥抱原来有这么大的好处？',1,52,605546625368064,b'0','2020-04-19 18:36:05',b'1',NULL,'2020-04-19 18:36:05',NULL,'2020-04-19 18:36:05'),
	(38,608648875212802,604357523406848,605690674544640,'这个有点酷啊','苏会钰 Harris评论了你的帖子:运动风',1,51,606442201546752,b'0','2020-04-19 18:36:40',b'1',NULL,'2020-04-19 18:36:40',NULL,'2020-04-19 18:36:40'),
	(39,608649412083713,604357523406848,604360484585472,'苏会钰 Harris点赞了你在null里评论','苏会钰 Harris点赞了你在null里评论',1,63,605518758412288,b'0','2020-04-19 18:37:44',b'1',NULL,'2020-04-19 18:37:44',NULL,'2020-04-19 18:37:44'),
	(40,608649462415361,604357523406848,604360484585472,'涨知识啦！','苏会钰 Harris回复了你在中药会过期吗？里的评论',1,60,605518053769216,b'0','2020-04-19 18:37:50',b'1',NULL,'2020-04-19 18:37:50',NULL,'2020-04-19 18:37:50'),
	(41,608650242555905,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:男性裸睡更健康是真的吗？','苏会钰 Harris点赞了你的帖子:男性裸睡更健康是真的吗？',1,52,605542129074176,b'0','2020-04-19 18:39:23',b'1',NULL,'2020-04-19 18:39:23',NULL,'2020-04-19 18:39:23'),
	(42,608650267721729,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:男性裸睡更健康是真的吗？','苏会钰 Harris点赞了你的帖子:男性裸睡更健康是真的吗？',1,52,605542129074176,b'0','2020-04-19 18:39:26',b'1',NULL,'2020-04-19 18:39:26',NULL,'2020-04-19 18:39:26'),
	(43,609257493889025,604362413965312,605690674544640,'落花影中游点赞了你的帖子:运动风','落花影中游点赞了你的帖子:运动风',1,52,606442201546752,b'0','2020-04-20 14:45:53',b'1',NULL,'2020-04-20 14:45:53',NULL,'2020-04-20 14:45:53'),
	(44,609375924256769,604810969612288,604810969612288,'刘医生点赞了你的帖子:如何缓解胃疼？','刘医生点赞了你的帖子:如何缓解胃疼？',1,52,609170420137984,b'0','2020-04-20 18:41:11',b'1',NULL,'2020-04-20 18:41:11',NULL,'2020-04-20 18:41:11'),
	(45,609376008142849,604810969612288,604810969612288,'刘医生点赞了你的帖子:蹲久后站立会头晕是贫血吗？','刘医生点赞了你的帖子:蹲久后站立会头晕是贫血吗？',1,52,609172852834304,b'0','2020-04-20 18:41:21',b'1',NULL,'2020-04-20 18:41:21',NULL,'2020-04-20 18:41:21'),
	(46,609380546379777,604810969612288,604360484585472,'刘医生点赞了你的帖子:拥抱原来有这么大的好处？','刘医生点赞了你的帖子:拥抱原来有这么大的好处？',1,52,605546625368064,b'0','2020-04-20 18:50:22',b'1',NULL,'2020-04-20 18:50:22',NULL,'2020-04-20 18:50:22'),
	(47,609381804670976,604810969612288,604810969612288,'刘医生点赞了你的帖子:如何缓解胃疼？','刘医生点赞了你的帖子:如何缓解胃疼？',1,52,609170420137984,b'0','2020-04-20 18:52:52',b'1',NULL,'2020-04-20 18:52:52',NULL,'2020-04-20 18:52:52'),
	(48,609382333153282,604810969612288,604810969612288,'平时经常性胃疼的一定要收藏一下(亲亲)','刘医生评论了你的帖子:如何缓解胃疼？',1,51,609170420137984,b'0','2020-04-20 18:53:55',b'1',NULL,'2020-04-20 18:53:55',NULL,'2020-04-20 18:53:55'),
	(49,610031200370689,604354855829504,604810969612288,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-04-21 16:23:06',b'1',NULL,'2020-04-21 16:23:06',NULL,'2020-04-21 16:23:06'),
	(50,610035730219009,604354855829504,604357523406848,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-04-21 16:32:06',b'1',NULL,'2020-04-21 16:32:06',NULL,'2020-04-21 16:32:06'),
	(51,610037575712769,604354855829504,604357523406848,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-04-21 16:35:46',b'1',NULL,'2020-04-21 16:35:46',NULL,'2020-04-21 16:35:46'),
	(52,610100423163904,604357137530880,604354855829504,'男/','游客8271关注了你！',3,70,604357137530880,b'0','2020-04-21 18:40:38',b'1',NULL,'2020-04-21 18:40:38',NULL,'2020-04-21 18:40:38'),
	(53,610104911069185,604358311936000,604360484585472,'男/','游客3387关注了你！',3,70,604358311936000,b'0','2020-04-21 18:49:33',b'1',NULL,'2020-04-21 18:49:33',NULL,'2020-04-21 18:49:33'),
	(54,610126956331009,604360484585472,604360484585472,'远行健康点赞了你在null里评论','远行健康点赞了你在null里评论',1,63,605518758412288,b'0','2020-04-21 19:33:21',b'1',NULL,'2020-04-21 19:33:21',NULL,'2020-04-21 19:33:21'),
	(55,610795167678465,604360484585472,604810969612288,'远行健康点赞了你的帖子:蹲久后站立会头晕是贫血吗？','远行健康点赞了你的帖子:蹲久后站立会头晕是贫血吗？',1,52,609172852834304,b'0','2020-04-22 17:40:58',b'1',NULL,'2020-04-22 17:40:58',NULL,'2020-04-22 17:40:58'),
	(56,611566852505601,604357523406848,604360484585472,'苏会钰 Harris点赞了你的帖子:我是不是“无症状感染者”？看完这些就明白了','苏会钰 Harris点赞了你的帖子:我是不是“无症状感染者”？看完这些就明白了',1,52,611555762765824,b'0','2020-04-23 19:14:10',b'1',NULL,'2020-04-23 19:14:10',NULL,'2020-04-23 19:14:10'),
	(57,611706849984513,605909516550144,604362413965312,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-04-23 23:52:19',b'1',NULL,'2020-04-23 23:52:19',NULL,'2020-04-23 23:52:19'),
	(58,612188012150785,604357137530880,604362413965312,'男/','游客8271关注了你！',3,70,604357137530880,b'0','2020-04-24 15:48:18',b'1',NULL,'2020-04-24 15:48:18',NULL,'2020-04-24 15:48:18'),
	(59,613870607532033,605909516550144,604360484585472,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-04-26 23:31:19',b'1',NULL,'2020-04-26 23:31:19',NULL,'2020-04-26 23:31:19'),
	(60,613870666252288,605909516550144,604360484585472,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-04-26 23:31:26',b'1',NULL,'2020-04-26 23:31:26',NULL,'2020-04-26 23:31:26'),
	(61,613872494968832,605909516550144,604360484585472,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-04-26 23:35:04',b'1',NULL,'2020-04-26 23:35:04',NULL,'2020-04-26 23:35:04'),
	(62,613875699417089,605909516550144,604360484585472,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-04-26 23:41:26',b'1',NULL,'2020-04-26 23:41:26',NULL,'2020-04-26 23:41:26'),
	(63,613972176797697,604354855829504,604354855829504,'慕一春点赞了你的帖子:年前卷腹','慕一春点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-04-27 02:53:07',b'1',NULL,'2020-04-27 02:53:07',NULL,'2020-04-27 02:53:07'),
	(64,613972839497729,604354855829504,604354855829504,'慕一春点赞了你的帖子:年前卷腹','慕一春点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-04-27 02:54:26',b'1',NULL,'2020-04-27 02:54:26',NULL,'2020-04-27 02:54:26'),
	(65,613974668214273,604354855829504,604354855829504,'慕一春点赞了你在年前卷腹里评论','慕一春点赞了你在年前卷腹里评论',1,53,605939606487040,b'0','2020-04-27 02:58:04',b'1',NULL,'2020-04-27 02:58:04',NULL,'2020-04-27 02:58:04'),
	(66,613974693380097,604354855829504,604354855829504,'慕一春点赞了你的帖子:年前卷腹','慕一春点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-04-27 02:58:07',b'1',NULL,'2020-04-27 02:58:07',NULL,'2020-04-27 02:58:07'),
	(67,613974903095297,604354855829504,604354855829504,'慕一春点赞了你的帖子:年前卷腹','慕一春点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-04-27 02:58:32',b'1',NULL,'2020-04-27 02:58:32',NULL,'2020-04-27 02:58:32'),
	(68,613975003758593,604354855829504,604354855829504,'慕一春点赞了你在年前卷腹里评论','慕一春点赞了你在年前卷腹里评论',1,53,605939606487040,b'0','2020-04-27 02:58:44',b'1',NULL,'2020-04-27 02:58:44',NULL,'2020-04-27 02:58:44'),
	(69,614195288604672,604354855829504,604354855829504,'慕一春点赞了你的帖子:年前卷腹','慕一春点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-04-27 10:16:24',b'1',NULL,'2020-04-27 10:16:24',NULL,'2020-04-27 10:16:24'),
	(70,614195397656577,604354855829504,604354855829504,'慕一春点赞了你在年前卷腹里评论','慕一春点赞了你在年前卷腹里评论',1,53,605939606487040,b'0','2020-04-27 10:16:37',b'1',NULL,'2020-04-27 10:16:37',NULL,'2020-04-27 10:16:37'),
	(71,614195791921153,604354855829504,604810969612288,'慕一春点赞了你在如何缓解胃疼？里评论','慕一春点赞了你在如何缓解胃疼？里评论',1,53,609382333153280,b'0','2020-04-27 10:17:24',b'1',NULL,'2020-04-27 10:17:24',NULL,'2020-04-27 10:17:24'),
	(72,614196748222466,604354855829504,604354855829504,'xxx','慕一春评论了你的帖子:xx',1,51,614196496564224,b'0','2020-04-27 10:19:18',b'1',NULL,'2020-04-27 10:19:18',NULL,'2020-04-27 10:19:18'),
	(73,614196806942722,604354855829504,604354855829504,'哈哈','慕一春评论了你的帖子:xx',1,51,614196496564224,b'0','2020-04-27 10:19:25',b'1',NULL,'2020-04-27 10:19:25',NULL,'2020-04-27 10:19:25'),
	(74,614197033435136,604354855829504,604354855829504,'嘤嘤嘤','慕一春回复了你在xx里的评论',1,50,614196496564224,b'0','2020-04-27 10:19:52',b'1',NULL,'2020-04-27 10:19:52',NULL,'2020-04-27 10:19:52'),
	(75,614197150875648,604354855829504,604354855829504,'嘤嘤嘤','慕一春回复了你在xx里的评论',1,50,614196496564224,b'0','2020-04-27 10:20:06',b'1',NULL,'2020-04-27 10:20:06',NULL,'2020-04-27 10:20:06'),
	(76,614197327036416,604354855829504,604354855829504,'慕一春点赞了你在xx里评论','慕一春点赞了你在xx里评论',1,53,614196748222464,b'0','2020-04-27 10:20:27',b'1',NULL,'2020-04-27 10:20:27',NULL,'2020-04-27 10:20:27'),
	(77,614197368979457,604354855829504,604354855829504,'慕一春点赞了你的帖子:xx','慕一春点赞了你的帖子:xx',1,52,614196496564224,b'0','2020-04-27 10:20:32',b'1',NULL,'2020-04-27 10:20:32',NULL,'2020-04-27 10:20:32'),
	(78,614198165897216,604354855829504,604354855829504,'xx','慕一春评论了你的问答:xxx',5,61,614197972959232,b'0','2020-04-27 10:22:07',b'1',NULL,'2020-04-27 10:22:07',NULL,'2020-04-27 10:22:07'),
	(79,614198467887104,604354855829504,604354855829504,'xxx','慕一春回复了你在xxx里的评论',1,60,614197972959232,b'0','2020-04-27 10:22:43',b'1',NULL,'2020-04-27 10:22:43',NULL,'2020-04-27 10:22:43'),
	(80,614198526607361,604354855829504,604354855829504,'慕一春点赞了你在null里评论','慕一春点赞了你在null里评论',1,63,614198157508608,b'0','2020-04-27 10:22:50',b'1',NULL,'2020-04-27 10:22:50',NULL,'2020-04-27 10:22:50'),
	(81,614198795042817,604354855829504,604354855829504,'等等','慕一春回复了你在xxx里的评论',1,60,614197972959232,b'0','2020-04-27 10:23:22',b'1',NULL,'2020-04-27 10:23:22',NULL,'2020-04-27 10:23:22'),
	(82,614209540849665,604354855829504,604354855829504,'慕一春点赞了你在null里评论','慕一春点赞了你在null里评论',1,63,614198157508608,b'0','2020-04-27 10:44:43',b'1',NULL,'2020-04-27 10:44:43',NULL,'2020-04-27 10:44:43'),
	(83,614209893171201,604354855829504,604354855829504,'慕一春点赞了你在null里评论','慕一春点赞了你在null里评论',1,63,614198157508608,b'0','2020-04-27 10:45:25',b'1',NULL,'2020-04-27 10:45:25',NULL,'2020-04-27 10:45:25'),
	(84,614225311432705,604354855829504,604354855829504,'慕一春点赞了你的帖子:xx','慕一春点赞了你的帖子:xx',1,52,614196496564224,b'0','2020-04-27 11:16:03',b'1',NULL,'2020-04-27 11:16:03',NULL,'2020-04-27 11:16:03'),
	(85,614225353375745,604354855829504,604354855829504,'慕一春点赞了你在xx里评论','慕一春点赞了你在xx里评论',1,53,614196748222464,b'0','2020-04-27 11:16:08',b'1',NULL,'2020-04-27 11:16:08',NULL,'2020-04-27 11:16:08'),
	(86,614226234179585,604354855829504,604354855829504,'慕一春点赞了你在xx里评论','慕一春点赞了你在xx里评论',1,53,614196806942720,b'0','2020-04-27 11:17:53',b'1',NULL,'2020-04-27 11:17:53',NULL,'2020-04-27 11:17:53'),
	(87,614226804604930,604354855829504,604354855829504,'xxx','慕一春评论了你的帖子:xx',1,51,614196496564224,b'0','2020-04-27 11:19:01',b'1',NULL,'2020-04-27 11:19:01',NULL,'2020-04-27 11:19:01'),
	(88,614226955599874,604354855829504,604354855829504,'xxx','慕一春评论了你的问答:xxx',5,61,614197972959232,b'0','2020-04-27 11:19:20',b'1',NULL,'2020-04-27 11:19:20',NULL,'2020-04-27 11:19:20'),
	(89,614234656342017,604354855829504,604354855829504,'慕一春点赞了你在年前卷腹里评论','慕一春点赞了你在年前卷腹里评论',1,53,605939606487040,b'0','2020-04-27 11:34:37',b'1',NULL,'2020-04-27 11:34:37',NULL,'2020-04-27 11:34:37'),
	(90,614412838764544,605909516550144,604810969612288,'游客7805点赞了你的帖子:如何缓解胃疼？','游客7805点赞了你的帖子:如何缓解胃疼？',1,52,609170420137984,b'0','2020-04-27 17:28:38',b'1',NULL,'2020-04-27 17:28:38',NULL,'2020-04-27 17:28:38'),
	(91,615723709759489,604362413965312,604354855829504,'我也是','落花影中游回复了你在年前卷腹里的评论',1,50,605242244726784,b'0','2020-04-29 12:53:06',b'1',NULL,'2020-04-29 12:53:06',NULL,'2020-04-29 12:53:06'),
	(92,615723776868353,604362413965312,604362413965312,'哈哈哈','落花影中游回复了你在年前卷腹里的评论',1,50,605242244726784,b'0','2020-04-29 12:53:14',b'1',NULL,'2020-04-29 12:53:14',NULL,'2020-04-29 12:53:14'),
	(93,618774235447296,604357523406848,604357523406848,'苏会钰 Harris点赞了你的帖子:田园风光，精神家园','苏会钰 Harris点赞了你的帖子:田园风光，精神家园',1,52,618773941846016,b'0','2020-05-03 17:53:57',b'1',NULL,'2020-05-03 17:53:57',NULL,'2020-05-03 17:53:57'),
	(94,621552718577664,621552651468800,605690674544640,'果果点赞了你的帖子:运动风','果果点赞了你的帖子:运动风',1,52,606442201546752,b'0','2020-05-07 13:54:18',b'1',NULL,'2020-05-07 13:54:18',NULL,'2020-05-07 13:54:18'),
	(95,622243545612288,611408408477696,604357523406848,'游客6913点赞了你在年前卷腹里评论','游客6913点赞了你在年前卷腹里评论',1,53,608648279621632,b'0','2020-05-08 12:46:51',b'1',NULL,'2020-05-08 12:46:51',NULL,'2020-05-08 12:46:51'),
	(96,622370951790593,611408408477696,604362413965312,'123','游客6913回复了你在年前卷腹里的评论',1,50,605242244726784,b'0','2020-05-08 16:59:59',b'1',NULL,'2020-05-08 16:59:59',NULL,'2020-05-08 16:59:59'),
	(97,622407089913856,622407047970816,605690674544640,'Apy点赞了你的帖子:运动风','Apy点赞了你的帖子:运动风',1,52,606442201546752,b'0','2020-05-08 18:11:47',b'1',NULL,'2020-05-08 18:11:47',NULL,'2020-05-08 18:11:47'),
	(98,622407459012609,622407047970816,604360484585472,'Apy点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','Apy点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-05-08 18:12:31',b'1',NULL,'2020-05-08 18:12:31',NULL,'2020-05-08 18:12:31'),
	(99,622537742483457,604360484585472,604354855829504,'远行健康点赞了你的帖子:年前卷腹','远行健康点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-05-08 22:31:22',b'1',NULL,'2020-05-08 22:31:22',NULL,'2020-05-08 22:31:22'),
	(100,624467852132353,624466694504448,604360484585472,'男/','游客8526关注了你！',3,70,624466694504448,b'0','2020-05-11 14:26:09',b'1',NULL,'2020-05-11 14:26:09',NULL,'2020-05-11 14:26:09'),
	(101,624773222629377,607945893085184,604360484585472,'','龚晨关注了你！',3,70,607945893085184,b'0','2020-05-12 00:32:52',b'1',NULL,'2020-05-12 00:32:52',NULL,'2020-05-12 00:32:52'),
	(102,624773348458497,607945893085184,604357523406848,'','龚晨关注了你！',3,70,607945893085184,b'0','2020-05-12 00:33:07',b'1',NULL,'2020-05-12 00:33:07',NULL,'2020-05-12 00:33:07'),
	(103,624773407178753,607945893085184,604354855829504,'','龚晨关注了你！',3,70,607945893085184,b'0','2020-05-12 00:33:14',b'1',NULL,'2020-05-12 00:33:14',NULL,'2020-05-12 00:33:14'),
	(104,625139041435649,625138957549568,604354855829504,'(・V・)点赞了你的帖子:年前卷腹','(・V・)点赞了你的帖子:年前卷腹',1,52,605242244726784,b'0','2020-05-12 12:39:41',b'1',NULL,'2020-05-12 12:39:41',NULL,'2020-05-12 12:39:41'),
	(105,625320805793793,625138957549568,604357523406848,'(・V・)点赞了你的帖子:田园风光，精神家园','(・V・)点赞了你的帖子:田园风光，精神家园',1,52,618773941846016,b'0','2020-05-12 18:40:49',b'1',NULL,'2020-05-12 18:40:49',NULL,'2020-05-12 18:40:49'),
	(106,627395065282561,605909516550144,604360484585472,'游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-05-15 15:22:00',b'1',NULL,'2020-05-15 15:22:00',NULL,'2020-05-15 15:22:00'),
	(107,627633326915585,627633234640896,604360484585472,'游客9113点赞了你的帖子:拥抱原来有这么大的好处？','游客9113点赞了你的帖子:拥抱原来有这么大的好处？',1,52,605546625368064,b'0','2020-05-15 23:15:23',b'1',NULL,'2020-05-15 23:15:23',NULL,'2020-05-15 23:15:23'),
	(108,628381422977025,628380550561792,604360484585472,'游客9368点赞了你的帖子:你喝的杯子有毒吗？','游客9368点赞了你的帖子:你喝的杯子有毒吗？',1,52,605517097467904,b'0','2020-05-17 00:01:43',b'1',NULL,'2020-05-17 00:01:43',NULL,'2020-05-17 00:01:43'),
	(109,628381532028928,628380550561792,604360484585472,'游客9368点赞了你的帖子:长期用嘴巴呼吸会变丑？','游客9368点赞了你的帖子:长期用嘴巴呼吸会变丑？',1,52,605535921504256,b'0','2020-05-17 00:01:56',b'1',NULL,'2020-05-17 00:01:56',NULL,'2020-05-17 00:01:56'),
	(110,630282633871360,604357137530880,604354855829504,'男/','游客8271关注了你！',3,70,604357137530880,b'0','2020-05-19 14:59:05',b'1',NULL,'2020-05-19 14:59:05',NULL,'2020-05-19 14:59:05'),
	(111,631011452911617,605909516550144,604360484585472,'男/','游客7805关注了你！',3,70,605909516550144,b'0','2020-05-20 15:07:07',b'1',NULL,'2020-05-20 15:07:07',NULL,'2020-05-20 15:07:07'),
	(112,632480172343297,604354855829504,605515210031104,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-05-22 15:45:12',b'1',NULL,'2020-05-22 15:45:12',NULL,'2020-05-22 15:45:12'),
	(113,632480860209153,604354855829504,604810969612288,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-05-22 15:46:34',b'1',NULL,'2020-05-22 15:46:34',NULL,'2020-05-22 15:46:34'),
	(114,632481053147136,604354855829504,604810969612288,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-05-22 15:46:57',b'1',NULL,'2020-05-22 15:46:57',NULL,'2020-05-22 15:46:57'),
	(115,632481455800321,604354855829504,604810969612288,'','慕一春关注了你！',3,70,604354855829504,b'0','2020-05-22 15:47:45',b'1',NULL,'2020-05-22 15:47:45',NULL,'2020-05-22 15:47:45'),
	(116,633795136978944,628380550561792,604357523406848,'游客9368点赞了你的帖子:田园风光，精神家园','游客9368点赞了你的帖子:田园风光，精神家园',1,52,618773941846016,b'0','2020-05-24 11:17:48',b'1',NULL,'2020-05-24 11:17:48',NULL,'2020-05-24 11:17:48'),
	(117,640332244975617,604362413965312,604360484585472,'落花影中游点赞了你在null里评论','落花影中游点赞了你在null里评论',1,63,605518758412288,b'0','2020-06-02 11:45:52',b'1',NULL,'2020-06-02 11:45:52',NULL,'2020-06-02 11:45:52'),
	(118,641035394875392,605909516550144,604360484585472,'游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-06-03 11:02:54',b'1',NULL,'2020-06-03 11:02:54',NULL,'2020-06-03 11:02:54'),
	(119,645042423201793,645041508843520,604357523406848,'','好然关注了你！',3,70,645041508843520,b'0','2020-06-08 23:44:09',b'1',NULL,'2020-06-08 23:44:09',NULL,'2020-06-08 23:44:09'),
	(120,645593194037249,605909516550144,604357137530880,'游客7805点赞了你在泡茶、煮粥、煮肉时的泡沫，吃了有害吗里评论','游客7805点赞了你在泡茶、煮粥、煮肉时的泡沫，吃了有害吗里评论',1,53,606327101456384,b'0','2020-06-09 17:58:26',b'1',NULL,'2020-06-09 17:58:26',NULL,'2020-06-09 17:58:26'),
	(121,647498599235584,605909516550144,604360484585472,'','游客7805评论了你的帖子:男生改造丨挫男变型男的秘诀?',1,51,604434841206784,b'0','2020-06-12 09:04:08',b'1',NULL,'2020-06-12 09:04:08',NULL,'2020-06-12 09:04:08'),
	(122,649226216275969,605909516550144,604360484585472,'游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗','游客7805点赞了你的帖子:泡茶、煮粥、煮肉时的泡沫，吃了有害吗',1,52,604430227472384,b'0','2020-06-14 18:16:36',b'1',NULL,'2020-06-14 18:16:36',NULL,'2020-06-14 18:16:36');

/*!40000 ALTER TABLE `system_message` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table system_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `system_user`;

CREATE TABLE `system_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话号',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `sex` int(11) NOT NULL DEFAULT '1' COMMENT '性别',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `motto` varchar(255) NOT NULL DEFAULT '有个性，没签名' COMMENT '签名',
  `birthday` date DEFAULT '2019-01-01' COMMENT '用户生日',
  `avatar` varchar(255) DEFAULT 'http://lovepinpin.com/man.png' COMMENT '头像地址',
  `fans_number` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `followers_number` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `ask_number` int(11) NOT NULL DEFAULT '0' COMMENT '问答数',
  `post_number` int(11) NOT NULL DEFAULT '0' COMMENT '发帖数',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `user_type` int(10) unsigned DEFAULT '0' COMMENT '0：普通用户；1：管理员；2：健康咨询师',
  `image_background` varchar(255) DEFAULT 'http://lovepinpin.com/image_background.png' COMMENT '背景图地址',
  `is_id_card_certificated` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否实名认证',
  `is_telephone_verified` bit(1) NOT NULL DEFAULT b'0' COMMENT '电话号是否验证通过',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;

INSERT INTO `system_user` (`id`, `uid`, `username`, `telephone`, `nickname`, `sex`, `age`, `motto`, `birthday`, `avatar`, `fans_number`, `followers_number`, `ask_number`, `post_number`, `password`, `user_type`, `image_background`, `is_id_card_certificated`, `is_telephone_verified`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(1,604354855829504,'17371889502','17371889502','慕一春',0,0,'慕一春motor','2019-01-01','http://lovepinpin.com/FtvPICdSfmvwkNxXdrFnappSmih9',3,3,1,2,'$2a$10$.4aRduNvFVBxeCdP85jwXuEMx1aV4zAsOt.ET84UUSkBq5HIWXJWu',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-13 20:25:13',NULL,'2020-04-13 20:25:13'),
	(2,604357137530880,'15377668271','15377668271','游客8271',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,1,0,1,'$2a$10$DajJaWt9fi2uP3YKbeUlLuWQfO5WyAmj4gCEpw3xZAiPod5WG5.Vi',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-13 20:29:45',NULL,'2020-04-13 20:29:45'),
	(3,604357523406848,'苏会钰 Harris',NULL,'苏会钰 Harris',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200413203031CiSEsbfb',3,2,0,1,'$2a$10$zMGsrY.rIA7XcjakNJpkH.2e5tHz7EqGiqDqCIBkw5TB1EsMB3nba',0,'http://lovepinpin.com/20200413203031IfBtBjNU',b'0',b'0',NULL,'2020-04-13 20:30:31',NULL,'2020-04-13 20:30:31'),
	(4,604358311936000,'15327343387','15327343387','Ashes',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/Fm82OCJE3SYJQ-rXNH80b17xWSlb',0,1,0,0,'$2a$10$06LkD6XuSR4CzJHh32/4iu6rj5niJQD1ZZ9N0TMd7b/jSjQo3sSTC',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-13 20:32:05',NULL,'2020-04-13 20:32:05'),
	(5,604360484585472,'15172558507','15172558507','远行健康',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/FizZyHQ5O0cx_Y4jM1F-NauvHueQ',7,0,0,76,'$2a$10$hUTl5brpUlrHSxr03GXgPOOjr0FNrFxa0apFKaWK.hOoQlHWTa352',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-13 20:36:24',NULL,'2020-04-13 20:36:24'),
	(6,604362413965312,'15623367334','15623367334','落花影中游',0,0,'身体是革命的本钱！','2019-01-01','http://lovepinpin.com/FqdbzH1DlENIApyf6VrrhdS7JJZ6',0,0,0,0,'$2a$10$l0S2uNPLZGtiHggC4.XCi.zXQ7hDbnpt1Wr.dE3ZiZ5JYmDv0BwAO',0,'http://lovepinpin.com/FpkDSoG1a0_wQDasXL2ttUjMfVi9',b'0',b'1',NULL,'2020-04-13 20:40:14',NULL,'2020-04-13 20:40:14'),
	(7,604651502174208,'15765399292','15765399292','游客9292',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,1,0,0,'$2a$10$5Xjmmi3lj.JyTqO5UpS8GuxpdeZmzz1K/j2dsLjVV/O5SQl4SXzz2',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-14 06:14:36',NULL,'2020-04-14 06:14:36'),
	(8,604810969612288,'17612745294','17612745294','刘医生',1,0,'知名健康养生博主','2019-01-01','http://lovepinpin.com/man.png',1,0,0,56,'$2a$10$/6w/h8LOb2DVg3jsENrGVeE1I7kP4KXM.hEYkFk2DB88X9pRtbWpi',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-14 11:31:26',NULL,'2020-04-14 11:31:26'),
	(9,605515210031104,'武宸宸',NULL,'武宸宸',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200415105038tjDDRIWT',1,0,2,0,'$2a$10$piHEzN7KK8TMTNq59N4IReBWX0rt4HfitJFA/rwemzAwpFyi6oqsO',0,'http://lovepinpin.com/20200415105039OpXatlvc',b'0',b'0',NULL,'2020-04-15 10:50:38',NULL,'2020-04-15 10:50:38'),
	(10,605690674544640,'金鸿明13104550061',NULL,'小明同学',0,0,'远行集团','2019-01-01','http://lovepinpin.com/20200415163915MTbbrUHv',0,1,0,1,'$2a$10$y.JIw3FFmfseGfFG82o9NOwvrPtIWsfdkuusJB8lgUR3ltYGV/hdS',0,'http://lovepinpin.com/20200415163915srsmHKzM',b'0',b'0',NULL,'2020-04-15 16:39:15',NULL,'2020-04-15 16:39:15'),
	(11,605909516550144,'13146397805','13146397805','游客7805',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,1,0,0,'$2a$10$MutBahFdoME.JxmOmMGOaOZRLcsC4j4aPErjmlALbZp47ppuJY2wC',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-15 23:54:03',NULL,'2020-04-15 23:54:03'),
	(12,605954294939648,'Nil Xuan',NULL,'Nil Xuan',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200416012301dfGkjERK',0,0,0,0,'$2a$10$yaayRN0cjXyHTso/.tKzke/ZpZfQG3HbNjyo2c0vHdFR0iQPpVK1a',0,'http://lovepinpin.com/20200416012301qqGRWZmq',b'0',b'0',NULL,'2020-04-16 01:23:01',NULL,'2020-04-16 01:23:01'),
	(13,606446706229248,'铃兰的珍惜',NULL,'铃兰的珍惜',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200416174121KeJsvnFU',0,0,0,0,'$2a$10$pokoFJFBzdzu222mXTQNdu0eZwKu1I1p98/4YAcqMA0hoInZaATrW',0,'http://lovepinpin.com/20200416174121wvnjXgPs',b'0',b'0',NULL,'2020-04-16 17:41:21',NULL,'2020-04-16 17:41:21'),
	(14,606450866978816,'18620943521','18620943521','单细胞巧克力',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$czYb.HPuKpoCoAapA7jbo.Zv2ILszfuxcGZpQogMAnyPh6VNgWc12',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-16 17:49:37',NULL,'2020-04-16 17:49:37'),
	(15,606472836743168,'13384580333','13384580333','A·辉-少?',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200416183316ugPaeUxl',0,0,0,0,'$2a$10$JKTU0vVbPHhS5qxBsbnXbeaf4JLZwciwfvCWSf0bIzysAH8F0aspO',0,'http://lovepinpin.com/20200416183316kHRIuBae',b'0',b'1',NULL,'2020-04-16 18:33:16',NULL,'2020-04-16 18:33:16'),
	(16,606475177164800,'13029921967','13029921967','游客1967',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$U55begQIXLV8A8wwbYYukOWI2.swIGY5j0HxLzZllync.wz/2bjMG',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-16 18:37:55',NULL,'2020-04-16 18:37:55'),
	(17,606478901706752,'孟一凡',NULL,'孟一凡',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200416184519IUWBqXLC',0,0,0,0,'$2a$10$O299IputmF9R2C2AAwf6PeANpb498fz5F3UqhFd.Jn/97mhbNjZly',0,'http://lovepinpin.com/20200416184519EeedWUry',b'0',b'0',NULL,'2020-04-16 18:45:19',NULL,'2020-04-16 18:45:19'),
	(18,606654508826624,'现实的理想主义者',NULL,'现实的理想主义者',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200417003413aGadsTJK',0,0,0,0,'$2a$10$qFp5vazVfiWRei8A1v1d3.Y/vDnT6oEX1uOcPTzLc/NOm.9/2zEgi',0,'http://lovepinpin.com/20200417003414dXaHTSvC',b'0',b'0',NULL,'2020-04-17 00:34:13',NULL,'2020-04-17 00:34:13'),
	(19,607945893085184,'龚晨',NULL,'龚晨',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200418191958MTySDtSh',0,3,0,0,'$2a$10$04dYS4j8gF730cD37v.z9.eE60NI.oH1ttmbIiYIHRtKnfUeygWHm',0,'http://lovepinpin.com/20200418191958DfVAkwCH',b'0',b'0',NULL,'2020-04-18 19:19:58',NULL,'2020-04-18 19:19:58'),
	(20,611408408477696,'17733106913','17733106913','游客6913',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$npTo5Q3bPe3a30C2qNkOSeKNqYkCAIj9q9uj4ftt97M2Ob8nMFNfC',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-04-23 13:59:22',NULL,'2020-04-23 13:59:22'),
	(22,614890175725568,'燦曦月',NULL,'燦曦月',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200428091701qZuZsucw',0,0,0,0,'$2a$10$waDdOq9mrVrWWuAlT8IV7O.H3MMbgGNdxtFYDk5XzDOg2zG5mLVjK',0,'http://lovepinpin.com/20200428091702RFcnxJNs',b'0',b'0',NULL,'2020-04-28 09:17:01',NULL,'2020-04-28 09:17:01'),
	(23,618579988840448,'17810232346','17810232346','游客2346',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$YJRHTtJdX6zSOeawqnq.VOqLj0PWNCr4pUIHAyHqK8wL2ovl4uVLi',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-03 11:28:01',NULL,'2020-05-03 11:28:01'),
	(24,618579988840449,'test_user','18888888888','测试用户',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$wXLv2.LR23rnl/wZGOy5Fety.OyFl86XzlyKq6TMIKw8uQ6PS8nP.',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-03 11:28:01',NULL,'2020-05-03 11:28:01'),
	(25,621504702185472,'滴墨、...',NULL,'滴墨、...',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200507121854pFOBHSps',0,0,0,0,'$2a$10$0uznt7tZNVhIirRdD.UCyu.WXUeMQib3AQp02fOv2w7WCVQubZwiS',0,'http://lovepinpin.com/20200507121854zqmATAEG',b'0',b'0',NULL,'2020-05-07 12:18:54',NULL,'2020-05-07 12:18:54'),
	(26,621552651468800,'果果',NULL,'果果',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200507135410yNtzBtlO',0,0,0,0,'$2a$10$.UOYqiBFGkZBInLoZInDYu/tOm7OYrGRbdsytqNkjbwxrEQN.OfnC',0,'http://lovepinpin.com/20200507135410TlcPsMGO',b'0',b'0',NULL,'2020-05-07 13:54:10',NULL,'2020-05-07 13:54:10'),
	(27,621763197140992,'明月清风',NULL,'明月清风',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200507205229KwkydImG',0,0,0,0,'$2a$10$xOOoI1LNr9NQ4.ol3nb5A.HxSHzHnvX8RO8JZeBKq0mOxqwcxSj5K',0,'http://lovepinpin.com/20200507205230VgfHNvhh',b'0',b'0',NULL,'2020-05-07 20:52:29',NULL,'2020-05-07 20:52:29'),
	(28,622035617185792,'z',NULL,'z',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200508055344WfugocwN',0,0,0,0,'$2a$10$ks80psObPqpVwrFGU5b88OHllWSWSWa6kVaa1sWtnKNEYXqljO0he',0,'http://lovepinpin.com/20200508055344YlfMvUaX',b'0',b'0',NULL,'2020-05-08 05:53:44',NULL,'2020-05-08 05:53:44'),
	(29,622292753186816,'zxdfgf',NULL,'zxdfgf',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200508142437CYxgClfQ',0,0,0,0,'$2a$10$apA2Z5bQlJXgN887hXK.0OieGUFk68CAcrE2UkI4rFl1cljeygh1.',0,'http://lovepinpin.com/20200508142437kNbeeemj',b'0',b'0',NULL,'2020-05-08 14:24:37',NULL,'2020-05-08 14:24:37'),
	(30,622407047970816,'Apy',NULL,'Apy',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200508181142hwdQPyhN',0,0,0,0,'$2a$10$s86n0.UqG/1A.S.TtnG9ZebTrkI3djqb.Zw5/UkSrIbbNmqpOBlo2',0,'http://lovepinpin.com/20200508181143LKOQXhnR',b'0',b'0',NULL,'2020-05-08 18:11:42',NULL,'2020-05-08 18:11:42'),
	(31,624418032189440,'13604684908','13604684908','游客4908',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$D4F0Ga5ycD/V8OCNPp5yneoBewiiFnSh87Q/yIkOwlURj4O52m98y',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-11 12:47:10',NULL,'2020-05-11 12:47:10'),
	(32,624466694504448,'13999948526','13999948526','游客8526',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,1,0,0,'$2a$10$Tj0hrlicur7j/lVBidQr/uXNTAspF9yX70dDKptmthqGS.98c8klu',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-11 14:23:51',NULL,'2020-05-11 14:23:51'),
	(33,624700770222080,'18509162996','18509162996','游客2996',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$xokTZ7v5LSXZcOJVj9FIAuxbRJfFnKYtLEJ80N/y9f8zOStpp71IO',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-11 22:08:55',NULL,'2020-05-11 22:08:55'),
	(34,624782995357696,'灰色世界',NULL,'灰色世界',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512005217SzcSMgqG',0,0,0,0,'$2a$10$SBaOQ18l/IIeRE0SAqbAUuWfGmUsyhkD8ezuFUnfpbwWmhqYERWCS',0,'http://lovepinpin.com/20200512005217SdUFwWLc',b'0',b'0',NULL,'2020-05-12 00:52:17',NULL,'2020-05-12 00:52:17'),
	(35,624816222633984,'有腿毛的仙女? ?',NULL,'有腿毛的仙女? ?',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512015818RiUWGkLV',0,0,0,0,'$2a$10$6T6iJSS04XsekgKYH97pN.urPspIgsNijUK8dnfN/3PL4CvR8Z6iS',0,'http://lovepinpin.com/20200512015819EDzdmngx',b'0',b'0',NULL,'2020-05-12 01:58:18',NULL,'2020-05-12 01:58:18'),
	(36,624965565022208,'fmc',NULL,'fmc',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512065501pNLlOPxz',0,0,0,0,'$2a$10$OOr65mAmn/TKfXr5GRRpnOkXgd92M9grUun/arG.ethZsyZyShdve',0,'http://lovepinpin.com/20200512065507tUFPYVWM',b'0',b'0',NULL,'2020-05-12 06:55:01',NULL,'2020-05-12 06:55:01'),
	(37,624965867012096,'18008415061','18008415061','游客5061',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$obcrEXg1XHeNIPBOhvaFMeOzgZTRB85e7yC.45wTGnaH/Wys1clAa',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-12 06:55:37',NULL,'2020-05-12 06:55:37'),
	(38,624991108333568,'April',NULL,'April',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512074546tbUbzqlD',0,0,0,0,'$2a$10$iLX7ybqskEiQUUT0HFPYqOi/xL.OuWHJXpDsB14ySQUIItFjwNJoy',0,'http://lovepinpin.com/20200512074546umSZuAHE',b'0',b'0',NULL,'2020-05-12 07:45:46',NULL,'2020-05-12 07:45:46'),
	(39,625000688123904,'神经元计算机',NULL,'神经元计算机',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512080448qdWziNRz',0,0,0,0,'$2a$10$eRSzf39ugTUOke7yK8M9cekM8.CTrtbD6O6X/DYT42aH2.I7OdQOC',0,'http://lovepinpin.com/20200512080448UceyBEZg',b'0',b'0',NULL,'2020-05-12 08:04:48',NULL,'2020-05-12 08:04:48'),
	(40,625008833462272,'三个苯环',NULL,'三个苯环',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512082059uBUdBANb',0,0,0,0,'$2a$10$r/LDEbI7/5UGtvjqWZhL9O5yTjE7l4QLi.olL/DNdEyf7gF4y/RjG',0,'http://lovepinpin.com/20200512082100jEmjAkMZ',b'0',b'0',NULL,'2020-05-12 08:20:59',NULL,'2020-05-12 08:20:59'),
	(41,625042949931008,'隙月.',NULL,'隙月.',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512092846sIaKnqct',0,0,0,0,'$2a$10$9c4n/Lq3PLQyDW0yhtxHM.8oE6ndQbSM5C2NysTum9hcsiDTy3fN2',0,'http://lovepinpin.com/20200512092846smzsxVyd',b'0',b'0',NULL,'2020-05-12 09:28:46',NULL,'2020-05-12 09:28:46'),
	(42,625078073032704,'13875143492','13875143492','游客3492',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$bCADCSrdWr1fWoeQdINXfeLGI0ABZIm2TVmNKgIJs2frYJECHnqse',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-12 10:38:33',NULL,'2020-05-12 10:38:33'),
	(43,625102878146560,'15145068313','15145068313','游客8313',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$zCGIfhaQd.sxlq3cGOP0QOQiKkHpu1EVuMAPjyCjkrR.bipKOJKra',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-12 11:27:50',NULL,'2020-05-12 11:27:50'),
	(44,625124352983040,'畅通万里',NULL,'畅通万里',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512121030aWTZmxME',0,0,0,0,'$2a$10$q5OHrP7VKhkVYuJ32oqN8OHvqGhYoc7/iOteDdzeFgSywxJCBXacK',0,'http://lovepinpin.com/20200512121031SQJbmzVm',b'0',b'0',NULL,'2020-05-12 12:10:30',NULL,'2020-05-12 12:10:30'),
	(45,625138957549568,'(・V・)',NULL,'(・V・)',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512123931hbOmFyLv',0,0,1,0,'$2a$10$LkVJaWBMxv5cjPgJElbsUOA0djMOygxUG8ebPb1GzUB925f5xc/Ei',0,'http://lovepinpin.com/20200512123931yoANikfJ',b'0',b'0',NULL,'2020-05-12 12:39:31',NULL,'2020-05-12 12:39:31'),
	(46,625158972768256,'15886995265','15886995265','游客5265',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$FOYiyDKXUFA9OcrrNKPE1eCoIafNDYrerKYbYYuHjs8UYNe0lLguG',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-12 13:19:17',NULL,'2020-05-12 13:19:17'),
	(47,625179742961664,'18822608363','18822608363','游客8363',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$F9Yf7eYdp2c1vMAPC0dTHuhED8O36WLDNiQwWdAvkTxD2SiUAEIQC',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-12 14:00:33',NULL,'2020-05-12 14:00:33'),
	(48,625275868020736,'微微一笑',NULL,'微微一笑',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512171132wxVtdaVr',0,0,0,0,'$2a$10$jRLSiW8EaHE8NRV9z96o5u1FFwdP1xkY8xWvA1/1W9Mc6q6gy1RcO',0,'http://lovepinpin.com/20200512171133oqiCnDme',b'0',b'0',NULL,'2020-05-12 17:11:32',NULL,'2020-05-12 17:11:32'),
	(49,625324765216768,'曼',NULL,'曼',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200512184841nuCMkgmF',0,0,0,0,'$2a$10$K5sooLhWShhRGdt74WkdIOVPMnmS62Y9/hl8y3Kcgzxo/sG08c472',0,'http://lovepinpin.com/20200512184841TAbCXRUE',b'0',b'0',NULL,'2020-05-12 18:48:41',NULL,'2020-05-12 18:48:41'),
	(50,625707923275776,'17362301242','17362301242','游客1242',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$3QFOQVkG2nkdl9KFLIBiqODX3glAAIAp90TD34mg37WCAkkXC0ifW',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-13 07:29:57',NULL,'2020-05-13 07:29:57'),
	(51,626495655510016,'13791905210','13791905210','游客5210',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$i1l8fRBrijNY7b6bb2YHaOYeub1vsm738d8vFbWUtZHPRmwtqc53a',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-14 09:35:02',NULL,'2020-05-14 09:35:02'),
	(52,627350790209536,'铭心旋律',NULL,'铭心旋律',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200515135402rqmAyQPq',0,0,0,0,'$2a$10$jdWH6Sa52OXnCzKtCGNB.OpPo9svkI79.sPhrh6J2M7ZYW9YvKPKG',0,'http://lovepinpin.com/20200515135402IzOiuGIN',b'0',b'0',NULL,'2020-05-15 13:54:02',NULL,'2020-05-15 13:54:02'),
	(53,627633234640896,'13294189113','13294189113','游客9113',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$rooksfywwhGmYjPySvk6LO3WgSbv.h1eoTLcQW7KNkR43U79qdTo.',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-15 23:15:12',NULL,'2020-05-15 23:15:12'),
	(54,628380550561792,'18794229368','18794229368','游客9368',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$C30Ifre7c.iXkWUNrhZOb.c7/obC3gSuHUQ1g78aF3KgDO8cYAlBu',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-16 23:59:59',NULL,'2020-05-16 23:59:59'),
	(55,628698738851840,'13995645913','13995645913','游客5913',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$HOFxD5P3fqsCt7gNgNI2UOHBF2MYO6bRlKc4bPqY/QnFmGmdlnUui',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-17 10:32:10',NULL,'2020-05-17 10:32:10'),
	(56,629507870425088,'13564726518','13564726518','游客6518',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$B3Orj1gT66y.Hzs5pksZL.czrPM3XDgCaLOpGXIVaRxqoJMMtJBgu',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-18 13:19:46',NULL,'2020-05-18 13:19:46'),
	(57,630290309447680,'1号测试员',NULL,'1号测试员',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200519151420CgxVsYuR',0,0,0,0,'$2a$10$o3bvxnIwcc.SwLD6e5Y6W.c0RgfVdWMpD7w9ZffzGVoeuN4YJDvVG',0,'http://lovepinpin.com/20200519151421xctUVxao',b'0',b'0',NULL,'2020-05-19 15:14:20',NULL,'2020-05-19 15:14:20'),
	(58,630940032303104,'三哥',NULL,'三哥',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200520124513VZFdwIEX',0,0,0,0,'$2a$10$Ll5pQMEQUXLSOseDlcHfPO.wwFYam8QIBgaYGhhIwBXCdUkbAZOLS',0,'http://lovepinpin.com/20200520124513UJIJYYku',b'0',b'0',NULL,'2020-05-20 12:45:13',NULL,'2020-05-20 12:45:13'),
	(59,631054276755456,'十一月7号',NULL,'十一月7号',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200520163212roJWSiGB',0,0,0,0,'$2a$10$DE37kd/vWSehULzRq3S1K.0YKETtkQ7t2HERjz.MuNzECt2yg/nTi',0,'http://lovepinpin.com/20200520163212PrdsglqS',b'0',b'0',NULL,'2020-05-20 16:32:12',NULL,'2020-05-20 16:32:12'),
	(60,631088208674816,'瘟神的鹿',NULL,'瘟神的鹿',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200520173937GaxZfrEN',0,0,0,0,'$2a$10$ET/OyEe072RQ00fUTjc2fuxEliLmiOE9LoJBatlkUKDZLNW.56WLG',0,'http://lovepinpin.com/20200520173937HVmpEVYk',b'0',b'0',NULL,'2020-05-20 17:39:37',NULL,'2020-05-20 17:39:37'),
	(61,631565193314304,'13524842829','13524842829','游客2829',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$l0NYwgZsiyIWC.cTs/BYFuv/SdEgpYEMp79nInj.OA4O1Z9Zg0t9K',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-21 09:27:18',NULL,'2020-05-21 09:27:18'),
	(62,631710936989696,'13581387113','13581387113','游客7113',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$172kr/3eT3mfi/fuw67kSOWCTiHuL6QYGxZXmtmlIXm2cccx30DGG',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-21 14:16:52',NULL,'2020-05-21 14:16:52'),
	(63,631777005666304,'15811100556','15811100556','游客0556',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$/ncvNvU6EVkEhupQXmS9iuWkTKbnrmKfJCwcO7w734jq9mM8l6Qq2',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-21 16:28:08',NULL,'2020-05-21 16:28:08'),
	(64,631777878081536,'15927119183','15927119183','游客9183',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$vjnsd6wa0DNaP8IMC3L8NO68ZcNCxhZ.vnAW8Tm/OG.ZRovlKnTPS',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-21 16:29:52',NULL,'2020-05-21 16:29:52'),
	(65,632594894946304,'13131139143','13131139143','游客9143',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$u2N/.7Li78qhXK.VcFRjFOJou8pzF5ZFsoKgINGWbnmq3i2tm26We',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-22 19:33:08',NULL,'2020-05-22 19:33:08'),
	(66,633836157272064,'18377432388','18377432388','游客2388',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$9UyoAMp5PteAcpCFeTcoA.VpDzXh6hPjIE7ARTK7.rvB9ZZcuTmvm',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-24 12:39:18',NULL,'2020-05-24 12:39:18'),
	(67,634015950307328,'砥砺前行',NULL,'砥砺前行',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200524183631jebPRjUb',0,0,0,0,'$2a$10$LDZo24bH21Tdl0oMs2pbRO5sPlW7hotKQ4i8q2.axsh1eDsXmahRO',0,'http://lovepinpin.com/20200524183631vtpjDkRm',b'0',b'0',NULL,'2020-05-24 18:36:31',NULL,'2020-05-24 18:36:31'),
	(68,635384560091136,'15853391367','15853391367','游客1367',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$jxe3xNrexgxaMK4Vbm.Koe0CA2KayOwKr2XobNQImZz4KQ8KCcAAa',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-05-26 15:55:42',NULL,'2020-05-26 15:55:42'),
	(69,635541427060736,'Sure',NULL,'Sure',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200526210722eddkXVrY',0,0,0,0,'$2a$10$L7DTcTlnVwemlxMkUT7cve7x.ohw12J53FuHK24uDpl1KDreBLsSW',0,'http://lovepinpin.com/20200526210723NIpnstdW',b'0',b'0',NULL,'2020-05-26 21:07:22',NULL,'2020-05-26 21:07:22'),
	(70,637799950712832,'ZawZawOo（李皓生）',NULL,'ZawZawOo（李皓生）',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/20200529235439kDwppxaR',0,0,0,0,'$2a$10$R3ZqCFDs7a6O635u1yy4SOHwm4r7RcPqwnEL4ncX6PGsaKr9KCJ0W',0,'http://lovepinpin.com/20200529235440QNWnlBCZ',b'0',b'0',NULL,'2020-05-29 23:54:39',NULL,'2020-05-29 23:54:39'),
	(71,642741956509696,'18702790477','18702790477','游客0477',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$Z1VS9kVBW1FOCu6S3ZrDxeq9ddMdf69NUZ/yJjAMoeWQLNK/bt516',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-06-05 19:33:32',NULL,'2020-06-05 19:33:32'),
	(72,644797131915264,'18171847316','18171847316','游客7316',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$YWGrkUuNOTvS8YwkY8kjzeW0PEIvHkYQ69x/PxGVIhK3ho2LTVjde',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-06-08 15:36:48',NULL,'2020-06-08 15:36:48'),
	(73,645041508843520,'13937079678','13937079678','好然',0,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,1,0,0,'$2a$10$gRbagieDy.hE1.9O.YmpOuBENFK0NCQFCkSq9nAzimpaVAvXLlfG2',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-06-08 23:42:20',NULL,'2020-06-08 23:42:20'),
	(74,647053852016640,'18522052172','18522052172','游客2172',1,0,'有个性，没签名','2019-01-01','http://lovepinpin.com/man.png',0,0,0,0,'$2a$10$EnQoUbK9XANKmhUK6VJ.seNNIZracNO/CUQhrV6ME9fmwS3m9a0h6',0,'http://lovepinpin.com/image_background.png',b'0',b'1',NULL,'2020-06-11 18:20:30',NULL,'2020-06-11 18:20:30');

/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table topic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '热词',
  `image_url` varchar(255) DEFAULT NULL COMMENT '话题图片',
  `hot_degree` int(11) NOT NULL DEFAULT '0' COMMENT '话题热度',
  `is_active` bit(1) DEFAULT b'1' COMMENT '是否有效',
  `note` varchar(150) DEFAULT NULL COMMENT '备注，为啥添加该热词',
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '热词生效时间',
  `end_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '热词结束时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者Id',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新的UserId',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新的日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;

INSERT INTO `topic` (`id`, `uid`, `description`, `image_url`, `hot_degree`, `is_active`, `note`, `start_date`, `end_date`, `create_user_id`, `create_date`, `last_update_user_id`, `last_update_date`)
VALUES
	(1,604388653531136,'新冠肺炎','http://lovepinpin.com/1586956824211',0,b'1',NULL,'2020-04-13 21:32:22','2020-04-13 21:32:22',NULL,'2020-04-13 21:32:22',NULL,'2020-04-13 21:32:22'),
	(2,604389475614720,'健身','http://lovepinpin.com/1586957015319',0,b'1',NULL,'2020-04-13 21:34:00','2020-04-13 21:34:00',NULL,'2020-04-13 21:34:00',NULL,'2020-04-13 21:34:00'),
	(3,604404986150912,'健康十八式','http://lovepinpin.com/1586956958250',0,b'1',NULL,'2020-04-13 22:04:49','2020-04-13 22:04:49',NULL,'2020-04-13 22:04:49',NULL,'2020-04-13 22:04:49'),
	(4,604405481078784,'备孕那些事','http://lovepinpin.com/1586956261704',0,b'1',NULL,'2020-04-13 22:05:48','2020-04-13 22:05:48',NULL,'2020-04-13 22:05:48',NULL,'2020-04-13 22:05:48'),
	(5,604982566977536,'预防癌症','http://lovepinpin.com/1586786668479',0,b'1',NULL,'2020-04-14 17:12:22','2020-04-14 17:12:22',NULL,'2020-04-14 17:12:22',NULL,'2020-04-14 17:12:22'),
	(6,605642473603072,'健康科普','http://lovepinpin.com/1586957046393',0,b'1',NULL,'2020-04-15 15:03:29','2020-04-15 15:03:29',NULL,'2020-04-15 15:03:29',NULL,'2020-04-15 15:03:29'),
	(8,605828247715840,'宝宝成长日记','http://lovepinpin.com/1586956350925',0,b'1',NULL,'2020-04-15 21:12:35','2020-04-15 21:12:35',NULL,'2020-04-15 21:12:35',NULL,'2020-04-15 21:12:35'),
	(9,605829749276672,'减肥食谱','http://lovepinpin.com/1586956525909',0,b'1',NULL,'2020-04-15 21:15:34','2020-04-15 21:15:34',NULL,'2020-04-15 21:15:34',NULL,'2020-04-15 21:15:34'),
	(10,605829950603264,'减肥日记','http://lovepinpin.com/1586956554652',0,b'1',NULL,'2020-04-15 21:15:58','2020-04-15 21:15:58',NULL,'2020-04-15 21:15:58',NULL,'2020-04-15 21:15:58'),
	(11,605830344867840,'备孕知识','http://lovepinpin.com/1586956573598',0,b'1',NULL,'2020-04-15 21:16:45','2020-04-15 21:16:45',NULL,'2020-04-15 21:16:45',NULL,'2020-04-15 21:16:45'),
	(12,605830437142528,'减肥科普','http://lovepinpin.com/1586956573576',0,b'1',NULL,'2020-04-15 21:16:56','2020-04-15 21:16:56',NULL,'2020-04-15 21:16:56',NULL,'2020-04-15 21:16:56'),
	(13,605830713966592,'备孕扫盲手册','http://lovepinpin.com/1586956573367',0,b'1',NULL,'2020-04-15 21:17:29','2020-04-15 21:17:29',NULL,'2020-04-15 21:17:29',NULL,'2020-04-15 21:17:29'),
	(14,605832442019840,'饮食与健康','http://lovepinpin.com/1586956836808',0,b'1',NULL,'2020-04-15 21:20:55','2020-04-15 21:20:55',NULL,'2020-04-15 21:20:55',NULL,'2020-04-15 21:20:55'),
	(15,605832651735040,'疫情实时动态','http://lovepinpin.com/1586956876049',0,b'1',NULL,'2020-04-15 21:21:20','2020-04-15 21:21:20',NULL,'2020-04-15 21:21:20',NULL,'2020-04-15 21:21:20'),
	(16,605832785952768,'运动健身','http://lovepinpin.com/1586956886700',0,b'1',NULL,'2020-04-15 21:21:36','2020-04-15 21:21:36',NULL,'2020-04-15 21:21:36',NULL,'2020-04-15 21:21:36'),
	(17,605832886616064,'宅家健身打卡','http://lovepinpin.com/1586956905198',0,b'1',NULL,'2020-04-15 21:21:48','2020-04-15 21:21:48',NULL,'2020-04-15 21:21:48',NULL,'2020-04-15 21:21:48'),
	(18,605833004056576,'育儿知识大全','http://lovepinpin.com/1586956918196',0,b'1',NULL,'2020-04-15 21:22:02','2020-04-15 21:22:02',NULL,'2020-04-15 21:22:02',NULL,'2020-04-15 21:22:02'),
	(19,605833264103424,'育儿误区','http://lovepinpin.com/1586956949707',0,b'1',NULL,'2020-04-15 21:22:33','2020-04-15 21:22:33',NULL,'2020-04-15 21:22:33',NULL,'2020-04-15 21:22:33'),
	(20,605833624813568,'全民学健身','http://lovepinpin.com/1586956985048',0,b'1',NULL,'2020-04-15 21:23:16','2020-04-15 21:23:16',NULL,'2020-04-15 21:23:16',NULL,'2020-04-15 21:23:16'),
	(21,605833725476864,'健康饮食日记','http://lovepinpin.com/1586957001403',0,b'1',NULL,'2020-04-15 21:23:28','2020-04-15 21:23:28',NULL,'2020-04-15 21:23:28',NULL,'2020-04-15 21:23:28'),
	(22,605834010689536,'健康保卫战','http://lovepinpin.com/1586957026367',0,b'1',NULL,'2020-04-15 21:24:02','2020-04-15 21:24:02',NULL,'2020-04-15 21:24:02',NULL,'2020-04-15 21:24:02'),
	(23,605834295902208,'健康云计划','http://lovepinpin.com/1586957067750',0,b'1',NULL,'2020-04-15 21:24:36','2020-04-15 21:24:36',NULL,'2020-04-15 21:24:36',NULL,'2020-04-15 21:24:36'),
	(27,611389089513472,'健康问答','http://lovepinpin.com/1586957067750',0,b'1',NULL,'2020-04-23 13:20:59','2020-04-23 13:20:59',NULL,'2020-04-23 13:20:59',NULL,'2020-04-23 13:20:59'),
	(29,610792483323904,'女性健康','http://lovepinpin.com/1587638209027',0,b'1',NULL,'2020-04-23 18:35:28','2020-04-23 18:35:28',NULL,'2020-04-23 18:35:28',NULL,'2020-04-23 18:35:28');

/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_cash_storage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_cash_storage`;

CREATE TABLE `user_cash_storage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `wallet` int(10) DEFAULT '0' COMMENT '用户钱包',
  `gold_coin` int(10) DEFAULT '0' COMMENT '用户金币',
  `create_user_id` bigint(20) DEFAULT '0',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_cash_storage` WRITE;
/*!40000 ALTER TABLE `user_cash_storage` DISABLE KEYS */;

INSERT INTO `user_cash_storage` (`id`, `uid`, `user_id`, `wallet`, `gold_coin`, `create_user_id`, `create_date`, `last_update_user_id`, `last_update_date`)
VALUES
	(1,1587626107684,604354855829504,1105,0,0,'2020-04-23 19:20:19',NULL,'2020-04-23 19:20:19'),
	(5,629779426443265,604360484585472,310,0,0,'2020-05-18 22:19:18',NULL,'2020-05-18 22:19:18'),
	(6,629779426443266,604362413965312,550,0,0,'2020-05-20 11:32:27',NULL,'2020-05-20 11:32:27'),
	(7,629779426443267,604357137530880,2000,0,0,'2020-05-20 13:24:46',NULL,'2020-05-20 13:24:46'),
	(8,631019187208193,611408408477696,460,0,0,'2020-05-20 15:22:29',NULL,'2020-05-20 15:22:29');

/*!40000 ALTER TABLE `user_cash_storage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_favorite_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_favorite_info`;

CREATE TABLE `user_favorite_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '点赞目标的类型:1为post；2为post_comment',
  `user_uid` bigint(20) DEFAULT NULL COMMENT '点赞用户ID',
  `target_uid` bigint(20) DEFAULT NULL COMMENT '点赞目标的UID',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新者ID',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_favorite_info` WRITE;
/*!40000 ALTER TABLE `user_favorite_info` DISABLE KEYS */;

INSERT INTO `user_favorite_info` (`id`, `uid`, `type`, `user_uid`, `target_uid`, `last_update_user_id`, `last_update_date`, `create_user_id`, `create_date`)
VALUES
	(1,604430638514176,1,604360484585472,604430227472384,NULL,'2020-04-13 22:55:47',NULL,'2020-04-13 22:55:47'),
	(2,604780879675392,1,604357523406848,604430227472384,NULL,'2020-04-14 10:31:39',NULL,'2020-04-14 10:31:39'),
	(3,605088808697856,1,604357523406848,604434841206784,NULL,'2020-04-14 20:43:27',NULL,'2020-04-14 20:43:27'),
	(4,605088833863680,1,604357523406848,605059347906560,NULL,'2020-04-14 20:43:30',NULL,'2020-04-14 20:43:30'),
	(10,606491744665600,1,604360484585472,604436602814464,NULL,'2020-04-16 19:10:50',NULL,'2020-04-16 19:10:50'),
	(11,606656941522944,1,606654508826624,605546499538944,NULL,'2020-04-17 00:39:03',NULL,'2020-04-17 00:39:03'),
	(12,606656958300160,1,606654508826624,605546625368064,NULL,'2020-04-17 00:39:05',NULL,'2020-04-17 00:39:05'),
	(13,608648329953280,2,604357523406848,605939606487040,NULL,'2020-04-19 18:35:35',NULL,'2020-04-19 18:35:35'),
	(14,608648464171008,1,604357523406848,604436602814464,NULL,'2020-04-19 18:35:51',NULL,'2020-04-19 18:35:51'),
	(15,608648581611520,1,604357523406848,605546625368064,NULL,'2020-04-19 18:36:05',NULL,'2020-04-19 18:36:05'),
	(16,608649412083712,2,604357523406848,605518758412288,NULL,'2020-04-19 18:37:44',NULL,'2020-04-19 18:37:44'),
	(18,608650267721728,1,604357523406848,605542129074176,NULL,'2020-04-19 18:39:26',NULL,'2020-04-19 18:39:26'),
	(19,609257493889024,1,604362413965312,606442201546752,NULL,'2020-04-20 14:45:53',NULL,'2020-04-20 14:45:53'),
	(21,609376008142848,1,604810969612288,609172852834304,NULL,'2020-04-20 18:41:21',NULL,'2020-04-20 18:41:21'),
	(22,609380546379776,1,604810969612288,605546625368064,NULL,'2020-04-20 18:50:22',NULL,'2020-04-20 18:50:22'),
	(23,609381796282368,1,604810969612288,609170420137984,NULL,'2020-04-20 18:52:51',NULL,'2020-04-20 18:52:51'),
	(24,610126956331008,2,604360484585472,605518758412288,NULL,'2020-04-21 19:33:21',NULL,'2020-04-21 19:33:21'),
	(25,610795167678464,1,604360484585472,609172852834304,NULL,'2020-04-22 17:40:58',NULL,'2020-04-22 17:40:58'),
	(26,611566852505600,1,604357523406848,611555762765824,NULL,'2020-04-23 19:14:10',NULL,'2020-04-23 19:14:10'),
	(42,614225353375744,2,604354855829504,614196748222464,NULL,'2020-04-27 11:16:08',NULL,'2020-04-27 11:16:08'),
	(43,614226234179584,2,604354855829504,614196806942720,NULL,'2020-04-27 11:17:53',NULL,'2020-04-27 11:17:53'),
	(46,618774227058688,1,604357523406848,618773941846016,NULL,'2020-05-03 17:53:56',NULL,'2020-05-03 17:53:56'),
	(47,621552710189056,1,621552651468800,606442201546752,NULL,'2020-05-07 13:54:17',NULL,'2020-05-07 13:54:17'),
	(49,622407081525248,1,622407047970816,606442201546752,NULL,'2020-05-08 18:11:46',NULL,'2020-05-08 18:11:46'),
	(50,622407459012608,1,622407047970816,604430227472384,NULL,'2020-05-08 18:12:31',NULL,'2020-05-08 18:12:31'),
	(51,622537742483456,1,604360484585472,605242244726784,NULL,'2020-05-08 22:31:22',NULL,'2020-05-08 22:31:22'),
	(52,625139041435648,1,625138957549568,605242244726784,NULL,'2020-05-12 12:39:41',NULL,'2020-05-12 12:39:41'),
	(53,625320805793792,1,625138957549568,618773941846016,NULL,'2020-05-12 18:40:49',NULL,'2020-05-12 18:40:49'),
	(55,627633326915584,1,627633234640896,605546625368064,NULL,'2020-05-15 23:15:23',NULL,'2020-05-15 23:15:23'),
	(56,628381422977024,1,628380550561792,605517097467904,NULL,'2020-05-17 00:01:43',NULL,'2020-05-17 00:01:43'),
	(57,628381523640320,1,628380550561792,605535921504256,NULL,'2020-05-17 00:01:55',NULL,'2020-05-17 00:01:55'),
	(58,633795128590336,1,628380550561792,618773941846016,NULL,'2020-05-24 11:17:47',NULL,'2020-05-24 11:17:47');

/*!40000 ALTER TABLE `user_favorite_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_update_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_update_info`;

CREATE TABLE `user_update_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增Id',
  `uid` bigint(20) NOT NULL COMMENT '分布式全局唯一Id',
  `user_uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户的Uid',
  `sex_change_number` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户修改性别的次数',
  `birthday_change_number` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户修改生日的次数',
  `password_change_number` smallint(6) DEFAULT '0' COMMENT '用户是否修改过密码',
  `last_sex_change__date` datetime DEFAULT NULL COMMENT '上次用户修改性别的时间',
  `last_birthday_change_date` datetime DEFAULT NULL COMMENT '上次用户修改生日的时间',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，基础信息',
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间，基础信息',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '最后更新用户，基础信息',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户，基础信息',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user_update_info` WRITE;
/*!40000 ALTER TABLE `user_update_info` DISABLE KEYS */;

INSERT INTO `user_update_info` (`id`, `uid`, `user_uid`, `sex_change_number`, `birthday_change_number`, `password_change_number`, `last_sex_change__date`, `last_birthday_change_date`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(1,606474589962240,606472836743168,0,0,1,NULL,NULL,'2020-04-16 18:36:45','2020-04-16 18:36:45',NULL,NULL),
	(2,621030116687872,604354855829504,0,0,1,NULL,NULL,'2020-05-06 20:35:59','2020-05-06 20:35:59',NULL,NULL),
	(3,621031802798080,618579988840449,0,0,1,NULL,NULL,'2020-05-06 20:39:20','2020-05-06 20:39:20',NULL,NULL);

/*!40000 ALTER TABLE `user_update_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserConnection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserConnection`;

CREATE TABLE `UserConnection` (
  `userId` varchar(255) NOT NULL COMMENT '业务系统用户Id',
  `providerId` varchar(255) NOT NULL COMMENT '服务提供商的Id',
  `providerUserId` varchar(255) NOT NULL COMMENT '用户在服务提供商处的Id，就是openId',
  `rank` int(11) DEFAULT '1' COMMENT '等级，无需关心',
  `displayName` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(512) DEFAULT NULL,
  `imageUrl` varchar(512) DEFAULT NULL,
  `accessToken` varchar(512) NOT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `refreshToken` varchar(512) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userId`,`providerId`,`providerUserId`),
  UNIQUE KEY `UserConnectionRank` (`userId`,`providerId`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

LOCK TABLES `UserConnection` WRITE;
/*!40000 ALTER TABLE `UserConnection` DISABLE KEYS */;

INSERT INTO `UserConnection` (`userId`, `providerId`, `providerUserId`, `rank`, `displayName`, `profileUrl`, `imageUrl`, `accessToken`, `secret`, `refreshToken`, `expireTime`)
VALUES
	('604354855829504','wechat','oKYZ_1EQWEG7jYIFV-86ZG3U_2K4',NULL,'慕一春',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKR6AG3hwNQpnQDQ7jYoXpMzskvWN4XcRZGncxo7BAB22I57DibFLlScp3PV4QjpM1sicsAIOl6iabSA/132','33_KCeNmROa8F2Q5FsSAQhvedERNK-GLHExkHVRMPVwtDc5JSL-9xSCexivFMWfst1UpMgVI6mIRyLalCXbRKCdmw0SpzmaufmWVFFRiExMtyA',NULL,'33_686Dq168eWP0tkYrWzcME4qlIrGJIAYaVl2ggHdg44ikUrJ3VxTifW_sVC3MnOwNqzVahcVX1P93cLhXKD8JTpv6L4TqilAPEK2U_6uj30k',1590057196799),
	('604357523406848','wechat','oKYZ_1Lqlb3jKODFnWI-zW_UNyIY',1,'苏会钰 Harris',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/YDZLEeqOFb0XYDicpXoRwnnzWEbxhxNuELjSvYXGmnyV0edOPQMRKCqNhnZcsbIQUHp9KkSKibwk92cmhkIdPfCg/132','33_4wFoJc3avgEqiRXaTKwqq376V21Dwe8lky6oo3L-K0UHURi-0_c7aWG8KXi0qBIsNcAirkLi3KIwvpKBEZApvObZWqpL0c-J42A1-rSEy6c',NULL,'33_Beeu4czfvBl3ikkwvbJ8HwG3duj9fF2qaypTyecxf_WXr7GQw2dtryjPKf7Dc37BG0wprExWYytBV0bVCFdR1Zrn_eRDdNtSxCAxwzKfAMA',1590059343889),
	('604362413965312','wechat','oKYZ_1KZ6IDxWnER6fDhRDrJNsJw',1,'落花影中游',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/A4K9zF9rUoHAzUxwicRloRggz8aic9IH0kenibT31OYHJ9G12FxnYpmfkNfwnnfJNh4naDiargJyJjYj7ibK6cmm4GA/132','34_Lc1zf85quUaqZVraXmLjCwplDOQ95ZBaoWy5-WEiIovswZnj8-LALBN22Htdd-UXH1QZ8sC5nYwptQCpb7xRqXjUfKeYz4V5AxmjSCWvr88',NULL,'34_NeX18akSxbx-h9owfrfl_GMrI8_wZ8ls6ahWstwxh42q8JDk6b75-9iHchILAbbZ8lolIfAYdA2ZaniZ45xmoXPgtGinZAVMy9pD6qFFkRQ',1592194486982),
	('605515210031104','wechat','oKYZ_1FllUFgUomiAIe2DTQDBfxQ',1,'武宸宸',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/d65EoA9Jibiaw4FfrqglmPEuhA5QAj79shIOAURhR00UKNoevvKcXRYBFwziaXUcvQUfhgbCrdwXqLLUkNicROv3Tw/132','33_849hbo3AxISv3tnN84Xhcihb8aByYTqO2BgdfaJ6VHhZQT7Ux4Jet1BDZfJ0wPCv3ZZ7ltUlIw60COIiFvwciAcnvVxEg1GZhkvLGQzldW0',NULL,'33_JQIGQS6F237EyjXM-WbcdGrYz_gE4ATQ8wTaNKY9PBAFx6A6KYdSQORfpdntRZ7FkKvLSw4Al77dBhpRZqY9n-j7UBpWIGCn7VP1SwGOal8',1589987043701),
	('605690674544640','wechat','oKYZ_1PEotABmZcjUFUOj86KVkZ4',1,'金鸿明13104550061',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/6mNOxla7nQbIHMprLBBeKYnPfGf11cWIR65bAOR6aurkL9qqneHYHF2DhJlHSd3BGKic2FlQCU4fFoicF82tuiabw/132','32_qr8Boz9PGjOo0VamWEjKr4DwIaJlv2rq41ZCokAH-yWRrgDosSc-vRGRvXzusz7Kzu_MBcqSVaOHZP9vFdotbmgAv-Kf1-qW5w0lN9vAbWY',NULL,'32_XSB60Us2dbiEn3_pdAfCuG2MJlWWinvXKAmAp80aeEgr34LdpOD1bvEmqU1KGc39RTQ35ZQ1C--ul9ye7qomGLXRoaP1-YsdQ3rsQis5qiI',1586947154888),
	('605954294939648','wechat','oKYZ_1PPNssN0_UuiuEMXhj_rzIw',1,'Nil Xuan',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/FF61ibTszgIXpPJg8T1vWNT9JavykCpP9tL0jIkiaicPMfSucRsrSTvz54vnRuuibB1uUyOQAJWiaa62QhSIH5Sfm9A/132','33_li5VsVdwrJVfAoFY55UFGpkzgziK2U4oebUvM_-2O6zs8l04WzzzrshKnAScn1JxzI5MT-qKmOhawI2ckEOujSVtrW3saWF2UpDpklNiNec',NULL,'33_VY7CPczZAQd3KyKH5uqbbS5KeT5RrntMbNfAlb-q2zlSM6QlVgc-hGt5o0pYj3cXDV1kJclnVQjM0AiS19taGi3fy-aorNNBLMHnoGQZdpg',1589223015393),
	('606446706229248','wechat','oKYZ_1Lc-yNwkOU3HeffASqAFS-Q',1,'铃兰的珍惜',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/095JR65hQhibWiaMCftgEL8Jricia5gptaFibzWjo2b1ia6QPUsl5TES4yM8xe5AtGLssb36ehI1xIqa0fdl8HVEwdqw/132','32_eZQxIq1o8CqMOsoagORmT994fLFikZj6C4ZIKVLuJGGBVKHYS1pAkG161dW0zUuA_e6XZ0cjDPTTzb-DQ17E2on4-fq1WDytQBx6BQ9d2hM',NULL,'32_cDyjR1kiD5gnIAgTQ1geA7_Gvba60xXiS5BHEsNrvR7oDEAy9wI62E6tzvzY9zI0H-kGi5Tq5IVTSdfMPzirWhTUEPPYVcULrh3MiQdgPys',1587037281102),
	('606472836743168','wechat','oKYZ_1NyxrIo6VmXiCC535PywXqQ',1,'A·辉-少?',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/gewKx4PoVhq2MnUeg9QQVD6JyvvvLCQUdSkzXDZfXYcBz1RYukvcqcgc2cno9QL5heaXib97G8MziagEkX2ZMTuQ/132','32_CTmnWc03OZxWeXWzlvPwJc8nKXYziqzCoBW0MngMxbs6dgbGv6DCmA9f0McJX1l-J6qeonUWuADkXjYUOr7apsd3BtiF6zfraqaowDz7XAI',NULL,'32_wzSWIFDDR-TbgRzjxQ5Gpv-JCgx76-wvn-Uzw-O3pKY3DQSS94x5WlrjA7FKQPU1G7aaRR-WDlVfPKdqM-7Y-LSnr3aWMKWsp3pr6GvaZko',1587040543468),
	('606478901706752','wechat','oKYZ_1DOPboI6PABvgBjMeNutAbY',1,'孟一凡',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eojywVIFcl7hQLgawlFeoSjsd9uNZ4pC3Xn1lul8j54lIBEDo6j5osYIzB10UicOh8tQf5JYlHfCJQ/132','32_pGufnPPAp6MsPDKcjXWl49xqUYRE5ruO2aYa3V9oiM94S5oGe2cR4S1e3-Fvv1DDd_m9_mIeMlZIrldPMaRn6oDHoo8bDtjxM5TqKFRzz4o',NULL,'32_n3WI95qbyPJxe42TxKXfEYgnSrfgiTGFWuksr4FRB_gQcr_3UN5IyetzWYKkqPxXOI2GMjwpDHjoRUxCmKYhmkstinZdJ9q9PVWlTTyUz8o',1587041158528),
	('606654508826624','wechat','oKYZ_1K3jiHOHGGJLGbbK2BfI9aQ',1,'现实的理想主义者',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/auOMOVSZKkRkgyPs8m5CCib3OwNHsaoqCkzOsXsmr4kBTpP9errO5Q2J5klDvgB0gLe3PoeTdqCYl7caxcOx2HA/132','32_lyRKLrtreta5MkhKvMTqbSwuhBR_86RZFDlwuNCErJH0fpohBU7JKFjUzcyjZnpT1TSi7Qn_gpmU0lc_WQ9KfN55CClOnz_ed_1MAjdM4Po',NULL,'32_UWlXBRfFCZFxIzTOQ1vfNZoLRFUrLsJMxoZZwTShEhWvJwZZKgMGha6DYQIoTxp6Mfeg9r3FnSwl2B61lpp5AU6jJg4M6jGpXdi7MNn5fWk',1587062204568),
	('607945893085184','wechat','oKYZ_1Mw6iQDi9qWKAaCPcbqoCLg',1,'龚晨',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/zYNm1iay2BtDXCW1fPU3fDrS19mvC0UiaZJoKw2KpJsOVMC6TibgbBU8sh5icAibyicNxVEnoh79Ewr0aGhBRPEoz0Sw/132','33_k1ZyP7DOBmNLncsPzCI2hxW-bGaAwb7sG2rEsI4E7Ucx2koIKCwgTfqXLkygJflg2_1YCsrp8KdV2JlnqiuSiRrUL8nUZJNdVHhxfKNCsDA',NULL,'33_5KAJ7F0uIunqHlv038Ix-90m0Y-o58Ig-E9V4vOrxYZqwygFL1DyEVOd2Zj_NJzNfbTlIvoxj5mTgLmsRRXerUXQQ9u5ehgXT8iaERe4Hgg',1589884358540),
	('614890175725568','wechat','oKYZ_1Hv4J_jT04pulQJ0cXD8sl8',1,'燦曦月',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eooC2ddEFsib8XIlWdDVdkHYB8KOwyDSKg9x7wf7eUHJZu36wWjTUPcKAwibTY0H830NtgdP49jia17w/132','32_SPNslOpm3JedjWk9u2pvSSHrqEI3im1aSGJ7qQJFgYchTkVlysRFS5F86gRp7icq5mFv-quxgnN5NbTCbI78F5DaeW_7Yo4KH_4kpsEYAYI',NULL,'32_aKHuqitCTl34ysqJB93Ht-QtI_C9kXVfy1bgc6lrIeFEjB4lgyvCriHu3tH6TrQyPb2R3mc_6fLTYTLQeh8EmpusRwT6R4l9v3wkVGmGtH4',1588043821558),
	('621504702185472','wechat','oKYZ_1BNHhByZBVuaia6Rw1QlaUg',1,'滴墨、...',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJpz9ibulpXVgTXL6nibYvNln9oib1XSVxiciavaF7F76FOOj9NewQCP7SRUUdQaMc2gGgy1r21kJo3Tmg/132','33_Tcdnz8mrarvhg3ueoEeDd3QVvJBI3LheZ74KdydrHJuLEQj6pkRNg9AIPmAyhGXzJi6mWmYbHSEQ7fPQoGhSAHDqy-IinFm_rFbhv3c4ixY',NULL,'33_1eT1P7b2N3t59nPATly3-x-g1j9OwJspUx7jHmVYhOoD6-RYC__YpUnIyJvZCv0n-Eiq7MokaZMhC61aIZZrl6lhOF7pQUwVtBk5ugSU8k0',1588832333846),
	('621552651468800','wechat','oKYZ_1DcRjJjrxAfNQ-eE5tTTDsA',1,'果果',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/mfm68Us8Be1NlC9Ogg2dJtYx2yA6K0YhKAYMpMLzWicYoBPWsaT6Mcb25kCd6nuwOCkG60pIg6HS9hgIW7ItOKA/132','33_5oTQKNno_Rcg24Wih6OhrqH_Rr2wkQdcsvVSkaiISz7nyso0-WzakBwZGcmT7lX0q6pYnUG7AHc1KmyedQrUn6Ndo5-Z_0YiFkvXL6AM3RY',NULL,'33_lcZkSjfCWbSdIiQwj4N0QPK51UHGz8jglhUyMwA8mn160m1pw3IEPr42bYxwZncsPN8KyQPVr_SkVSAnL1S00R-mNSKaFOu9P5r0gHH28jk',1588838050124),
	('621763197140992','wechat','oKYZ_1M80cu8hMcqqWzjKq9wkxMA',1,'明月清风',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/K6wiaeycjesZmbHntDId5SQ4GxZ8gy9rbjsSNJ3gEJWzqxiaLrJUdxUWRPzOY7lu88UwD13jL3MckkiahkPUMButg/132','33_ea9SLwGcgdYGupwm9SgKHT4fDVsYhDa1b_qpLfIcBBRWNBeW0uCCpYZgsG7VbKR0IGQQY6ng4fUrPkix6RE1GIFO7yc7g7rWYRtJIRgZSjk',NULL,'33_lEiXuTlFuW2qS9lEvPxML4WGnx-nAwRS_Bt7WV9r5baJ-XGYhT8rSSqYxg7Yaj7b14Td7cf5ByplXSxCMG3UXiUA38IjmExSoCCRqNmA2gQ',1588863149255),
	('622035617185792','wechat','oKYZ_1ORO3F9GaKVgrBq6TZ7CBPg',1,'z',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/BbRWUicCOCyjtsWbJ6yvhrVQ02r8rfMiaiaLwczibXpwBNdE4IA3NQicBYBWmAnbDITJhUa0OUk2ekd5cjovxfGaiaUA/132','33_5NAnLdqySWY-CoVIph40jyA9zYYxfn1CJ5ZanF7co6noM9PtnQ-lvU9IyIaDAN35WVQ4_umu3hf28rJBIumFKpC3ac59b6wVpBhzMuf_jM0',NULL,'33_ABSBgN8Drm3n87B3DQcX9fW_m5V6--y-7JLkS-5CwZP0hWhVAvdoCqSr3D-bzQVB7kS6xE1AEL_YzMP8Sc7Cvw6QOAvYAJBJozCbQLNIA1Q',1588895624125),
	('622292753186816','wechat','oKYZ_1DHWXNbgACMRiJEG-iqtqMU',1,'zxdfgf',NULL,'','33_hBRxpJb6u0xNegZsfCPMgrWb8Xtk7TC0vrINt2RC0CNUdpLhlNULGsE2F-jqB_kDuyAAGfG11ZwyWMPaeobin9kbyhHvVTvZ9OKkGrQdneo',NULL,'33_wsCEWIMOxAiTGQ1tfI2wPWkCAjlJ2ShWCcBgb2VKlsq8w4VCTMtD8093EsHzzrDW-d9qAbgstEj-iROIJY0PrdWlKu-gzOjytrQRjlkU9Uw',1588926277142),
	('622407047970816','wechat','oKYZ_1LAUKvOcdMZKMcwG3Y4ddvI',1,'Apy',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJsszO0GeFFRV5qJjO3hic2hPXkuCwrweskzzXdfMQbGnicRO4Z7oaFaPNIYjvmJrkGibuR4uhkXeTUw/132','33_J9ioMmo0CeFi6Q28u0Tgx4SEBKHR9lmxRpD_bsVmLSdEatflk3lIrLTpbsT854m1zAWTThLLSWPADYiyPiGxa07s6tqBAXLNc3Yvr8irMhw',NULL,'33_Z4JwqE8_oMTqpubmMueYSrF_ARlKT3YUfI-vADkTwLo3yjN28a7rGZWldBnBv_bKlcHvLqU9wYfK0_YDX3gmXZwseVcrSHvf0cpMUMSBXTI',1588939902460),
	('624782995357696','wechat','oKYZ_1H3B7xZB7In1hb3yLf8qM3M',1,'灰色世界',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/0Fblw9xEBpianeRNTmgBHxTPVgSJXGLW1ryQOfOdQtVZvvgwL15w7UmT4oicsM61JNRHPnQWF6Lt6ApVMCicayb4Q/132','33_z7vIOtJ4NhDgQdHacYSidU_UxzAZJh3g7HuBwVXSqx2wKjuYJZG3yDYABaEISn1hunrzbuSzqrrVz1QkS88sNil02suL7Ilrxse-MAOySaA',NULL,'33_yQj3WydP_VMZ8y59YwiUBXZJTZNV3-o5oni59Jn6TKexgQsCS9twA6-vWRPsfg3qmLKu9rFvTVviUf1rW5CDxV4C80LRHMA8HohUIuWgfQs',1589223136811),
	('624816222633984','wechat','oKYZ_1Ejz9xR2nrZAJb2-u-bVjt0',1,'有腿毛的仙女? ?',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoFELsgCo8UtZx3icnic4efAia06o1ia1XXsiaFcTgMzoJI6geXFvaEhIsRGsDsqnXtbYEoicJUZIcW6VZg/132','33_h7a_KsnGStP3y2tJABmHHZFuGum6tS8D7xOFktjqj0XzzFAbdou7JY7rfIcQpOmum5LNcUDvbUAF4RJ1ryFTxM6dRUT2fRkviKE3P49VOGI',NULL,'33_GPppUrE8sq_4orgIEoQ2xHsI8eNSUoRzLg2E0Wtp08u5kjwiVFrDKHTGAfZGXbECdqYluZLDxMt1HgvBWqatdwGp7pFuGUSSyyvLujHTn7o',1589227098627),
	('624965565022208','wechat','oKYZ_1G9uCCtnXx8L9s6q5JmrJj8',1,'fmc',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/IZd3jUCN7twNX662BB3UqUG2ckT8y6iaEvR1s3vMvxG1iaJ3eb5NvHKIqODWCSvIhZMibjxW1uTgwCibsnUTDVAQnw/132','33_2W3B31twWgu8e4daS9nuiYgO2hYxN8NPSCYbry-eLkRDAM3GvzsE89UkBLHcfKS2Ngtij_Psc5KTtv56HX_lh_4KXljteFeJEdkwUiwZLRY',NULL,'33_1bQtVpmVC-Xi-pt7JoGGMfl9Yyld3OuK72JOh-YdJ76Nw6ZUZiEykKvEoNoBAa32O06Bf4yDkbBsVpGv9ZTFjJ5WNf82mjbl7DA3iM2gpG4',1589244901374),
	('624991108333568','wechat','oKYZ_1DdtPcdr1_4tGuXsAOSQLl0',1,'April',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/TJrrqtkTNnElZRSnwr43jF1WXXXvR3T6vwShVpqutSbo2ObnttfD1ia7YCYQFVNIxhZzRJJ3bQA0wL3Zn6OLOrw/132','33_7aj5hXQQmAqjNcVQVcP3rW-jIBG_q6Rbt3Q1Fu_KuflDSD57G3k81T7loguYeCx1Pp-qbrnO_w0-tyHCEO0XV43UjUAb8go6_Zd3h7wZ5do',NULL,'33_OFfU4WfkPw5Llo0D_IVSy2a7-XKcEeAYW6eufEoBn0lKXJZbypJo4QlzWnc5uukSNsz3_Fp6XJ0LtIdUQg6gDHP5ywTlvllQmllFBEQY0IQ',1589247945935),
	('625000688123904','wechat','oKYZ_1MDZXEwLpsDEKr2U_1hsL68',1,'神经元计算机',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/XiavBmJu8q9dZSmw0VLXJY5hiboHAUicjWfxTibOzslXXbJiaggu1nwyzHHO8mtcC8AysosaAglphdAnrj88rxMD8tQ/132','33_xqTzScFhFPnUGeRqOho7yP5f62dWVsQ8qph2_r9gJ9bVpdy4tptRpsP20v8sY2CoVnRzV4O9F8yIkvAWagt6q8RpJduudhS-5GkUouaLXd4',NULL,'33_m8MhAYEIgiABS6DIHPYfBmhNnpFGLbrBUg_lLE-kRvNnuvYeJxRd5-ruoJ8rxzxeVsgtLJ_iSE9YcdHGkwrGo_DpyxODCsEF3ZNHSfug1Pc',1589249087885),
	('625008833462272','wechat','oKYZ_1Cs95LTl5usAvRs-jZVUDOc',1,'三个苯环',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erricoA1CKibMy6grTkuUYDRXF9Iicwx1hzISVeaSdv2FdJJElZwG56dhXhicvAvyoGSNtGrXq3eEwnhg/132','33_9IZ9BCg8lsTVB-9KWi92BHBIdeVig4lplBvA9wDAUFGBPRdpkuOFFLMCuqceaT2yO3v3EsYvih9PQmtFos0eNX_gFgYPpnqgtf0zHuLaJQA',NULL,'33_mkS-j0ODacMnWAyeuyHaJ6w1-Dq6-QGHMMIUKkuBowA7FTzflzVdTddDFZo1xCfjGfyDNYUUTxk3TCRKNi_7_d2BoqDyy4kt6Msz9XPdS7I',1589250059602),
	('625042949931008','wechat','oKYZ_1OqhnD4kI0x-e_wqxR0M8Lw',1,'隙月.',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIcne8lbXNbTtnajdD4rsQSDQa09cx8YGRJwbfNiaXmP9UG3kXdQYc6O9MSgTP2vSBiasBMk1mu3hxQ/132','33_LrMABJbtPjrtQN0kzsYUNoBgHcfr16qHoaPikkAtNCra3onlIa9Nv_E0oAdQNmO1khmlSeqgOaj3m7v0oIjA8UPchaeRWJAopqoaJ7MYci0',NULL,'33_NuQSKhk9Re_AOjc2VWahO7iV5h3UbZ5uOzuzDQ-55nQkA9QdWKu_iFRRo2czxvJ6i_I_ybeRm3BDlrxzfLhU2L7mW_LopTRcXBrjqvMgr2Q',1589254126229),
	('625124352983040','wechat','oKYZ_1EWgbEnIzCh_PdtGCzIsK5A',1,'畅通万里',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/nPFNRGqaNUrRdVgXRwsEhlbic9VRKYKN7Vj9XEKgFZnLbsicy4UoRJAicaZdS5LNE4Et4QSCBOe5OB43JC3o0OR1A/132','33_zZxnIS6sU0X1zU_E2q2pl4NGXd7JA4-GM0cYDjwbvC7ODdVH9bZpu6IHKi2KPY6yNUX0p6UbbRKXqpiNHvKKErlMXCz3oWyaylUYOkhMgUg',NULL,'33_hZ6eDYKaIpCIom3VTYe1w3WKVXHbahjOrzC_AVeMJml1go6-3HwDR4DtLV3Fq3ZnrBfKtXpTuQHVlvLMwTqoFbFue7a4NG7De9NKRfFjdH8',1589263830586),
	('625138957549568','wechat','oKYZ_1EZKsjHEK2VLdhpBPqaESFk',1,'(・V・)',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/4Cc2MNo7VanwjGYw9YgFCKpaueQ9FSIWucKxicGfwewlPQQPsicsqicENO9iaBkU4IKh3tAjbTZDoCbLEj3MpUWQlA/132','33_VtG3sYW5CWaPRYuvoiyJU3-34Ijwe91TlV82SmjoOcXwgoTtNzjaxpzolvJ5zGkkY1UIGJgJM2KsW-RK6et_ZPgvzWiRl6QdIsHILvem0C4',NULL,'33_Vduv9iFNTnJ_SV8UcT7nClXnXzPglQ-IT8UuF4TdCKjDzzcDfMYSc9qz_vHU5qfED3KfxrRXfZ3FhYVQtHpLEwfi6umSrKAOWwcvfTOSvC0',1590330768947),
	('625275868020736','wechat','oKYZ_1H89jCM0FT-6vP0UMWQS_QQ',1,'微微一笑',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/y3odao7JUt2ODZyic3EpFycoDX0rO6QQZU666O4u5QE6mafiagdZiaVjkBPKCcFSNWe6cFhUxrWUqCHwuXQy7aHew/132','33_YANff6wlqGZavgb86ad-A-mVH5AxdcpDnZgkfbC2BSD1TImt_hnjsV5Wdm73dUjj0AUTnKYLibxkxc8SbrhOxMAmpqflRTElYxOS_jw-l1c',NULL,'33_rJYxobAqhyVRftqpmCnmu2G5O_beHYW0nbq4gggnVkVLQV9jbhZzZpZ3QPqeiP-52IiICKuWj4UbKBuIdDzqMEGoxghwmgFoDGwnNaEEYdg',1589282097236),
	('625324765216768','wechat','oKYZ_1Am7sQWG7JzPSFP1DWmSwA4',1,'曼',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Cicq3WF6DWSpoaDrUv9dzOxtBcMibE6TmdRoPzgYWiaP3gAh7icf9xhc6iciasLRwcBvDJC8NyibOwkxeDVOBDS95TWzw/132','33_imQC5LZGci6p79wOxs_LF7ZtR170-Ge3bUpfjDhIiYOV6C2Ad_GcScQkQZOsTwjlXcd7gt6HGMNvqBAVVuZIuPR9m_717YOq8QeVaA7SL7c',NULL,'33_kCj186ICNB0PmoLIcWMgCSvNnNJ5nr7JzgCXUe90FiJklpMVSOrjSZwkG9Pb_ixmrasFqwjNhJbrCrU7LDnlgI_9enHhEGc1mh0XRkBlPIc',1589287721378),
	('627350790209536','wechat','oKYZ_1EpJ8R_Lzqmk7pk6hZBWU3A',1,'铭心旋律',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJe602QgRhZOhaaaxtic8Nr9GO04UiaNnPCvtiaZ3bncfNbQHBEkgJlysFD129vzurpBGicm0vdUS18aw/132','33_8jN2SKu0xenOud9a_JYnh5Neyg0HUq9ofYt2Wua7UeBg_7PCThw1dikuRue-dz9jqIdTDfSdnvMRFMukDufQdR6Up7T_vo0eAq-MGDmQ3NA',NULL,'33_Hv5Gtn0OpCjJugWLayW-iBb67Dd0I4t2ZVCgwOE6hBpnsIPffwT-L1FeN_UtmbTcbXFDnnWuwo8RQbvvAs_s6UtFtWdUwsc3oHkm81aI6kQ',1589529242112),
	('630290309447680','wechat','oKYZ_1PnamQjF4XaWcWPvUYUPp9k',1,'1号测试员',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Wz2mYOiaSwTvGjlObkLoKm6TpYgWQml2anrPpTLptnicia5SnvwLvt8v8uiba6r0icfJyMA0AxhYzBmGbbT0rOGaqJQ/132','33_b8TBCafVuyw6pqRq3-yU5DbBqKL5WEyRoZpiHb9UuBOCn-oruUSnKJviHkgaItamCyuYh-pWWjlx76b3IlGOOq_8dQ9TMG1uagHrMBRTY4E',NULL,'33_iTRAjalnzczQvscId2nhlXMsuDfpjhp7l_-0YVqWI6gC1uAz4nOSscKqB8ZyCyyBSRnqfGhwNi6l43ecwvJZEIh9hl2xq8IhJAt5sG325EU',1589879660203),
	('630940032303104','wechat','oKYZ_1HbURm5bnxVo7PUShlWK0wM',1,'三哥',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/6ejYgEC8IZI5bHibhJSu1woxxpdLAF6jEaUkdsHfVBHFFLnHq5SIHHvclAyMEfwOFbYEGfsXrzRib5rp18TqB1xg/132','33_fFt6ng8CLatwPV_C_L2tG7dqaktiVgeRIT_jWtl52hnd9jCxcjv66H6eSehaXDDLVKfHLbU66NuE0WwYcd04_udPzSWAh6142upljASNn0s',NULL,'33_HgTw0VVvHcc_MEgdtOuooBGAITQrlBmO2eiA1aA-OZd1CnuNbeBe_reKmZolS3__MShdNbwfyQlfpOCymEDwFWPuRNUXL0qLv31t1rguGyc',1589957113315),
	('631054276755456','wechat','oKYZ_1EfuSQk6FwL32lgbhm7s8JI',1,'十一月7号',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/7eVFibZnggUVm0e1VhyVguegxJZr36iamT26icibzoevf2BDfAFGb2R1RlqVxMVHfBXZhhBrrv7z9PMeZ8KVk3pQbg/132','33_CltSBMoxCtiAb_ZM4YsA1KpRhPbJI0Qvr-d5mMzS9QlvSjJtksRUweOn3CrR291YKR38p_LEpKHLjJaqRQ84KvlusI0SwFP_5QbeSWLWt_U',NULL,'33_3Gs-6M_ytW2zkz_A9xpmB_IbhZgOnlU2MkNpu7Q41YUzw4pn-8FWd6I_o2fsdjg-D7f9y715xZnNjlXpvdeTp2qfAn5moBTGvGc6GuxVhMc',1589970732390),
	('631088208674816','wechat','oKYZ_1J80D5UhEgg41C9eJI2zrH0',1,'瘟神的鹿',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/o0rv0kAAGU4Kicyu4k7TCibVEcCbgAxyWkFKAibsS8kiap96FfGPFice5omMvCibEoA1lMXYH2UgZic7w58cT4ASODnKw/132','33_F6ECSx6vsp98ovggzIAC2OWojBDQ_0kcvktz6-i5VTPnqxrjuY0B_aeLVEuF2oZ6K7ZxarhChGu6irz89R0cDTGLaun7vEQJDfLwSBnbaRA',NULL,'33_rPMlR158rekgQxtgYya8q5HBTECFCPoC2b5Px96_q4W3eRk8efPUmFK-y4SIAaZZiyyh6BfBP32R7U0A1FN9RCXLqF78vApFOWubGqOIRHI',1590030661549),
	('633836157272064','wechat','oKYZ_1IrBqgr_YJpglgZnTNUDONo',NULL,'Fireworks',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIyGSFgJLenG9Y3jaibIhDiaicqoiauM8jj90ME2iaZYvuGrJ1LSnAe8JCcDhKDIWyNLxMXyhlq65vnC0g/132','33_ivacZjp3CSJffXXCWjhIwF84sSuiVxjzNOY-NfD29u6jqXcgasyC4gSONw7TOHYlQs95Swz19_85gqhrENQFaFa09LhbTXDj0EODtQYJXkE',NULL,'33_g17CEoahYuxd797bVgAM45rUf1EtlEMfG5f8oB4xFkxsRA9sZ3T1QmOb0Hfij-SHgODDA4eguhPldLgRfquzbA3EFQj9t7iZnx5SnFnoZ_4',1590302388585),
	('634015950307328','wechat','oKYZ_1BXROCE71wgOdGKf2L252wA',1,'砥砺前行',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/HuMKxtuwznp5w44ficjjraGmHyz89VQ4LzuZhict48VjibdhznFVlvP7c8LAUSdSiaKf9oaHO5MicOSU3TkSam5DN3w/132','33_1hEznnq5UBkD8T70rviK7FyqcGuRXv7Ar2LjwuvS9bYWbktBWhX-KSzurwHLAkUWwZ8sr9Fxnh7K2lhAIGEojB-8o8DBTHlZHrubx9hsvro',NULL,'33_OPmW10tHXGiuibS23t0tKBo1k7VrJ0C7ws27EFMPXl-G_3nWvxPMvT4CVsd96bAVyJiSo_-B12cJbtTi-u6jCVG1f-I7MGgmzWmMkf2tYIM',1590323801595),
	('635541427060736','wechat','oKYZ_1DOrfBmFdMK37b73TzyHq9w',1,'Sure',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/tp2HxLZzibibDFhWIQibRmtVxgK9N1IIpPuFdOUZ1pgu5I28M0mAibm9z3bgscKaFWdfVIRia4OA0ibQbiamVNU7ibHiaicQ/132','33_bN49rZ_vpxt24V06OHV9nJFeo8H9VKHzAYqZS69-qjt8vufs9JA6HjWrOfZ_AIy7tmPV2qG0P-4MYRmWq64gx0Y_6KEiGXtVXxk-PLz39kI',NULL,'33_IksWTkNk_JNf2u1Z4yHzFW9XciEEENAHku7kThP6WwaLgCK4IfgDjPEcLmLoFXh09vRHXN5DPr2BKijffpWJGvGQMk05CjXkvPTWvYEByAw',1590505642495),
	('637799950712832','wechat','oKYZ_1LlXhCqqyWoFbzmFmob9jRQ',1,'ZawZawOo（李皓生）',NULL,'http://thirdwx.qlogo.cn/mmopen/vi_32/oJBA1xZF6ib7dkKAxrnAbTPCDYfM5yKHJupZ0dLhBIcACJibEaeWDJpMXszIKE7Uj0qIAlgwZFdOXib8PEXibMDlPQ/132','33_bXy1Ho8mXthYSxE1zz_dwtlYEGaVIGLHp_00-0tQvT5POLw8Asb3OwIAgzhI1hZOyWJJxvaPfMQb3rfJFWXCjGgg0X5IsxHASgyN3oODYYk',NULL,'33_9cXadlrylzWIXFfgC9g2jL00EfPCdyzTYYKqOAebdaCaVsNPa8yCXlCKjL4047E2Mp-Et1FOsPPgBGdLsPEVUr42z76MHp19i1necXf5PYo',1590774879476);

/*!40000 ALTER TABLE `UserConnection` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wallet_record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wallet_record`;

CREATE TABLE `wallet_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` int(10) DEFAULT '0' COMMENT '资金总额',
  `orders_uid` bigint(20) DEFAULT NULL COMMENT '商户订单号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0已支付，1失败，2已退款',
  `from_user_id` bigint(20) DEFAULT '0' COMMENT '该笔资金的来源',
  `event_type` int(1) DEFAULT '0' COMMENT '产生这笔记录的类型(0:提现,1:金币充值,2:活动收款)',
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `last_update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `pre_wallet_sum` int(10) DEFAULT '0',
  `after_wallet_sum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wallet_record` WRITE;
/*!40000 ALTER TABLE `wallet_record` DISABLE KEYS */;

INSERT INTO `wallet_record` (`id`, `uid`, `user_id`, `amount`, `orders_uid`, `status`, `from_user_id`, `event_type`, `create_user_id`, `create_date`, `last_update_user_id`, `last_update_date`, `pre_wallet_sum`, `after_wallet_sum`)
VALUES
	(1,611571415908352,604354855829504,2,611571382353920,2,0,0,NULL,'2020-04-23 19:23:14',NULL,'2020-04-23 19:23:14',0,0),
	(2,611580500770816,604354855829504,2,611580282667008,2,0,0,NULL,'2020-04-23 19:41:17',NULL,'2020-04-23 19:41:17',0,0),
	(3,614199147364352,604354855829504,2,614199088644096,0,0,0,NULL,'2020-04-27 10:24:04',NULL,'2020-04-27 10:24:04',0,0);

/*!40000 ALTER TABLE `wallet_record` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wechat_official
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wechat_official`;

CREATE TABLE `wechat_official` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `fromUserName` varchar(255) NOT NULL DEFAULT '0' COMMENT '发送方账号(OpenID)',
  `msgId` varchar(255) NOT NULL DEFAULT '0' COMMENT '消息id,wx',
  `titleIndex` tinyint(1) DEFAULT '1' COMMENT '当前第几题',
  `resultIndex` int(1) NOT NULL DEFAULT '1' COMMENT '分析结果索引',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0可用，1不可以',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `wechat_official` WRITE;
/*!40000 ALTER TABLE `wechat_official` DISABLE KEYS */;

INSERT INTO `wechat_official` (`id`, `uid`, `fromUserName`, `msgId`, `titleIndex`, `resultIndex`, `status`, `create_date`, `last_update_date`, `last_update_user_id`, `create_user_id`)
VALUES
	(63,630485126479872,'o2chf0fmeLhFvz2jLG9yShek_q_E','22761834773453382',1,1,0,'2020-05-19 21:41:24','2020-05-19 21:41:24',NULL,NULL),
	(105,630864971038720,'o2chf0T-FmGKb4W1O_PxJw00F-zs','22762483174739026',1,1,0,'2020-05-20 10:16:05','2020-05-20 10:16:05',NULL,NULL);

/*!40000 ALTER TABLE `wechat_official` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wx_pay_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wx_pay_task`;

CREATE TABLE `wx_pay_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT '微信支付订单号',
  `orders_uid` varchar(255) DEFAULT NULL COMMENT '商户订单号(微信支付接口:out_trade_no)',
  `total_fee` int(10) DEFAULT '0' COMMENT '需要支付的金额(RMB单位分)',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0已支付，1失败，2已退款',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



# Dump of table zfb_pay_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zfb_pay_task`;

CREATE TABLE `zfb_pay_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '局部id',
  `uid` bigint(20) NOT NULL COMMENT '唯一标识',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '支付宝支付订单号',
  `orders_uid` varchar(255) DEFAULT NULL COMMENT '商户订单号(支付宝支付接口:out_trade_no)',
  `total_amount` varchar(10) DEFAULT '0' COMMENT '需要支付的金额(RMB单位元,2位小数)',
  `status` tinyint(1) DEFAULT '0' COMMENT '当前数据是否处于可被查询的状态，0已支付，1失败，2已退款',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
