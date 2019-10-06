import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from './axios'
import { Swipe, SwipeItem, Dialog, Toast } from 'vant'
Vue.use(axios).use(Swipe).use(SwipeItem);
Vue.prototype.Dialog = Dialog;
Vue.prototype.Toast=Toast;
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
