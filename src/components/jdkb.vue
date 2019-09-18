<template>
  <div class="jdkb">
    <swiper :options="swiperOption" class="swiper-wrap" ref="mySwiper">
      <swiper-slide>
        <div><span>最新</span>白酒瓶如果有这五个字，白送也别要</div>
      </swiper-slide>
      <swiper-slide>
         <div><span>推荐</span>深海赛尔凭什么是耳机届的老大</div>
      </swiper-slide>
      <swiper-slide>
         <div><span>HOT</span>男人戴的表不需要太贵，但是档次要到位</div>
      </swiper-slide>
      <swiper-slide>
        <div><span>热门</span>为什么iPad mini5被很多玩家称为游戏神器</div>
      </swiper-slide>
    </swiper>
  </div>
</template>
<script>
import { swiper, swiperSlide } from "vue-awesome-swiper";
require("swiper/dist/css/swiper.css");
export default {
  name: "carrousel",
  data() {
    return {
      swiperOption: {
        autoplay:{
          delay:3000,
          disableOnInteraction:false,
        },
        direction: 'vertical',
        loop:true,
        observer:true,
        observeParents:true,
      }
    };
  },
  components: {
    swiper,
    swiperSlide
  },
  computed: {
    swiper() {
      return this.$refs.mySwiper.swiper;
    }
  },
  mounted() {
    // current swiper instance
    // 然后你就可以使用当前上下文内的swiper对象去做你想做的事了
    this.swiper.slideTo(1, 1000, false);
  }
};
</script>
<style scoped>
.jdkb div{
  width:100%
}
</style>