<template>
  <div class="cart_container">
    <!-- 底部总价计算 -->
    <!-- 登录显示 -->
    <div v-if="$store.getters.getLogin" class="gwc_count">
      <div>
        <label class="selectall">
          <input type="checkbox" v-model="selected" @click="selectAll" />
          <span></span>
        </label>
        <span>全选</span>
      </div>
      <div>
        <span>
          <span>总计:</span>
          ￥{{total.toFixed(2)}}
        </span>
        <button>去结算</button>
      </div>
    </div>
    <div class="gwc">
      <!-- 条目一 -->
      <div class="gwc_top">
        <span @click="back" class="back"></span>
        <span>购物车</span>
        <span class="tomore"></span>
      </div>
      <!-- 条目二 -->
      <!-- 登录显示 -->
      <div v-if="$store.getters.getLogin" class="bjdw">
        <div>
          <span></span>
          <span>厦门市思明区</span>
        </div>
        <span @click="dels">删除选中商品</span>
      </div>
      <!-- 商品条目 -->
      <!-- 登录显示 -->
      <div v-if="$store.getters.getLogin" class="product_list" @click="splist">
        <div v-for="(item,i) of carts" :key="i" class="gwc_product">
          <div class="proimg">
            <label class="selected">
              <input v-model="item.ischecked" type="checkbox" />
              <span></span>
            </label>
            <img :src="require(`../assets/wntj/${item.simg}.jpg`)" alt />
          </div>
          <div class="pro-detail">
            <span>{{item.title}}</span>
            <div class="price">
              <span>{{item.price.toFixed(2)}}</span>
              <div>
                <span class="reduce" :data-i="i" data-ys="reduce"></span>
                <input v-model="item.count" class="num" type="number" />
                <span :data-i="i" class="plus" data-ys="plus"></span>
              </div>
            </div>
            <div>
              <span>移入关注</span>
              <span :data-i="i">删除</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 未登录显示以下内容 -->
    <div v-if="!$store.getters.getLogin" class="nologin">
      <div>
        <span>登录后可以同步购物车中的商品</span>
        <router-link to="/login">
          <button>登录</button>
        </router-link>
      </div>
      <div>
        <img src="../assets/gwc.png" alt />
        <p>登录后可同步购物车中商品</p>
      </div>
    </div>
    <!-- 常驻内容：商品推荐 -->
    <div class="youwant">
      <span>可能你还想要</span>
    </div>
    <div class="wntj" :style="$store.getters.getLogin?'padding-bottom:47px':''">
      <div class="wntj-left" v-for="(item,i) of products" :key="i">
        <router-link :to="`/detail${item.lid}`">
          <img class="wntj_proimg" :src="require(`../assets/wntj/${item.smproimg}.jpg`)" alt />
        </router-link>
        <div>
          <div>
            <img :src="require(`../assets/${item.typeimg}.png`)" alt />
          </div>
          <span>{{item.title}}</span>
        </div>
        <div>
          <span>￥{{item.price.toFixed(2)}}</span>
          <span v-show="item.buytype!=null">{{item.buytype}}</span>
          <span>看相似</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      products: [],
      carts: [],
      selected: false,
    };
  },
  created() {
    this.gproducts();
    this.getcart();
  },
  methods: {
    getcart(){
      if(this.$store.getters.getLogin){
        this.axios.get('/cart/carts')
        .then(res=>{
          this.carts=res.data.data;
        })
      }
    },
    gproducts() {
      this.axios
        .get("/product", {
          params: {
            pno: 1,
            pageSize: 8
          }
        })
        .then(res => {
          this.products = res.data.data;
        });
    },
    dels() {},
    back() {
      this.$router.go(-1); //返回上一层
    },
    splist(e) {
      if (e.target.nodeName == "INPUT") {
        if (e.target.checked == false) {
          this.selected = false;
        } else {
          if (document.querySelector(".selected>input:not(:checked)") == null) {
            this.selected = true;
          }
        }
      }
      if (e.target.dataset.ys == "reduce") {
        this.carts[e.target.dataset.i].c -= 1;
        if (this.carts[e.target.dataset.i].c == 0) {
          this.carts.splice(e.target.dataset.i, 1);
        }
      } else if (e.target.dataset.ys == "plus") {
        this.carts[e.target.dataset.i].c += 1;
      }
      if (e.target.innerHTML == "删除") {
        this.carts.splice(e.target.dataset.i, 1);
      }
    },
    selectAll() {
      for (var item of this.carts) {
        item.ischecked = !this.selected;
      }
    }
  },
  computed: {
    total() {
      var total = 0;
      for (var p of this.carts) {
        if (p.ischecked) {
          total += p.count * p.price;
        }
      }
      return total;
    }
  }
};
</script>
<style scoped>
/* 为你推荐 */
.wntj_img {
  display: block;
  width: 100%;
  margin-bottom: 0.1rem;
}
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
  margin-top: 1.2rem;
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
  margin-bottom: 0.1rem;
}
/* 未登录样式 */
.youwant > span {
  position: absolute;
  bottom: 0;
  left: 50%;
  margin-left: -48px;
  margin-bottom: -8px;
  z-index: 2;
  font-size: 0.8rem;
  color: #999;
  padding: 0 0.5rem;
  background: #f6f6f6;
  display: block;
}
.youwant {
  position: relative;
  height: 21px;
  border-bottom: 1px solid #eee;
  margin-bottom: 0.5rem;
}
.nologin > div:nth-child(2) {
  padding: 4.2rem;
}
.nologin > div:nth-child(2) > img {
  width: 90px;
  height: 90px;
}
.nologin > div:first-child button {
  outline: none;
  border: none;
  background: #f2140c;
  color: #fff;
  padding: 0.4rem 1.3rem;
  border-radius: 0.3rem;
  margin-left: 0.5rem;
}
.nologin > div:first-child {
  font-size: 0.9rem;
  background: #fff;
  padding: 0.9rem;
}

