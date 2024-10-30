/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1z8hn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1z8hn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1z8hn`;

/*Table structure for table `chengshitongji` */

DROP TABLE IF EXISTS `chengshitongji`;

CREATE TABLE `chengshitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jibie` varchar(200) DEFAULT NULL COMMENT '级别',
  `chengshi` varchar(200) DEFAULT NULL COMMENT '城市',
  `dengji` date DEFAULT NULL COMMENT '登记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='城市统计';

/*Data for the table `chengshitongji` */

insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (71,'2021-01-14 16:15:04','学号1','姓名1','一线城市','城市1','2021-01-14');
insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (72,'2021-01-14 16:15:04','学号2','姓名2','一线城市','城市2','2021-01-14');
insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (73,'2021-01-14 16:15:04','学号3','姓名3','一线城市','城市3','2021-01-14');
insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (74,'2021-01-14 16:15:04','学号4','姓名4','一线城市','城市4','2021-01-14');
insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (75,'2021-01-14 16:15:04','学号5','姓名5','一线城市','城市5','2021-01-14');
insert  into `chengshitongji`(`id`,`addtime`,`xuehao`,`xingming`,`jibie`,`chengshi`,`dengji`) values (76,'2021-01-14 16:15:04','学号6','姓名6','一线城市','城市6','2021-01-14');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1z8hn/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm1z8hn/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm1z8hn/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-14 16:15:04');

/*Table structure for table `xingyetongji` */

DROP TABLE IF EXISTS `xingyetongji`;

CREATE TABLE `xingyetongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `dengji` date DEFAULT NULL COMMENT '登记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='行业统计';

/*Data for the table `xingyetongji` */

insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (81,'2021-01-14 16:15:04','学号1','姓名1','行业1','2021-01-14');
insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (82,'2021-01-14 16:15:04','学号2','姓名2','行业2','2021-01-14');
insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (83,'2021-01-14 16:15:04','学号3','姓名3','行业3','2021-01-14');
insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (84,'2021-01-14 16:15:04','学号4','姓名4','行业4','2021-01-14');
insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (85,'2021-01-14 16:15:04','学号5','姓名5','行业5','2021-01-14');
insert  into `xingyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`xingye`,`dengji`) values (86,'2021-01-14 16:15:04','学号6','姓名6','行业6','2021-01-14');

/*Table structure for table `xingyexinxi` */

DROP TABLE IF EXISTS `xingyexinxi`;

CREATE TABLE `xingyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingyemingcheng` varchar(200) DEFAULT NULL COMMENT '行业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='行业信息';

/*Data for the table `xingyexinxi` */

insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (41,'2021-01-14 16:15:03','行业名称1');
insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (42,'2021-01-14 16:15:03','行业名称2');
insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (43,'2021-01-14 16:15:03','行业名称3');
insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (44,'2021-01-14 16:15:03','行业名称4');
insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (45,'2021-01-14 16:15:03','行业名称5');
insert  into `xingyexinxi`(`id`,`addtime`,`xingyemingcheng`) values (46,'2021-01-14 16:15:03','行业名称6');

/*Table structure for table `xinzitongji` */

DROP TABLE IF EXISTS `xinzitongji`;

CREATE TABLE `xinzitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xinzi` varchar(200) DEFAULT NULL COMMENT '薪资',
  `dengji` date DEFAULT NULL COMMENT '登记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='薪资统计';

/*Data for the table `xinzitongji` */

insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (91,'2021-01-14 16:15:04','学号1','姓名1','0-3k','2021-01-14');
insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (92,'2021-01-14 16:15:04','学号2','姓名2','0-3k','2021-01-14');
insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (93,'2021-01-14 16:15:04','学号3','姓名3','0-3k','2021-01-14');
insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (94,'2021-01-14 16:15:04','学号4','姓名4','0-3k','2021-01-14');
insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (95,'2021-01-14 16:15:04','学号5','姓名5','0-3k','2021-01-14');
insert  into `xinzitongji`(`id`,`addtime`,`xuehao`,`xingming`,`xinzi`,`dengji`) values (96,'2021-01-14 16:15:04','学号6','姓名6','0-3k','2021-01-14');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggao` varchar(200) DEFAULT NULL COMMENT '公告',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (101,'2021-01-14 16:15:04','公告1','日常公告','2021-01-14','内容1');
insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (102,'2021-01-14 16:15:04','公告2','日常公告','2021-01-14','内容2');
insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (103,'2021-01-14 16:15:04','公告3','日常公告','2021-01-14','内容3');
insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (104,'2021-01-14 16:15:04','公告4','日常公告','2021-01-14','内容4');
insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (105,'2021-01-14 16:15:04','公告5','日常公告','2021-01-14','内容5');
insert  into `xitonggonggao`(`id`,`addtime`,`gonggao`,`leixing`,`riqi`,`neirong`) values (106,'2021-01-14 16:15:04','公告6','日常公告','2021-01-14','内容6');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (11,'2021-01-14 16:15:03','学生1','123456','姓名1','学院1','专业1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian1.jpg','已就业');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (12,'2021-01-14 16:15:03','学生2','123456','姓名2','学院2','专业2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian2.jpg','已就业');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (13,'2021-01-14 16:15:03','学生3','123456','姓名3','学院3','专业3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian3.jpg','已就业');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (14,'2021-01-14 16:15:03','学生4','123456','姓名4','学院4','专业4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian4.jpg','已就业');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (15,'2021-01-14 16:15:03','学生5','123456','姓名5','学院5','专业5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian5.jpg','已就业');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xueyuan`,`zhuanye`,`xingbie`,`nianling`,`dianhua`,`youxiang`,`zhaopian`,`zhuangtai`) values (16,'2021-01-14 16:15:03','学生6','123456','姓名6','学院6','专业6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm1z8hn/upload/xuesheng_zhaopian6.jpg','已就业');

/*Table structure for table `xueyuantongji` */

DROP TABLE IF EXISTS `xueyuantongji`;

CREATE TABLE `xueyuantongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `dengji` date DEFAULT NULL COMMENT '登记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学院统计';

