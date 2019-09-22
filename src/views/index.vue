<template>
  <div class="index">
    <!-- app推广 -->
    <app-tg> </app-tg>
    <!-- 商品导航列表 -->
    <div class="container">
      <!-- 上方搜索框 -->
      <div :class="fixed?'input_fixed':''" class="top_input">
        <span></span>
        <div class="input">
          <router-link to="/search">dell显示器</router-link>
        </div>
        <a href="javascript:;">登录</a>
      </div>
      <!-- 主要商品 -->
      <div>
        <!-- 轮播图 -->
        <carousel></carousel>
        <!-- 中部 -->
        <div class="list">
          <div class="list-item">
            <img src="../assets/icon/016033c7ef3e0c6c.png" />
            <span>领券</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/01e0e818a7505267.png" />
            <span>京东超市</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/28cda0a571b4a576.png" />
            <span>数码电器</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/4792ec307a853e9f.png" />
            <span>PLUS会员</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5ae01befN2494769f.png" />
            <span>京东到家</span>
          </div>
        </div>
        <div class="list">
          <div class="list-item">
            <img src="../assets/icon/5ad87bf0N66c5db7c.png" />
            <span>京东生鲜</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03b74eN3541598d.png" />
            <span>充值缴费</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03b779N5c0b196f.png" />
            <span>赚钱</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03fae3N67f78fe3.png" />
            <span>9.9元拼</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/65c0cdc1362635fc.png" />
            <span>京东服饰</span>
          </div>
        </div>
        <!-- 下部 -->
        <div class="zhongqiu">
          <div>
            <a href="javascript:;">
              <img src="../assets/1.jpg" />
            </a>
          </div>
          <div>
            <a href="javascript:;">
              <img src="../assets/2.jpg" />
            </a>
          </div>
          <div>
            <a href="javascript:;">
              <img src="../assets/3.jpg" />
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom_pro">
      <!-- 京东秒杀 -->
      <div class="jdms">
        <div>
          <div>
            <span></span>
            <span>18点场</span>
            <van-count-down :time="3600000">
              <template v-slot="timeData">
                <span class="item">{{ timeData.hours<10?( "0"+timeData.hours):timeData.hours }}</span>
                <span>:</span>
                <span class="item">{{ timeData.minutes<10?( "0"+timeData.minutes):timeData.minutes }}</span>
                <span>:</span>
                <span class="item">{{ timeData.seconds<10?( "0"+timeData.seconds):timeData.seconds }}</span>
              </template>
            </van-count-down>
          </div>
          <a href="javascript:;">更多秒杀</a>
        </div>
        <div class="mslist">
          <ul>
            <li>
              <img src="../assets/miaosha/ms1.jpg" alt />
              <span>
                <span>￥</span>279
              </span>
              <s>
                <span>￥</span>299
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms2.jpg" alt />
              <span>
                <span>￥</span>1279
              </span>
              <s>
                <span>￥</span>1399
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms3.jpg" alt />
              <span>
                <span>￥</span>159
              </span>
              <s>
                <span>￥</span>129
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms4.jpg" alt />
              <span>
                <span>￥</span>559
              </span>
              <s>
                <span>￥</span>466
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms5.jpg" alt />
              <span>
                <span>￥</span>59
              </span>
              <s>
                <span>￥</span>100
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms6.jpg" alt />
              <span>
                <span>￥</span>79
              </span>
              <s>
                <span>￥</span>89
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms7.jpg" alt />
              <span>
                <span>￥</span>69
              </span>
              <s>
                <span>￥</span>99
              </s>
            </li>
            <li>
              <img src="../assets/miaosha/ms8.jpg" alt />
              <span>
                <span>￥</span>366
              </span>
              <s>
                <span>￥</span>315
              </s>
            </li>
          </ul>
        </div>
      </div>
      <!-- 东家小院 -->
      <div class="djxy">
        <img src="../assets/djxy/e1af43a6ea0cb5f.png" />
        <!-- 上部 -->
        <div class="djxy_top">
          <div>
            <span>串门好礼</span>
            <span>带着好礼走亲戚</span>
            <img src="../assets/djxy/djxy1.jpg" alt />
            <img src="../assets/djxy/djxy2.jpg" alt />
          </div>
          <div>
            <span>安全出游</span>
            <span>带着好礼走亲戚</span>
            <img src="../assets/djxy/djxy3.jpg" alt />
            <img src="../assets/djxy/djxy4.jpg" alt />
          </div>
        </div>
        <!-- 下部 -->
        <div class="djxy_bottom">
          <div>
            <span>浴上安全</span>
            <span>安全沐浴</span>
            <img src="../assets/djxy/djxy5.jpg" alt />
          </div>
          <div>
            <span>畅玩人生</span>
            <span>任天堂索尼</span>
            <img src="../assets/djxy/djxy6.jpg" alt />
          </div>
          <div>
            <span>初夏出游</span>
            <span>给心灵放假</span>
            <img src="../assets/djxy/djxy7.jpg" alt />
          </div>
          <div>
            <span>铁骑纵横</span>
            <span>铁骑天下行</span>
            <img src="../assets/djxy/djxy8.jpg" alt />
          </div>
        </div>
      </div>
      <!-- 每日逛 -->
      <div class="mrg">
        <img src="../assets/mrg/mrg.png" alt />
        <div class="mrg-top">
          <div>
            <span>免息星期</span>
            <span>白条面息购</span>
            <img src="../assets/mrg/mrg1.png" alt />
          </div>
          <div>
            <span>品牌闪购</span>
            <span>购大牌好物</span>
            <img src="../assets/mrg/mrg2.png" alt />
          </div>
          <div>
            <span>品牌秒杀</span>
            <span>低价抢大牌</span>
            <img src="../assets/mrg/mrg3.png" alt />
          </div>
          <div>
            <span>京东直播</span>
            <span>边看边买</span>
            <img src="../assets/mrg/mrg4.png" alt />
          </div>
          <div>
            <span>排行榜</span>
            <span>热销推荐</span>
            <img src="../assets/mrg/mrg5.png" alt />
          </div>
          <div>
            <span>拍拍好物</span>
            <span>购大牌好物</span>
            <img src="../assets/mrg/mrg6.png" alt />
          </div>
          <div>
            <span>品牌秒杀</span>
            <span>低价抢大牌</span>
            <img src="../assets/mrg/mrg7.png" alt />
          </div>
          <div>
            <span>京东直播</span>
            <span>边看边买</span>
            <img src="../assets/mrg/mrg8.png" alt />
          </div>
        </div>
      </div>
      <!-- 京东快报 -->
      <jdkb></jdkb>
      <!-- 为你推荐 -->
      <img class="wntj_img" src="../assets/88174b36f85283b6.png" alt />
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
            <img class="wntj_proimg" :src="require(`../assets/wntj/${imgs}.jpg`)" alt />
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
    </div>
  </div>
