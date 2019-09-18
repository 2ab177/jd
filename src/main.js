import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import { Button,DatetimePicker,Popup } from 'vant';
import { Swipe, SwipeItem } from 'vant';

Vue.use(Swipe).use(SwipeItem);
Vue.use(DatetimePicker);
Vue.use(Popup);
Vue.use(Button);
axios.defaults.baseURL = "http://127.0.0.1:5050"
Vue.prototype.axios = axios;
Vue.config.productionTip = false
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
