/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - zizhaozhuanbeiwulianjishengcan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zizhaozhuanbeiwulianjishengcan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zizhaozhuanbeiwulianjishengcan`;

/*Table structure for table `cailiao` */

DROP TABLE IF EXISTS `cailiao`;

CREATE TABLE `cailiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cailiao_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '材料编号',
  `cailiao_name` varchar(200) DEFAULT NULL COMMENT '材料名称 Search111',
  `cailiao_types` int(11) DEFAULT NULL COMMENT '材料类型 Search111',
  `cailiao_kucun_number` int(11) DEFAULT NULL COMMENT '材料数量',
  `cailiao_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='材料信息';

/*Data for the table `cailiao` */

insert  into `cailiao`(`id`,`cailiao_uuid_unmber`,`cailiao_name`,`cailiao_types`,`cailiao_kucun_number`,`cailiao_danwei`,`create_time`) values (1,'材料编号1','材料名称1',3,10001,'单位1','2022-02-21 16:39:29'),(2,'材料编号2','材料名称2',3,10002,'单位2','2022-02-21 16:39:29'),(3,'材料编号3','材料名称3',2,10003,'单位3','2022-02-21 16:39:29'),(4,'材料编号4','材料名称4',3,10004,'单位4','2022-02-21 16:39:29'),(5,'材料编号5','材料名称5',2,10004,'单位5','2022-02-21 16:39:29'),(6,'材料编号6','材料名称6',1,10006,'单位6','2022-02-21 16:39:29'),(7,'材料编号7','材料名称7',3,10006,'单位7','2022-02-21 16:39:29'),(8,'材料编号8','材料名称8',2,10007,'单位8','2022-02-21 16:39:29'),(9,'材料编号9','材料名称9',3,10008,'单位9','2022-02-21 16:39:29'),(10,'材料编号10','材料名称10',3,100009,'单位10','2022-02-21 16:39:29'),(11,'材料编号11','材料名称11',3,99911,'单位11','2022-02-21 16:39:29');

/*Table structure for table `cailiao_churu_inout` */

DROP TABLE IF EXISTS `cailiao_churu_inout`;

CREATE TABLE `cailiao_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cailiao_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `cailiao_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `cailiao_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型',
  `cailiao_churu_inout_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `cailiao_churu_inout` */

insert  into `cailiao_churu_inout`(`id`,`cailiao_churu_inout_uuid_number`,`cailiao_churu_inout_name`,`cailiao_churu_inout_types`,`cailiao_churu_inout_content`,`insert_time`,`create_time`) values (1,'164543276975418','出入库名称1',1,'备注1','2022-02-21 16:39:29','2022-02-21 16:39:29'),(2,'16454327697543','出入库名称2',2,'备注2','2022-02-21 16:39:29','2022-02-21 16:39:29'),(3,'16454327697542','出入库名称3',2,'备注3','2022-02-21 16:39:29','2022-02-21 16:39:29'),(4,'164543276975412','出入库名称4',1,'备注4','2022-02-21 16:39:29','2022-02-21 16:39:29'),(5,'16454327697548','出入库名称5',1,'备注5','2022-02-21 16:39:29','2022-02-21 16:39:29'),(6,'164543276975418','出入库名称6',1,'备注6','2022-02-21 16:39:29','2022-02-21 16:39:29'),(7,'164543276975411','出入库名称7',1,'备注7','2022-02-21 16:39:29','2022-02-21 16:39:29'),(8,'16454327697540','出入库名称8',2,'备注8','2022-02-21 16:39:29','2022-02-21 16:39:29'),(9,'164543276975413','出入库名称9',1,'备注9','2022-02-21 16:39:29','2022-02-21 16:39:29'),(10,'164543276975416','出入库名称10',2,'备注10','2022-02-21 16:39:29','2022-02-21 16:39:29'),(11,'16454327697544','出入库名称11',1,'备注11','2022-02-21 16:39:29','2022-02-21 16:39:29'),(12,'1645443539656','使用材料11   99个',1,'','2022-02-21 19:39:00','2022-02-21 19:39:00'),(13,'1645443570936','可以批量出入库',1,'','2022-02-21 19:39:31','2022-02-21 19:39:31');

/*Table structure for table `cailiao_churu_inout_list` */

DROP TABLE IF EXISTS `cailiao_churu_inout_list`;

CREATE TABLE `cailiao_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cailiao_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `cailiao_id` int(11) DEFAULT NULL COMMENT '材料',
  `cailiao_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `cailiao_churu_inout_list` */

insert  into `cailiao_churu_inout_list`(`id`,`cailiao_churu_inout_id`,`cailiao_id`,`cailiao_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,43,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(2,2,2,271,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(3,3,3,209,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(4,4,4,11,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(5,5,5,22,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(6,6,6,72,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(7,7,7,432,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(8,8,8,340,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(9,9,9,341,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(10,10,10,92,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(11,11,11,427,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(12,12,11,99,'2022-02-21 19:39:00','2022-02-21 19:39:00'),(13,13,5,1,'2022-02-21 19:39:31','2022-02-21 19:39:31'),(14,13,7,1,'2022-02-21 19:39:31','2022-02-21 19:39:31'),(15,13,8,1,'2022-02-21 19:39:31','2022-02-21 19:39:31'),(16,13,9,1,'2022-02-21 19:39:31','2022-02-21 19:39:31'),(17,13,10,1,'2022-02-21 19:39:31','2022-02-21 19:39:31'),(18,13,11,1,'2022-02-21 19:39:31','2022-02-21 19:39:31');

/*Table structure for table `chanpin` */

DROP TABLE IF EXISTS `chanpin`;

CREATE TABLE `chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chanpin_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpin_name` varchar(200) DEFAULT NULL COMMENT '产品名称 Search111',
  `chanpin_types` int(11) DEFAULT NULL COMMENT '产品类型 Search111',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chanpin_content` text COMMENT '产品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='产品信息';

/*Data for the table `chanpin` */

insert  into `chanpin`(`id`,`chanpin_uuid_unmber`,`chanpin_name`,`chanpin_types`,`shangxia_types`,`chanpin_content`,`create_time`) values (1,'产品编号1','产品名称1',2,1,'产品详情1','2022-02-21 16:39:29'),(2,'产品编号2','产品名称2',3,1,'产品详情2','2022-02-21 16:39:29'),(3,'产品编号3','产品名称3',1,1,'产品详情3','2022-02-21 16:39:29'),(4,'产品编号4','产品名称4',2,1,'产品详情4','2022-02-21 16:39:29'),(5,'产品编号5','产品名称5',3,1,'产品详情5','2022-02-21 16:39:29'),(6,'产品编号6','产品名称6',2,2,'产品详情6','2022-02-21 16:39:29'),(7,'产品编号7','产品名称7',2,1,'产品详情7','2022-02-21 16:39:29'),(8,'产品编号8','产品名称8',1,1,'产品详情8','2022-02-21 16:39:29'),(9,'产品编号9','产品名称9',2,1,'产品详情9','2022-02-21 16:39:29'),(10,'产品编号10','产品名称10',2,2,'产品详情10','2022-02-21 16:39:29'),(11,'产品编号11','产品名称11',2,2,'产品详情11','2022-02-21 16:39:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-21 16:38:59'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-21 16:38:59'),(3,'chanpin_types','产品类型',1,'产品类型1',NULL,NULL,'2022-02-21 16:38:59'),(4,'chanpin_types','产品类型',2,'产品类型2',NULL,NULL,'2022-02-21 16:38:59'),(5,'chanpin_types','产品类型',3,'产品类型3',NULL,NULL,'2022-02-21 16:38:59'),(6,'gukedingdan_types','订单状态',1,'未完成',NULL,NULL,'2022-02-21 16:39:00'),(7,'gukedingdan_types','订单状态',2,'已完成',NULL,NULL,'2022-02-21 16:39:00'),(8,'shengcanjihua_types','计划状态',1,'进行中',NULL,NULL,'2022-02-21 16:39:00'),(9,'shengcanjihua_types','计划状态',2,'已完成',NULL,NULL,'2022-02-21 16:39:00'),(10,'cailiao_types','材料类型',1,'材料类型1',NULL,NULL,'2022-02-21 16:39:00'),(11,'cailiao_types','材料类型',2,'材料类型2',NULL,NULL,'2022-02-21 16:39:00'),(12,'cailiao_types','材料类型',3,'材料类型3',NULL,NULL,'2022-02-21 16:39:00'),(13,'cailiao_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2022-02-21 16:39:00'),(14,'cailiao_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2022-02-21 16:39:00'),(15,'sex_types','性别',1,'男',NULL,NULL,'2022-02-21 16:39:00'),(16,'sex_types','性别',2,'女',NULL,NULL,'2022-02-21 16:39:00'),(17,'bumen_types','部门',1,'部门1',NULL,NULL,'2022-02-21 16:39:00'),(18,'bumen_types','部门',2,'部门2',NULL,NULL,'2022-02-21 16:39:00'),(19,'bumen_types','部门',3,'部门3',NULL,NULL,'2022-02-21 16:39:00'),(20,'shebei_types','设备类型',1,'设备类型1',NULL,NULL,'2022-02-21 16:39:00'),(21,'shebei_types','设备类型',2,'设备类型2',NULL,NULL,'2022-02-21 16:39:00'),(22,'shebei_types','设备类型',3,'设备类型3',NULL,NULL,'2022-02-21 16:39:00'),(23,'status_types','设备状态',1,'正常',NULL,NULL,'2022-02-21 16:39:00'),(24,'status_types','设备状态',2,'损坏',NULL,NULL,'2022-02-21 16:39:00');

/*Table structure for table `gukedingdan` */

DROP TABLE IF EXISTS `gukedingdan`;

CREATE TABLE `gukedingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gukedingdan_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chanpin_id` int(11) DEFAULT NULL COMMENT '产品',
  `gukedingdan_number` int(11) DEFAULT NULL COMMENT '订购数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '下订单日期 show1 show2 photoShow',
  `gukedingdan_time` timestamp NULL DEFAULT NULL COMMENT '订单截止时间 show1 show2 photoShow',
  `gukedingdan_types` int(11) DEFAULT NULL COMMENT '订单状态',
  `gukedingdan_text` text COMMENT '顾客订单内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='顾客订单';

/*Data for the table `gukedingdan` */

insert  into `gukedingdan`(`id`,`gukedingdan_uuid_unmber`,`chanpin_id`,`gukedingdan_number`,`insert_time`,`gukedingdan_time`,`gukedingdan_types`,`gukedingdan_text`,`create_time`) values (1,'订单编号1',1,407,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'顾客订单内容1','2022-02-21 16:39:29'),(2,'订单编号2',2,29,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容2','2022-02-21 16:39:29'),(3,'订单编号3',3,402,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容3','2022-02-21 16:39:29'),(4,'订单编号4',4,171,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容4','2022-02-21 16:39:29'),(5,'订单编号5',5,198,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容5','2022-02-21 16:39:29'),(6,'订单编号6',6,147,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'顾客订单内容6','2022-02-21 16:39:29'),(7,'订单编号7',7,487,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'顾客订单内容7','2022-02-21 16:39:29'),(8,'订单编号8',8,18,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容8','2022-02-21 16:39:29'),(9,'订单编号9',9,439,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'顾客订单内容9','2022-02-21 16:39:29'),(10,'订单编号10',10,356,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'顾客订单内容10','2022-02-21 16:39:29'),(11,'订单编号11',11,67,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'顾客订单内容11','2022-02-21 16:39:29');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '设备名称 Search111',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备类型 Search111',
  `shebei_time` timestamp NULL DEFAULT NULL COMMENT '上次检修日期',
  `status_types` int(200) DEFAULT NULL COMMENT '设备状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='设备信息';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_uuid_unmber`,`shebei_name`,`shebei_types`,`shebei_time`,`status_types`,`create_time`) values (1,'设备编号1','设备名称1',2,NULL,2,'2022-02-21 16:39:29'),(2,'设备编号2','设备名称2',2,NULL,2,'2022-02-21 16:39:29'),(3,'设备编号3','设备名称3',1,'2022-02-21 19:48:28',2,'2022-02-21 16:39:29'),(4,'设备编号4','设备名称4',1,'2022-02-21 19:47:50',2,'2022-02-21 16:39:29'),(5,'设备编号5','设备名称5',1,NULL,1,'2022-02-21 16:39:29'),(6,'设备编号6','设备名称6',3,NULL,1,'2022-02-21 16:39:29'),(7,'设备编号7','设备名称7',3,NULL,1,'2022-02-21 16:39:29'),(8,'设备编号8','设备名称8',3,NULL,1,'2022-02-21 16:39:29'),(9,'设备编号9','设备名称9',1,'2022-02-21 19:33:55',2,'2022-02-21 16:39:29'),(10,'设备编号10','设备名称10',1,'2022-02-21 19:27:36',2,'2022-02-21 16:39:29'),(11,'设备编号11','设备名称11',1,'2022-02-21 19:49:49',1,'2022-02-21 16:39:29');

/*Table structure for table `shebeijianxiu` */

DROP TABLE IF EXISTS `shebeijianxiu`;

CREATE TABLE `shebeijianxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shebei_id` int(11) DEFAULT NULL COMMENT '设备',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '员工',
  `shebeijianxiu_time` timestamp NULL DEFAULT NULL COMMENT '上次检修日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='设备检修';

/*Data for the table `shebeijianxiu` */

insert  into `shebeijianxiu`(`id`,`shebei_id`,`weixiuyuan_id`,`shebeijianxiu_time`,`create_time`) values (12,10,3,'2022-02-20 00:00:00','2022-02-21 19:27:36'),(13,9,1,'2022-02-03 00:00:00','2022-02-21 19:33:55'),(17,11,1,'2022-02-11 00:00:00','2022-02-21 19:49:49');

/*Table structure for table `shengcanjihua` */

DROP TABLE IF EXISTS `shengcanjihua`;

CREATE TABLE `shengcanjihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gukedingdan_id` int(11) DEFAULT NULL COMMENT '订单编号',
  `shengcanjihukaishi_time` timestamp NULL DEFAULT NULL COMMENT '开始的时间',
  `shengcanjihujieshu_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `shengcanjihua_types` int(11) DEFAULT NULL COMMENT '计划状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='生产计划';

/*Data for the table `shengcanjihua` */

insert  into `shengcanjihua`(`id`,`gukedingdan_id`,`shengcanjihukaishi_time`,`shengcanjihujieshu_time`,`shengcanjihua_types`,`create_time`) values (1,1,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'2022-02-21 16:39:29'),(2,2,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'2022-02-21 16:39:29'),(3,3,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'2022-02-21 16:39:29'),(4,4,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29'),(5,5,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29'),(6,6,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'2022-02-21 16:39:29'),(7,7,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29'),(8,8,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29'),(9,9,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29'),(10,10,'2022-02-21 16:39:29','2022-02-21 16:39:29',1,'2022-02-21 16:39:29'),(11,11,'2022-02-21 16:39:29','2022-02-21 16:39:29',2,'2022-02-21 16:39:29');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mb5f8euvg8m6oytzqaxr1q5eqwa2ec5g','2022-02-21 17:04:14','2022-02-21 21:03:16'),(2,1,'a1','yonghu','员工','qg1g1unel5ox3e3ywowo3txwniyyt934','2022-02-21 19:33:27','2022-02-21 20:33:28'),(3,1,'a1','weixiuyuan','维修员','huoj3t7aqaszjnawc36x17vuyhds7r08','2022-02-21 19:33:41','2022-02-21 20:46:24'),(4,2,'a2','yonghu','员工','m14omzhz76nhbyr0ugiz1zn4u5zrggg2','2022-02-21 19:50:37','2022-02-21 20:50:37');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weixiuyuan_name` varchar(200) DEFAULT NULL COMMENT '维修员姓名 Search111 ',
  `weixiuyuan_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `weixiuyuan_phone` varchar(200) DEFAULT NULL COMMENT '维修员手机号',
  `weixiuyuan_id_number` varchar(200) DEFAULT NULL COMMENT '维修员身份证号 ',
  `weixiuyuan_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `weixiuyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `weixiuyuan_time` timestamp NULL DEFAULT NULL COMMENT '入职日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='维修员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`username`,`password`,`weixiuyuan_name`,`weixiuyuan_photo`,`weixiuyuan_phone`,`weixiuyuan_id_number`,`weixiuyuan_email`,`sex_types`,`weixiuyuan_delete`,`weixiuyuan_time`,`create_time`) values (1,'a1','123456','维修员姓名1','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/1645435698650.jpg','17703786901','410224199610232001','1@qq.com',1,1,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(2,'a2','123456','维修员姓名2','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/1645435689953.jpg','17703786902','410224199610232002','2@qq.com',2,1,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(3,'a3','123456','维修员姓名3','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/1645435682986.jpg','17703786903','410224199610232003','3@qq.com',2,1,'2022-02-21 16:39:29','2022-02-21 16:39:29');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_zhineng` varchar(200) DEFAULT NULL COMMENT '职能',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `yonghu_time` timestamp NULL DEFAULT NULL COMMENT '入职日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_zhineng`,`sex_types`,`bumen_types`,`yonghu_delete`,`yonghu_time`,`create_time`) values (1,'a1','123456','员工姓名1','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/touxiang1.jpg','17703786901','410224199610232001','1@qq.com','职能1',2,1,1,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(2,'a2','123456','员工姓名2','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/touxiang2.jpg','17703786902','410224199610232002','2@qq.com','职能2',1,1,1,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(3,'a3','123456','员工姓名3','http://localhost:8080/zizhaozhuanbeiwulianjishengcan/upload/touxiang3.jpg','17703786903','410224199610232003','3@qq.com','职能3',1,3,1,'2022-02-21 16:39:29','2022-02-21 16:39:29');

/*Table structure for table `zhiljiankong` */

DROP TABLE IF EXISTS `zhiljiankong`;

CREATE TABLE `zhiljiankong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shengcanjihua_id` int(11) DEFAULT NULL COMMENT '生产计划',
  `zhiljiankong_name` varchar(200) DEFAULT NULL COMMENT '不合格产品名称 Search111',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `zhiljiankong_number` int(11) DEFAULT NULL COMMENT '不合格产品数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='质量监控';

/*Data for the table `zhiljiankong` */

insert  into `zhiljiankong`(`id`,`shengcanjihua_id`,`zhiljiankong_name`,`shebei_types`,`yonghu_id`,`zhiljiankong_number`,`insert_time`,`create_time`) values (1,1,'不合格产品名称1',1,2,341,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(2,2,'不合格产品名称2',1,2,436,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(3,3,'不合格产品名称3',2,2,322,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(4,4,'不合格产品名称4',2,1,78,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(5,5,'不合格产品名称5',3,1,28,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(6,6,'不合格产品名称6',1,3,400,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(7,7,'不合格产品名称7',1,3,497,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(8,8,'不合格产品名称8',1,2,36,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(9,9,'不合格产品名称9',1,1,159,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(10,10,'不合格产品名称10',2,2,34,'2022-02-21 16:39:29','2022-02-21 16:39:29'),(11,11,'不合格产品名称11',3,3,58,'2022-02-21 16:39:29','2022-02-21 16:39:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
