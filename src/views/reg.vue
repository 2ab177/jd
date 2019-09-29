<template>
  <div>
    <div class="reg">
      <!-- 模态框 -->
      <div class="mtk">
        <div class="mtk_top">
          <p>注册协议及隐私政策</p>
          <div>
            <span>
              在您注册成为京东用户的过程中，您需要完成我们的注册流程并通过点击同意的形式在线签署以下协议，
              <span>
                <u>请您务必仔细阅读、充分理解协议中的条款内容后再点击同意（尤其是以粗体并下划线标识的条款，因为这些条款可能会明确您应履行的义务或对您的权利有所限制）：</u>
              </span>
            </span>
          </div>
          <span>《京东用户注册协议》</span>
          <span>《京东隐私政策》</span>
        </div>
        <div class="mtk_min">
          <span>
            点击同意即表示您已阅读并同意
            <a href="javascript:;">《京东用户注册协议》</a>与
            <a href="javascript:;">《京东隐私政策》</a>并将您的订单信
            享给为完成此订单所必须的第三方合作方。关于
            <a href="javascript:;">《订单共享与安全》</a>
          </span>
        </div>
        <div class="mtk_bot">
          <button @click="disarrge">不同意</button>
          <button @click="arrge">同意</button>
        </div>
      </div>
    </div>
    <div class="login">
      <div class="jddl">
        <router-link to="/login">
          <span class="back"></span>
        </router-link>
        <p>京东注册</p>
      </div>
      <input @input="canC" v-model="uphone" class="uname" type="text" placeholder="请输入11位手机号码" />
      <input
        @input="canC"
        v-model="upwd"
        class="uname"
        type="password"
        placeholder="请输入6-12位密码,包含字母数字"
      />
      <input @input="canC" v-model="aupwd" class="uname" type="password" placeholder="再次输入密码" />
      <button class="btn" @click="reg">注册</button>
    </div>
  </div>
</template>
<script>
import Vue from "vue";
import { Dialog } from "vant";
export default {
  data() {
    return {
      uphone: "",
      upwd: "",
      aupwd: "",
      timer:undefined
    };
  },
  methods: {
    //点击同意后移除模态框
    arrge() {
      var mtk = document.getElementsByClassName("reg")[0];
      mtk.remove();
      var iname = document.getElementsByTagName("input")[0];
      iname.focus();
    },
    disarrge() {
      this.$router.push("/login");
    },
    reg() {
      //任意一项为空不执行后面函数
      if (this.uphone == "" || this.upwd == "" || this.aupwd == "") {
        return;
      }
      //验证手机格式
      if (!/^1[3-9]\d{9}$/.test(this.uphone)) {
        Dialog.alert({
          message: "手机号码格式错误"
        });
        return;
      }
      //验证密码格式
      if (!/^[a-zA-Z0-9]{6,12}$/.test(this.upwd)) {
        Dialog.alert({
          message: "密码格式错误"
        });
        return;
      }
      //验证两次密码是否一致
      if (this.upwd !== this.aupwd) {
        Dialog.alert({
          message: "两次密码输入不一致"
        });
        return;
      }
    },
    canC() {
      //函数防抖
      if (this.timer != undefined) {
        clearTimeout(this.timer);
      }
      this.timer = setTimeout(() => {
        var btn = document.getElementsByClassName("btn")[0];
        if (this.uphone != "" && this.upwd != "" && this.aupwd != "") {
          btn.style.backgroundImage =
            "linear-gradient(90deg,#f10000,#ff2000 73%,#ff4f18)";
        } else {
          btn.style.backgroundImage = "";
        }
      }, 200);
    }
  },
  components: {
    [Dialog.Component.name]: Dialog.Component
  }
};
</script>
<style scoped>
/* 模态框按钮 */
.mtk_bot > button:last-child {
  background-image: linear-gradient(90deg, #f10000, #ff2000 73%, #ff4f18);
  color: #fff;
}
.mtk_bot > button:first-child {
  background: #fff;
  border-top: 0.5px solid #eee;
}
.mtk_bot > button {
  outline: none;
  border: none;
  width: 50%;
  padding: 0.8rem 0;
  font-size: 1rem;
  box-sizing: border-box;
  height: 46px;
}
/* 模态框上部 */
.mtk_min a {
  text-decoration: underline;
  color: #3b7adb;
}
.mtk_min {
  padding: 0.5rem 1.5rem;
  border-radius: 0.5rem 0.5rem 0 0;
  box-shadow: 0px 0px 5px #999;
  font-size: 0.85rem;
}
.mtk_top > div {
  margin: 0;
  padding: 0;
  border: 0;
  vertical-align: baseline;
}
.mtk_top > p {
  text-align: center;
  font-size: 1rem;
}
.mtk_top {
  display: flex;
  flex-direction: column;
  padding: 0.4rem 1.5rem;
  padding-bottom: 1rem;
}
.mtk {
  border-radius: 0.5rem;
  color: #2e2d2d;
  font-size: 0.9rem;
  line-height: 1.3rem;
  background: #fff;
  text-align: left;
  width: 86%;
  position: relative;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  overflow: hidden;
}
/* 背景颜色 */
.reg {
  background: rgba(0, 0, 0, 0.6);
  width: 100%;
  position: fixed;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 9999;
}
/* 注册部分 */
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
  margin-top: 1rem;
}

input {
  background: transparent;
}
.btn {
  border: none;
  outline: none;
  width: 100%;
  border-radius: 5.25rem;
  padding: 0.8rem 0;
  background-image: linear-gradient(90deg, #fab3b3, #ffbcb3 73%, #ffcaba);
  color: #fff;
  margin-top: 2rem;
}
</style>