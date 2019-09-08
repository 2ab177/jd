<template>
  <div class="container_fill">
    <!-- 上方搜索框 -->
    <div class="top_input">
      <span></span>
      <div class="input">
        <div>
          <input type="text" placeholder="dell显示器">
        </div>
      </div>
      <a href="javascript:;">登录</a> 
    </div>
    <!-- 商品导航列表 -->
    <div class="container">
      <!-- 轮播图 -->
      <div class="carousel">
        <carousel></carousel>
      </div>
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
      <div class="jdms_out">
        <div class="jdms">
          <div>
            <img src="../assets/miaosha/jdms.png">
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
.container_fill{
  background: #f6f6f6;
}
  /* 主要内容容器 */
  .container{
    padding: 0 2.5%;
    padding-top: 45px;
    background: url('../assets/bg.jpg') no-repeat;
    background-position: center center;
    background-size: cover;      
  }
  /* 上方搜索框 */
  .top_input{
    padding: 12px 0;
    width: 100%;
    position: fixed;
    top:0;
    left: 0;
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
  .input>div{
    width: 100%;
    height: 100%;
    background:#f7f7f7;
    border-radius: 0.9rem;
    overflow: hidden;
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
  .input>div>input{
    width: 100%;
    height: 100%;
    box-sizing: border-box;
    outline: none;
    border: none;
    background: url('../assets/jdsearch.png') no-repeat;
    background-size: 62px;
    background-position: 9px 6px;
    padding-left: 5rem;
  }
  /* 轮播图 */
  .carousel{
    border-radius: .3rem;
    overflow: hidden;
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
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: .5rem;
    background: url('../assets/miaosha/miaotiao.png') no-repeat;
    background-size: 100%;
  }
  .jdms>div{
    display: flex;
  }
  .jdms>div>img{
    width: 32%;
    margin-right: .4rem; 
  }
  .jdms>div>span:nth-child(2){
    font-weight: 1000;
    font-size: .8rem;
    margin-right: .4rem; 
  }
  .number{
    font-size: .8rem;
    display: inline-block;
    border: 1px solid #dfdfdf;
    padding-top: 1px;
  }
  .jdms>a{
    display: block;
    font-size: .7rem;
    padding-right: 1rem;
    background: url('../assets/icon/arrow_rt_2ccb8cd5.png') no-repeat;
    background-position: right;
    background-size: .8rem;
    color: #e93b3d;;
  }
  .jdms_out{
    background: #fff;
    border-radius: .3rem;
  }
</style>
