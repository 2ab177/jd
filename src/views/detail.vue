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
    <!-- 价格条目 -->
    <div class="price">
      <div>
        <span>￥</span>
        <span>3988.00</span>
      </div>
      <div>
        <div>
          <img src="../assets/money.png" alt="">
          <span>降价提醒</span>
        </div>
        <div>
          <img src="../assets/star.png" alt="">
          <span>收藏</span>
        </div>
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
/* 价格条目 */
.price{
  display: flex;
  justify-content: space-between;
}
.price>div:last-child>div>img{
  width: 18px;
  height: 18px;
}
.price>div:last-child>div{
  text-align: center;
}
.price>div:last-child>div>span{
  
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