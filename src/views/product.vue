<template>
  <div class="container">
    <searchInput :nborder="true" />
    <div class="paipai">
      <div>
        <img src="../assets/paipai.jpg" alt />
        <span>拍拍二手精选</span>
      </div>
      <div>
        <span>低价好货，品质无忧</span>
        <img src="../assets/back_right.png" alt />
      </div>
    </div>
    <div v-if="sprolist.length!=0" class="content">
      <div class="fenlei">
        <span>综合</span>
        <span>销量</span>
        <span>有货优先</span>
        <span>筛选</span>
      </div>
      <div class="pro_list">
        <div class="pro_item" v-for="(item,i) of sprolist" :key="i">
          <img :src="require(`../assets/wntj/${item.smproimg}.jpg`)" alt />
          <div>
            <span>{{item.title}}</span>
            <div>
              <span class="npirce">
                ￥
                <span class="sb">{{item.price}}</span>.00
              </span>
              <span class="npirce">￥{{item.vipprice}}</span>
              <img src="../assets/vip.png" alt />
            </div>
            <div>
              <img src="../assets/zy.png" alt />
              <span class="gray_f">21万条+评价 好评率98%</span>
            </div>
            <div class="last_span">
              <span class="gray_f">京东自营旗舰店</span>
              <span></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div v-else class="nofound">
      <img src="../assets/nores.png" alt />
      <p>抱歉！暂无相关商品</p>
      <p>换个词搜试试</p>
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
      <img src="../assets/logo_all.png" alt />
    </div>
  </div>
</template>
<script>
import searchInput from "../components/search_input";
export default {
  data() {
    return {
      sprolist: [],
      canClick:true
    };
  },
  components: {
    searchInput
  },
  created() {
    this.loadPro();
  },
  methods: {
    loadPro() {
      if (this.$route.params.kw&&this.canClick) {
        this.canClick=false;
        this.axios
          .get("/search", {
            params: {
              kw: this.$route.params.kw
            }
          })
          .then(res => {
            this.sprolist = res.data;
            this.canClick=true;
          });
      }
    }
  },
  watch: {
    $route() {
      this.loadPro();
    }
  }
};
</script>
<style scoped>
/* 搜索推荐 */
.nofound>p:nth-child(2){
  margin-top: .6rem;
  margin-bottom: 1.7rem;
}
.nofound>p:nth-child(3){
  text-align: left;
  font-size: .9rem;
  color:#999;
  margin-left: .4rem;
}
.nofound{
  margin-top: 3.5rem;
  text-align: center;
  color: #333;
}
.nofound>img:last-child{
  width: 100px;
  height: 20px;
  margin-top: 1rem;
}
.nofound>img:first-child{
  width: 90px;
  height: 90px;
}
.key {
  display: flex;
  flex-flow: row wrap;
}
.key > span {
  display: block;
  padding: 0.2rem 0.6rem;
  font-size: 0.7rem;
  background: #fff;
  border-radius: 0.2rem;
  margin-left: 0.7rem;
  margin-bottom: 0.7rem;
}
/* 容器 */
.container {
  text-align: left;
}
/* 商品详情 */
.pro_item + .pro_item {
  border-top: 1px solid #eee;
}
.last_span {
  display: flex;
  align-items: center;
}
.last_span > span:last-child {
  display: block;
  width: 6px;
  height: 6px;
  border-top: 1px solid #999;
  border-left: 1px solid #999;
  transform-origin: 50%;
  transform: rotate(135deg);
  margin-top: 2px;
}
.sb {
  font-size: 1.1rem;
  font-weight: bold;
}
.npirce:nth-child(2) {
  color: #d2a448;
}
.npirce {
  color: #e93b3d;
  font-size: 0.7rem;
}
.pro_item {
  display: flex;
  padding: 0.6rem;
}
.pro_item > div > div:nth-child(3) {
  display: flex;
  align-items: center;
}
.pro_item > div > div:nth-child(3) {
  margin: 0.2rem 0;
}
.pro_item > div > div:nth-child(3) > img {
  width: 24px;
  height: 14px;
  margin-right: 0.3rem;
}
.pro_item > div > div:nth-child(2) {
  margin-top: 0.7rem;
}
.pro_item > div > div:nth-child(2) > img {
  width: 29px;
  height: 10px;
}
.pro_item > div > span {
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  overflow: hidden;
  margin-top: 0.2rem;
}
.pro_item > div > span {
  font-size: 0.9rem;
  color: #333;
}
.pro_item > div {
  flex: 1;
  display: flex;
  flex-direction: column;
}
.pro_item > img {
  width: 120px;
  height: 120px;
  margin-right: 0.5rem;
}
/* 分类 */
.content > .fenlei > span:nth-child(2n-1) {
  color: #e93b3d;
}
.content > .fenlei {
  font-size: 0.9rem;
  display: flex;
  justify-content: space-around;
  padding: 0.7rem 0;
  border: 1px solid #eee;
}
/* 下方内容 */
.content {
  background: #fff;
}
/* 拍拍推广 */
.paipai {
  display: flex;
  justify-content: space-between;
  background: #fff;
  margin: 0.3rem 0;
  padding: 0.7rem;
}
.paipai > div {
  display: flex;
  align-items: center;
}
.paipai > div:first-child > img {
  width: 30px;
  height: 30px;
  margin-right: 0.5rem;
}
.paipai > div:last-child > span,
.gray_f {
  font-size: 0.8rem !important;
  color: #999 !important;
}
.paipai > div:last-child > img {
  width: 16px;
  height: 16px;
}
</style>