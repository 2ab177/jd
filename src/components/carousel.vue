<template>
  <div class="carou">
    <swiper :options="swiperOption" class="swiper-wrap" ref="mySwiper">
      <swiper-slide>
        <img src="../assets/lunbo/cal-1.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-2.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-3.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-4.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-5.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-6.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-7.jpg" alt />
      </swiper-slide>
      <swiper-slide>
        <img src="../assets/lunbo/cal-8.jpg" alt />
      </swiper-slide>
      <!-- 常见的小圆点 -->
      <div class="swiper-pagination" slot="pagination"></div>
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
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          type: "bullets"
        },
        autoplay:{
          delay:3000,
          disableOnInteraction:false,
        },
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
<style>
  .carou{
    border-radius: .3rem;
    transform: translateY(0);
    overflow: hidden;
  }
  .carou img{
    width:100%;
    display: block;
  }
  .swiper-pagination-bullet-active{
    background: #fff !important;
  }
</style>
