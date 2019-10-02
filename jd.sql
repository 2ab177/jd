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
(64),
  guige VARCHAR
(32),
jianping VARCHAR
(80),
xiangping VARCHAR
(300),
xiangimg VARCHAR
(20),
carimg VARCHAR
(128),
ischecked BOOLEAN
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
(null,'品牌闪购','享品质好物','mrg2'),
(null,'品牌秒杀','低价抢大牌','mrg3'),
(null,'京东直播','边看边买','mrg4'),
(null,'排行榜','热销推荐','mrg5'),
(null,'拍拍好物','二手优品','mrg6'),
(null,'新品首发','vivo X27','mrg7'),
(null,'发现好货','发现品质生活','mrg8');
/**商品列表**/
INSERT INTO jd_product
VALUES(null, '1_sm', '1_lg', 'zy', 3988.00, 3888.00, '闪购', '【京东旗舰店+华为官方直供：全国联保+多重好礼(可联系客服折现)】【赠：10000毫安移动电源+真无线双耳蓝牙耳机+高品质运动手环等好礼】华为P30pro', '华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)','天空之镜,8GB+128GB,标准版,1个','清晰度高(1190),流畅至极(1036),拍摄功能强(1247),颜色绚丽(1079),功能齐全(1131),漂亮大方(1021)','手机质量非常好，外观非常漂亮，尺寸大小适合女性，男性建议mate20，拍照清晰，逼格高，自带算法，画面增强，随手拍，竟显大片本色，颜值高，自拍，旅游神器,外形外观：亮黑色 稳重不失时尚拍照效果：试拍了下很好运行速度：运行也很快老公很喜欢，手机大小正好。方便拿，待机时间需要使用段时间再评价。','p30_detail1,p30_detail2','p30_1,p30_2,p30_3,p30_4,p30_5,p30_6,p30_7,p30_8,p30_9,p30_10',false),
  (null, '2_sm', '2_lg', 'jdjx', 1999.00, 1899.00, '新品', '限时特惠300元！成交价1999！屏下摄像头，骁龙710，后置三摄！Note10系列正式预售！预定即享白条6期免息》', '三星 Galaxy A8s 全面屏手机 6GB+128GB 极光黑 全网通 双卡双待 4G手机 自营','莓什么,6GB+128GB,1个','漂亮大方(1190),流畅至极(1036),游戏通畅无阻(1247),画面清晰细腻(1079),真彩清晰显示屏(1131)','外形外观：外观很漂亮，屏占比很高，手感好，渐变色美，拍照效果：像素照相技术高，清晰度高，三摄像，凝时拍摄视频，凝时拍摄照片，运行速度：6+128，骁龙处理器710运行速度也很快,昨晚下单 刚刚入手 感觉很大气 颜色也很个性 适合裸机 屏幕滑动流畅不卡顿 外放音量中规中矩 没苹果xs max声音大','a8sd1,a8sd2,a8sd3,a8sd4,a8sd5','a8s1,a8s2,a8s3,a8s4,a8s5',false),
  (null, '3_sm', '3_lg', 'zy', 988.00, 978.00, '满减', '【电视购物同款】台上式，体积小，不用电，无废水，大流量，保留水中有益矿物质，支持免费上门安装！', '乔治史帝夫净水器 家用台上式净水机器史蒂夫厨房自来水龙头过滤器 不锈钢正品SAT900型直饮水机','1个','方便省事(1190),安装便捷(1036),不占空间(1247),水质改善佳(1079),水流量足(1131),操作便捷(1131)','下单隔天就收到在如此的酷暑天气中首先要感谢快递小哥的辛劳，东西很小巧，放在料理台上眼睛一亮，出水也流畅。,很不错，安装方便，清洗方便，出水量大，爸爸用了一段时间了很满意，家乡里的水有些沙子，过滤后没了比之前的水好喝多了，有点清甜的感觉，喝得放心了。','jsqd1,jsqd2,jsqd3,jsqd4,jsqd5','jsq1,jsq2,jsq3,jsq4,jsq5',false),
  (null, '4_sm', '4_lg', 'jdjx', 2399.00, 2299.00, null, '限时特惠200元！成交价2399！屏下摄像头，骁龙710，后置三摄！Note10系列正式预售！预定即享白条6期免息》', '三星 Galaxy A8s 全面屏手机 8GB+128GB 极光黑 全网通 双卡双待 4G手机 自营','极光黑,8GB+128GB,1个','漂亮大方(1190),流畅至极(1036)，游戏通畅无阻(1247),画面清晰细腻(1079),真彩清晰显示屏(1131)','外形外观：外观很漂亮，屏占比很高，手感好，渐变色美，拍照效果：像素照相技术高，清晰度高，三摄像，凝时拍摄视频，凝时拍摄照片，运行速度：6+128，骁龙处理器710运行速度也很快,外放音量中规中矩 没苹果xs max声音大 耳机的话还没试 内存和处理器满足日常生活使用 重度游戏玩家慎拍 具体使用情况 用几天再追评 就这样','jshd1,jshd2,jshd3,jshd4,jshd5','jsh1,jsh2,jsh3,jsh4,jsh5',false),
  (null, '5_sm', '5_lg', 'zy', 3199.00, 3099.00, '秒杀', '【咨询客服优惠100元】【白条6期免息】【下单送】华为原装智能手环+钢化膜+运动蓝牙耳机+充电宝+一拖三数据线+碎屏险+运费险。华为P30', 'HUAWEI华为Mate20 手机【6期免息】 亮黑色 全网通(6GB 64GB) 送华为智能手环/碎屏险',null,null,null,null,null,false),
  (null, '6_sm', '6_lg', 'jdjx', 4980.00, 4880.00, '秒杀', '【新品上市，5芯6级过滤，自来水过滤直饮，水质监测功能，净水自动加热一体，全国免费上门安装', '八分（bafeen）净水器家用直饮加热一体机厨房壁挂纯水机ro反渗透台式冷热净水机 BF-S20D-100G',null,null,null,null,null,false),
  (null, '7_sm', '7_lg', 'zy', 1999.00, 1899.00, '满减', '【7.26京东超级新品日】旗舰单品限量到货详情猛戳', '【预售版】华为平板 M6 8.4英寸麒麟980影音娱乐平板电脑4GB+64GB WiFi（香槟金）',null,null,null,null,null,false),
  (null, '8_sm', '8_lg.', 'zy', 20800.00, 19800.00, '满减', '拥有GPR150限量版拉风从此刻开始！温馨提示：选择定金购买提车时需要到就近线下门店或者线上支付尾款，谢谢！', '阿普利亚摩托车GPR150赛道跑车限量版 街车 国四 限量版 银色 全款',null,null,null,null,null,false);
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