<template>
  <div class="pronav">
    <van-goods-action>
      <van-goods-action-icon icon="chat-o" text="联系客服" @click="onClickIcon">
        <img class="icon" src="../assets/icon_talk.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-icon icon="chat-o" text="进店" @click="onClickIcon">
        <img class="icon" src="../assets/icon_sd.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-icon icon="cart-o" text="购物车" @click="onClickIcon">
        <img class="icon" src="../assets/icon_cart.png" slot="icon" alt="">
      </van-goods-action-icon>
      <van-goods-action-button type="warning" text="加入购物车" @click="onClickButton" />
      <van-goods-action-button type="danger" text="立即购买" @click="onClickButton" />
    </van-goods-action>
  </div>
</template>
<script>
export default {
  methods: {
    onClickIcon() {

    },
    onClickButton() {
      
    }
  }
};
</script>
<style scoped>
.van-goods-action{
  padding-left: .4rem;
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