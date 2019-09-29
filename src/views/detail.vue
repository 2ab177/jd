<template>
  <div class="detail">
    <!-- 返回顶部 -->
    <div @click="backtop" class="backtop">
    </div>
    <!-- 商品导航 -->
    <pronav />
    <!-- 顶部app推广 -->
    <app-tg />
    <!-- 商品轮播图 -->
    <div class="pro_carousel">
      <div class="carousel">
        <van-swipe indicator-color="#e4393c">
          <van-swipe-item v-for="(item,i) of imgs" :key="i">
            <img :src="require(`../assets/shangpin/${item}.jpg`)" alt />
          </van-swipe-item>
        </van-swipe>
      </div>
      <!-- 轮播图上方导航条 -->
      <div class="pro_nav">
        <div>
          <router-link to="/"><span class="pro_navspan"></span></router-link>
          <!-- <div>
            <span>商品</span>
            <span>评价</span>
            <span>详情</span>
            <span>推荐</span>
          </div> -->
          <span class="pro_navspan about"></span>
        </div>
      </div>
    </div>
    <img class="detail_ad" src="../assets/detailAd.jpg" alt />
    <div class="pro_detail">
      <!-- 价格条目 -->
      <div class="price">
        <div class="price_detail">
          <span>￥</span>
          <span>3988.00</span>
        </div>
        <div>
          <div>
            <img src="../assets/money.png" alt />
            <p>降价提醒</p>
          </div>
          <div>
            <img src="../assets/star.png" alt />
            <p>收藏</p>
          </div>
        </div>
      </div>
      <!-- 商品标题 -->
      <div class="title">
        <img class="title_icon1" src="../assets/zy2.png" alt />
        <img class="title_icon2" src="../assets/jpsj.png" alt />
        <span>华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)</span>
      </div>
      <div class="title_detail">
        <span>【京东旗舰店+华为官方直供：全国联保+多重好礼(可联系客服折现)】【赠：10000毫安移动电源+真无线双耳蓝牙耳机+高品质运动手环等好礼】华为P30pro</span>
        <span class="more_detail">查看&gt;</span>
      </div>
    </div>
    <!-- 放心购 -->
    <div class="fxg">
      <img src="../assets/fxg.png" alt />
      <span>免举证退换货 原厂维修</span>
    </div>
    <!-- 优惠和白条 -->
    <div class="yh_bt">
      <div class="youhui">
        <span>优惠</span>
        <div class="youhui_detail">
          <p>
            <span>赠品</span> 中大惠农 zhongdahuinong 礼品卡节日礼品册团购提货卡券268型自选购物卡册 X1
          </p>
          <p>
            <span>PLUS赠品</span>
            <span>免费领</span>
          </p>
        </div>
        <span></span>
      </div>
      <div class="baitiao">
        <div>
          <span>白条</span>
          <span>12期免息</span>
        </div>
        <span></span>
      </div>
    </div>
    <!-- 规格和地址 -->
    <div class="ggdz">
      <!-- 已选 -->
      <div>
        <span>已选</span>
        <div>
          <p>天空之镜,8GB+128GB,标准版,1个</p>
          <p>本商品支持保障服务,京东服务,点击可选服务</p>
        </div>
        <span></span>
      </div>
      <!-- 送至 -->
      <div>
        <span>送至</span>
        <div>
          <p>北京朝阳区三环到四环之间</p>
          <p>
            <span class="jdred">现货</span>
            11:10前下单,预计今天({{mdtime.getMonth()+1+'月'+mdtime.getDate()+'日'}})送达
          </p>
        </div>
        <span></span>
      </div>
      <!-- 重量 -->
      <div>
        <span class="kg">重量</span>
        <div>
          <p>0.48KG</p>
        </div>
      </div>
      <!-- 支持的服务 -->
      <div>
        <div>
          <div class="sup_server">
            <div class="gou_marleft">
              <span></span>
              <span>99元免基础运费(20kg内)</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>京东发货&售后</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>7天无理由退货</span>
            </div>
            <div class="gou_marleft">
              <span class="not_sup"></span>
              <span>不可使用京券东券</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>京尊达</span>
            </div >
            <div class="gou_marleft">
              <span></span>
              <span>京准达</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>211限时达</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>可配送港澳台及海外</span>
            </div>
          </div>
        </div>
        <span></span>
      </div>
    </div>
    <!-- 评价 -->
    <div class="appraise">
      <!-- 评价总览 -->
      <div class="zonglan">
        <div>
          <span>评价</span>
          <span class="jdred">好评 97%</span>
        </div>
        <div>
          <span>共 47万+ 条</span>
          <span></span>
        </div>
      </div>
      <div class="ar_detail">
        <div class="ar_juti">
          <div>
            <span>清晰度高(1901)</span>
            <span>流畅至极(1387)</span>
            <span>拍摄功能(1235)</span>
            <span>拍摄功能(1235)</span>
            <span>拍摄功能(1235)</span>
            <span>拍摄功能(1235)</span>
          </div>
          <div class="ardetail">
            <div>
              <div>
                <img src="../assets/user.png" alt />
                <span>用户一</span>
                <img src="../assets/vip.png" alt />
                <img src="../assets/fivestar.png" alt />
              </div>
              <span>2019-07-21</span>
            </div>
            <span>手机质量非常好，外观非常漂亮，尺寸大小适合女性，男性建议mate20，拍照清晰，逼格高，自带算法，画面增强，随手拍，竟显大片本色，颜值高，自拍，旅游神器</span>
          </div>
          <div class="ardetail">
            <div>
              <div>
                <img src="../assets/user.png" alt />
                <span>用户一</span>
                <img src="../assets/vip.png" alt />
                <img src="../assets/fivestar.png" alt />
              </div>
              <span>2019-07-21</span>
            </div>
            <span>手机质量非常好，外观非常漂亮，尺寸大小适合女性，男性建议mate20，拍照清晰，逼格高，自带算法，画面增强，随手拍，竟显大片本色，颜值高，自拍，旅游神器</span>
          </div>
          <!-- 更多评价 -->
          <div class="more_ar">
            <button>查看全部评价</button>
          </div>
        </div>
      </div>
    </div>
    <!-- 闲置回收 -->
    <div class="xzhs">
      <div>
        <div>
          <img src="../assets/phonechange.png" alt />
          <span>闲置回收</span>
        </div>
        <p>以旧换新</p>
      </div>
      <span></span>
    </div>
    <!-- 详情图片 -->
    <div class="detail_img">
      <div>
        <span>商品介绍</span>
        <span>规格参数</span>
        <span>售后保障</span>
      </div>
        <img src="../assets/shangpin/p30_detail1.jpg" alt />
      <img src="../assets/shangpin/p30_detail2.jpg" alt />
    </div>
  </div>
