<template>
  <div class="jdkb">
    <img class="kb-img" src="../assets/jdkb.jpg" alt="">
    <van-swipe style="height: 2rem;" vertical :autoplay="3000" :show-indicators="false">
      <van-swipe-item>
        <p>
          <span>最新</span> 白酒瓶如果有这五个字，白送也别要
        </p>
      </van-swipe-item>
      <van-swipe-item>
        <p>
          <span>推荐</span> 森海赛尔凭什么是耳机届的老大
        </p>
      </van-swipe-item>
      <van-swipe-item>
        <p>
          <span>HOT</span> 男人戴的表不需要太贵，但是档次要到位
        </p>
      </van-swipe-item>
      <van-swipe-item>
        <p>
          <span>热门</span> 为什么iPad mini5被很多玩家称为游戏神器
        </p>
      </van-swipe-item>
    </van-swipe>
    <span class="smore">更多</span>
  </div>
</template>
<style scoped>
.smore{
  display: block;
  width: 10%;
}
.smore{
  font-size: .8rem;
}
.kb-img{
  margin:0 .5rem;
  width: 25%;
}
  .jdkb{
    margin: .5rem 0;
    display: flex;
    align-items: center;
    background: #fff;
    border-radius: .3rem;
    overflow: hidden;
  }
  .jdkb p>span{
    color: #f00;
  }
  .jdkb p{
    font-size: .8rem;
    margin: 0;
    white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  }
  .van-swipe{
    flex: 1;
  }
  .van-swipe-item{
    display: flex;
    align-items: center;
  }
</style>

        

        
    
        
  
          
