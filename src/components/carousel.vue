<template>
  <div class="carou">
    <van-swipe @change="onChange" >
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
      <div class="custom-indicator" slot="indicator">
        <ul class="zsq">
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    </van-swipe>
  </div>
</template>
<script>
export default {
  data() {
    return {
      current: 0,
      imgs:[0,1,2,3,4,5,6,7]
    }
  },
  methods: {
    onChange(index) {
      this.current = index;
      console.log(index);
    }
  }
}
</script>
<style scoped>
.carou {
  border-radius: 0.3rem;
  overflow: hidden;
  transform: translateY(0);
  position: relative;
}
.carou img {
  width: 100%;
  display: block;
}
  
.zsq{
  position: absolute;
  text-decoration: none;
  display: flex;
  left: 50%;
  bottom:  50%;
}
.zsq>li {
  display: block;
  height: 3px;
  width: 8px;
  border-radius: 1.5px;
  background: #fff;
}
.active {
  background: #fff;
  width: 11px;
}
</style>
