import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import apptg from './components/app_tg.vue'
import { Button,DatetimePicker,Popup } from 'vant';
import { Swipe, SwipeItem } from 'vant';
import { CountDown } from 'vant';
import {
  GoodsAction,
  GoodsActionIcon,
  GoodsActionButton
} from 'vant';
Vue.component("app-tg",apptg);
Vue.use(CountDown);
Vue.use(Swipe).use(SwipeItem);
Vue.use(DatetimePicker);
Vue.use(Popup);
Vue.use(Button);
Vue
  .use(GoodsAction)
  .use(GoodsActionIcon)
  .use(GoodsActionButton);
axios.defaults.baseURL = "http://127.0.0.1:5050"
Vue.prototype.axios = axios;
Vue.config.productionTip = false;
Vue.directive('focus', {
  inserted: function (el) {
    el.focus()
  },
})
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
