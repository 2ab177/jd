<template>
  <div class="index">
    <!-- app推广 -->
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
    <!-- 商品导航列表 -->
    <div class="container">
      <!-- 上方搜索框 -->
      <div :class="fixed?'input_fixed':''" class="top_input">
        <span></span>
        <div class="input">
          <a href="javascript:;">dell显示器</a>
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
            <div class="djs">
              <span class="number">00</span>
              <span>:</span>
              <span class="number">42</span>
              <span>:</span>
              <span class="number">50</span>
            </div>
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
              <img src="../assets/miaosha/ms6.png" alt />
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
              <img src="../assets/miaosha/ms8.png" alt />
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
            <img src="../assets/djxy/djxy1.jpg" alt="">
            <img src="../assets/djxy/djxy2.jpg" alt="">
          </div>
          <div>
            <span>安全出游</span>
            <span>带着好礼走亲戚</span>
            <img src="../assets/djxy/djxy3.jpg" alt="">
            <img src="../assets/djxy/djxy4.jpg" alt="">
          </div>
        </div>
        <!-- 下部 -->
        <div class="djxy_bottom">
          <div>
            <span>浴上安全</span>
            <span>安全沐浴</span>
            <img src="../assets/djxy/djxy5.jpg" alt="">
          </div>
          <div>
            <span>畅玩人生</span>
            <span>任天堂索尼</span>
            <img src="../assets/djxy/djxy6.jpg" alt="">
          </div>
          <div>
            <span>初夏出游</span>
            <span>给心灵放假</span>
            <img src="../assets/djxy/djxy7.jpg" alt="">
          </div>
          <div>
            <span>铁骑纵横</span>
            <span>铁骑天下行</span>
            <img src="../assets/djxy/djxy8.jpg" alt="">
          </div>
        </div>
      </div>
      <!-- 每日逛 -->
      <div class="mrg">
        <img src="../assets/mrg/mrg.png" alt="">
        <div class="mrg-top">
          <div>
            <span>免息星期</span>
            <span>白条面息购</span>
            <img src="../assets/mrg/mrg1.jpg" alt="">
          </div>
          <div>
            <span>品牌闪购</span>
            <span>购大牌好物</span>
            <img src="../assets/mrg/mrg2.png" alt="">
          </div>
          <div>
            <span>品牌秒杀</span>
            <span>低价抢大牌</span>
            <img src="../assets/mrg/mrg3.png" alt="">
          </div>
          <div>
            <span>京东直播</span>
            <span>边看边买</span>
            <img src="../assets/mrg/mrg4.png" alt="">
          </div>
        </div>
        <div class="mrg-bottom">
          <div>
            <span>排行榜</span>
            <span>热销推荐</span>
            <img src="../assets/mrg/mrg5.png" alt="">
          </div>
          <div>
            <span>拍拍好物</span>
            <span>购大牌好物</span>
            <img src="../assets/mrg/mrg6.jpg" alt="">
          </div>
          <div>
            <span>品牌秒杀</span>
            <span>低价抢大牌</span>
            <img src="../assets/mrg/mrg7.jpg" alt="">
          </div>
          <div>
            <span>京东直播</span>
            <span>边看边买</span>
            <img src="../assets/mrg/mrg8.png" alt="">
          </div>
        </div>
      </div>
      <!-- 京东快报 -->
      <jdkb></jdkb>
    </div>
  </div>
</template>
<script>
import carousel from "../components/carousel";
import jdkb from "../components/jdkb";
export default {
  data() {
    return {
      fixed: false
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
    offApptg() {
      window.removeEventListener("scroll", this.handleScroll);
      var appTg = document.getElementsByClassName("app_tg")[0];
      appTg.remove();
      window.addEventListener("scroll", this.scroll2);
    }
  }
};
</script>
<style scoped>
.bottom_pro{
  padding: 0 2.5%;
}
/* 京东快报 */
.jd-kb{
  display: flex;
}
/* 每日逛文字&圆角 */
.mrg-top{
  border-radius: .3rem .3rem 0 0;
  overflow: hidden;
}
.mrg-bottom{
  border-radius:0 0 .3rem .3rem ;
  overflow: hidden;
}
.mrg>div>div>span:first-child{
  font-weight: 800;
  background: linear-gradient(90deg, #FF2A2A,#F139D2);
  color: transparent;
  -webkit-background-clip: text;
}
.mrg>div>div>span:nth-child(2){
  font-size: .7rem;
}
/* 主页背景 */
.index{
  background: #f6f6f6;
}
/* 东家小院&每日逛 */
/* .djxy_bottom>div:last-child{
  border-radius: 0 0 .3rem 0;
  overflow: hidden;
}
.djxy_bottom>div:first-child{
  border-radius: 0 0 0 .3rem;
  overflow: hidden;
} */
.djxy_bottom>div>span:first-child{
  font-weight: 800;
  color: #000;
}
.djxy_bottom>div>span:nth-child(2){
  font-size: .7rem;
}
.djxy_bottom>div>img,.mrg>div>div>img{
  width: 100%;
  display: block;
}
.djxy_bottom,.mrg>div{
  display: flex;
}
.djxy_bottom{
  border-radius:0 0 .3rem .3rem ;
  overflow: hidden;
}
.djxy_bottom>div,.mrg>div>div{
  width: 25%;
  box-sizing: border-box;
  padding: 0 .5rem .5rem;
  background: #fff;
  border-right: .1rem solid #f6f6f6;
  margin-bottom: .1rem;
  display: flex;
  flex-direction:column;
}
.djxy_bottom>div:last-child,.mrg>div>div:last-child{
  border-right: none;
}
.djxy_top>div>span:first-child{
  background: linear-gradient(90deg, #45CAFF,#00f);
  font-weight: 900;
  color: transparent;
  -webkit-background-clip: text;
}
.djxy_top>div>span:nth-child(2){
  font-size: .7rem;
}
.djxy_top>div:first-child{
  border-right:.05rem solid #f6f6f6;
  border-bottom: .1rem solid #f6f6f6;
}
.djxy_top>div:nth-child(2){
  border-left:.05rem solid #f6f6f6;
  border-bottom: .1rem solid #f6f6f6;
}
.djxy_top>div{
  text-align: left;
  width: 50%;
  background: #fff;
  padding:.8% 2% 2%;
}
.djxy_top{
  display: flex;
  border-radius: .3rem .3rem 0 0;
  overflow: hidden;
}
.djxy_top>div>span{
  display: block;
}
.djxy_top>div>img{
  width: 42%;
  margin: 4% 4% 0;
}
.djxy>img,.mrg>img{
  width: 100%;
}
.djxy div{
  box-sizing: border-box;
}
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
/* 主要内容容器 */
.container {
  background: url("../assets/bg.jpg")  no-repeat;
  background-position: center center;
  background-size: cover;
  overflow: hidden;
  border-radius: 0 0 .2rem .2rem;
}
.container > div:nth-child(2) {
  padding: 0 2.5% .2rem;
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
.number {
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
