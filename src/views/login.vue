<template>
  <div class="login">
    <div class="jddl">
      <span @click="back" class="back"></span>
      <p>京东登录</p>
    </div>
    <input @input="canC" v-focus v-model="uname" class="uname" type="text" placeholder="请输入注册手机号码" />
    <div class="pwd">
      <input @input="canC" v-model="upwd" type="password" placeholder="请输入密码" />
      <a href>忘记密码</a>
    </div>
    <div class="savelogin">
        <label class="selectall">
          <input type="checkbox" v-model="remember"  />
          <span></span>
        </label>
        <span>一小时内免登录</span>
    </div>
    <button class="btn" @click="login">登录</button>
    <button class="btn">一键登录</button>
    <div class="dxsj">
      <a href="javascript:;">短信验证码登录</a>
      <router-link to="/reg">手机快速注册</router-link>
    </div>
    <div class="qqlogin">
      <span>其他登录方式</span>
      <img src="../assets/icon/qq.png" alt />
      <p>QQ</p>
      <p>
        登录即代表您同意
        <a href="javascript:;">京东隐私政策</a>
      </p>
    </div>
  </div>
</template>
<script>
import Vue from "vue";
import { Dialog, Toast } from "vant";
//引入md5模块对密码进行加密
import md5 from "md5";
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      timer: undefined,
      cclick: true,
      remember:false
    };
  },
  components: {
    [Dialog.Component.name]: Dialog.Component
  },
  methods: {
    Toast,
    md5,
    back() {
      this.$router.go(-1); //返回上一层
    },
    login() {
      //任意一项为空不执行后面函数
      if (this.uname == "" || this.upwd == "") {
        return;
      }
      //验证手机格式
      if (!/^1[3-9]\d{9}$/.test(this.uname)) {
        Dialog.alert({
          message: "手机号码格式错误"
        });
        return;
      }
      //验证密码格式
      if (!/^[a-zA-Z0-9]{6,12}$/.test(this.upwd)) {
        Dialog.alert({
          message: "请输入六至十二位密码，包含数字字母"
        });
        return;
      }
      //函数节流
      if (this.cclick) {
        this.cclick=false;
        Toast.loading({
          mask: true,
          message: "登录中..."
        });
        this.axios
          .post("/login", {
            uname: this.uname,
            upwd: this.md5(this.upwd),
            remember:this.remember
          })
          .then(res => {
            Toast.clear();
            this.cclick=true;
            if (res.data.code == -1) {
              Toast("账号或密码错误");
            } else {
              Toast("登录成功");
              this.$router.push("/");
            }
          });
      }
    },
    canC() {
      //函数防抖
      if (this.timer != undefined) {
        clearTimeout(this.timer);
      }
      this.timer = setTimeout(() => {
        var btn = document.getElementsByClassName("btn")[0];
        if (this.uname != "" && this.upwd != "") {
          btn.style.backgroundImage =
            "linear-gradient(90deg,#f10000,#ff2000 73%,#ff4f18)";
        } else {
          btn.style.backgroundImage = "";
        }
      }, 200);
    }
  }
};
</script>
<style scoped>
/* 是否记住登录状态 */
.savelogin>span{
  margin-left: .6rem;
}
.savelogin{
  display: flex;
  font-size: .9rem;
  align-items: center;
  color: #999;
  margin: 1.2rem 0;
}
.selectall{
  position: relative;
  width: 20px;
  height: 20px;
}
.selectall > span{
  left: 0;
  top: 0;
  position: absolute;
  display: block;
  width: 20px;
  height: 20px;
  background: url("../assets/jd-sprites.png") no-repeat;
  background-size: 200px 200px;
  background-position-x: -179px;
  background-position-y: -89px;
  z-index: 0;
}
.selectall > input[type="checkbox"]:checked + span::before{
  content: "";
  display: block;
  width: 20px;
  height: 20px;
  background: url("../assets/jd-sprites.png") no-repeat;
  background-size: 200px 200px;
  background-position-x: -179px;
  background-position-y: -54px;
  z-index: 1;
  left: 0;
  top: 0;
  position: absolute;
}
input[type="checkbox"] {
  width: 0px;
  height: 0px;
}
/* 登录框样式 */
a {
  text-decoration: none;
}
.login {
  text-align: center;
  padding: 0 5%;
}
.jddl {
  position: relative;
}
.jddl > p {
  font-size: 1.1rem;
}
.back {
  position: absolute;
  top: 0;
  left: 0;
  width: 1.5rem;
  height: 1.5rem;
  background: url("../assets/back.png") no-repeat;
  background-size: 120%;
}
.uname {
  box-sizing: border-box;
  width: 100%;
  border: none;
  outline: none;
  padding: 1rem 0;
  border-bottom: 1px solid #efefef;
  margin-top: 2rem;
}
.pwd {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border: 1px solid #efefef;
  border-width: 0 0 1px 0;
  margin: 2rem 0 1rem 0;
}
input {
  background: transparent;
}
.pwd > input {
  border: none;
  outline: none;
  padding: 1rem 0;
  border-bottom: 1px solid #efefef;
  width: 65%;
  border: none;
}
.pwd > a {
  display: block;
  padding: 0.2rem 0 0.2rem 1rem;
  font-size: 0.9rem;
  text-decoration: none;
  color: #000;
  border-left: 1px solid #ccc;
}
.btn {
  border: none;
  outline: none;
  width: 100%;
  border-radius: 5.25rem;
  padding: 0.8rem 0;
  background-image: linear-gradient(90deg, #fab3b3, #ffbcb3 73%, #ffcaba);
  color: #fff;
  margin-bottom: 0.6rem;
}
.btn + .btn {
  border: 1px solid #ff2000;
  background: transparent;
  color: #f23030;
}
.dxsj {
  display: flex;
  justify-content: space-between;
  margin-top: 2rem;
}
.dxsj > a {
  color: #999;
  font-size: 0.9rem;
}
.qqlogin {
  text-align: center;
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 1px solid #efefef;
  position: relative;
}
.qqlogin > img {
  width: 48px;
  height: 48px;
}
.qqlogin > img + p {
  margin: 0;
  color: #999;
}
.qqlogin > img + p + p {
  margin-top: 2rem;
  font-size: 0.9rem;
  color: #bebebe;
}
.qqlogin > img + p + p > a {
  color: #409eff;
}
.qqlogin > span {
  display: block;
  font-size: 0.9rem;
  color: #ccc;
  position: absolute;
  left: 50%;
  top: -0.6rem;
  margin-left: -3.5rem;
  z-index: 999;
  padding: 0 0.8rem;
  background: #f6f6f6;
}
</style>