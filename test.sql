# Host: localhost  (Version: 5.5.53)
# Date: 2021-05-01 21:40:50
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "maneger"
#

DROP TABLE IF EXISTS `maneger`;
CREATE TABLE `maneger` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "maneger"
#

/*!40000 ALTER TABLE `maneger` DISABLE KEYS */;
INSERT INTO `maneger` VALUES (1,'admin','admin'),(4,'123456','123456'),(5,'080502','131313');
/*!40000 ALTER TABLE `maneger` ENABLE KEYS */;

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL DEFAULT '0',
  `uname` varchar(255) NOT NULL DEFAULT '',
  `pname` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(255) NOT NULL DEFAULT '',
  `u_address` varchar(255) NOT NULL DEFAULT '',
  `date` varchar(255) NOT NULL DEFAULT '',
  `pay` tinyint(1) NOT NULL DEFAULT '0',
  `send` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "orders"
#

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'admin','小米11','4399','北京市','2021-06-07',0,0),(2,1,'admin','小米11','4299','绵阳市','2021-06-07',1,0),(3,1,'admin','小米11','4299','南充市','2021-06-07',1,0),(4,1,'admin','小米11','4299','成都市','2021-06-07',1,0),(5,1,'admin','小米11','4299','成都市','2021-0607',1,0),(6,1,'admin','小米11','4299','成都市','2021-06-07',1,0),(7,1,'admin','小米11','4299','成都市','2021-06-07',1,0),(8,1,'admin','小米11','4299','成都市','2021-06-07',1,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `shop_price` double(7,2) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `pflag` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'华为 Mate 40 Pro',6499.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/142383/17/13825/73504/5fa8b1c8E6a34854c/91c7d2bb5ea7f9aa.jpg!cc_320x320.webp','2021-04-04',1,' 华为 HUAWEI Mate 40 Pro麒麟9000 SoC芯片 超感知徕卡电影影像 有线无线双超级快充8GB+128GB亮黑色5G全网通',0),(3,'Redmi K40 Pro+',3699.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/157591/24/9323/48618/603c7b37Ef2a8378c/aa7e713eb10b4729.jpg!cc_320x320.webp','2021-04-04',1,'Redmi K40 Pro+ 旗舰骁龙888 三星E4旗舰120Hz高刷直屏 一亿像素夜景相机 杜比全景音 33W快充 12GB+256GB 墨羽 游戏电竞智能5G手机 小米 红米',0),(4,'小米11',4299.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/157056/28/6/67298/5fe94ff9E91bcfc7f/26cd4a19b1ae69b2.jpg!cc_320x320.webp','2021-04-04',1,'小米11 5G 骁龙888 2K AMOLED四曲面柔性屏 1亿像素 55W有线闪充 50W无线闪充 8GB+256GB 蓝色 游戏手机',0),(5,'小米10',3599.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/140484/20/3978/93663/5f223172E5c52b721/17a22d63fccb4782.jpg!cc_320x320.webp','2021-04-04',1,'小米10 双模5G 骁龙865 1亿像素8K电影相机 对称式立体声 8GB+256GB 国风雅灰',0),(6,'Redmi Note 9',1099.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/143051/26/15747/73035/5fbdd54cE80757a48/67c387e1d0dc5c83.jpg!cc_320x320.webp','2021-04-04',1,'Redmi Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 羽墨黑 6GB+128GB 游戏智能手机 小米 红米',0),(7,'华为 nova7 Pro',3699.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/116419/9/2380/105781/5ea180a2E67adf0fc/26e86c2951e8a43f.jpg!cc_320x320.webp','2021-04-04',0,'华为 HUAWEI nova 7 Pro 3200万追焦双摄 50倍潜望式变焦四摄 5G SoC芯片 8GB+128GB 仲夏紫全网通5G手机',0),(8,'华为 Mate30E Pro',5299.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/126735/17/15837/156945/5f917d44Ef62562f6/5fd3eda1e3ba2622.jpg!cc_320x320.webp','2021-04-04',0,'华为 HUAWEI Mate 30E Pro 5G麒麟990E SoC芯片 双4000万徕卡电影影像 8GB+128GB青山黛全网通手机',0),(9,'荣耀30 Pro',3999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/172887/22/1279/64616/60641af9E829b9761/3e3be678da2f6c65.jpg!cc_320x320.webp','2021-04-04',0,'荣耀30 Pro 50倍远摄 麒麟990 5G 4000万超感光摄影 3200W美颜自拍 游戏手机 全网通版8GB+128GB 钛空银',0),(10,'荣耀V40 轻奢版',2989.00,'https://img30.360buyimg.com/babel/s320x320_jfs/t1/155583/6/16780/217813/60541338Ed3d24839/7b272410bf979822.jpg!cc_320x320.webp','2021-04-04',0,'荣耀V40轻奢版 5G 超级快充 6400万超清四摄 8GB+128GB蓝水翡翠 移动联通电信5G 双卡双待手机',0),(11,'vivo X60',3498.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/155008/32/11014/67492/5fe19bcfE2176668b/19ab46ddca4031ec.jpg!cc_320x320.webp','2021-04-04',1,'vivo X60 8GB+128GB 华彩 5G手机 蔡司光学镜头 微云台黑光夜视2.0 三星5nm旗舰芯片 双模5G全网通手机',0),(12,'vivo iQOO U3x',1199.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/159049/2/14421/69568/60547daaEfea5c876/dc74b2f34406ea29.jpg!cc_320x320.webp','2021-04-04',0,'vivo iQOO U3x 6GB+64GB 雅灰 高通骁龙八核强芯 5000mAh大电池 90Hz竞速屏 双模5G全网通iqoou3x',0),(13,'vivo S9e',2399.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/156049/15/16968/101724/6054a710Efe177733/52de2b412819280b.jpg!cc_320x320.webp','2021-04-04',0,'vivo S9e 5G手机 8GB+128GB 星夜极光 3200万超清前置 后置6400万超清影像系统 拍照手机',0),(14,'OPPO Reno 5 Pro',3399.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/160235/39/4758/121830/600e612cE856f77ea/83a6a8ddfc29765e.jpg!cc_320x320.webp','2021-04-04',1,'OPPO Reno5 Pro 5G 6400万水光人像四摄 65W超级闪充 8+128 极光蓝 全网通手机',0),(15,'OPPO Find X3 Pro',5999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/159384/4/15500/118624/605da676Ea4f72fff/a8579ed76df33f89.jpg!cc_320x320.webp','2021-04-04',1,'Find X3 Pro 骁龙888 5000万双主摄IMX766 10亿色臻彩屏 60倍显微镜 12+256GB 宇宙摩卡 5G拍照旗舰手机',0),(16,'OPPO A93',1799.00,'https://img10.360buyimg.com/babel/s320x320_jfs/t1/157942/30/13657/265175/60504ffaEa3f068dc/b9530d1ec192d761.jpg!cc_320x320.webp','2021-04-04',1,'OPPO A93 8+128GB 极光 骁龙双模5G 超大存储 5000mAh大电池 18W疾速快充 90Hz高刷屏 4800万三摄 全面屏手机',0),(17,'SONY Xperia1',7199.00,'https://img30.360buyimg.com/babel/s320x320_jfs/t1/119131/23/19548/39751/5f7ff05fE7260ab0a/7149ca668295130d.jpg!cc_320x320.webp','2021-04-04',1,'索尼（SONY）Xperia1 II 5G智能手机 4K屏 骁龙865 12G+256G 微单技术 蔡司镀膜 拍照游戏 20帧/秒 青山绿',0),(18,'vivo IQOO Z3',2999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/174833/31/193/64640/605b2ee2Efa43bb9c/f5b3585e67454c66.jpg!cc_320x320.webp','2021-04-04',1,'vivo iQOO Z3 8GB+128GB 深空 高通骁龙768G 55W闪充 120Hz高刷竞速屏 6400万三摄 双模5G全网通手机iqooz3',0),(19,'Apple iPhone 12 Pro',8508.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/156321/11/18110/94927/605d99ecE53e653f3/65651ee0c561d469.jpg!cc_320x320.webp','2021-04-04',1,'Apple iPhone 12 Pro (A2408) 128GB 海蓝色 支持移动联通电信5G 双卡双待手机【快充套装】',0),(20,'OPPO K7x',1499.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/167780/29/15309/103204/606428e9Ef7f536ba/11b4a097dd092447.jpg!cc_320x320.webp','2021-04-04',1,'OPPO K7x 双模5G 4800万四摄 5000mAh长续航 90Hz电竞屏 黑镜6GB+128GB 30W闪充 全网通游戏智能手机',0),(22,'小米11',4300.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/157056/28/6/67298/5fe94ff9E91bcfc7f/26cd4a19b1ae69b2.jpg!cc_320x320.webp','2021-04-04',1,'小米11 5G 骁龙888 2K AMOLED四曲面柔性屏 1亿像素 55W有线闪充 50W无线闪充 8GB+256GB 蓝色 游戏手机',0),(23,'asdas',0.00,'asdasdasd','0000-00-00',0,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `password` char(16) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` char(1) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','绵阳市','1','1111'),(2,'aaa','5555','555555','1','asdas'),(5,'16492316','165asd1a3213','546as1d32a1','1',NULL),(6,'asdasd','sada','asdas','a',NULL),(7,'asdasdasd','adasdmin','adasda','a',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