</template>
<script>
import carousel from "../components/carousel";
import jdkb from "../components/jdkb";
export default {
  data() {
    return {
      fixed: false,
      imgs: "2_sm"
    };
  },
  components: {
    carousel,
    jdkb
  },
  mounted: function() {
    window.addEventListener("scroll", this.handleScroll); // 监听（绑定）滚轮滚动事件
  },
  methods: {
    handleScroll: function() {
      var sTop = document.documentElement.scrollTop || document.body.scrollTop;
      if (sTop >= 32) {
        this.fixed = true;
      } else {
        this.fixed = false;
      }
    },
    scroll2: function() {
      var sTop = document.documentElement.scrollTop || document.body.scrollTop;
      if (sTop > 0) {
        this.fixed = true;
      } else {
        this.fixed = false;
      }
    },
  }
};
</script>
<style scoped>
.bottom_pro {
  padding: 0 2.5%;
}
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
.wntj_img {
  display: block;
  width: 100%;
  margin-bottom: 0.1rem;
}
/* 京东快报 */
.jd-kb {
  display: flex;
}
/* 每日逛文字&圆角 */
.mrg-top {
  border-radius: 0.3rem 0.3rem 0 0;
  overflow: hidden;
}
.mrg > div > div > span:first-child {
  font-weight: 800;
  background: linear-gradient(90deg, #ff2a2a, #f139d2);
  color: transparent;
  -webkit-background-clip: text;
}
.mrg > div > div > span:nth-child(2) {
  font-size: 0.7rem;
}
/* 主页背景 */
.index {
  background: #f6f6f6;
}
/* 东家小院&每日逛 */
.mrg-top {
  display: flex;
  flex-flow: row wrap;
  width: ;
}
.djxy_bottom > div > span:first-child {
  font-weight: 800;
  color: #000;
}
.djxy_bottom > div > span:nth-child(2) {
  font-size: 0.7rem;
}
.djxy_bottom > div > img,
.mrg > div > div > img {
  width: 100%;
  display: block;
}
.djxy_bottom {
  display: flex;
}
.djxy_bottom {
  border-radius: 0 0 0.3rem 0.3rem;
  overflow: hidden;
}
.djxy_bottom > div,
.mrg > div > div {
  width: 25%;
  box-sizing: border-box;
  padding: 0 0.5rem 0.5rem;
  background: #fff;
  border-right: 0.1rem solid #f6f6f6;
  margin-bottom: 0.1rem;
  display: flex;
  flex-direction: column;
}
.djxy_bottom > div:last-child,
.mrg > div > div:last-child {
  border-right: none;
}
.djxy_top > div > span:first-child {
  background: linear-gradient(90deg, #45caff, #00f);
  font-weight: 900;
  color: transparent;
  -webkit-background-clip: text;
}
.djxy_top > div > span:nth-child(2) {
  font-size: 0.7rem;
}
.djxy_top > div:first-child {
  border-right: 0.05rem solid #f6f6f6;
  border-bottom: 0.1rem solid #f6f6f6;
}
.djxy_top > div:nth-child(2) {
  border-left: 0.05rem solid #f6f6f6;
  border-bottom: 0.1rem solid #f6f6f6;
}
.djxy_top > div {
  text-align: left;
  width: 50%;
  background: #fff;
  padding: 0.8% 2% 2%;
}
.djxy_top {
  display: flex;
  border-radius: 0.3rem 0.3rem 0 0;
  overflow: hidden;
}
.djxy_top > div > span {
  display: block;
}
.djxy_top > div > img {
  width: 42%;
  margin: 4% 4% 0;
}
.djxy > img,
.mrg > img {
  width: 100%;
}
.djxy div {
  box-sizing: border-box;
}
/* 主要内容容器 */
.container {
  background: url("../assets/bg.jpg") no-repeat;
  background-position: center center;
  background-size: cover;
  overflow: hidden;
  border-radius: 0 0 0.2rem 0.2rem;
}
.container > div:nth-child(2) {
  margin: 0 10px;
  overflow: hidden;
  transform: translateY(0);
}
/* 上方搜索框 */
.input_fixed {
  position: fixed;
  top: 0;
  left: 0;
  background: #cd2525;
}
.top_input {
  padding: 12px 0;
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  z-index: 999;
}
.top_input > span {
  width: 20px;
  height: 18px;
  background: url("../assets/three.png") no-repeat;
  background-size: 100%;
  margin-left: 0.8rem;
  z-index: 1;
}
.top_input > a {
  margin-right: 0.4rem;
  color: #fff;
  z-index: 1;
}
.input {
  box-sizing: border-box;
  position: absolute;
  width: 100%;
  height: 30px;
  padding: 0 2.8rem;
  z-index: 0;
}
.dl {
  width: 40px;
  height: 44px;
}
.inpuntin > span {
  display: inline-block;
  width: 20px;
  height: 20px;
}
.input > a {
  display: block;
  box-sizing: border-box;
  outline: none;
  border: none;
  background: url("../assets/jdsearch.png") #f7f7f7 no-repeat;
  background-size: 62px;
  background-position: 9px 5px;
  padding: 0.3rem 0;
  padding-left: 5rem;
  border-radius: 0.9rem;
  text-align: left;
  color: #333;
  font-size: 0.9rem;
}
/* 商品详情列表 */
.list {
  display: flex;
}
.list-item {
  width: 20%;
  margin-top: 0.7rem;
  color: #fff;
}
.list-item > img {
  display: block;
  margin: 0 auto;
  width: 65%;
}
.list-item > span {
  display: block;
  font-size: 0.8rem;
}
/* 中秋节广告 */
.zhongqiu {
  display: flex;
  margin: 0.6rem 0 0.4rem;
  border-radius: 0.3rem;
  overflow: hidden;
}
.zhongqiu > div {
  width: 33.333333%;
}
.zhongqiu > div img {
  display: block;
  width: 100%;
}
/* 京东秒杀 */
.jdms {
  padding: 0.5rem 0.5rem 0 0.5rem;
  border-radius: 0.3rem;
  background: url("../assets/miaosha/miaotiao.png") #fff no-repeat;
  background-size: 100%;
  margin-top: 0.5rem;
}
.jdms > div:first-child {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.jdms > div > div {
  display: flex;
  align-items: center;
}
.jdms > div > div > span:first-child {
  display: inline-block;
  background: url("../assets/miaosha/jdms.png") no-repeat;
  width: 3.45rem;
  height: 1.35rem;
  margin-right: 0.4rem;
  background-size: contain;
  background-position: 0 center;
}
.jdms > div > div > span:nth-child(2) {
  font-weight: 1000;
  font-size: 0.8rem;
  margin-right: 0.4rem;
}
.item {
  font-size: 0.8rem;
  display: inline-block;
  border: 1px solid #dfdfdf;
}
.jdms a {
  display: block;
  font-size: 0.7rem;
  padding-right: 1rem;
  background: url("../assets/icon/arrow_rt_2ccb8cd5.png") no-repeat;
  background-position: right;
  background-size: 0.8rem;
  color: #e93b3d;
}
.mslist {
  overflow-x: scroll;
}
::-webkit-scrollbar {
  display: none;
}
.mslist > ul {
  display: flex;
  padding: 0;
  width: 160%;
}
.mslist > ul > li {
  width: 13%;
}
.mslist > ul > li > span {
  display: block;
  font-weight: bold;
  color: #f00;
}
.mslist > ul > li > span > span {
  font-size: 0.8rem;
  font-weight: bolder;
  color: #f00;
}
.mslist > ul > li > s {
  columns: #999;
  font-size: 0.7rem;
}
.mslist > ul > li > img {
  display: block;
  width: 100%;
}
</style>
