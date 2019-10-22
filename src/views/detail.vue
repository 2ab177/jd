<template>
  <div class="detail">
    <!-- 返回顶部 -->
    <div @click="backtop" class="backtop"></div>
    <!-- 商品导航 -->
    <pronav :title="title" :price="price" :simg="simg" :lid="lid" />
    <!-- 顶部app推广 -->
    <apptg />
    <!-- 商品轮播图 -->
    <div class="pro_carousel">
      <div class="carousel">
        <van-swipe indicator-color="#e4393c">
          <van-swipe-item v-for="(item,i) of carimgs" :key="i">
            <img :src="require(`../assets/shangpin/${item}.jpg`)" alt />
          </van-swipe-item>
        </van-swipe>
      </div>
      <!-- 轮播图上方导航条 -->
      <div class="pro_nav">
        <div @click="nav">
          <span class="pro_navspan" data-to="back"></span>
          <div>
            <span  data-to="sp">商品</span>
            <span data-to="pj">评价</span>
            <span data-to="xq">详情</span>
            <span data-to="tj">推荐</span>
          </div>
          <span class="pro_navspan about"></span>
        </div>
      </div>
    </div>
    <img class="detail_ad" src="../assets/detailAd.jpg" alt />
    <div class="pro_detail">
      <!-- 价格条目 -->
      <div class="price">
        <div class="price_detail">
          <span>￥</span>
          <span>{{price.toFixed(2)}}</span>
        </div>
        <div>
          <div>
            <img src="../assets/money.png" alt />
            <p>降价提醒</p>
          </div>
          <div>
            <img src="../assets/star.png" alt />
            <p>收藏</p>
          </div>
        </div>
      </div>
      <!-- 商品标题 -->
      <div class="title">
        <img class="title_icon1" src="../assets/zy2.png" alt />
        <span>{{title}}</span>
      </div>
      <div class="title_detail">
        <span>{{prodetail}}</span>
        <span class="more_detail">查看&gt;</span>
      </div>
    </div>
    <!-- 放心购 -->
    <div class="fxg">
      <img src="../assets/fxg.png" alt />
      <span>免举证退换货 原厂维修</span>
    </div>
    <!-- 优惠和白条 -->
    <div class="youhui">
      <div>
        <span>优惠</span>
        <div>
          <p>
            <span>赠品</span> 中大惠农 zhongdahuinong 礼品卡节日礼品册团购提货卡券268型自选购物卡册 X1
          </p>
          <p>
            <span>PLUS赠品</span>
            <span>免费领</span>
          </p>
        </div>
        <span></span>
      </div>
      <div class="baitiao">
        <div>
          <span>白条</span>
          <span>12期免息</span>
        </div>
        <span></span>
      </div>
    </div>
    <!-- 规格和地址 -->
    <div class="ggdz">
      <!-- 已选 -->
      <div>
        <span>已选</span>
        <div>
          <p>{{guige}}</p>
          <p>本商品支持保障服务,京东服务,点击可选服务</p>
        </div>
        <span></span>
      </div>
      <!-- 送至 -->
      <div>
        <span>送至</span>
        <div>
          <p>北京朝阳区三环到四环之间</p>
          <p>
            <span class="jdred">现货</span>
            11:10前下单,预计今天({{mdtime.getMonth()+1+'月'+mdtime.getDate()+'日'}})送达
          </p>
        </div>
        <span></span>
      </div>
      <!-- 重量 -->
      <div>
        <span class="kg">重量</span>
        <div>
          <p>0.48KG</p>
        </div>
      </div>
      <!-- 支持的服务 -->
      <div>
        <div>
          <div class="sup_server">
            <div class="gou_marleft">
              <span></span>
              <span>99元免基础运费(20kg内)</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>京东发货&售后</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>7天无理由退货</span>
            </div>
            <div class="gou_marleft">
              <span class="not_sup"></span>
              <span>不可使用京券东券</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>京尊达</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>京准达</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>211限时达</span>
            </div>
            <div class="gou_marleft">
              <span></span>
              <span>可配送港澳台及海外</span>
            </div>
          </div>
        </div>
        <span></span>
      </div>
    </div>
    <!-- 评价 -->
    <div class="appraise">
      <!-- 评价总览 -->
      <div class="zonglan">
        <div>
          <span>评价</span>
          <span class="jdred">好评 97%</span>
        </div>
        <div>
          <span>共 47万+ 条</span>
          <span></span>
        </div>
      </div>
      <div class="ar_detail">
        <div class="ar_juti">
          <div>
            <span v-for="(item,i) of jp" :key="i">{{item}}</span>
          </div>
          <div v-for="(item,i) of xp" :key="i" class="ardetail">
            <div>
              <div>
                <img src="../assets/user.png" alt />
                <span>{{i==1?'用户二':'用户一'}}</span>
                <img src="../assets/vip.png" alt />
                <img src="../assets/fivestar.png" alt />
              </div>
              <span>2019-07-21</span>
            </div>
            <span>{{item}}</span>
          </div>
          <!-- 更多评价 -->
          <div class="more_ar">
            <button>查看全部评价</button>
          </div>
        </div>
      </div>
    </div>
    <!-- 闲置回收 -->
    <div class="xzhs">
      <div>
        <div>
          <img src="../assets/phonechange.png" alt />
          <span>闲置回收</span>
        </div>
        <p>以旧换新</p>
      </div>
      <span></span>
    </div>
    <!-- 详情图片 -->
    <div class="detail_img">
      <div>
        <span>商品介绍</span>
        <span>规格参数</span>
        <span>售后保障</span>
      </div>
      <img
        v-for="(item,i) of detimgs"
        :key="i"
        :src="require(`../assets/shangpin/${item}.jpg`)"
        alt
      />
    </div>
  </div>