</template>
<script>
import pronav from "../components/pro_nav";
export default {
  data() {
    return {
      mdtime: new Date(),
      imgs: [
        "p30_1",
        "p30_2",
        "p30_3",
        "p30_4",
        "p30_5",
        "p30_6",
        "p30_7",
        "p30_8",
        "p30_9",
        "p30_10"
      ]
    };
  },
  components: {
    pronav
  },
  methods:{
    backtop(){
      window.scrollTo(0,0);
    }
  }
};
</script>
<style scoped>
/* 返回顶部 */
.backtop{
  width: 40px;
  height: 40px;
  border-radius: .2rem;
  background:url('../assets/backtop.png') rgba(0, 0, 0, .7) no-repeat;
  background-size: 24px 24px;
  background-position: center center;
  position: fixed;
  bottom: 70px;
  right: 1px;
  z-index: 1;
}
/* 详情图片 */
.detail_img> img {
  display: block;
  width: 100%;
  height: 100%;
}
.detail_img {
  background: #fff;
  text-align: center;
  font-size: 0.9rem;
  color: #333;
}
.detail_img > div {
  display: flex;
  border-bottom: 1px solid #ddd;
}
.detail_img > div > span:first-child{
  color: #e4393c;
}
.detail_img > div > span {
  display: block;
  flex: 1;
  padding: 0.7rem 0;
}
.detail_img > div > span + span {
  border-left: 1px solid #ddd;
}
/* 闲置回收 */
.xzhs > div > div > img {
  margin-right: 0.4rem;
}
.xzhs > div > div {
  display: flex;
  align-items: center;
}
.xzhs > div > p {
  margin: 0.3rem 0;
  margin-left: 1.5rem;
  color: #999;
}
.xzhs {
  background: #fff;
  font-size: 0.8rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: #333;
  padding: 0.7rem;
  margin-bottom: 0.5rem;
}
.xzhs > span {
  display: inline-block;
  width: 20px;
  height: 20px;
  background: url("../assets/back_right.png") no-repeat;
  background-size: 100%;
}
/* 评论详情 */
.more_ar {
  border-top: 1px solid #eee;
  padding: 0.5rem;
  text-align: center;
  padding-bottom: 0;
  color: #333;
}
.more_ar > button {
  font-size: 0.8rem;
  outline: none;
  border-radius: 10px;
  padding: 0.2rem 0.6rem;
  padding-right: 1.3rem;
  background: url("../assets/back_right.png") no-repeat;
  background-position: 82px center;
  background-size: 18px 18px;
  border: 1px solid #d7d7d7;
}
.ardetail > span {
  font-size: 0.8rem;
}
.ardetail > div:first-child > div {
  display: flex;
  align-items: center;
}
.ardetail > div:first-child {
  font-size: 0.8rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding-bottom: 0.5rem;
}
.ardetail > div > div:first-child > img:nth-child(3) {
  width: 28px;
  height: 10px;
}
.ardetail > div > div:first-child > img:first-child {
  margin-right: 0.5rem;
  width: 25px;
  height: 25px;
}
.ardetail {
  color: #333;
  margin-bottom: 0.5rem;
}
/* 商品轮播图 */
.carousel {
  transform: translateY(0); /*不加overflow无效*/
}
.carousel img {
  width: 100%;
  display: block;
}
/* 简评 */
.ar_juti {
  padding: 0.5rem;
}
.ar_juti > div:first-child > span {
  padding: 0.5rem;
  background: #fdf0f0;
  margin-right: 0.5rem;
  margin-bottom: 0.5rem;
  border-radius: 0.2rem;
  color: #666;
}
.ar_juti > div:first-child {
  display: flex;
  flex-flow: row wrap;
  font-size: 0.8rem;
}
/* 评价总览 */
.zonglan > div:last-child {
  display: flex;
  align-items: center;
  font-size: 0.8rem;
}
.zonglan > div:last-child > span:last-child {
  display: inline-block;
  width: 20px;
  height: 17px;
  background: url("../assets/back_right.png") no-repeat;
  background-size: 100%;
  margin-left: 0.5rem;
  background-position-y: -2px;
}
.zonglan > div:first-child > span:first-child {
  font-size: 1rem;
  margin: 0 0.5rem;
}
.zonglan {
  display: flex;
  justify-content: space-between;
  font-size: 0.8rem;
  color: #333;
  padding: 0.8rem 0.5rem;
  border-bottom: 1px solid #eee;
}
.appraise {
  background: #fff;
  margin-bottom: 0.5rem;
}
/* 支持的服务 */
.not_sup {
  background: url("../assets/cha.png") no-repeat !important;
  background-size: 100% !important;
}
.sup_server {
  display: flex;
  flex-flow: row wrap;
  padding: 0.5rem 0;
  padding-right: 1.5rem;
}
.gou_marleft {
  margin-right: 0.5rem;
}
.sup_server > div {
  display: flex;
  align-items: center;
  color: #999;
}
.sup_server > div > span:first-child {
  display: inline-block;
  width: 12px;
  height: 12px;
  background: url("../assets/gou.png") no-repeat;
  background-size: 100%;
  margin-right: 0.2rem;
}
/* 已选&送至&重量 */
.kg + div > p {
  color: #2c3e50 !important;
}
.kg {
  margin-top: 0.4rem !important;
}
.jdred {
  color: #e4393c;
}
.ggdz > div > span:first-child {
  margin-top: 0.6rem;
  width: 2.9rem;
  color: #999;
}
.ggdz > div > span:last-child {
  background: url("../assets/three_black.png") no-repeat;
  background-size: 100%;
  margin-top: 1rem;
  margin-right: 0.6rem;
  width: 16px;
  height: 10px;
}
.ggdz {
  background: #fff;
  padding-left: 0.6rem;
  font-size: 0.8rem;
  margin-bottom: 0.5rem;
}
.ggdz > div > div > p:last-child {
  color: #999;
}
.ggdz > div > div > p {
  margin: 0.5rem 0;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.ggdz > div {
  display: flex;
  border-bottom: 1px solid #eee;
}
.ggdz > div > span {
  display: inline-block;
}
.ggdz > div > div {
  flex: 1;
  overflow: hidden;
}
/* 白条 */
.baitiao > span:last-child {
  margin-top: 0.5rem !important;
}
.baitiao > div > span:first-child {
  color: #999;
  margin-right: 1.3rem;
}
.baitiao > div > span {
  font-size: 0.8rem;
}
.baitiao {
  padding: 0.5rem 0;
  display: flex;
  justify-content: space-between;
}
/* 页面背景颜色 */
.detail {
  background: #e8e8ed;
  overflow: hidden;
  text-align: left;
  padding-bottom: 50px;
}
/* 优惠 */
.youhui_detail > p:last-child > span:first-child {
  border-color: #f3d4a8;
  color: #de8c17;
  margin-right: 0.2rem;
}
.youhui_detail > p > span {
  display: inline-block;
  margin: 0;
  border: 1px solid #f5b5b6;
  color: #e4393c;
  padding: 0 .1rem;
}
.youhui > span {
  z-index: 1;
}
.youhui > span:first-child {
  margin-top: 0.6rem;
  color: #999;
}
.youhui_detail > p {
  margin: 0.5rem;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  box-sizing: border-box;
}
.yh_bt > div > span:last-child {
  display: inline-block;
  background: url("../assets/three_black.png") no-repeat;
  background-size: 100%;
  margin-top: 1rem;
  margin-right: 0.6rem;
  width: 16px;
  height: 10px;
}
.youhui {
  display: flex;
  font-size: 0.8rem;
  position: relative;
  justify-content: space-between;
  height: 65px;
  border-bottom: 1px solid #eee;
}
.youhui_detail {
  width: 100%;
  position: absolute;
  padding: 0 2.4rem;
  box-sizing: border-box;
  z-index: 0;
  border-bottom: #eee;
}
.yh_bt {
  padding-left: 0.6rem;
  margin: 0.5rem 0;
  background: white;
}
/* 放心购 */
.fxg {
  display: flex;
  align-items: center;
  background: #fbf0fd;
  padding: 0.6rem 0;
}
.fxg > img {
  margin: 0 0.5rem;
  width: 77px;
  height: 14px;
}
.fxg > span {
  font-size: 0.8rem;
  color: #e4393c;
}
/* 商品标题&详情 */
.more_detail {
  color: #e4393c;
  margin-left: 0.8rem;
}
.title_detail {
  text-align: left;
  font-size: 0.8rem;
  color: #999;
  padding-top: 0.1rem;
  padding-bottom: 0.8rem;
}
.pro_detail {
  padding: 0 0.6rem;
  background: #fff;
}
.title {
  text-align: left;
  margin: 0.3rem 0;
}
.title > span {
  font-size: 1rem;
  color: #333;
  font-weight: bold;
}
.title_icon1 {
  width: 26px;
  height: 15px;
}
.title_icon2 {
  width: 47px;
  height: 15px;
  margin: 0 0.3rem;
}
/* 价格条目 */
.price_detail {
  margin-top: 0.3rem;
}
.price > div:first-child > span {
  color: #e4393c;
  font-weight: 700;
}
.price > div:first-child > span:last-child {
  font-size: 1.4rem;
}
.price {
  padding-top: 0.3rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.price > div:last-child > div > img {
  width: 18px;
  height: 18px;
}
.price > div:last-child > div {
  text-align: center;
}
.price > div:last-child > div > p {
  margin: 0 0.5rem;
}
.price > div:last-child {
  display: flex;
  font-size: 0.7rem;
  color: #999;
}
/* 轮播图下方广告 */
.detail_ad {
  width: 100%;
  display: block;
}
/* 轮播图上方导航条 */
/* .pro_nav>div>div>span{
  
}
.pro_nav>div>div{
  flex: 1;
  display: flex;
  font-size: .9rem;
  align-items: center;
  justify-content: space-around;
  color:#333;
} */
.pro_carousel {
  position: relative;
  z-index: 0;
}
.pro_nav {
  width: 100%;
  left: 0;
  top: 0;
  position: absolute;
  z-index: 10;
}
.pro_nav > div {
  display: flex;
  justify-content: space-between;
}
.about {
  background: url("../assets/threeDian.png") #666 no-repeat !important;
  background-size: 75% !important;
  background-position: center center !important;
}
.pro_navspan{
  display: block;
  width: 1.9rem;
  height: 1.9rem;
  border-radius: 50%;
  background: url("../assets/back_white.png") #666 no-repeat;
  background-size: 60%;
  background-position: center center;
  margin: 0.3rem;
}
</style>