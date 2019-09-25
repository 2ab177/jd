SET NAMES UTF8;
DROP DATABASE IF EXISTS jd;
CREATE DATABASE jd CHARSET=UTF8;
USE jd;

/**商品列表**/
CREATE TABLE jd_product(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  smproimg VARCHAR
(20),
  lgproimg VARCHAR
(20),
  typeimg VARCHAR
(20),#京东精选，自营图片
  price DECIMAL
(10,2),
  vipprice DECIMAL
(10,2),
  buytype VARCHAR
(10), #闪购，满减文字
  details VARCHAR
(128),
  title VARCHAR
(64)
);

/**轮播图片**/
CREATE TABLE jd_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cimg VARCHAR
(20)             #轮播图路径
);

/**用户信息**/
CREATE TABLE jd_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR
(16),
  upwd  VARCHAR
(32)
);

/**京东秒杀**/
CREATE TABLE jd_miaosha(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  mimg VARCHAR
(20),
  nowprice INT,
  oldprice INT
);

/**购物车条目**/
CREATE TABLE jd_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid    INT,
  price  DECIMAL
(10,2),
  count  INT,
  lname  VARCHAR
(255),
  uid    INT
);
/**每日逛**/
CREATE TABLE jd_mrg(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  details VARCHAR(12),
  mrgimg VARCHAR(20)
);
/*******************/
/******数据导入******/
/*******************/
/**京东秒杀**/
INSERT INTO jd_mrg VALUES(null,'免息星球','白条免息购','mrg1'),
(null,'品牌闪购','享品质好物','.mrg2'),
(null,'品牌秒杀','低价抢大牌','mrg3'),
(null,'京东直播','边看边买','mrg4'),
(null,'排行榜','热销推荐','mrg5'),
(null,'拍拍好物','二手优品','mrg6'),
(null,'新品首发','vivo X27','mrg7'),
(null,'发现好货','发现品质生活','mrg8');
/**商品列表**/
INSERT INTO jd_product
VALUES(null, '1_sm', '1_lg', 'zy', 3988.00, 3888.00, '闪购', '【京东旗舰店+华为官方直供：全国联保+多重好礼(可联系客服折现)】【赠：10000毫安移动电源+真无线双耳蓝牙耳机+高品质运动手环等好礼】华为P30pro', '华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)'),
  (null, '2_sm', '2_lg', 'jdjx', 1999.00, 1899.00, '新品', '限时特惠300元！成交价1999！屏下摄像头，骁龙710，后置三摄！Note10系列正式预售！预定即享白条6期免息》', '三星 Galaxy A8s 全面屏手机 6GB+128GB 极光黑 全网通 双卡双待 4G手机 自营'),
  (null, '3_sm', '3_lg', 'zy', 988.00, 978.00, '满减', '【电视购物同款】台上式，体积小，不用电，无废水，大流量，保留水中有益矿物质，支持免费上门安装！', '乔治史帝夫净水器 家用台上式净水机器史蒂夫厨房自来水龙头过滤器 不锈钢正品SAT900型直饮水机'),
  (null, '4_sm', '4_lg', 'jdjx', 2399.00, 2299.00, null, '限时特惠200元！成交价2399！屏下摄像头，骁龙710，后置三摄！Note10系列正式预售！预定即享白条6期免息》', '三星 Galaxy A8s 全面屏手机 8GB+128GB 极光黑 全网通 双卡双待 4G手机 自营'),
  (null, '5_sm', '5_lg', 'zy', 3199.00, 3099.00, '秒杀', '【咨询客服优惠100元】【白条6期免息】【下单送】华为原装智能手环+钢化膜+运动蓝牙耳机+充电宝+一拖三数据线+碎屏险+运费险。华为P30', 'HUAWEI华为Mate20 手机【6期免息】 亮黑色 全网通(6GB 64GB) 送华为智能手环/碎屏险'),
  (null, '6_sm', '6_lg', 'jdjx', 4980.00, 4880.00, '秒杀', '【新品上市，5芯6级过滤，自来水过滤直饮，水质监测功能，净水自动加热一体，全国免费上门安装', '八分（bafeen）净水器家用直饮加热一体机厨房壁挂纯水机ro反渗透台式冷热净水机 BF-S20D-100G'),
  (null, '7_sm', '7_lg', 'zy', 1999.00, 1899.00, '满减', '【7.26京东超级新品日】旗舰单品限量到货详情猛戳', '【预售版】华为平板 M6 8.4英寸麒麟980影音娱乐平板电脑4GB+64GB WiFi（香槟金）'),
  (null, '.8_sm', '8_lg.', 'zy', 20800.00, 19800.00, '满减', '拥有GPR150限量版拉风从此刻开始！温馨提示：选择定金购买提车时需要到就近线下门店或者线上支付尾款，谢谢！', '阿普利亚摩托车GPR150赛道跑车限量版 街车 国四 限量版 银色 全款');
/**用户信息**/
INSERT INTO jd_login
VALUES(null, 'tom', md5('123'));
INSERT INTO jd_login
VALUES(null, 'jerry', md5('123'));
/**轮播图片**/
INSERT INTO jd_carousel
VALUES(null, 'cal-1'),
  (null, 'cal-2'),
  (null, 'cal-3'),
  (null, 'cal-4'),
  (null, 'cal-5'),
  (null, 'cal-6'),
  (null, 'cal-7'),
  (null, 'cal-8');
/**京东秒杀**/
INSERT INTO jd_miaosha
VALUES(null, 'ms1', 279, 299),
  (null, 'ms2', 1279, 1399),
  (null, 'ms3', 599, 466),
  (null, 'ms4', 59, 100),
  (null, 'ms5', 79, 89), 
  (null, 'ms6', 59, 100),
  (null, 'ms7', 69, 99),
  (null, 'ms8', 366,315);