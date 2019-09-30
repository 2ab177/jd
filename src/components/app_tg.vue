<template>
  <div class="app_tg">
      <div>
        <img @click="offApptg" src="../assets/off.png" alt />
        <img src="../assets/jd_app.png" alt />
        <div>
          <span>打开京东App购物</span>
          <span>新人领188元红包</span>
        </div>
      </div>
      <div>
        <a href="javascript:;">立即打开</a>
      </div>
    </div>
</template>
<script>
export default {
  methods:{
     offApptg() {
      var appTg = document.getElementsByClassName("app_tg")[0];
      appTg.remove();
    }
  }
}
</script>
<style scoped>
/* app推广 */
.app_tg {
  display: flex;
  align-items: center;
  text-align: center;
  height: 3rem;
}
.app_tg > div {
  height: 100%;
  background: #232326;
  width: 68%;
  display: flex;
  align-items: center;
}
.app_tg > div > img:first-child {
  width: 1rem;
  height: 1rem;
  margin: 1rem 1rem 1rem 0.5rem;
}
.app_tg > div > img:nth-child(2) {
  width: 2.2rem;
  height: 2.2rem;
  margin-right: 0.5rem;
}
.app_tg > div > div > span:first-child {
  display: block;
  font-size: 0.8rem;
  color: #fff;
}
.app_tg > div > div > span:nth-child(2) {
  font-size: 0.75rem;
  color: #999999;
}
.app_tg > div:nth-child(2) {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 32%;
  background: #cd2525;
}
.app_tg > div:nth-child(2) > a {
  color: #fff;
}
</style>