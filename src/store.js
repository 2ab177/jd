import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    uname:"",
    islogin: sessionStorage.getItem('isLogin') ||localStorage.getItem('isLogin') || false
  },
  //读取状态
  getters: {//集中获取数据函数
    getLogin(state) {//特殊：所有函数都有参数
      return state.islogin;
    },
  },
  mutations: {//集中修改数据函数
    llogin(state) {
      localStorage.setItem("isLogin", true);
      state.islogin = true;
    },
    slogin(state){
      sessionStorage.setItem("isLogin", true);
      state.islogin=true;
    },
    loginout(state){
      localStorage.removeItem("isLogin");
      sessionStorage.removeItem("isLogin");
      localStorage.removeItem("token");
      sessionStorage.removeItem("token");
      state.islogin = false;
    }
  },
  actions: {

  }
})
