/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquwuyeguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquwuyeguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquwuyeguanlixitong`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiu_uuid_number` varchar(200) DEFAULT NULL COMMENT '报修编号 Search111 ',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修名称 Search111 ',
  `baoxiu_types` int(11) DEFAULT NULL COMMENT '报修类型 Search111 ',
  `baoxiu_content` text COMMENT '报修详情',
  `chuli_types` int(11) DEFAULT NULL COMMENT '是否处理 Search111 ',
  `chuli_content` text COMMENT '处理结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`baoxiu_uuid_number`,`baoxiu_name`,`baoxiu_types`,`baoxiu_content`,`chuli_types`,`chuli_content`,`insert_time`,`create_time`) values (1,2,'16499234562594','报修名称1',2,'报修详情1',1,'处理结果1','2022-04-14 16:04:16','2022-04-14 16:04:16'),(2,1,'16499234562590','报修名称2',3,'报修详情2',1,'处理结果2','2022-04-14 16:04:16','2022-04-14 16:04:16'),(3,2,'16499234562598','报修名称3',1,'报修详情3',1,'处理结果3','2022-04-14 16:04:16','2022-04-14 16:04:16'),(4,3,'16499234562595','报修名称4',3,'报修详情4',1,'处理结果4','2022-04-14 16:04:16','2022-04-14 16:04:16'),(5,2,'164992345625915','报修名称5',1,'报修详情5',2,'处理结果5','2022-04-14 16:04:16','2022-04-14 16:04:16'),(6,1,'1649925209481','报修11',1,'<p>舒舒服服个个</p>',1,NULL,'2022-04-14 16:33:37','2022-04-14 16:33:37'),(7,1,'1649925245000','报修111',1,'<p>萨嘎嘎嘎过</p>',2,'<p>sssg</p>','2022-04-14 16:34:11','2022-04-14 16:34:11'),(8,1,'1649926788731','报修1211',2,'<p>报修内容111</p>',1,NULL,'2022-04-14 16:59:58','2022-04-14 16:59:58');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-14 16:03:34'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-14 16:03:34'),(3,'shoufei_types','收费类型',1,'物业费',NULL,NULL,'2022-04-14 16:03:35'),(4,'shoufei_types','收费类型',2,'水费',NULL,NULL,'2022-04-14 16:03:35'),(5,'shoufei_types','收费类型',3,'电费',NULL,NULL,'2022-04-14 16:03:35'),(6,'jiaofei_types','是否缴费',1,'未缴费',NULL,NULL,'2022-04-14 16:03:35'),(7,'jiaofei_types','是否缴费',2,'已缴费',NULL,NULL,'2022-04-14 16:03:35'),(8,'tousu_types','投诉类型',1,'投诉类型1',NULL,NULL,'2022-04-14 16:03:35'),(9,'tousu_types','投诉类型',2,'投诉类型2',NULL,NULL,'2022-04-14 16:03:35'),(10,'tousu_types','投诉类型',3,'投诉类型3',NULL,NULL,'2022-04-14 16:03:35'),(11,'chuli_types','是否处理',1,'待处理',NULL,NULL,'2022-04-14 16:03:35'),(12,'chuli_types','是否处理',2,'已处理',NULL,NULL,'2022-04-14 16:03:35'),(13,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2022-04-14 16:03:35'),(14,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2022-04-14 16:03:35'),(15,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2022-04-14 16:03:35'),(16,'tousu_types','投诉类型',4,'投诉类型4',NULL,NULL,'2022-04-14 16:57:31');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号 Search111 ',
  `fangwu_loudong` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `fangwu_danyuan` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `fangwu_fanghao` varchar(200) DEFAULT NULL COMMENT '房号 Search111 ',
  `fangwu_content` text COMMENT '房屋备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`yonghu_id`,`fangwu_uuid_number`,`fangwu_loudong`,`fangwu_danyuan`,`fangwu_fanghao`,`fangwu_content`,`insert_time`,`create_time`) values (1,3,'16499234562616','楼栋1','单元1','房号1','房屋备注1','2022-04-14 16:04:16','2022-04-14 16:04:16'),(2,3,'16499234562614','楼栋2','单元2','房号2','房屋备注2','2022-04-14 16:04:16','2022-04-14 16:04:16'),(3,2,'16499234562610','楼栋3','单元3','房号3','房屋备注3','2022-04-14 16:04:16','2022-04-14 16:04:16'),(4,2,'16499234562610','楼栋4','单元4','房号4','房屋备注4','2022-04-14 16:04:16','2022-04-14 16:04:16'),(5,3,'164992345626116','楼栋5','单元5','房号5','房屋备注5','2022-04-14 16:04:16','2022-04-14 16:04:16'),(6,1,'1649924979276','楼栋1','单元1','101','<p>三生三世</p>','2022-04-14 16:29:52','2022-04-14 16:29:52'),(7,NULL,'1649926682340','楼栋12','单元1','2014','<p>撒法规</p>','2022-04-14 16:58:18','2022-04-14 16:58:18');

/*Table structure for table `shoufei` */

DROP TABLE IF EXISTS `shoufei`;

CREATE TABLE `shoufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shoufei_uuid_number` varchar(200) DEFAULT NULL COMMENT '收费编号 Search111 ',
  `shoufei_name` varchar(200) DEFAULT NULL COMMENT '收费名称 Search111 ',
  `shoufei_types` int(11) DEFAULT NULL COMMENT '收费类型 Search111 ',
  `shoufei_jine` decimal(10,2) DEFAULT NULL COMMENT '收费金额',
  `shoufei_content` text COMMENT '收费详情',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '是否缴费 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收费';

