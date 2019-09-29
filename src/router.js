import Vue from 'vue'
import Router from 'vue-router'
const login = () => import('@/views/login.vue')
const index = () => import('@/views/index.vue')
const search = () => import('@/views/search.vue')
const detail = () => import('@/views/detail.vue')
const reg = () => import('@/views/reg.vue')
import a from './views/a.vue'
Vue.use(Router)
export default new Router({
  routes: [
    { path: "/login", component: login },
    { path: "/", component: index },
    { path: "/a", component: a },
    { path: "/search", component: search },
    { path: "/detail", component: detail },
    { path: "/reg", component: reg },
  ]
})
