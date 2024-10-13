/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - hongshegemingwenwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hongshegemingwenwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hongshegemingwenwu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'wenwu_types','文物类型',1,'文物类型1',NULL,NULL,'2023-04-07 09:28:32'),(2,'wenwu_types','文物类型',2,'文物类型2',NULL,NULL,'2023-04-07 09:28:32'),(3,'wenwu_types','文物类型',3,'文物类型3',NULL,NULL,'2023-04-07 09:28:32'),(4,'wenwu_yesno_types','信息审核',1,'待审核',NULL,NULL,'2023-04-07 09:28:32'),(5,'wenwu_yesno_types','信息审核',2,'同意',NULL,NULL,'2023-04-07 09:28:32'),(6,'wenwu_yesno_types','信息审核',3,'拒绝',NULL,NULL,'2023-04-07 09:28:32'),(7,'wenwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-07 09:28:32'),(8,'wenwu_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-07 09:28:32'),(9,'wenwu_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-07 09:28:32'),(10,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-07 09:28:32'),(11,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-07 09:28:32'),(12,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-07 09:28:32'),(13,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 09:28:32'),(14,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 09:28:32'),(15,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 09:28:32'),(16,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 09:28:32');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `gongzuo_id` int(11) DEFAULT NULL COMMENT '工作人员',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`gongzuo_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',487,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',462,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',49,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',403,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',427,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',253,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',306,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',470,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',406,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',344,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',400,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',4,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',16,1,'2023-04-07 09:28:45','2023-04-07 09:28:45','2023-04-07 09:28:45'),(15,NULL,1,NULL,NULL,'可以删除自己发布的贴子和评论',14,2,'2023-04-07 09:36:34',NULL,'2023-04-07 09:36:34'),(17,NULL,NULL,1,NULL,'2222222222222',14,2,'2023-04-07 09:40:49',NULL,'2023-04-07 09:40:49'),(18,NULL,NULL,NULL,1,'333333333333333333333333333',14,2,'2023-04-07 09:42:00',NULL,'2023-04-07 09:42:00');

/*Table structure for table `gongzuo` */

DROP TABLE IF EXISTS `gongzuo`;

CREATE TABLE `gongzuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuo_name` varchar(200) DEFAULT NULL COMMENT '工作人员名称 Search111 ',
  `gongzuo_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuo_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuo_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `gongzuo_email` varchar(200) DEFAULT NULL COMMENT '工作人员邮箱',
  `gongzuo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工作人员';

/*Data for the table `gongzuo` */

