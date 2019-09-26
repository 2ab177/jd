<template>
  <div class="detail">
    <!-- 顶部app推广 -->
    <app-tg></app-tg>
    <!-- 商品轮播图 -->
    <div class="pro_carousel">
      <procar></procar>
      <!-- 轮播图上方导航条 -->
      <div class="pro_nav">
        <div>
          <router-link to="/"><span></span></router-link>
        <span class="about"></span>
        </div>
      </div>
    </div>
    <img class="detail_ad" src="../assets/detailAd.jpg" alt="">
    <div class="pro_detail">
      <!-- 价格条目 -->
      <div class="price">
        <div class="price_detail">
          <span>￥</span>
          <span>3988.00</span>
        </div>
        <div>
          <div>
            <img src="../assets/money.png" alt="">
            <p>降价提醒</p>
          </div>
          <div>
            <img src="../assets/star.png" alt="">
            <p>收藏</p>
          </div>
        </div>
      </div>
      <!-- 商品标题 -->
      <div class="title">
        <img class="title_icon1" src="../assets/zy2.png" alt="">
        <img class="title_icon2" src="../assets/jpsj.png" alt="">
        <span>华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)</span>
      </div>
      <div class="title_detail">
        <span>【京东旗舰店+华为官方直供：全国联保+多重好礼(可联系客服折现)】【赠：10000毫安移动电源+真无线双耳蓝牙耳机+高品质运动手环等好礼】华为P30pro</span>
        <span class="more_detail">查看&gt;</span>
      </div>
    </div>
    <div class="fxg">
      <img src="../assets/fxg.png" alt="">
      <span>免举证退换货 原厂维修</span>
    </div>
    <!-- 优惠和白条 -->
    <div class="yh_bt">
      <div class="youhui">
        <span>优惠</span>
        <div class="youhui_detail">
          <p><span>赠品</span> 中大惠农 zhongdahuinong 礼品卡节日礼品册团购提货卡券268型自选购物卡册 X1</p>
          <p><span>PLUS赠品</span><span>免费领</span></p>
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
      <div class="yixuan">
        <span>优惠</span>
        <div class="yixuan_detail">
          <p><span>赠品</span> 中大惠农 zhongdahuinong 礼品卡节日礼品册团购提货卡券268型自选购物卡册 X1</p>
          <p><span>PLUS赠品</span><span>免费领</span></p>
        </div>
        <span></span>
      </div>
    </div>
  </div>
</template>
<script>
import procar from '../components/pro_carousel'
export default {
  components:{
    procar
  }
};
</script>
<style scoped>
/* 白条 */
.baitiao>span:last-child{
  margin-top: .5rem !important;
}
.baitiao>div>span:first-child{
  color: #999;
  margin-right: 1.3rem;
}
.baitiao>div>span{
  font-size: .6rem;
}
.baitiao{
  padding: .5rem 0;
  display: flex;
  justify-content: space-between;
}
/* 页面背景颜色 */
.detail{
  background: #e8e8ed;
}
/* 优惠 */
.youhui_detail>p:last-child>span:first-child{
  border-color: #f3d4a8;
  color: #de8c17;
  margin-right: .2rem;
}
.youhui_detail>p>span{
  border:1px solid #f5b5b6;
  color: #e4393c;
}
.youhui>span{
  z-index: 1;
}
.youhui>span:first-child{
  margin-top:.6rem;
  color: #999;
}
.youhui_detail>p{
  margin: .5rem;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  box-sizing: border-box;
}
.yh_bt>div>span:last-child{
  display: inline-block;
  background: url('../assets/three_black.png') no-repeat;
  background-size: 100%;
  margin-top:1rem;
  margin-right: .6rem;
  width: 16px;
  height: 10px;
}
.youhui{
  display: flex;
  font-size: .6rem;
  text-align: left;
  position: relative;
  justify-content: space-between;
  height: 56px;
  border-bottom: 1px solid #eee;
}
.youhui_detail,.yixuan_detail{
  width: 100%;
  position: absolute;
  padding:0 2.4rem;
  box-sizing: border-box;
  z-index: 0;
  border-bottom: #eee;
}
.yh_bt,.ggdz{
  padding-left: .6rem;
  margin:.5rem 0;
  background: white;
}
/* 放心购 */
.fxg{
  display: flex;
  align-items: center;
  background: #fbf0fd;
  padding: .6rem 0;
}
.fxg>img{
  margin:0 .5rem;
  width: 77px;
  height: 14px;
}
.fxg>span{
  font-size: .8rem;
  color: #e4393c;
}
/* 商品标题&详情 */
.more_detail{
  color: #e4393c;
  margin-left: .8rem;
}
.title_detail{
  text-align: left;
  font-size: .6rem;
  color: #999;
  padding-top: .1rem;
  padding-bottom: .8rem;
}
.pro_detail{
  padding: 0 .6rem;
  background: #fff;
}
.title{
  text-align: left;
  margin: .3rem 0;
}
.title>span{
  font-size: 1rem;
  color: #333;
  font-weight: bold;
}
.title_icon1{
  width: 26px;
  height: 15px;
}
.title_icon2{
  width: 47px;
  height: 15px;
  margin:0 .3rem;
}
/* 价格条目 */
.price_detail{
  margin-top:.3rem;
}
.price>div:first-child>span{
  color: #e4393c;
  font-weight: 700;
}
.price>div:first-child>span:last-child{
  font-size: 1.4rem;
}
.price{
  margin-top: .3rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.price>div:last-child>div>img{
  width: 18px;
  height: 18px;
}
.price>div:last-child>div{
  text-align: center;
}
.price>div:last-child>div>p{
  margin: 0 .5rem;
}
.price>div:last-child{
  display: flex;
  font-size: .7rem;
  color: #999;
}
/* 轮播图下方广告 */
.detail_ad{
  width: 100%;
  display: block;
}
/* 轮播图上方导航条 */
.pro_carousel{
  position: relative;
  z-index: 0;
}
.pro_nav{
  width: 100%;
  left: 0;
  top: 0;
  position: absolute;
  z-index: 10;
}
.pro_nav>div{
  display: flex;
  justify-content: space-between;
}
.about{
  background: url('../assets/threeDian.png')#666 no-repeat !important;
  background-size: 75% !important;
  background-position: center center !important;
}
.pro_nav span{
  display: block;
  width: 1.9rem;
  height: 1.9rem;
  border-radius: 50%;
  background: url('../assets/back_white.png') #666 no-repeat;
  background-size: 60%;
  background-position: center center;
  margin: .3rem;
}

</style>