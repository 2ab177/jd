<template>
  <div>
    <van-tabbar v-model="active">
      <van-tabbar-item to="/">
        <img class="icon" slot="icon"  src="../assets/tabbar/home.png" />
      </van-tabbar-item>
      <van-tabbar-item>
        <img class="icon" slot="icon"  src="../assets/tabbar/fenlei.png" />
      </van-tabbar-item>
      <van-tabbar-item>
        <img class="icon" slot="icon"  src="../assets/tabbar/pingou.png" />
      </van-tabbar-item>
      <van-tabbar-item to="/cart">
        <img class="icon" slot="icon"  src="../assets/tabbar/cart.png" />
      </van-tabbar-item>
      <van-tabbar-item to="/login">
        <img class="icon" slot="icon"  src="../assets/tabbar/login.png" />
      </van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
import { Tabbar, TabbarItem } from "vant";
export default {
  data() {
    return {
      active: "home",
    };
  },
  components: {
    "van-tabbar": Tabbar,
    "van-tabbar-item": TabbarItem
  }
};
</script>
<style scoped>
.icon{
  width: 65px;
  height: 50px;
}
.van-tabbar{
  padding-top: .3rem;
}
</style>