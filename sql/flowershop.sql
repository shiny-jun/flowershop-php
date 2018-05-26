/*
SQLyog v10.2 
MySQL - 5.5.5-10.1.28-MariaDB : Database - fs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fs`;

/*Table structure for table `floimg` */

DROP TABLE IF EXISTS `floimg`;

CREATE TABLE `floimg` (
  `imgId` int(10) NOT NULL AUTO_INCREMENT,
  `floId` int(10) unsigned NOT NULL,
  `img` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`imgId`),
  KEY `floId` (`floId`),
  CONSTRAINT `floimg_ibfk_1` FOREIGN KEY (`floId`) REFERENCES `flowerinf` (`FloId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `floimg` */

insert  into `floimg`(`imgId`,`floId`,`img`) values (1,1,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmd32g70xej20hs0hs0ua.jpg'),(2,1,'http://wx2.sinaimg.cn/mw690/6d659ba0gy1fmd32kydrpj20ro0r6tb3.jpg'),(3,2,'http://wx2.sinaimg.cn/mw690/6d659ba0gy1fmd32leslaj20h00h0myq.jpg');

/*Table structure for table `flomean` */

DROP TABLE IF EXISTS `flomean`;

CREATE TABLE `flomean` (
  `FloType` int(11) NOT NULL AUTO_INCREMENT,
  `FloName` varchar(15) DEFAULT NULL,
  `Moral` varchar(400) DEFAULT NULL,
  `Symblize` varchar(400) DEFAULT NULL,
  `Meaning` varchar(400) DEFAULT NULL,
  `floImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FloType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `flomean` */

insert  into `flomean`(`FloType`,`FloName`,`Moral`,`Symblize`,`Meaning`,`floImg`) values (1,'玫瑰','在中国，玫瑰则因其枝茎带刺，被认为是刺客、侠客的象征。<br/>而在西方则把玫瑰花当作严守秘密的象征，做客时看到主人家桌子上方画有玫瑰，就明白在这桌上所谈的一切均不可外传，于是有了Sub rosa，“在玫瑰花底下”这个拉丁成语。 英语的under the rose则是源自德语unter der Rosen，古代德国的宴会厅、会议室以及酒店餐厅，天花板上常画有或刻有玫瑰花，用来提醒与会者守口如瓶，严守秘密，不要把玫瑰花下的言行透露出去。这是起源于罗马神话中的荷鲁斯（Horus）撞见美女——爱的女神“维纳斯”偷情的情事，她儿子丘比特为了帮自己的母亲保有名节，于是给了他一朵玫瑰，请他守口如瓶，荷鲁斯收了玫瑰于是缄默不语，成为“沉默之神”，这就是under the rose之所以为守口如瓶的由来。<br/>','红玫瑰代表热情真爱<br/>黄玫瑰代表珍重祝福和嫉妒失恋<br/>紫玫瑰代表浪漫真情和珍贵独特<br/>白玫瑰代表纯洁天真<br/>黑玫瑰则代表温柔真心<br/>橘红色玫瑰友情和青春美丽<br/>蓝玫瑰则代表敦厚善良','1朵玫瑰代表——我的心中只有你 ONLY YOU！<br/>2朵玫瑰代表——这世界只有我俩！<br/>3朵玫瑰代表——我爱你 I LOVE YOU！<br/>4朵玫瑰代表——至死不渝！<br/>5朵玫瑰代表——由衷欣赏！<br/>6朵玫瑰代表——互敬 互爱 互谅！<br/>7朵玫瑰代表——我偷偷地爱著你！<br/>8朵玫瑰代表——感谢你的关怀扶持及鼓励！<br/>9朵玫瑰代表——长久 ALWAYS！<br/>10朵玫瑰代表——十全十美 无懈可击！<br/>11朵玫瑰代表——最爱 只在乎你一人！<br/>99朵玫瑰象徵——天长地久 FOREVER！<br/>100朵玫瑰象徵——百分之百的爱 100% LOVE！<br/>101朵玫瑰象徵——最……最爱！<br/>108朵玫瑰象徵——求 婚！赞同<br/>','http://wx2.sinaimg.cn/large/6d659ba0gy1fmd329pmv3j20dw0dwq4j.jpg'),(2,'百合','在中国百合具有百年好合美好家庭、伟大的爱之含意，有深深祝福的意义。受到百合花祝福的人具有单纯天真的性格，集众人宠爱于一身，不过光凭这一点并不能平静度过一生，必须具备自制力，抵抗外界的诱惑，才能保持不被污染的纯真。','百合花是五行属水或者鼠年出生的人们的风水花卉，百合花是它们的幸运之花，这些人群可以用百合制造一个好风水的住房。生肖属猴，宜在居室之西或西北方置放属金的植物花卉盆景，如百合花，这样也有利于它们的运情的。<br/>',NULL,'http://img.hb.aicdn.com/d42c97922a9012b0e167065c4bc584a4c8706b0828bee-SrrWqd_fw658'),(3,'满天星','满天星是清雅之士所喜爱的花卉，素蕴含\"清纯、致远、浪漫\"之意。满天星花语：关怀、思恋、清纯、真爱、纯洁的心灵、喜悦、关心、纯洁，守望爱情、甘做配角的爱。<br/>',NULL,'用红月季配衬满天星表示“情有满天星独钟”<br/> 用康乃馨配衬满天星表示“慈爱与温馨”<br/>用唐菖蒲配衬满天星表示\"祝你宏图大展”<br/> 用补血草配衬满天星表示“友谊永存”<br/>','http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmopvrdodtj20hs0hndgy.jpg'),(4,'向日葵','太阳、沉默的爱、爱慕。<br/>并不总看得清，你蹙眉或苦笑背后的心情 并不常对你说，我内心所有的欢喜与伤痛 却在彼此生命中互为激赏 不断地相逢再离别 相拥然后目送 把你赐予我的种籽，种在天边 你温暖的注视，像太阳明亮灿烂 伴我一路泥泞，挣扎跌倒反复爬起 生根发芽 依然不屈不挠顺从天意 当我经历过喜怒哀乐 想和你分享 请让我牵你手 陪你晒晒太阳 在不同时空对视 冷静而缄默如常 我明白你深沉目光背后所有守望 什么都不必说 我们已读懂对方。<br/>向日葵，因花序随太阳转动而得名。父亲就像阳光一直照耀着我这株小小向日葵。我带着爱慕、信念的花语，向暖绽放。蓝刺球是我的小调皮、小淘气，爱丽丝是我的温柔、浪漫。从童年蔓延到成年的点点滴滴记忆……向日葵寓意沉默的爱，但这一次我想好好表达——你永远是我的阳光。<br>向日葵具有向光性，人们称它为太阳花，随太阳回绕的花。在古代的印加帝国，向日葵是太阳神的象徵',NULL,NULL,'http://img.hb.aicdn.com/6019371e0d2ed094326df6331590b46f491d78829c285-59xsYG_fw658'),(5,'风信子','希腊神话中受太阳神阿波罗（Απλλων）宠眷、并被其所掷铁饼误伤而死的美少年雅辛托斯（κινθο），是由于西风风神泽费奴斯（Zephyrus）用计害死。在雅辛托斯的血泊中，长出了一种美丽的花，阿波罗便以少年的名字命名这种花——风信子υκινθο（Hyacinthus orientalis）。<br>','1.只要点燃生命之火，便可同享丰富人生。<br/>2.重生的爱。忘记过去的悲伤，开始崭新的爱。<br/>婚礼用花：在英国，蓝色风信子一直是婚礼中新娘捧花或饰花不可或缺的代表新人的纯洁，祈望带来幸福。<br/>','风信子花语：胜利、竞技、喜悦、爱意、幸福、浓情、倾慕、顽固、生命、得意、永远的怀念。<br/>蓝色的风信子：生命。<br/>紫色的风信子：悲伤、妒忌，忧郁的爱（得到我的爱，你一定会幸福快乐）、道歉(对不起，请原谅我）、后悔。<br/>淡紫色风信子：轻柔的气质、浪漫的情怀。悲伤。<br/>白色的风信子：恬适、沉静的爱（不敢表露的爱）、暗恋。<br/>红色的风信子：感谢你，让我感动的爱（你的爱充满我心中）。<br/>桃红色风信子：热情。<br/>蓝色的风信子：恒心、贞操、彷佛见到你一样高兴、高贵浓郁。<br/>深蓝色风信子：因爱而有些忧郁。<br/>黄色的风信子：幸福、美满，与你相伴很幸福。<br/>粉色的风信子：倾慕、浪漫。<br/>淡绿风信子：如果你想没有秘密，必先拥有善良的心。','http://wx1.sinaimg.cn/mw690/6d659ba0gy1fmopvqoq1cj20dc0hsjsw.jpg'),(6,'康乃馨','康乃馨，大部分代表了爱，魅力和尊敬之情，红色代表了爱和关怀。粉红色康乃馨传说是圣母玛利亚看到耶稣受到苦难流下伤心的泪水，眼泪掉下的地方就长出来康乃馨，因此粉红康乃馨成为了不朽的母爱的象征。与玫瑰所不同的，康乃馨代表的爱表现为比较清淡和温馨，适于形容亲情之爱，所以儿女多献康乃馨给自己的双亲。',NULL,'白色：甜美而可爱、天真无邪、纯洁的爱、给女性带来好运气的礼物、纯洁、纯洁的友谊、我活生生的爱情、吾爱永在、信念、雅致的爱、真情、尊敬<br/>粉色：永远不会忘了你、美丽、年青、热爱、祝母亲永远年轻美丽；感动、亮丽、母爱、女性的爱、我热烈地爱着你<br/> 红色：心为你而痛、赞赏、崇拜、迷恋、亲情、热烈的爱、热情、受伤的心、思念、相信你的爱、祝母亲健康长寿、祝你健康<br/>黄色：你让我感到失望、抛弃、藐视、长久的友谊、对母亲的感谢之恩、拒绝、侮讳、侮蔑、永远感谢、友谊深厚<br/>深红色：热烈的爱<br/>桃红色：热爱着你<br/>','http://wx2.sinaimg.cn/mw690/6d659ba0gy1fmopvt5vhpj20j60j60ub.jpg');

/*Table structure for table `flowerinf` */

DROP TABLE IF EXISTS `flowerinf`;

CREATE TABLE `flowerinf` (
  `FloId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FloName` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Inventory` int(11) NOT NULL,
  `Buyed` int(11) NOT NULL,
  `FloImg` varchar(200) DEFAULT NULL,
  `FloAddress` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`FloId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `flowerinf` */

insert  into `flowerinf`(`FloId`,`FloName`,`Price`,`Inventory`,`Buyed`,`FloImg`,`FloAddress`) values (1,'洋牡丹10支|多色随机',29,50,187,'http://wx1.sinaimg.cn/large/6d659ba0gy1fmm2y7w069j20hs0hst9p.jpg','广州'),(2,'绣球2支|9色随机',24,10,15,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2ykjatej20hs0hsdgo.jpg','昆明'),(3,'百合一支|限时团购',24,15,98,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2y6a3y1j20hs0hsglv.jpg','昆明'),(4,'小苍兰15支|拥有天然祖马龙香',49,20,142,'http://wx4.sinaimg.cn/mw690/6d659ba0gy1fmm2y4qoprj20hs0hs3z5.jpg','上海'),(5,'郁金香8支|多色随机',42,4,135,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2y3489yj20hs0hsaaf.jpg','重庆'),(6,'单头红玫瑰10支|多色随机',22,3,1565,'http://wx4.sinaimg.cn/mw690/6d659ba0gy1fmm2y96pmaj20hs0hs3yy.jpg','广州'),(7,'粉玫瑰11支|一生只爱你一个',69,50,125,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmd32g70xej20hs0hs0ua.jpg','泰国'),(8,'洋牡丹10支|多色随机',29,50,187,'http://wx1.sinaimg.cn/large/6d659ba0gy1fmm2y7w069j20hs0hst9p.jpg','日本'),(9,'绣球2支|9色随机',24,50,15,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2ykjatej20hs0hsdgo.jpg','昆明'),(10,'百合一支|限时团购',24,50,98,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2y6a3y1j20hs0hsglv.jpg',''),(11,'小苍兰15支|拥有天然祖马龙香',49,50,142,'http://wx4.sinaimg.cn/mw690/6d659ba0gy1fmm2y4qoprj20hs0hs3z5.jpg',''),(12,'郁金香8支|多色随机',42,50,135,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmm2y3489yj20hs0hsaaf.jpg',''),(13,'单头红玫瑰10支|多色随机',22,50,1565,'http://wx4.sinaimg.cn/mw690/6d659ba0gy1fmm2y96pmaj20hs0hs3yy.jpg',''),(14,'粉玫瑰11支|一生只爱你一个',69,50,125,'http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmd32g70xej20hs0hs0ua.jpg','');

/*Table structure for table `orderdata` */

DROP TABLE IF EXISTS `orderdata`;

CREATE TABLE `orderdata` (
  `ItemId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderId` int(10) unsigned NOT NULL,
  `FloName` varchar(40) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Oty` int(11) DEFAULT NULL,
  `TotalPrice` int(11) DEFAULT NULL,
  `FloId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ItemId`),
  KEY `OrderId` (`OrderId`),
  KEY `FloId` (`FloId`),
  CONSTRAINT `orderdata_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orderinf` (`OrderId`),
  CONSTRAINT `orderdata_ibfk_2` FOREIGN KEY (`FloId`) REFERENCES `flowerinf` (`FloId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderdata` */

/*Table structure for table `orderinf` */

DROP TABLE IF EXISTS `orderinf`;

CREATE TABLE `orderinf` (
  `OrderId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderData` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `State` varchar(10) NOT NULL,
  `City` varchar(10) DEFAULT NULL,
  `Tel` varchar(20) NOT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `UserId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `orderinf_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `userreg` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderinf` */

/*Table structure for table `shopcar` */

DROP TABLE IF EXISTS `shopcar`;

CREATE TABLE `shopcar` (
  `BacketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` int(10) unsigned NOT NULL,
  `FloId` int(10) unsigned NOT NULL,
  `FlosSum` int(11) DEFAULT NULL,
  PRIMARY KEY (`BacketId`),
  KEY `UserId` (`UserId`),
  KEY `FloId` (`FloId`),
  CONSTRAINT `shopcar_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `userreg` (`UserId`),
  CONSTRAINT `shopcar_ibfk_2` FOREIGN KEY (`FloId`) REFERENCES `flowerinf` (`FloId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `shopcar` */

insert  into `shopcar`(`BacketId`,`UserId`,`FloId`,`FlosSum`) values (9,2,5,4),(10,1,3,5),(11,1,1,2),(12,1,5,2),(22,1,4,8);

/*Table structure for table `userinf` */

DROP TABLE IF EXISTS `userinf`;

CREATE TABLE `userinf` (
  `MassageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` int(10) unsigned NOT NULL,
  `Tel` varchar(50) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `State` int(10) DEFAULT NULL,
  `City` int(10) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `himg` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MassageId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `userinf_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `userreg` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `userinf` */

insert  into `userinf`(`MassageId`,`UserId`,`Tel`,`Email`,`State`,`City`,`area`,`Address`,`himg`) values (1,1,'5555','55552235@qq.com',19,201,1778,'仓后街五邑','http://wx1.sinaimg.cn/mw690/6d659ba0gy1fmopxfbu5gj20ia0iaq3p.jpg'),(2,3,'66666','abc@163.com',19,203,1790,'体育西六运小区','http://wx3.sinaimg.cn/mw690/6d659ba0gy1fmopvpxvuhj21kw1kwe12.jpg'),(3,4,'6666666666','sb@sina.com',19,203,1790,'仓后街五邑大学','http://wx1.sinaimg.cn/mw690/6d659ba0gy1fmopxfbu5gj20ia0iaq3p.jpg');

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `UserId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Pwd` varchar(40) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `userreg` */

insert  into `userreg`(`UserId`,`UserName`,`Pwd`,`Email`) values (1,'abc','123','123@qq.com'),(2,'','',''),(3,'abcd','123','123@qq.com'),(4,'cys','147','45646@qq.com'),(5,'ygb','ygb','777@qq.com'),(6,'KKK','123456','erewr@163.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
