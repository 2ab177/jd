<template>
  <div>
    <!-- 底部总价计算 -->
    <div>
      <div>
        <span></span>
        <p>全选</p>
      </div>
      <span>总计:￥5999.00</span>
      <button>去结算</button>
    </div>
    <div class="gwc">
      <!-- 条目一 -->
      <div class="gwc_top">
        <span @click="back" class="back"></span>
        <span>购物车</span>
        <span class="tomore"></span>
      </div>
      <!-- 条目二 -->
      <div class="bjdw">
        <div>
          <span></span>
          <span>厦门市思明区</span>
        </div>
        <span>编辑商品</span>
      </div>
      <!-- 商品条目 -->
      <div @click="selected" class="gwc_product">
        <div class="proimg">
          <i></i>
          <img src="../assets/wntj/1_sm.jpg" alt />
        </div>
        <div class="pro-detail">
          <span>华为P30手机 【白条6期免息0首付+20天价保+现货当天发+1年碎屏险】 天空之境 全网通 8G+128G(6期免息)</span>
          <div class="price">
            <span>￥3988.00</span>
            <div>
              <span class="reduce"></span>
              <input value="1" class="num" type="number" />
              <span class="plus"></span>
            </div>
          </div>
          <div>
            <span>移入关注</span>
            <span>删除</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    back() {
      this.$router.go(-1); //返回上一层
    },
    selected(e){
      //事件委托
      var gwc=document.getElementsByClassName('gwc_product')[0];
      if(e.target.nodeName=="I"){
        if(e.target.style.backgroundPositionY=='-89px'){
          e.target.style.backgroundPositionY='-70px';
        }else{
          e.target.style.backgroundPositionY='-89px';
        }
      }
      console.log(1);
    }
  }
};
</script>
<style scoped>
/* 商品条目 */
.price>span{
  font-size: 1rem;
  font-weight: bold;
  color: #f2270c;
}
.pro-detail>div:last-child{
  text-align: right;
  color: #999;
  margin-top: .3rem;
}
.pro-detail>div:last-child>span{
  margin-right: .5rem;
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
  margin: 0 .1rem;
  font-size: 14px;
  -webkit-appearance: none;
  border: none;
  width: 30px;
  height: 18px;
  text-align: center;
  position: relative;
  float: left;
  background: #f6f6f6;
  border-radius: 1px;
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
  padding: .5rem .5rem .3rem 0;
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
  padding: .5rem;
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
.proimg > i {
  display: block;
  width: 20px;
  height: 20px;
  background: url("../assets/jd-sprites.png") no-repeat;
  background-size: 200px 200px;
  background-position-x: -179px;
  background-position-y: -89px;
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
  background: ur1("../assets/jd-sprites.png");
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