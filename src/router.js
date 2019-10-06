import Vue from 'vue'
import Router from 'vue-router'
const login = () => import('@/views/login.vue')
const index = () => import('@/views/index.vue')
const search = () => import('@/views/search.vue')
const detail = () => import('@/views/detail.vue')
const reg = () => import('@/views/reg.vue')
const cart = () => import('@/views/cart.vue')
Vue.use(Router)
export default new Router({
  mode: 'history',
  routes: [
    {
      path: "/login", component: login, name: 'login'},
    {
      path: "/", name: 'home', component: index, meta: {
        title: 'home',
        keepAlive: true //需要记住位置的页面再添加
      }},
    {
      path: "/search", component: search},
    {
      path: "/detail:lid", component: detail, props: true},
    {
      path: "/reg", component: reg},
    {
      path: "/cart", component: cart},

  ],
  scrollBehavior(to, from, savedPosition) {
    if (savedPosition) {
      return savedPosition
    } else {
      if (from.meta.keepAlive) {
        from.meta.savedPosition = document.body.scrollTop
      }
      return { x: 0, y: to.meta.savedPosition || 0 }
    }
  },
})
