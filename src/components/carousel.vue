<template>
  <div class="carou">
    <van-swipe @change="onChange" :autoplay="3000">
      <van-swipe-item v-for="(item,i) of imgs" :key="i">
        <img :src="require(`../assets/lunbo/${item.cimg}.jpg`)" alt />
      </van-swipe-item>
      <div class="custom-indicator" slot="indicator">
        <ul class="zsq">
          <li v-for="(item,i) of imgs" :key="i" :class="i==index?'active':''"></li>
        </ul>
      </div>
    </van-swipe>
  </div>
</template>
<script>
export default {
  data() {
    return {
      index:0,
      current: 0,
      imgs:[],
    }
  },
  created(){
    this.loadcal()
  },
  methods: {
    onChange(index) {
      this.index=index;
    },
    loadcal(){
      this.axios.get('/carousel')
      .then(res=>{
        this.imgs=res.data;
      })
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
  top:  90%;
  margin-left: -50px;
}
.zsq>li {
  display: block;
  height: 3px;
  width: 8px;
  border-radius: 1.5px;
  background:hsla(0,0%,92.9%,.4);
  margin: 2px
}
.active {
  background: #fff !important;
  width: 11px !important;
}
</style>
