<template>
  <div class="detail">
    <!-- 顶部app推广 -->
    <app-tg></app-tg>
    <!-- 商品轮播图 -->
    <procar></procar>
    <img class="detail_ad" src="../assets/detailAd.jpg" alt="">
    <div class="price">
      <div>
        <span>￥</span>
        <span>3988.00</span>
      </div>
      <div>
        <div></div>
        <div></div>
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
.detail_ad{
  width: 100%;
  display: block;
}
</style>