/*Data for the table `xueyuantongji` */

insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (51,'2021-01-14 16:15:03','学号1','姓名1','学院1','2021-01-14');
insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (52,'2021-01-14 16:15:03','学号2','姓名2','学院2','2021-01-14');
insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (53,'2021-01-14 16:15:03','学号3','姓名3','学院3','2021-01-14');
insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (54,'2021-01-14 16:15:03','学号4','姓名4','学院4','2021-01-14');
insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (55,'2021-01-14 16:15:03','学号5','姓名5','学院5','2021-01-14');
insert  into `xueyuantongji`(`id`,`addtime`,`xuehao`,`xingming`,`xueyuan`,`dengji`) values (56,'2021-01-14 16:15:03','学号6','姓名6','学院6','2021-01-14');

/*Table structure for table `xueyuanxinxi` */

DROP TABLE IF EXISTS `xueyuanxinxi`;

CREATE TABLE `xueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学院信息';

/*Data for the table `xueyuanxinxi` */

insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (21,'2021-01-14 16:15:03','学院名称1');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (22,'2021-01-14 16:15:03','学院名称2');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (23,'2021-01-14 16:15:03','学院名称3');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (24,'2021-01-14 16:15:03','学院名称4');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (25,'2021-01-14 16:15:03','学院名称5');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`) values (26,'2021-01-14 16:15:03','学院名称6');

/*Table structure for table `zhuanyetongji` */

DROP TABLE IF EXISTS `zhuanyetongji`;

CREATE TABLE `zhuanyetongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dengji` date DEFAULT NULL COMMENT '登记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='专业统计';

/*Data for the table `zhuanyetongji` */

insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (61,'2021-01-14 16:15:04','学号1','姓名1','专业1','2021-01-14');
insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (62,'2021-01-14 16:15:04','学号2','姓名2','专业2','2021-01-14');
insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (63,'2021-01-14 16:15:04','学号3','姓名3','专业3','2021-01-14');
insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (64,'2021-01-14 16:15:04','学号4','姓名4','专业4','2021-01-14');
insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (65,'2021-01-14 16:15:04','学号5','姓名5','专业5','2021-01-14');
insert  into `zhuanyetongji`(`id`,`addtime`,`xuehao`,`xingming`,`zhuanye`,`dengji`) values (66,'2021-01-14 16:15:04','学号6','姓名6','专业6','2021-01-14');

/*Table structure for table `zhuanyexinxi` */

DROP TABLE IF EXISTS `zhuanyexinxi`;

CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='专业信息';

/*Data for the table `zhuanyexinxi` */

insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (31,'2021-01-14 16:15:03','专业名称1');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (32,'2021-01-14 16:15:03','专业名称2');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (33,'2021-01-14 16:15:03','专业名称3');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (34,'2021-01-14 16:15:03','专业名称4');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (35,'2021-01-14 16:15:03','专业名称5');
insert  into `zhuanyexinxi`(`id`,`addtime`,`zhuanyemingcheng`) values (36,'2021-01-14 16:15:03','专业名称6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
