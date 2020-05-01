/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.53 : Database - music
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`music` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `music`;

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_pic` varchar(1000) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `banner` */

insert  into `banner`(`id`,`banner_pic`,`class_id`) values (1,'http://xjt51921.usa3v.com/banner_img/1.jpg',1),(2,'http://xjt51921.usa3v.com/banner_img/2.jpg',2),(3,'http://xjt51921.usa3v.com/banner_img/3.jpg',3),(4,'http://xjt51921.usa3v.com/banner_img/4.jpg',4),(5,'http://xjt51921.usa3v.com/banner_img/5.jpg',5);

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  `class_pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `class` */

insert  into `class`(`id`,`class_name`,`class_pic`) values (1,'猜你喜欢','http://xjt51921.usa3v.com/classmusic/1.jpg'),(2,'今日推荐','http://xjt51921.usa3v.com/classmusic/2.jpg'),(3,'热门歌曲','http://xjt51921.usa3v.com/classmusic/3.jpg'),(4,'音乐工厂','http://xjt51921.usa3v.com/classmusic/4.jpg'),(5,'爱听不听','http://xjt51921.usa3v.com/classmusic/5.jpg');

/*Table structure for table `music` */

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(32) NOT NULL,
  `music_url` varchar(10000) NOT NULL,
  `singer` varchar(32) NOT NULL,
  `music_pic` varchar(10000) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `music` */