.cart_container {
  overflow: hidden;
}
/* 底部总价计算 */
.gwc_count > div:last-child > button {
  outline: none;
  border: none;
  padding: 0.8rem;
  background-image: linear-gradient(135deg, #f2140c, #f2270c 70%, #f24d0c);
  color: #fff;
  font-weight: bold;
  margin-left: 0.5rem;
  border-radius: 0.1rem;
}
.gwc_count > div:last-child > span > span {
  color: #333;
}
.gwc_count > div:last-child > span {
  color: #f2270c;
  font-size: 1rem;
  font-weight: bold;
}
.gwc_count > div:first-child {
  margin-left: 0.3rem;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.gwc_count > div > span {
  font-size: 0.9rem;
  color: #999;
}
.gwc_count {
  width: 100%;
  border-top: 1px solid #eee;
  background: #fff;
  display: flex;
  text-align: center;
  align-items: center;
  justify-content: space-between;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 999;
}
.selected {
  padding: 0.5rem;
}
.selected > span {
  left: 12px !important;
  top: 10px !important;
}
.selectall,
.selected {
  position: relative;
  width: 20px;
  height: 20px;
  color: #fff;
}
.selectall > span,
.selected > span {
  left: 0;
  top: 0;
  position: absolute;
  display: block;
  width: 20px;
  height: 20px;
  background: url("../assets/jd-sprites.png") no-repeat;
  background-size: 200px 200px;
  background-position-x: -179px;
  background-position-y: -89px;
  z-index: 0;
}
.selectall > input[type="checkbox"]:checked + span::before,
.selected > input[type="checkbox"]:checked + span::before {
  content: "";
  display: block;
  width: 20px;
  height: 20px;
  background: url("../assets/jd-sprites.png") no-repeat;
  background-size: 200px 200px;
  background-position-x: -179px;
  background-position-y: -54px;
  z-index: 1;
  left: 0;
  top: 0;
  position: absolute;
}
input[type="checkbox"] {
  width: 0px;
  height: 0px;
}
/* 商品条目 */
.price > span {
  font-size: 1rem;
  font-weight: bold;
  color: #f2270c;
}
.pro-detail > div:last-child {
  text-align: right;
  color: #999;
  margin-top: 0.3rem;
}
.pro-detail > div:last-child > span {
  margin-right: 0.5rem;
}
.num::before {
  content: "";
  display: inline-block;
  vertical-align: middle;
  width: 0;
  height: 100%;
  margin-top: 1px;
}
.num {
  margin: 0;
  padding: 0;
  margin: 0 .1rem;
  font-size: 14px;
  -webkit-appearance: none;
  border: none;
  width: 30px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  position: relative;
  float: left;
  background: #f6f6f6;
  border-radius: 0;
  -webkit-border-radius: 0;
}
/* 减号 */
.reduce::after {
  position: absolute;
  left: 50%;
  top: 50%;
  content: "";
  display: block;
  width: 10px;
  height: 2px;
  margin: -1px 0 0 -5px;
  background: #333;
  border-radius: 1px;
}
.reduce {
  position: relative;
  float: left;
  width: 20px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  outline: none;
  font-size: 10px;
  font-weight: 400;
  background: #f6f6f6;
}
.price {
  display: flex;
  justify-content: space-between;
  padding: 0.5rem 0.5rem 0.3rem 0;
}
/* 加号 */
.plus::after {
  position: absolute;
  left: 50%;
  top: 50%;
  content: "";
  display: block;
  width: 10px;
  height: 2px;
  margin: -1px 0 0 -5px;
  background: #333;
  border-radius: 1px;
}
.plus:before {
  position: absolute;
  left: 50%;
  top: 50%;
  content: "";
  display: block;
  width: 2px;
  height: 10px;
  margin: -5px 0 0 -1px;
  border-radius: 1px;
  background: #333;
}
.plus {
  position: relative;
  float: left;
  width: 20px;
  height: 20px;
  line-height: 20px;
  text-align: center;
  outline: none;
  font-size: 10px;
  font-weight: 400;
  background: #f6f6f6;
}
.pro-detail > span {
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  line-clamp: 2;
  -webkit-box-orient: vertical;
}
.pro-detail {
  text-align: left;
  flex: 1;
  overflow: hidden;
}
.gwc_product {
  display: flex;
  font-size: 0.9rem;
  padding: 0.5rem 0.5rem 0.5rem 0;
  border-bottom: 1px solid #eee;
}
.proimg > img {
  width: 100px;
  height: 100px;
}
.proimg {
  display: flex;
  align-items: center;
}

/* 条目二 */
.bjdw > div {
  display: flex;
  align-items: center;
}
.bjdw > div > span:first-child {
  display: block;
  width: 15px;
  height: 15px;
  background: url("../assets/jd-sprites.png");
  background-size: 180px 180px;
  background-position: -134px -27px;
}
.bjdw > div > span:nth-child(2) {
  color: #999;
}
.bjdw {
  font-size: 0.9rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.6rem;
  border-bottom: 1px solid #eee;
}
/* 网页背景色 */
.gwc {
  background: #fff;
  color: #333;
}
/* 条目一 */
.tomore {
  display: block;
  width: 44px;
  height: 44px;
  background: url("../assets/three_black.png") no-repeat;
  background-size: 45%;
  background-position: center center;
}
.gwc_top {
  padding-left: 1rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid #eee;
  font-size: 1.1rem;
}
.jddl > span {
  font-size: 1.1rem;
}
.back {
  display: block;
  width: 1.5rem;
  height: 1.5rem;
  background: url("../assets/back.png") no-repeat;
  background-size: 120%;
  background-position-y: center;
}
</style>