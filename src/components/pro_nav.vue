<template>
  <div class="pronav">
    <van-goods-action>
      <van-goods-action-icon icon="chat-o" text="联系客服" >
        <img class="icon" src="../assets/icon_talk.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-icon icon="chat-o" text="进店" >
        <img class="icon" src="../assets/icon_sd.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-icon icon="cart-o" text="购物车" >
        <img class="icon" src="../assets/icon_cart.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-button type="warning" text="加入购物车" @click="addcart" />
      <van-goods-action-button type="danger" text="立即购买" />
    </van-goods-action>
  </div>
</template>
<script>
import {
  GoodsAction,
  GoodsActionIcon,
  GoodsActionButton,Dialog, Toast
} from 'vant';
export default {
  data(){
    return {
      cclick:true
    }
  },
  props:['title','price','simg','lid'],
  methods: {
    Toast,
    addcart() {
      if(this.cclick){
        this.cclick=false;
        this.axios.get('/cart/addcart',{
          params:{
            lid:this.lid,
            title:this.title,
            price:this.price,
            simg:this.simg
          }
        })
        .then(res=>{
          if(res.data.status===403){
            Dialog.alert({
                message: "请先登录"
              }).then(() => {
                this.$router.push('/login');
              })
          }else{
            Toast('添加成功');
            this.cclick=true;
          }
        })
      }
    },
  },
  components:{
    'van-goods-action':GoodsAction,
    'van-goods-action-icon':GoodsActionIcon,
    'van-goods-action-button':GoodsActionButton,
    [Dialog.Component.name]: Dialog.Component
  }
};
</script>
<style scoped>
.van-goods-action{
  padding-left: .4rem;
  z-index: 999;
}
.icon{
  width: 18px;
  height: 18px;
}
.van-goods-action-button{
  height: 50px;
  border-radius: 0;
  margin:0;
}
</style>