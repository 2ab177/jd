<template>
  <div class="carou"  >
    <van-swipe :autoplay="3000">
      <van-swipe-item>
        <img src="../assets/lunbo/cal-1.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-2.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-3.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-4.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-5.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-6.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-7.jpg" alt />
      </van-swipe-item>
      <van-swipe-item>
        <img src="../assets/lunbo/cal-8.jpg" alt />
      </van-swipe-item>
    </van-swipe>
  </div>
</template>
<script>
</script>
<style >
.carou {
  border-radius: 0.3rem;
  overflow: hidden;
  transform: translateY(0);  
}
.carou img {
  width: 100%;
  display: block;
}
.van-swipe__indicator{
  height: 3px;
  width: 8px;
  border-radius:1.5px;
}
.van-swipe__indicator--active{
  background: #fff ;
  width: 11px;
}
</style>