/*Data for the table `shoufei` */

insert  into `shoufei`(`id`,`yonghu_id`,`shoufei_uuid_number`,`shoufei_name`,`shoufei_types`,`shoufei_jine`,`shoufei_content`,`jiaofei_types`,`insert_time`,`create_time`) values (1,1,'164992345626314','收费名称1',3,'192.59','收费详情1',2,'2022-04-14 16:04:16','2022-04-14 16:04:16'),(2,3,'16499234562635','收费名称2',1,'217.20','收费详情2',2,'2022-04-14 16:04:16','2022-04-14 16:04:16'),(3,1,'16499234562630','收费名称3',3,'203.61','收费详情3',1,'2022-04-14 16:04:16','2022-04-14 16:04:16'),(4,2,'164992345626310','收费名称4',3,'51.73','收费详情4',1,'2022-04-14 16:04:16','2022-04-14 16:04:16'),(5,3,'164992345626317','收费名称5',1,'904.98','<p>收费详情5</p>',1,'2022-04-14 16:04:16','2022-04-14 16:04:16');

/*Table structure for table `tingchewei` */

DROP TABLE IF EXISTS `tingchewei`;

CREATE TABLE `tingchewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tingchewei_uuid_number` varchar(200) DEFAULT NULL COMMENT '停车位编号 Search111 ',
  `tingchewei_address` varchar(200) DEFAULT NULL COMMENT '停车位位置 Search111 ',
  `tingchewei_content` text COMMENT '停车位备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='停车位';

/*Data for the table `tingchewei` */

insert  into `tingchewei`(`id`,`yonghu_id`,`tingchewei_uuid_number`,`tingchewei_address`,`tingchewei_content`,`insert_time`,`create_time`) values (1,3,'16499234562662','停车位位置1','停车位备注1','2022-04-14 16:04:16','2022-04-14 16:04:16'),(2,2,'164992345626617','停车位位置2','停车位备注2','2022-04-14 16:04:16','2022-04-14 16:04:16'),(3,3,'16499234562660','停车位位置3','停车位备注3','2022-04-14 16:04:16','2022-04-14 16:04:16'),(4,3,'164992345626615','停车位位置4','停车位备注4','2022-04-14 16:04:16','2022-04-14 16:04:16'),(5,1,'16499234562662','停车位位置5','停车位备注5','2022-04-14 16:04:16','2022-04-14 16:04:16'),(6,1,'1649926731307','车位位置1111','<p>是个哈哈</p>','2022-04-14 16:59:03','2022-04-14 16:59:03');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','ld6ym7qu2mnr6soohlidgcirec8uewyj','2022-04-14 16:05:39','2022-04-14 18:04:16'),(2,1,'a1','yonghu','用户','3p2wivmaiih6svovy40wp93npq3pw2hc','2022-04-14 16:30:47','2022-04-14 18:00:24');

/*Table structure for table `tousu` */

DROP TABLE IF EXISTS `tousu`;

CREATE TABLE `tousu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tousu_uuid_number` varchar(200) DEFAULT NULL COMMENT '投诉编号 Search111 ',
  `tousu_name` varchar(200) DEFAULT NULL COMMENT '投诉名称 Search111 ',
  `tousu_types` int(11) DEFAULT NULL COMMENT '投诉类型 Search111 ',
  `tousu_content` text COMMENT '投诉详情',
  `chuli_types` int(11) DEFAULT NULL COMMENT '是否处理 Search111 ',
  `chuli_content` text COMMENT '处理结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='投诉';

/*Data for the table `tousu` */

insert  into `tousu`(`id`,`yonghu_id`,`tousu_uuid_number`,`tousu_name`,`tousu_types`,`tousu_content`,`chuli_types`,`chuli_content`,`insert_time`,`create_time`) values (1,3,'164992345626820','投诉名称1',1,'投诉详情1',1,'处理结果1','2022-04-14 16:04:16','2022-04-14 16:04:16'),(2,1,'16499234562685','投诉名称2',1,'投诉详情2',1,'处理结果2','2022-04-14 16:04:16','2022-04-14 16:04:16'),(3,3,'164992345626817','投诉名称3',1,'投诉详情3',1,'处理结果3','2022-04-14 16:04:16','2022-04-14 16:04:16'),(4,2,'16499234562687','投诉名称4',1,'投诉详情4',1,'处理结果4','2022-04-14 16:04:16','2022-04-14 16:04:16'),(5,2,'164992345626813','投诉名称5',2,'投诉详情5',2,'处理结果5','2022-04-14 16:04:16','2022-04-14 16:04:16'),(6,1,'1649925663431','投诉标题11',3,'<p>投诉内容11</p>',1,NULL,'2022-04-14 16:41:18','2022-04-14 16:41:18'),(7,1,'1649926840147','投诉标题111',4,'<p>111122312421</p>',1,NULL,'2022-04-14 17:00:49','2022-04-14 17:00:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/xiaoquwuyeguanlixitong/upload/yonghu1.jpg',2,'1@qq.com','2022-04-14 16:04:16'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/xiaoquwuyeguanlixitong/upload/yonghu2.jpg',2,'2@qq.com','2022-04-14 16:04:16'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/xiaoquwuyeguanlixitong/upload/yonghu3.jpg',1,'3@qq.com','2022-04-14 16:04:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
