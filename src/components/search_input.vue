<template>
  <div>
    <div class="search_top" :style="nborder?'border:none':''">
      <span @click="back" class="back"></span>
      <input v-model="kw" placeholder="百雀羚套装" type="text">
      <button @click="search">搜索</button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      kw:''
    }
  },
  props:['nborder'],
  methods: {
    back(){
      this.$router.go(-1);
    },
    search(){
      if(this.kw&&this.kw!=this.$route.params.kw){
        this.$router.push("/products"+this.kw);
      }else if(!this.kw){
        this.Toast('请输入要查找的内容');
      }else{
        return
      }
    }
  },
  created(){
    this.kw=this.$route.params.kw;
  },
  watch:{
    $route(){
      this.kw=this.$route.params.kw;
    }
  }
}
</script>
<style scoped>
 /* 上方搜索框 */
  .search_top button{
    outline: none;
    border: none;
    background: #e93b3d;
    color: #fff;
    font-size: .9rem;
    border-radius: .2rem;
    padding: .3rem ;
    margin: 0 .7rem;
  }
  .search_top{
    background: #fff;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    border-bottom: 1px solid #e5e5e5;
  }
  .search_top>input{
    background: url('../assets/search.png') #f7f7f7 no-repeat;
    flex: 1;
    height: 30px;
    outline: none;
    border: none;
    border-radius: 15px;
    background-size: 18px 18px;
    background-position: 16px center;
    margin-top: .3rem ;
    margin-bottom: 5px;
    padding-left: 50px;
    font-size: .7rem;
  }
  .back{
    display: block;
    height: 20px;
    width: 20px;
    background: url('../assets/back.png');
    background-size: 120%;
    margin: 0 .5rem 0 1rem;
  }
</style>