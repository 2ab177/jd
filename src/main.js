import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import { Swipe, SwipeItem } from 'vant';
Vue.use(Swipe).use(SwipeItem);
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
