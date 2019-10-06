const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
//#此功能先行条件先登录
//1:接收客户端请求 /addcart GET
//http://127.0.0.1:8080/login?uname=tom&upwd=123
//http://127.0.0.1:8080/addcart?lid=1&lname=kk&price=9
router.get("/addcart", (req, res) => {
  //3:获取客户端数据???小心处理
  // lid 商品编号
  // price 商品价格
  // lname 商品名称
	var uid=req.user.id;
  var lid = req.query.lid;
  var price = req.query.price;
  var title = req.query.title;
  var simg = req.query.simg;
  //console.log(lid + ":" + price + ":" + lname)
  //4:创建查询sql:当前用户是否购买此商品
  var sql ="select id from jd_cart where uid=? and lid=?"
  //5:执行sql语句
  pool.query(sql,[uid,lid],(err,result)=>{
    if(err) throw err;
    if(result.length==0){
      var sql = `insert into jd_cart values(null,${lid},${price},1,'${title}','${simg}',${uid},false)`;
    }else{
      var sql =`update jd_cart set count=count+1 where uid=${uid} and lid=${lid}`;
    }
    pool.query(sql,(err,result)=>{
      if(err)throw err;
      if(result.affectedRows>0){
        res.send({code:1,msg:"商品添加成功"});
      }else{
        res.send({code:-2,msg:"添加失败"});
      }
    })
  })
  //6:在回调函数中判断下一步操作
  // 没购买过此商品 添加
  // 己购买过此商品 更新
  //7:执行sql获取返回结果
})
router.get("/carts",(req,res)=>{
	var uid=req.user.id;
  var sql ="select id,price,title,count,simg,ischecked from jd_cart where uid=?";
  pool.query(sql,[uid],(err,result)=>{
    if(err) throw err;
    res.send({ code: 1, msg: "查询成功", data: result });
  })
})
//功能五:删除购物车表中指定的数据
//1获取客户端发送数据id
//2创建sql语句
//3执行sql语句
//4获取服务器获取结果判断删除是否成功
router.get("/delitem",(req,res)=>{
  var id=req.query.id;
  var sql ="delete from jd_cart where id=?";
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({code:-1,msg:"删除失败"});
    }
  })
});
//功能六：删除购物车中的多个商品
//1.获取参数 id=1，2，3
//2.创建sql语句
//3.执行sql语句
//4.获取服务器返回结果
//5.将结果返回客户端
router.get("/delitems",(req,res)=>{
  var id=req.query.id;
  var sql = `delete from jd_cart where id in (${id})`;
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({ code: -1, msg: "删除失败" });
    }
  })
})
module.exports=router;
//功能七：加减号,输入数字修改购物车
router.get("/changec", (req, res) => {
  var id = req.query.id;
  var c=req.query.count;
  var sql = `update jd_cart set count=${c} where id=${id}`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    if (result.affectedRows > 0) {
      res.send({ code: 1, msg: "修改成功" });
    } else {
      res.send({ code: -1, msg: "修改失败" });
    }
  })
})