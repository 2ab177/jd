<template>
  <div>
    <van-tabbar v-model="active">
      <van-tabbar-item to="/">
        <img class="icon" slot="icon" src="../assets/tabbar/home.png" />
      </van-tabbar-item>
      <van-tabbar-item>
        <img class="icon" slot="icon" src="../assets/tabbar/fenlei.png" />
      </van-tabbar-item>
      <van-tabbar-item>
        <img class="icon" slot="icon" src="../assets/tabbar/pingou.png" />
      </van-tabbar-item>
      <van-tabbar-item to="/cart">
        <img class="icon" slot="icon" src="../assets/tabbar/cart.png" />
      </van-tabbar-item>
      <van-tabbar-item>
        <img
          @click="loginout"
          class="icon"
          slot="icon"
          :src="require(`../assets/tabbar/${$store.getters.getLogin?'logined':'login'}.png`)"
        />
      </van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
import { Tabbar, TabbarItem } from "vant";
export default {
  data() {
    return {
      active: "home"
    };
  },
  methods: {
    loginout() {
      if(!this.$store.getters.getLogin){
        return;
      }
      this.Dialog.confirm({
        title:'注销',
        message: "确定要退出登录吗"
      }).then(() => {
        this.$store.commit('loginout');
      })
      .catch(()=>{

      })
    }
  },
  components: {
    "van-tabbar": Tabbar,
    "van-tabbar-item": TabbarItem,
  }
};
</script>
<style scoped>
.icon {
  width: 65px;
  height: 50px;
}
.van-tabbar {
  padding-top: 0.3rem;
}
</style>