insert  into `music`(`music_id`,`music_name`,`music_url`,`singer`,`music_pic`,`class_id`) values (1,'忘记拥抱','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/A-Lin-%E5%BF%98%E8%AE%B0%E6%8B%A5%E6%8A%B1-%E3%80%8A234%E8%AF%B4%E7%88%B1%E4%BD%A0%E3%80%8B%E7%94%B5%E5%BD%B1%E4%B8%BB%E9%A2%98%E6%9B%B2.flac?sign=3c73212bb989f703fbaf39648eaabe22&t=1588140996','A-Lin','http://xjt51921.usa3v.com/img/alin/1.jpg',5),(2,'给我一个理由忘记','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/A-Lin-%E7%BB%99%E6%88%91%E4%B8%80%E4%B8%AA%E7%90%86%E7%94%B1%E5%BF%98%E8%AE%B0.mp3?sign=c67cc9a2679af5528eb9db768dbe5555&t=1588140982','A-Lin','http://xjt51921.usa3v.com/img/alin/2.jpg',5),(3,'嚣张','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/en-%E5%9A%A3%E5%BC%A0.flac?sign=008d97665352314489c752d30ca2ff63&t=1588140970','en','http://xjt51921.usa3v.com/img/en/xz.jpg',1),(4,'暗示分离','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/en-%E6%9A%97%E7%A4%BA%E5%88%86%E7%A6%BB.flac?sign=a8292b71bd31ef348ba0e2e73e0439e6&t=1588140955','en','http://xjt51921.usa3v.com/img/en/asfl.jpg',1),(5,'无人之岛','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E4%BB%BB%E7%84%B6-%E6%97%A0%E4%BA%BA%E4%B9%8B%E5%B2%9B.flac?sign=cba66be79c27495de879fbe04afb3499&t=1588140939','任然','http://xjt51921.usa3v.com/img/rr/wrzd.jpg',1),(6,'说了再见','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E8%AF%B4%E4%BA%86%E5%86%8D%E8%A7%81-%E3%80%8A%E6%B5%B7%E6%B4%8B%E5%A4%A9%E5%A0%82%E3%80%8B%E7%94%B5%E5%BD%B1%E4%B8%BB%E9%A2%98%E6%9B%B2.flac?sign=730e6ad59b1fc2b7b09210fe5fbaec17&t=1588140927','周杰伦','http://xjt51921.usa3v.com/img/zjl/1.jpg',2),(7,'说好不哭','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E8%AF%B4%E5%A5%BD%E4%B8%8D%E5%93%AD%20(with%20%E4%BA%94%E6%9C%88%E5%A4%A9%E9%98%BF%E4%BF%A1).flac?sign=b36c8bdf2d2b7ee4aad384c4711ee928&t=1588140913','周杰伦','http://xjt51921.usa3v.com/img/zjl/2.jpg',2),(8,'不该','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6_%E5%BC%A0%E6%83%A0%E5%A6%B9-%E4%B8%8D%E8%AF%A5-%E7%94%B5%E8%A7%86%E5%89%A7%E3%80%8A%E5%B9%BB%E5%9F%8E%E3%80%8B%E7%89%87%E5%A4%B4%E6%9B%B2.flac?sign=83a89043e12c5c9307186f717f71aa45&t=1588140898','周杰伦_张惠妹','http://xjt51921.usa3v.com/img/zjl/3.jpg',2),(9,'三人游','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E6%96%B9%E5%A4%A7%E5%90%8C-%E4%B8%89%E4%BA%BA%E6%B8%B8.flac?sign=214e2962fde287f754d085fcc69292f2&t=1588140868','方大同','http://xjt51921.usa3v.com/img/fdt/1.jpg',3),(10,'裂缝中的阳光','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E6%9E%97%E4%BF%8A%E6%9D%B0-%E8%A3%82%E7%BC%9D%E4%B8%AD%E7%9A%84%E9%98%B3%E5%85%89.flac?sign=1579034a6b93eb339795249bf60669d9&t=1588140835','林俊杰','http://xjt51921.usa3v.com/img/ljj/1.jpg',4),(11,'One day','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E6%B5%B7%E8%B4%BC%E7%8E%8B-One%20day.flac?sign=8cff89ab24afc14005e2178ccfc2548a&t=1588140805','海贼王主题曲','http://xjt51921.usa3v.com/img/hzw/1.jpg',1),(12,'Beautiful Love','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E8%94%A1%E5%81%A5%E9%9B%85-Beautiful%20Love-%E3%80%8A%E7%99%BD%E8%A2%8D%E4%B9%8B%E6%81%8B%E3%80%8B%E7%94%B5%E8%A7%86%E5%89%A7%E7%89%87%E5%A4%B4%E6%9B%B2.flac?sign=1da98a4146b37032d93a245bd182bda5&t=1588140521','蔡健雅','http://xjt51921.usa3v.com/img/cjy/1.jpg',4),(13,'珊瑚海','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6_%E6%A2%81%E5%BF%83%E9%A2%90-%E7%8F%8A%E7%91%9A%E6%B5%B7.flac?sign=32d11b03507ec49e1ee3a2992636b5a3&t=1588300918','周杰伦_梁心颐','http://xjt51921.usa3v.com/img/zjl/4.jpg',2),(14,'安静','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%AE%89%E9%9D%99.flac?sign=486286f73e29c6bab442aab1636ddff0&t=1588301194','周杰伦','http://xjt51921.usa3v.com/img/zjl/5.jpg',2),(15,'不能说的秘密','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E4%B8%8D%E8%83%BD%E8%AF%B4%E7%9A%84%E7%A7%98%E5%AF%86-%E3%80%8A%E4%B8%8D%E8%83%BD%E8%AF%B4%E7%9A%84%E7%A7%98%E5%AF%86%E3%80%8B%E7%94%B5%E5%BD%B1%E6%8F%92%E6%9B%B2.flac?sign=422d074a07053b37d34d209fb0ccd2dc&t=1588301370','周杰伦','http://xjt51921.usa3v.com/img/zjl/6.jpg',2),(16,'彩虹','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%BD%A9%E8%99%B9-%E3%80%8A%E5%91%BD%E8%BF%90%E5%91%BC%E5%8F%AB%E8%BD%AC%E7%A7%BB%E3%80%8B%E7%94%B5%E5%BD%B1%E6%8F%92%E6%9B%B2.flac?sign=5dedc1f4361df390c043c0cbb01a6aa7&t=1588301423','周杰伦','http://xjt51921.usa3v.com/img/zjl/7.jpg',2),(17,'等你下课','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%AD%89%E4%BD%A0%E4%B8%8B%E8%AF%BE(with%20%E6%9D%A8%E7%91%9E%E4%BB%A3).flac?sign=1e5c6d73fe4ca9ddbd9d0b1d12b5daeb&t=1588301471','周杰伦','http://xjt51921.usa3v.com/img/zjl/8.jpg',2),(18,'发如雪','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%8F%91%E5%A6%82%E9%9B%AA.flac?sign=322ebd8361f0ec8ab1cf8c3df7980567&t=1588301510','周杰伦','http://xjt51921.usa3v.com/img/zjl/1.jpg',2),(19,'告白气球','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%91%8A%E7%99%BD%E6%B0%94%E7%90%83.flac?sign=3c1121fa97119cff6f8b70edafabc00c&t=1588301554','周杰伦','http://xjt51921.usa3v.com/img/zjl/2.jpg',2),(20,'搁浅','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%90%81%E6%B5%85.flac?sign=898ad4e5615bd9eaa912b299103fe51c&t=1588301799','周杰伦','http://xjt51921.usa3v.com/img/zjl/3.jpg',2),(21,'给我一首歌的时间','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%BB%99%E6%88%91%E4%B8%80%E9%A6%96%E6%AD%8C%E7%9A%84%E6%97%B6%E9%97%B4.flac?sign=72d14bacc9a65dfecac9c0107f0c48ee&t=1588301843','周杰伦','http://xjt51921.usa3v.com/img/zjl/4.jpg',2),(22,'轨迹','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E8%BD%A8%E8%BF%B9-%E3%80%8A%E5%AF%BB%E6%89%BE%E5%91%A8%E6%9D%B0%E4%BC%A6%E3%80%8B%E7%94%B5%E5%BD%B1%E4%B8%BB%E9%A2%98%E6%9B%B2.flac?sign=d8813fdb364d2ae0e8bc976d34ff637a&t=1588301887','周杰伦','http://xjt51921.usa3v.com/img/zjl/5.jpg',2),(23,'红尘客栈','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%BA%A2%E5%B0%98%E5%AE%A2%E6%A0%88.flac?sign=5f358d699f42f9a137edfe4be70c0b0e&t=1588301925','周杰伦','http://xjt51921.usa3v.com/img/zjl/6.jpg',2),(24,'回到过去','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%9B%9E%E5%88%B0%E8%BF%87%E5%8E%BB.flac?sign=66e6a8159a80090cffbf126b26b556f5&t=1588301960','周杰伦','http://xjt51921.usa3v.com/img/zjl/7.jpg',2),(25,'借口','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E5%80%9F%E5%8F%A3.flac?sign=52558c825b94bf7c0e72de351cd1495d&t=1588301993','周杰伦','http://xjt51921.usa3v.com/img/zjl/8.jpg',2),(26,'明明就','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%98%8E%E6%98%8E%E5%B0%B1.flac?sign=1644a125e2e0abf276ad3621dd85a5c3&t=1588302029','周杰伦','http://xjt51921.usa3v.com/img/zjl/1.jpg',2),(27,'蒲公英的约定','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E8%92%B2%E5%85%AC%E8%8B%B1%E7%9A%84%E7%BA%A6%E5%AE%9A.flac?sign=041348ed258bc7af44f765ceca1010aa&t=1588302062','周杰伦','http://xjt51921.usa3v.com/img/zjl/2.jpg',2),(28,'七里香','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E4%B8%83%E9%87%8C%E9%A6%99.flac?sign=cf396a378ac8ec9af53fdea25966a31b&t=1588302114','周杰伦','http://xjt51921.usa3v.com/img/zjl/3.jpg',2),(29,'青花瓷','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E9%9D%92%E8%8A%B1%E7%93%B7.flac?sign=c44c019dc49a479c949769f8f9d7e4ad&t=1588302181','周杰伦','http://xjt51921.usa3v.com/img/zjl/4.jpg',2),(30,'晴天','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%99%B4%E5%A4%A9.flac?sign=ed4be7d4a4e34507b84114e4bf982f5b&t=1588302224','周杰伦','http://xjt51921.usa3v.com/img/zjl/5.jpg',2),(31,'说好的幸福呢','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E8%AF%B4%E5%A5%BD%E7%9A%84%E5%B9%B8%E7%A6%8F%E5%91%A2.flac?sign=a096267abbc712e22d9dae80869a26cd&t=1588302256','周杰伦','http://xjt51921.usa3v.com/img/zjl/6.jpg',2),(32,'算什么男人','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%AE%97%E4%BB%80%E4%B9%88%E7%94%B7%E4%BA%BA.flac?sign=5adbf8717596426ec6391581b6b63b50&t=1588302294','周杰伦','http://xjt51921.usa3v.com/img/zjl/7.jpg',2),(33,'退后','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E9%80%80%E5%90%8E.flac?sign=f47ce6a0f121107d0fa4d2f4a4e6bb2e&t=1588302332','周杰伦','http://xjt51921.usa3v.com/img/zjl/8.jpg',2),(34,'我不配','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%88%91%E4%B8%8D%E9%85%8D.flac?sign=a4f73de3477f566a02995176effc35dd&t=1588302371','周杰伦','http://xjt51921.usa3v.com/img/zjl/1.jpg',2),(35,'星晴','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%98%9F%E6%99%B4.flac?sign=b631a246b58fa8446fd61c17cbdb8801&t=1588302406','周杰伦','http://xjt51921.usa3v.com/img/zjl/2.jpg',2),(36,'烟花易冷','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E7%83%9F%E8%8A%B1%E6%98%93%E5%86%B7.flac?sign=f1e81ca8adf40b964fddcebf4c292a62&t=1588302441','周杰伦','http://xjt51921.usa3v.com/img/zjl/3.jpg',2),(37,'一路向北','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E4%B8%80%E8%B7%AF%E5%90%91%E5%8C%97-%E3%80%8A%E5%A4%B4%E6%96%87%E5%AD%97D%E3%80%8B%E7%94%B5%E5%BD%B1%E6%8F%92%E6%9B%B2.flac?sign=6f6edb92a240b0680401aa321fad54d7&t=1588302472','周杰伦','http://xjt51921.usa3v.com/img/zjl/4.jpg',2),(38,'最长的电影','https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/%E5%91%A8%E6%9D%B0%E4%BC%A6-%E6%9C%80%E9%95%BF%E7%9A%84%E7%94%B5%E5%BD%B1.flac?sign=cf99c6f663c3138862e1bb9e034f2069&t=1588302525','周杰伦','http://xjt51921.usa3v.com/img/zjl/5.jpg',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
