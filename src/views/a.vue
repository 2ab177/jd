<template>
  <div class="a1">
    <van-button type="primary" @click="showPopup">展示弹出层</van-button>
    <van-popup v-model="show" position="bottom"
  :style="{ height: '20%' }">
      <van-datetime-picker v-model="currentDate" type="date" :min-date="minDate" />
    </van-popup>
    <jdkb></jdkb>
    <lut></lut>
    <pronav/>
  </div>
</template>
<script>
import lut from '../components/carousel'
import jdkb from '../components/jdkb'
import pronav from '../components/pro_nav'
export default {
  data() {
    return {
      show: false,
      minDate:new Date(1980/1/1),
      currentDate: new Date()
    };
  },
  methods: {
    showPopup() {
      this.show = true;
    },
    onClickIcon() {
    },
    onClickButton() {
    }
  },
  components:{
    jdkb,
    lut,
    pronav
  }
};
</script>
<style scoped>
.a1{
  height: 30rem;
  background: #f6f6f6;
}
.icon{
  width: 18px;
  height: 18px;
}
</style>