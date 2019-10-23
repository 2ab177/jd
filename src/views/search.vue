<template>
  <div class="search">
    <searchInput/>
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
import searchInput from '../components/search_input'
export default {
  components:{
    searchInput
  }
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
 
</style>