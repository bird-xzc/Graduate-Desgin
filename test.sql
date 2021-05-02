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
INSERT INTO `orders` VALUES (1,1,'admin','С��11','4399','������','2021-06-07',0,0),(2,1,'admin','С��11','4299','������','2021-06-07',1,0),(3,1,'admin','С��11','4299','�ϳ���','2021-06-07',1,0),(4,1,'admin','С��11','4299','�ɶ���','2021-06-07',1,0),(5,1,'admin','С��11','4299','�ɶ���','2021-0607',1,0),(6,1,'admin','С��11','4299','�ɶ���','2021-06-07',1,0),(7,1,'admin','С��11','4299','�ɶ���','2021-06-07',1,0),(8,1,'admin','С��11','4299','�ɶ���','2021-06-07',1,0);
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
INSERT INTO `product` VALUES (2,'��Ϊ Mate 40 Pro',6499.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/142383/17/13825/73504/5fa8b1c8E6a34854c/91c7d2bb5ea7f9aa.jpg!cc_320x320.webp','2021-04-04',1,' ��Ϊ HUAWEI Mate 40 Pro����9000 SoCоƬ ����֪�⿨��ӰӰ�� ��������˫�������8GB+128GB����ɫ5Gȫ��ͨ',0),(3,'Redmi K40 Pro+',3699.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/157591/24/9323/48618/603c7b37Ef2a8378c/aa7e713eb10b4729.jpg!cc_320x320.webp','2021-04-04',1,'Redmi K40 Pro+ �콢����888 ����E4�콢120Hz��ˢֱ�� һ������ҹ����� �ű�ȫ���� 33W��� 12GB+256GB ī�� ��Ϸ�羺����5G�ֻ� С�� ����',0),(4,'С��11',4299.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/157056/28/6/67298/5fe94ff9E91bcfc7f/26cd4a19b1ae69b2.jpg!cc_320x320.webp','2021-04-04',1,'С��11 5G ����888 2K AMOLED������������ 1������ 55W�������� 50W�������� 8GB+256GB ��ɫ ��Ϸ�ֻ�',0),(5,'С��10',3599.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/140484/20/3978/93663/5f223172E5c52b721/17a22d63fccb4782.jpg!cc_320x320.webp','2021-04-04',1,'С��10 ˫ģ5G ����865 1������8K��Ӱ��� �Գ�ʽ������ 8GB+256GB �����Ż�',0),(6,'Redmi Note 9',1099.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/143051/26/15747/73035/5fbdd54cE80757a48/67c387e1d0dc5c83.jpg!cc_320x320.webp','2021-04-04',1,'Redmi Note 9 4G 6000mAh���� ����662������ 18W��� ��ī�� 6GB+128GB ��Ϸ�����ֻ� С�� ����',0),(7,'��Ϊ nova7 Pro',3699.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/116419/9/2380/105781/5ea180a2E67adf0fc/26e86c2951e8a43f.jpg!cc_320x320.webp','2021-04-04',0,'��Ϊ HUAWEI nova 7 Pro 3200��׷��˫�� 50��Ǳ��ʽ�佹���� 5G SoCоƬ 8GB+128GB ������ȫ��ͨ5G�ֻ�',0),(8,'��Ϊ Mate30E Pro',5299.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/126735/17/15837/156945/5f917d44Ef62562f6/5fd3eda1e3ba2622.jpg!cc_320x320.webp','2021-04-04',0,'��Ϊ HUAWEI Mate 30E Pro 5G����990E SoCоƬ ˫4000���⿨��ӰӰ�� 8GB+128GB��ɽ��ȫ��ͨ�ֻ�',0),(9,'��ҫ30 Pro',3999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/172887/22/1279/64616/60641af9E829b9761/3e3be678da2f6c65.jpg!cc_320x320.webp','2021-04-04',0,'��ҫ30 Pro 50��Զ�� ����990 5G 4000�򳬸й���Ӱ 3200W�������� ��Ϸ�ֻ� ȫ��ͨ��8GB+128GB �ѿ���',0),(10,'��ҫV40 ���ݰ�',2989.00,'https://img30.360buyimg.com/babel/s320x320_jfs/t1/155583/6/16780/217813/60541338Ed3d24839/7b272410bf979822.jpg!cc_320x320.webp','2021-04-04',0,'��ҫV40���ݰ� 5G ������� 6400�������� 8GB+128GB��ˮ��� �ƶ���ͨ����5G ˫��˫���ֻ�',0),(11,'vivo X60',3498.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/155008/32/11014/67492/5fe19bcfE2176668b/19ab46ddca4031ec.jpg!cc_320x320.webp','2021-04-04',1,'vivo X60 8GB+128GB ���� 5G�ֻ� ��˾��ѧ��ͷ ΢��̨�ڹ�ҹ��2.0 ����5nm�콢оƬ ˫ģ5Gȫ��ͨ�ֻ�',0),(12,'vivo iQOO U3x',1199.00,'https://img14.360buyimg.com/babel/s320x320_jfs/t1/159049/2/14421/69568/60547daaEfea5c876/dc74b2f34406ea29.jpg!cc_320x320.webp','2021-04-04',0,'vivo iQOO U3x 6GB+64GB �Ż� ��ͨ�����˺�ǿо 5000mAh���� 90Hz������ ˫ģ5Gȫ��ͨiqoou3x',0),(13,'vivo S9e',2399.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/156049/15/16968/101724/6054a710Efe177733/52de2b412819280b.jpg!cc_320x320.webp','2021-04-04',0,'vivo S9e 5G�ֻ� 8GB+128GB ��ҹ���� 3200����ǰ�� ����6400����Ӱ��ϵͳ �����ֻ�',0),(14,'OPPO Reno 5 Pro',3399.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/160235/39/4758/121830/600e612cE856f77ea/83a6a8ddfc29765e.jpg!cc_320x320.webp','2021-04-04',1,'OPPO Reno5 Pro 5G 6400��ˮ���������� 65W�������� 8+128 ������ ȫ��ͨ�ֻ�',0),(15,'OPPO Find X3 Pro',5999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/159384/4/15500/118624/605da676Ea4f72fff/a8579ed76df33f89.jpg!cc_320x320.webp','2021-04-04',1,'Find X3 Pro ����888 5000��˫����IMX766 10��ɫ����� 60����΢�� 12+256GB ����Ħ�� 5G�����콢�ֻ�',0),(16,'OPPO A93',1799.00,'https://img10.360buyimg.com/babel/s320x320_jfs/t1/157942/30/13657/265175/60504ffaEa3f068dc/b9530d1ec192d761.jpg!cc_320x320.webp','2021-04-04',1,'OPPO A93 8+128GB ���� ����˫ģ5G ����洢 5000mAh���� 18W���ٿ�� 90Hz��ˢ�� 4800������ ȫ�����ֻ�',0),(17,'SONY Xperia1',7199.00,'https://img30.360buyimg.com/babel/s320x320_jfs/t1/119131/23/19548/39751/5f7ff05fE7260ab0a/7149ca668295130d.jpg!cc_320x320.webp','2021-04-04',1,'���ᣨSONY��Xperia1 II 5G�����ֻ� 4K�� ����865 12G+256G ΢������ ��˾��Ĥ ������Ϸ 20֡/�� ��ɽ��',0),(18,'vivo IQOO Z3',2999.00,'https://img13.360buyimg.com/babel/s320x320_jfs/t1/174833/31/193/64640/605b2ee2Efa43bb9c/f5b3585e67454c66.jpg!cc_320x320.webp','2021-04-04',1,'vivo iQOO Z3 8GB+128GB ��� ��ͨ����768G 55W���� 120Hz��ˢ������ 6400������ ˫ģ5Gȫ��ͨ�ֻ�iqooz3',0),(19,'Apple iPhone 12 Pro',8508.00,'https://img12.360buyimg.com/babel/s320x320_jfs/t1/156321/11/18110/94927/605d99ecE53e653f3/65651ee0c561d469.jpg!cc_320x320.webp','2021-04-04',1,'Apple iPhone 12 Pro (A2408) 128GB ����ɫ ֧���ƶ���ͨ����5G ˫��˫���ֻ��������װ��',0),(20,'OPPO K7x',1499.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/167780/29/15309/103204/606428e9Ef7f536ba/11b4a097dd092447.jpg!cc_320x320.webp','2021-04-04',1,'OPPO K7x ˫ģ5G 4800������ 5000mAh������ 90Hz�羺�� �ھ�6GB+128GB 30W���� ȫ��ͨ��Ϸ�����ֻ�',0),(22,'С��11',4300.00,'https://img11.360buyimg.com/babel/s320x320_jfs/t1/157056/28/6/67298/5fe94ff9E91bcfc7f/26cd4a19b1ae69b2.jpg!cc_320x320.webp','2021-04-04',1,'С��11 5G ����888 2K AMOLED������������ 1������ 55W�������� 50W�������� 8GB+256GB ��ɫ ��Ϸ�ֻ�',0),(23,'asdas',0.00,'asdasdasd','0000-00-00',0,NULL,NULL);
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
INSERT INTO `user` VALUES (1,'admin','admin','������','1','1111'),(2,'aaa','5555','555555','1','asdas'),(5,'16492316','165asd1a3213','546as1d32a1','1',NULL),(6,'asdasd','sada','asdas','a',NULL),(7,'asdasdasd','adasdmin','adasda','a',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
