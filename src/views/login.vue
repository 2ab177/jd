<template>
  <div class="login">
    <div class="jddl">
      <span class="back"></span>
      <p>京东登录</p>
    </div>
    <input class="uname" type="text" placeholder="用户名/邮箱/已验证手机">
    <div class="pwd">
      <input type="password" placeholder="请输入密码">
      <a href="">忘记密码</a>
    </div>
    <a href="javascript:;" class="btn">登录</a>
    <a href="javascript:;" class="btn">一键登录</a>
    <div class="dxsj">
      <a href="javascript:;">短信验证码登录</a>
      <a href="javascript:;">手机快速注册</a>
    </div>
    <div class="qqlogin">
      <span>其他登录方式</span>
      <img src="../assets/icon/qq.png" alt="">
      <p>QQ</p>
      <p>登录即代表您同意<a href="javascript:;">京东隐私政策</a></p>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  a{    text-decoration: none;}
  .login{
    text-align: center;
    padding: 0 5%;
  }
  .jddl{
    position: relative;
  }
  .jddl>p{
    font-size: 1.1rem;
  }
  .back{
    position: absolute;
    top:0;
    left: 0;
    width: 1.5rem;
    height: 1.5rem;
    background: url('../assets/back.png') no-repeat;
    background-size: 120%;
  }
  .uname{
    box-sizing: border-box;
    width: 100%;
    border: none;
    outline: none;
    padding:1rem 0;
    border-bottom:1px solid #efefef;
    margin-top: 2rem;
  }
  .pwd{
    display: flex;
    justify-content: space-between;
    align-items: center;
    border:1px solid #efefef;
    border-width: 0 0 1px 0;
    margin: 2rem 0;
  }
  .pwd>input{
    border: none;
    outline: none;
    padding:1rem 0;
    border-bottom:1px solid #efefef;
    width: 65%;
    border: none
  }
  .pwd>a{
    display: block;
    padding:0.2rem 0 0.2rem 1rem;
    font-size: 0.9rem;
    text-decoration: none;
    color: #000;
    border-left: 1px solid #ccc;
  }
  .btn{
    display: block;
    width: 100%;
    border-radius: 5.25rem;
    padding: 0.8rem 0;
    background-image: linear-gradient(90deg,#fab3b3,#ffbcb3 73%,#ffcaba);
    color: #fff;
    margin-bottom: .6rem;
  }
  .btn+.btn{
    border: 1px solid #ff2000;
    background: transparent;
    color: #f23030;
  }
  .dxsj{
    display: flex;
    justify-content: space-between;
    margin-top: 2rem;
  }
  .dxsj>a{
    color: #999;
    font-size: .9rem;
  }
  .qqlogin{
    text-align: center;
    margin-top: 3rem;
    padding-top: 2rem;
    border-top: 1px solid #efefef;
    position: relative;
  }
  .qqlogin>img{
    width: 48px;
    height: 48px;
  }
  .qqlogin>img+p{
    margin: 0;
    color: #999;
  }
  .qqlogin>img+p+p{
    margin-top: 2rem;
    font-size: .9rem;
    color: #bebebe;
  }
  .qqlogin>img+p+p>a{
    color: #409eff;
  }
  .qqlogin>span{
    display: block;
    font-size: .9rem;
    color: #ccc;
    position: absolute;
    left: 50%;
    top: -0.6rem;
    margin-left: -3.5rem;
    z-index: 999;
    padding:0 .8rem;
    background: #fff;
  }
</style>