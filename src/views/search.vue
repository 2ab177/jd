<template>
  <div class="search">
    <div class="search_top">
      <router-link to="/"><span class="back"></span></router-link>
      <input placeholder="百雀羚套装" type="text">
      <button>搜索</button>
    </div>
    <div class="search_bottom">
      <div class="rmyc">
        <span>热门搜索</span>
        <span>隐藏</span>
      </div>
      <div class="key">
        <span class="jdred">美的电饭煲</span>
        <span class="jdred">篮球</span>
        <span class="jdred">直饮水龙头</span>
        <span>哑铃</span>
        <span>鱼竿</span>
        <span>电视柜</span>
        <span>户外登山鞋</span>
        <span>拼装模型</span>
        <span>脸部卸妆油</span>
        <span>魔术头巾</span>
        <span>实木沙发</span>
        <span>厨房消毒柜</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  /* 热门搜索 */
  .jdred{
    color: #e93b3d;
  }
  .search_bottom>.key{
    display: flex;
    flex-flow: row wrap;
  }
  .search_bottom>.key>span{
    display: block;
    padding: .2rem .6rem;
    font-size: .7rem;
    background: #f0f2f5;
    border-radius: .2rem;
    margin-left: .7rem;
    margin-bottom: .7rem;
  }
  .rmyc>span:last-child{
    font-size: .9rem;
    color:#999;
  }
  .rmyc>span:first-child{
    font-size: .9rem;
    color:#000;
    
  }
  .search_bottom{
    background: #fff;
    padding: 0 .8rem;
  }
  .rmyc{
    padding: 1rem 0 .6rem;
    display: flex;
    justify-content: space-between;
  }
  /* 上方搜索框 */
  .search_top>button{
    outline: none;
    border: none;
    background: #e93b3d;
    color: #fff;
    font-size: .9rem;
    border-radius: .2rem;
    padding: .3rem ;
    margin: 0 .7rem;
  }
  .search_top{
    background: #fff;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #e5e5e5;
  }
  .search_top>input{
    background: url('../assets/search.png') #f7f7f7 no-repeat;
    flex: 1;
    height: 30px;
    outline: none;
    border: none;
    border-radius: 15px;
    background-size: 18px 18px;
    background-position: 16px center;
    margin-top: .3rem ;
    margin-bottom: 5px;
    padding-left: 50px;
    font-size: .7rem;
  }
  .back{
    display: block;
    height: 20px;
    width: 20px;
    background: url('../assets/back.png');
    background-size: 120%;
    margin: 0 .5rem 0 1rem;
  }
</style>