insert  into `gongzuo`(`id`,`username`,`password`,`gongzuo_name`,`gongzuo_phone`,`gongzuo_id_number`,`gongzuo_photo`,`sex_types`,`gongzuo_email`,`gongzuo_delete`,`insert_time`,`create_time`) values (1,'a1','123456','工作人员名称1','17703786901','410224199010102001','upload/gongzuo1.jpg',2,'1@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,'a2','123456','工作人员名称2','17703786902','410224199010102002','upload/gongzuo2.jpg',1,'2@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(3,'a3','123456','工作人员名称3','17703786903','410224199010102003','upload/gongzuo3.jpg',1,'3@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-07 09:28:45','公告详情1','2023-04-07 09:28:45'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-07 09:28:45','公告详情2','2023-04-07 09:28:45'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-07 09:28:45','公告详情3','2023-04-07 09:28:45'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-07 09:28:45','公告详情4','2023-04-07 09:28:45'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-07 09:28:45','公告详情5','2023-04-07 09:28:45'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-07 09:28:45','公告详情6','2023-04-07 09:28:45'),(7,'公告标题7',3,'upload/news7.jpg','2023-04-07 09:28:45','公告详情7','2023-04-07 09:28:45'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-07 09:28:45','公告详情8','2023-04-07 09:28:45'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-07 09:28:45','公告详情9','2023-04-07 09:28:45'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-07 09:28:45','公告详情10','2023-04-07 09:28:45'),(11,'公告标题11',3,'upload/news11.jpg','2023-04-07 09:28:45','公告详情11','2023-04-07 09:28:45'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-07 09:28:45','公告详情12','2023-04-07 09:28:45'),(13,'公告标题13',3,'upload/news13.jpg','2023-04-07 09:28:45','公告详情13','2023-04-07 09:28:45'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-07 09:28:45','公告详情14','2023-04-07 09:28:45');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','8rjci29p7yu0gx86tbcv0jk2v84vkxnh','2023-04-07 09:33:49','2023-04-07 10:35:38'),(2,1,'a1','gongzuo','工作人员','khgb9ao6wn18pdarjzs53zny7qju8fjt','2023-04-07 09:38:09','2023-04-07 10:38:09'),(3,1,'admin','users','管理员','9yzjrlaw3b8k3ttjm2rroeykz4ode5qp','2023-04-07 09:40:57','2023-04-07 10:43:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 09:28:32');

/*Table structure for table `wenwu` */

DROP TABLE IF EXISTS `wenwu`;

CREATE TABLE `wenwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '文物编号',
  `wenwu_name` varchar(200) DEFAULT NULL COMMENT '文物牌号  Search111 ',
  `wenwu_photo` varchar(200) DEFAULT NULL COMMENT '文物图片',
  `wenwu_types` int(11) DEFAULT NULL COMMENT '文物类型 Search111',
  `wenwu_clicknum` int(11) DEFAULT NULL COMMENT '文物热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `wenwu_content` longtext COMMENT '文物介绍 ',
  `wenwu_yesno_types` int(11) DEFAULT NULL COMMENT '信息审核 Search111',
  `wenwu_yesno_text` longtext COMMENT '审核结果 ',
  `wenwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='文物';

/*Data for the table `wenwu` */

insert  into `wenwu`(`id`,`yonghu_id`,`wenwu_uuid_number`,`wenwu_name`,`wenwu_photo`,`wenwu_types`,`wenwu_clicknum`,`zan_number`,`cai_number`,`wenwu_content`,`wenwu_yesno_types`,`wenwu_yesno_text`,`wenwu_delete`,`insert_time`,`create_time`) values (1,3,'1680830925119','文物牌号1','upload/wenwu1.jpg',2,4,284,389,'文物介绍1',1,NULL,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,1,'1680830925164','文物牌号2','upload/wenwu2.jpg',2,37,151,405,'文物介绍2',1,NULL,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(3,3,'1680830925137','文物牌号3','upload/wenwu3.jpg',1,118,460,186,'文物介绍3',1,NULL,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(4,2,'1680830925164','文物牌号4','upload/wenwu4.jpg',2,428,143,78,'文物介绍4',1,NULL,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(5,2,'1680830925180','文物牌号5','upload/wenwu5.jpg',2,135,99,348,'文物介绍5',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(6,3,'1680830925167','文物牌号6','upload/wenwu6.jpg',1,40,257,430,'文物介绍6',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(7,1,'1680830925186','文物牌号7','upload/wenwu7.jpg',1,151,145,151,'文物介绍7',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(8,2,'1680830925193','文物牌号8','upload/wenwu1.jpg',3,325,62,270,'文物介绍8',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(9,1,'1680830925131','文物牌号9','upload/wenwu2.jpg',1,453,368,493,'文物介绍9',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(10,1,'1680830925121','文物牌号10','upload/wenwu3.jpg',1,258,71,125,'文物介绍10',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(11,1,'1680830925151','文物牌号11','upload/wenwu4.jpg',2,149,89,385,'文物介绍11',2,'通过',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(12,2,'1680830925152','文物牌号12','upload/wenwu5.jpg',1,124,482,349,'文物介绍12',2,'审核通过的数据会在前台展示粗来',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(13,2,'1680830925186','文物牌号13','upload/wenwu6.jpg',2,200,473,10,'文物介绍13',3,'123',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(14,1,'1680830925138','文物牌号14','upload/wenwu7.jpg',2,433,287,320,'文物介绍14',2,'111112',1,'2023-04-07 09:28:45','2023-04-07 09:28:45');

/*Table structure for table `wenwu_collection` */

DROP TABLE IF EXISTS `wenwu_collection`;

CREATE TABLE `wenwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenwu_id` int(11) DEFAULT NULL COMMENT '文物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='文物收藏';

/*Data for the table `wenwu_collection` */

insert  into `wenwu_collection`(`id`,`wenwu_id`,`yonghu_id`,`wenwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,2,1,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(4,4,1,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(5,5,1,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(6,6,2,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(7,7,1,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(12,12,3,1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(15,5,1,2,'2023-04-07 09:35:41','2023-04-07 09:35:41'),(16,9,1,2,'2023-04-07 09:36:15','2023-04-07 09:36:15'),(17,6,1,1,'2023-04-07 09:36:18','2023-04-07 09:36:18'),(18,6,1,3,'2023-04-07 09:36:20','2023-04-07 09:36:20');

/*Table structure for table `wenwu_liuyan` */

DROP TABLE IF EXISTS `wenwu_liuyan`;

CREATE TABLE `wenwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenwu_id` int(11) DEFAULT NULL COMMENT '文物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='文物留言';

/*Data for the table `wenwu_liuyan` */

insert  into `wenwu_liuyan`(`id`,`wenwu_id`,`yonghu_id`,`wenwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-07 09:28:45','回复信息1','2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,2,1,'留言内容2','2023-04-07 09:28:45','回复信息2','2023-04-07 09:28:45','2023-04-07 09:28:45'),(3,3,1,'留言内容3','2023-04-07 09:28:45','回复信息3','2023-04-07 09:28:45','2023-04-07 09:28:45'),(4,4,2,'留言内容4','2023-04-07 09:28:45','回复信息4','2023-04-07 09:28:45','2023-04-07 09:28:45'),(5,5,3,'留言内容5','2023-04-07 09:28:45','回复信息5','2023-04-07 09:28:45','2023-04-07 09:28:45'),(6,6,3,'留言内容6','2023-04-07 09:28:45','回复信息6','2023-04-07 09:28:45','2023-04-07 09:28:45'),(7,7,1,'留言内容7','2023-04-07 09:28:45','回复信息7','2023-04-07 09:28:45','2023-04-07 09:28:45'),(8,8,1,'留言内容8','2023-04-07 09:28:45','回复信息8','2023-04-07 09:28:45','2023-04-07 09:28:45'),(9,9,1,'留言内容9','2023-04-07 09:28:45','回复信息9','2023-04-07 09:28:45','2023-04-07 09:28:45'),(10,10,3,'留言内容10','2023-04-07 09:28:45','回复信息10','2023-04-07 09:28:45','2023-04-07 09:28:45'),(11,11,3,'留言内容11','2023-04-07 09:28:45','回复信息11','2023-04-07 09:28:45','2023-04-07 09:28:45'),(12,12,2,'留言内容12','2023-04-07 09:28:45','回复信息12','2023-04-07 09:28:45','2023-04-07 09:28:45'),(13,13,3,'留言内容13','2023-04-07 09:28:45','回复信息13','2023-04-07 09:28:45','2023-04-07 09:28:45'),(15,5,1,'登录后才能进入数据详情页 进行点赞留言收藏等操作','2023-04-07 09:36:08',NULL,NULL,'2023-04-07 09:36:08');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-07 09:28:45','2023-04-07 09:28:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
