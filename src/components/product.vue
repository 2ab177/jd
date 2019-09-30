<template>
  <div class="wntj">
    <div class="wntj-left">
      <router-link to>
        <img class="wntj_proimg" src="../assets/wntj/1_sm.jpg" alt />
      </router-link>
      <div>
        <div>
          <img src="../assets/zy.png" alt />
        </div>
        <span>华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)</span>
      </div>
      <div>
        <span>￥3988.00</span>
        <span>新品</span>
        <span>看相似</span>
      </div>
    </div>
    <div class="wntj-right">
      <router-link to>
        <img class="wntj_proimg" src="../assets/wntj/1_sm.jpg" alt />
      </router-link>
      <div>
        <div>
          <img src="../assets/zy.png" alt />
        </div>
        <span>华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)</span>
      </div>
      <div>
        <span>￥3988.00</span>
        <span>新品</span>
        <span>看相似</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
/* 为你推荐 */
.wntj > div > div:last-child > span:last-child {
  font-size: 0.7rem;
  border: 1px solid #bfbfbf;
  color: #949494;
  padding: 0.1rem 0.2rem;
}
.wntj > div > div:last-child > span:nth-child(2) {
  border: 1px solid #e4393c;
  color: #e4393c;
  font-size: 8px;
  padding: 0 3px;
  margin-right: 5px;
}
.wntj > div > div:last-child {
  align-items: center;
  justify-content: space-between;
  padding: 0 0.3rem;
}
.wntj > div > div {
  margin: 0.5rem 0;
}
.wntj > div > div:last-child > span {
  font-size: 1rem;
  color: #e4393c;
  font-weight: bold;
}
.wntj-left {
  border-right: 0.1rem solid #f6f6f6;
}
.wntj-right {
  border-left: 0.1rem solid #f6f6f6;
}
.wntj {
  display: flex;
  width: 100%;
  flex-flow: row wrap;
}
.wntj > div > div {
  display: flex;
}
.wntj > div > div:nth-child(2) > span {
  font-size: 0.8rem;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  overflow: hidden;
}
.wntj > div > div:nth-child(2) > div > img {
  width: 100%;
}
.wntj > div > div:nth-child(2) > div {
  width: 49%;
}
.wntj_proimg {
  width: 100%;
}
.wntj > div {
  box-sizing: border-box;
  width: 50%;
  background: #fff;
  margin-bottom: 0.2rem;
}
</style>