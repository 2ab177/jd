<template>
  <div>
    <!-- app推广 -->
    <div class="app_tg">
      <div>
        <img src="../assets/off.png" alt="">
        <img src="../assets/jd_app.png" alt="">
        <div>
          <span>打开京东App购物</span>
          <span>新人领188元红包</span>
        </div>
      </div>
      <div><a href="javascript:;">立即打开</a></div>
    </div> 
    <!-- 商品导航列表 -->
    <div class="container">
        <!-- 上方搜索框 -->
      <div class="top_input">
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
            <img src="../assets/icon/016033c7ef3e0c6c.png">
            <span>领券</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/01e0e818a7505267.png">
            <span>京东超市</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/28cda0a571b4a576.png">
            <span>数码电器</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/4792ec307a853e9f.png">
            <span>PLUS会员</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5ae01befN2494769f.png">
            <span>京东到家</span>
          </div>
        </div>
        <div class="list">
          <div class="list-item">
            <img src="../assets/icon/5ad87bf0N66c5db7c.png">
            <span>京东生鲜</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03b74eN3541598d.png">
            <span>充值缴费</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03b779N5c0b196f.png">
            <span>赚钱</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/5b03fae3N67f78fe3.png">
            <span>9.9元拼</span>
          </div>
          <div class="list-item">
            <img src="../assets/icon/65c0cdc1362635fc.png">
            <span>京东服饰</span>
          </div>
        </div>
        <!-- 下部 -->
        <div class="zhongqiu">
          <div>
            <a href="javascript:;"><img src="../assets/1.jpg"></a>
          </div>
          <div>
            <a href="javascript:;"><img src="../assets/2.jpg"></a>
          </div>
          <div>
            <a href="javascript:;"><img src="../assets/3.jpg"></a>
          </div>
        </div>
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
                <img src="../assets/miaosha/ms1.jpg" alt="">
                <span><span>￥</span>279</span>
                <s><span>￥</span>299</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms2.jpg" alt="">
                <span><span>￥</span>1279</span>
                <s><span>￥</span>1399</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms3.jpg" alt="">
                <span><span>￥</span>159</span>
                <s><span>￥</span>129</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms4.jpg" alt="">
                <span><span>￥</span>559</span>
                <s><span>￥</span>466</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms5.jpg" alt="">
                <span><span>￥</span>59</span>
                <s><span>￥</span>100</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms6.png" alt="">
                <span><span>￥</span>79</span>
                <s><span>￥</span>89</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms7.jpg" alt="">
                <span><span>￥</span>69</span>
                <s><span>￥</span>99</s>
              </li>
              <li>
                <img src="../assets/miaosha/ms8.png" alt="">
                <span><span>￥</span>366</span>
                <s><span>￥</span>315</s>
              </li>
            </ul>
          </div> 
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import carousel from '../components/carousel'
export default {
  components:{
    carousel
  }
}
</script>
<style scoped>
  /* app推广 */
  .app_tg{
    display: flex;
    align-items: center;
    text-align: center;
    height: 3rem;
  }
  .app_tg>div{
    height: 100%;
    background: #232326;
    width: 68%;
    display: flex;
    align-items: center;
  }
  .app_tg>div>img:first-child{
    width: 1rem;
    height: 1rem;
    margin:1rem 1rem 1rem .5rem;
  }
  .app_tg>div>img:nth-child(2){
    width: 2.2rem;
    height: 2.2rem;
    margin-right: .5rem;
  }
  .app_tg>div>div>span:first-child{
    display: block;
    font-size: .8rem;
    color: #fff;
  }
  .app_tg>div>div>span:nth-child(2){
    font-size: .75rem;
    color: #999999;
  }
  .app_tg>div:nth-child(2){
    display: flex;
    justify-content: center;
    align-items: center;
    width: 32%;
    background: #cd2525;
  }
  .app_tg>div:nth-child(2)>a{
    color: #fff;
  }
  /* 主要内容容器 */
  .container{
    background: url('../assets/bg.jpg') #f6f6f6 no-repeat;
    background-position: center center;
    background-size: cover;      
  }
  .container>div:nth-child(2){
    padding: 0 2.5%;
  }
  /* 上方搜索框 */
  .top_input{
    padding: 12px 0;
    /* width: 100%;
    position: fixed;
    top:0;
    left: 0; */
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 999;
  }
  .top_input>span{
    width: 20px;
    height: 18px;
    background: url('../assets/three.png') no-repeat;
    background-size: 100%;
    margin-left: .8rem;
    z-index: 1;
  }
  .top_input>a{
    margin-right: .4rem;
    color: #fff;
    z-index: 1;
  }
  .input{
    box-sizing: border-box;
    position: absolute;
    width: 100%;
    height: 30px;
    padding: 0 2.8rem;
    z-index: 0;
  }
  .dl{
    width: 40px;
    height: 44px;
  }
  .inpuntin>span{
    display: inline-block;
    width: 20px;
    height: 20px;
  }
  .input>a{
    display: block;
    box-sizing: border-box;
    outline: none;
    border: none;
    background: url('../assets/jdsearch.png') #f7f7f7 no-repeat;
    background-size: 62px;
    background-position: 9px 5px;
    padding: .3rem 0;
    padding-left: 5rem;
    border-radius: 0.9rem;
    text-align: left;
    color: #333;
    font-size: .9rem;
  }
  /* 商品详情列表 */
  .list{
    display: flex;
  }
  .list-item{
    width: 20%;
    margin-top: .7rem;
    color:#fff;
  }
  .list-item>img{
    display: block;
    margin: 0 auto;
    width: 65%;
  }
  .list-item>span{
    display: block;
    font-size: .8rem;
  }
  /* 中秋节广告 */
  .zhongqiu{
    display: flex;
    margin: .6rem 0 .4rem;;
    border-radius: .3rem;
    overflow: hidden;
  }
  .zhongqiu>div{
    width: 33.333333%;
  }
  .zhongqiu>div img{
    display: block;
    width: 100%;
  }
  /* 京东秒杀 */
  .jdms{
    padding: .5rem .5rem 0 .5rem;
    border-radius: .3rem;
    background: url('../assets/miaosha/miaotiao.png') #fff no-repeat;
    background-size: 100%;
  }
  .jdms>div:first-child{
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .jdms>div>div{
    display: flex;
    align-items: center;
  }
  .jdms>div>div>span:first-child{
    display: inline-block;
    background: url('../assets/miaosha/jdms.png') no-repeat;
    width: 3.45rem;
    height: 1.35rem;
    margin-right: .4rem; 
    background-size: contain ;
    background-position: 0 center;
  }
  .jdms>div>div>span:nth-child(2){
    font-weight: 1000;
    font-size: .8rem;
    margin-right: .4rem; 
  }
  .number{
    font-size: .8rem;
    display: inline-block;
    border: 1px solid #dfdfdf;
  }
  .jdms a{
    display: block;
    font-size: .7rem;
    padding-right: 1rem;
    background: url('../assets/icon/arrow_rt_2ccb8cd5.png') no-repeat;
    background-position: right;
    background-size: .8rem;
    color: #e93b3d;;
  }
  .mslist{
    overflow-x: scroll;
  }
  ::-webkit-scrollbar { 
    display: none; }
  .mslist>ul{
    display: flex;
    padding: 0;
    width: 160%;
  }
  .mslist>ul>li{
    width: 13%;
  }
  .mslist>ul>li>span{
    display: block;
    font-weight: bold;
    color: #f00;
  }
  .mslist>ul>li>span>span{
    font-size: .8rem;
    font-weight: bolder;
    color: #f00;
  }
  .mslist>ul>li>s{
    columns: #999;
    font-size: .7rem;
  }
  .mslist>ul>li>img{
    display: block;
    width: 100%;
  }
</style>