</template>
<script>
import apptg from "../components/app_tg.vue";
import pronav from "../components/pro_nav";
export default {
  data() {
    return {
      mdtime: new Date(),
      guige: "",
      price: 0,
      title: "",
      prodetail: "",
      carimgs: [],
      detimgs: [],
      jp: [],
      xp: [],
      simg:"",
      lid:""
    };
  },
  created() {
    this.loadDetail();
  },
  mounted() {
    this.backtop();
    window.addEventListener("scroll", this.topnav);
  },
  //销毁页面时移除绑定在window的事件监听
  destroyed(){
    window.removeEventListener("scroll",this.topnav);
  },  
  components: {
    pronav,
    apptg
  },
  methods: {
    backtop(){
      window.scrollTo(0, 0);
    },
    nav(e){
      var to=e.target.dataset.to;
      switch (to){
        case "sp":
        window.scrollTo(0, 0);
        break;
        case "pj":
        window.scrollTo(0, 928);
        break;
        case "xq":
        window.scrollTo(0, 1380);
        break;
        case "back":
        this.$router.go(-1);
        break;
        default:
        window.scrollTo(0, 2447);
      }
    },
    topnav() {
      var nd = document.querySelector(".pro_nav>div>div");
      var s1 = document.getElementsByClassName("pro_navspan")[0];
      var s2 = document.getElementsByClassName("about")[0];
      var fd = document.getElementsByClassName("pro_nav")[0];
      var st = document.documentElement.scrollTop || document.body.scrollTop;
      var ss=document.querySelectorAll('.pro_nav>div>div>span');
      if (st > 48) {
        fd.style.position = "fixed";
        nd.style.display = "flex";
        fd.style.background = "#fff";
        s1.style.backgroundImage = "url('back_b.png') ";
        s1.style.backgroundColor = "#fff";
        s2.style.backgroundImage = "url('threeDianb.png') ";
        s2.style.backgroundColor = "#fff";
      } else {
        fd.style.position = "";
        nd.style.display = "";
        fd.style.background = "";
        s1.style.backgroundImage = "";
        s1.style.backgroundColor = "";
        s2.style.backgroundImage = "";
        s2.style.backgroundColor = "";
      }
      if(st>=0&&st<=927){
        for(var item of ss){
          item.style.color='#333';
        }
        ss[0].style.color='#e4393c';
      }
      if(st>=928&&st<=1380){
        for(var item of ss){
          item.style.color='#333';
        }
        ss[1].style.color='#e4393c';
      }
      if(st>=1380&&st<=2446){
        for(var item of ss){
          item.style.color='#333';
        }
        ss[2].style.color='#e4393c';
      }
      if(st>=2447){
        for(var item of ss){
          item.style.color='#333';
        }
        ss[3].style.color='#e4393c';
      }
    },
    loadDetail() {
      this.axios
        .get("/detail", {
          params: {
            lid: this.$route.params.lid
          }
        })
        .then(res => {
          this.title = res.data[0].title;
          this.guige = res.data[0].guige;
          this.prodetail = res.data[0].details;
          this.price = res.data[0].price;
          this.simg=res.data[0].smproimg;
          this.lid=res.data[0].lid;
          var cs = res.data[0].carimg.split(",");
          this.carimgs = cs;
          var jp = res.data[0].jianping.split(",");
          this.jp = jp;
          var delimg = res.data[0].xiangimg.split(",");
          this.detimgs = delimg;
          var xp = res.data[0].xiangping.split(",");
          this.xp = xp;
        });
    },
  }
};
</script>
<style scoped>
/* 返回顶部 */
.backtop {
  width: 40px;
  height: 40px;
  border-radius: 0.2rem;
  background: url("../assets/backtop.png") rgba(0, 0, 0, 0.7) no-repeat;
  background-size: 24px 24px;
  background-position: center center;
  position: fixed;
  bottom: 65px;
  right: 1px;
  z-index: 1;
}
/* 详情图片 */
.detail_img > img {
  display: block;
  width: 100%;
  height: 100%;
}
.detail_img {
  background: #fff;
  text-align: center;
  font-size: 0.9rem;
  color: #333;
}
.detail_img > div {
  display: flex;
  border-bottom: 1px solid #ddd;
}
.detail_img > div > span:first-child {
  color: #e4393c;
}
.detail_img > div > span {
  display: block;
  flex: 1;
  padding: 0.7rem 0;
}
.detail_img > div > span + span {
  border-left: 1px solid #ddd;
}
/* 闲置回收 */
.xzhs > div > div > img {
  margin-right: 0.4rem;
}
.xzhs > div > div {
  display: flex;
  align-items: center;
}
.xzhs > div > p {
  margin: 0.3rem 0;
  margin-left: 1.5rem;
  color: #999;
}
.xzhs {
  background: #fff;
  font-size: 0.8rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: #333;
  padding: 0.7rem;
  margin-bottom: 0.5rem;
}
.xzhs > span {
  display: inline-block;
  width: 20px;
  height: 20px;
  background: url("../assets/back_right.png") no-repeat;
  background-size: 100%;
}
/* 评论详情 */
.more_ar {
  border-top: 1px solid #eee;
  padding: 0.5rem;
  text-align: center;
  padding-bottom: 0;
  color: #333;
}
.more_ar > button {
  font-size: 0.8rem;
  outline: none;
  border-radius: 10px;
  padding: 0.2rem 0.6rem;
  padding-right: 1.3rem;
  background: url("../assets/back_right.png") no-repeat;
  background-position: 82px center;
  background-size: 18px 18px;
  border: 1px solid #d7d7d7;
}
.ardetail > span {
  font-size: 0.8rem;
}
.ardetail > div:first-child > div {
  display: flex;
  align-items: center;
}
.ardetail > div:first-child {
  font-size: 0.8rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding-bottom: 0.5rem;
}
.ardetail > div > div:first-child > img:nth-child(3) {
  width: 28px;
  height: 10px;
}
.ardetail > div > div:first-child > img:first-child {
  margin-right: 0.5rem;
  width: 25px;
  height: 25px;
}
.ardetail {
  color: #333;
  margin-bottom: 0.5rem;
}
/* 商品轮播图 */
.carousel {
  transform: translateY(0); /*不加overflow无效*/
}
.carousel img {
  width: 100%;
  display: block;
}
/* 简评 */
.ar_juti {
  padding: 0.5rem;
}
.ar_juti > div:first-child > span {
  padding: 0.5rem;
  background: #fdf0f0;
  margin-right: 0.5rem;
  margin-bottom: 0.5rem;
  border-radius: 0.2rem;
  color: #666;
}
.ar_juti > div:first-child {
  display: flex;
  flex-flow: row wrap;
  font-size: 0.8rem;
}
/* 评价总览 */
.zonglan > div:last-child {
  display: flex;
  align-items: center;
  font-size: 0.8rem;
}
.zonglan > div:last-child > span:last-child {
  display: inline-block;
  width: 20px;
  height: 17px;
  background: url("../assets/back_right.png") no-repeat;
  background-size: 100%;
  margin-left: 0.5rem;
  background-position-y: -2px;
}
.zonglan > div:first-child > span:first-child {
  font-size: 1rem;
  margin: 0 0.5rem;
}
.zonglan {
  display: flex;
  justify-content: space-between;
  font-size: 0.8rem;
  color: #333;
  padding: 0.8rem 0.5rem;
  border-bottom: 1px solid #eee;
}
.appraise {
  background: #fff;
  margin-bottom: 0.5rem;
}
/* 支持的服务 */
.not_sup {
  background: url("../assets/cha.png") no-repeat !important;
  background-size: 100% !important;
}
.sup_server {
  display: flex;
  flex-flow: row wrap;
  padding: 0.5rem 0;
  padding-right: 1.5rem;
}
.gou_marleft {
  margin-right: 0.5rem;
}
.sup_server > div {
  display: flex;
  align-items: center;
  color: #999;
}
.sup_server > div > span:first-child {
  display: inline-block;
  width: 12px;
  height: 12px;
  background: url("../assets/gou.png") no-repeat;
  background-size: 100%;
  margin-right: 0.2rem;
}
/* 已选&送至&重量 */
.kg + div > p {
  color: #2c3e50 !important;
}
.kg {
  margin-top: 0.4rem !important;
}
.jdred {
  color: #e4393c;
}
.ggdz > div > span:first-child {
  margin-top: 0.6rem;
  width: 2.9rem;
  color: #999;
}
.ggdz > div > span:last-child {
  background: url("../assets/three_black.png") no-repeat;
  background-size: 100%;
  margin-top: 1rem;
  margin-right: 0.6rem;
  width: 16px;
  height: 10px;
}
.ggdz {
  background: #fff;
  padding-left: 0.6rem;
  font-size: 0.8rem;
  margin-bottom: 0.5rem;
}
.ggdz > div > div > p:last-child {
  color: #999;
}
.ggdz > div > div > p {
  margin: 0.5rem 0;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.ggdz > div {
  display: flex;
  border-bottom: 1px solid #eee;
}
.ggdz > div > span {
  display: inline-block;
}
.ggdz > div > div {
  flex: 1;
  overflow: hidden;
}
/* 白条 */
.baitiao > span:last-child {
  margin-top: 0.5rem !important;
}
.baitiao > div > span:first-child {
  color: #999;
  margin-right: 1.3rem;
}
.baitiao > div > span {
  font-size: 0.8rem;
}
.baitiao {
  padding: 0.5rem 0;
  display: flex;
  justify-content: space-between;
}
/* 页面背景颜色 */
.detail {
  background: #e8e8ed;
  overflow: hidden;
  text-align: left;
  padding-bottom: 50px;
}
/* 优惠 */
.youhui > div > div > p > span:nth-child(2) {
  margin-left: 0.4rem;
}
.youhui > div > div > p > span {
  display: inline-block;
  border: 1px solid #e4393c;
  color: #e4393c;
  padding: 0 2px;
  font-size: 0.7rem;
}
.youhui > div > span:first-child {
  margin-top: 0.6rem;
  width: 2.9rem;
  color: #999;
}
.youhui > div > span:last-child {
  background: url("../assets/three_black.png") no-repeat;
  background-size: 100%;
  margin-top: 1rem;
  margin-right: 0.6rem;
  width: 16px;
  height: 10px;
}
.youhui {
  background: #fff;
  padding-left: 0.6rem;
  font-size: 0.8rem;
  margin-bottom: 0.5rem;
}
.youhui > div > div > p:last-child {
  color: #999;
}
.youhui > div > div > p {
  margin: 0.5rem 0;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.youhui > div {
  display: flex;
  border-bottom: 1px solid #eee;
}
.youhui > div > span {
  display: inline-block;
}
.youhui > div > div {
  flex: 1;
  overflow: hidden;
}

/* 放心购 */
.fxg {
  display: flex;
  align-items: center;
  background: #fbf0fd;
  padding: 0.6rem 0;
}
.fxg > img {
  margin: 0 0.5rem;
  width: 77px;
  height: 14px;
}
.fxg > span {
  font-size: 0.8rem;
  color: #e4393c;
}
/* 商品标题&详情 */
.more_detail {
  color: #e4393c;
  margin-left: 0.8rem;
}
.title_detail {
  text-align: left;
  font-size: 0.8rem;
  color: #999;
  padding-top: 0.1rem;
  padding-bottom: 0.8rem;
}
.pro_detail {
  padding: 0 0.6rem;
  background: #fff;
}
.title {
  text-align: left;
  margin: 0.3rem 0;
}
.title > span {
  font-size: 1rem;
  color: #333;
  font-weight: bold;
}
.title_icon1 {
  margin-right: 0.5rem;
  width: 26px;
  height: 15px;
}
.title_icon2 {
  width: 47px;
  height: 15px;
  margin: 0 0.3rem;
}
/* 价格条目 */
.price_detail {
  margin-top: 0.3rem;
}
.price > div:first-child > span {
  color: #e4393c;
  font-weight: 700;
}
.price > div:first-child > span:last-child {
  font-size: 1.4rem;
}
.price {
  padding-top: 0.3rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.price > div:last-child > div > img {
  width: 18px;
  height: 18px;
}
.price > div:last-child > div {
  text-align: center;
}
.price > div:last-child > div > p {
  margin: 0 0.5rem;
}
.price > div:last-child {
  display: flex;
  font-size: 0.7rem;
  color: #999;
}
/* 轮播图下方广告 */
.detail_ad {
  width: 100%;
  display: block;
}
/* 轮播图上方导航条 */
.pro_nav > div > div > span:first-child {
  color: #e4393c;
}
.pro_nav > div > div {
  flex: 1;
  display: none;
  font-size: 0.9rem;
  align-items: center;
  justify-content: space-around;
  color: #333;
}
.pro_carousel {
  position: relative;
  z-index: 0;
}
.pro_nav {
  width: 100%;
  left: 0;
  top: 0;
  position: absolute;
}
.pro_nav > div {
  display: flex;
  justify-content: space-between;
}
.pro_navspan {
  display: block;
  width: 1.9rem;
  height: 1.9rem;
  border-radius: 50%;
  background: url("../assets/back_white.png") #666 no-repeat;
  background-size: 60%;
  background-position: center center;
  margin: 0.3rem;
}
.about {
  background: url("../assets/threeDian.png") #666 no-repeat;
  background-size: 75%;
  background-position: center center;
}
</style>