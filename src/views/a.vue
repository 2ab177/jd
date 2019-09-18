<template>
  <div>
    <van-button type="primary" @click="showPopup">展示弹出层</van-button>
    <van-popup v-model="show" position="bottom"
  :style="{ height: '20%' }">
      <van-datetime-picker v-model="currentDate" type="date" :min-date="minDate" />
    </van-popup>
  </div>
</template>
<script>
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
    }
  }
};
</script>
<style scoped>
</style>