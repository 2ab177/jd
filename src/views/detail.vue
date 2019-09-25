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
        <div>
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
      <div class="detail">
        <span>【京东旗舰店+华为官方直供：全国联保+多重好礼(可联系客服折现)】【赠：10000毫安移动电源+真无线双耳蓝牙耳机+高品质运动手环等好礼】华为P30pro</span>
        <span class="more_detail">查看&gt;</span>
      </div>
    </div>
    <div class="fxg">
      <img src="../assets/fxg.png" alt="">
      <span>免举证退换货 原厂维修</span>
    </div>
    <div class="yh_bt">
      <div>
        <span>优惠</span>
        <div>
          <div></div>
        </div>
      </div>
      <div>

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
.detail{
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