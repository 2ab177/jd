import Vue from 'vue'
import Router from 'vue-router'
import login from './views/login.vue'
import index from './views/index.vue'
import a from './views/a.vue'
import search from './views/search.vue'
Vue.use(Router)
export default new Router({
  routes: [
    { path: "/login", component: login },
    { path: "/", component: index },
    { path: "/a", component: a },
    { path: "/search", component: search },
  ]
})
