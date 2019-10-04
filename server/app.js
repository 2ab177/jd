//app.js 服务器端项目
//1:下载第三方模块 
//express/express-session/cors/mysql
//2:将第三方模块引入到当前程序中
const express = require("express");
const bodyParser = require('body-parser');
const cors = require("cors");
const jwt=require("./jwt.js");
const cart=require("./routes/cart");
//3:创建数据库连接池
const pool=require('./pool.js');


//4:创建web服务器监听 8080 端口
var server = express();
server.listen(5050);
//使用body-parser中间件
server.use(bodyParser.urlencoded({extended:false}));
//5:处理跨域 cors 
//5.1：配置允许访问程序地址(脚手架)
//     http://127.0.0.1:5050  (ok)
//     http://localhost:5050
//5.2:每请求是否验证true
//要实现手机能够访问地址要加上本机ip地址 查看本机ip地址命令ipconfig/all
server.use(cors({
  origin: ["http://192.168.1.54:8080","http://127.0.0.1:8080", "http://localhost:8080",],
  credentials: true
}))
//session一定要在所有请求之前;
//server.use(session({
//  secret:"128位字符串",
//  resave:true,
//  saveUninitialized:true
//}))
//使用token进行验证
server.use((req, res, next)=>{ 
  if (req.url.startsWith("/cart")) {
    let token = req.headers.token;
    let result = jwt.verifyToken(token);
    // 如果考验通过就next，否则就返回登陆信息不正确
    if(result===undefined){
      res.send({status:403, msg:"未提供证书"})
    }else if (result.name == 'TokenExpiredError') {
      res.send({status: 403, msg: '登录超时，请重新登录'});
    } else if (result.name=="JsonWebTokenError"){
      res.send({status: 403, msg: '证书出错'})
    } else{
      req.user=result;
			console.log(result);
      next();
    }
  } else {
    next();
  }
});
//功能一:完成用户登录
//启动服务器app.js/启动数据库
//打开浏览器
//http://127.0.0.1:8080/login?uname=tom&upwd=123
//http://127.0.0.1:8080/login?uname=tom&upwd=122
//托管静态资源
// server.use(express.static('public'));
server.post("/login", (req, res) => {
  //6.1:接收网页传递数据 用户名和密码
  var u = req.body.uname;
  var p = req.body.upwd;
  var r=req.body.remember;
  console.log(u, p,r);
  //6.2:创建sql
  var sql = "SELECT id FROM jd_login WHERE uname = ? AND upwd = ?";
  //6.3:执行sql语句并且获取返回结果
  pool.query(sql, [u, p], (err, result) => {
    //6.4:判断登录是否成功
    if (err) throw err;
    //6.5:将结果返回网页
    if (result.length == 0) {
      res.send({ code: -1, msg: "用户名或密码有误"})
    } else {
      r === "false" ? res.send({ code: 1, msg: "登录成功", token: jwt.generateToken(result[0]) }) : res.send({ code: 1, msg: "登录成功", token: jwt.generateToken(result[0]), remember: "true"})
    }
  });
})
server.post("/reg", (req, res) => {
  //6.1:接收网页传递数据 用户名和密码
  var u = req.body.uname;
  var p = req.body.upwd;
  //创建查询是否已注册
  var sql='select uname from jd_login where uname=?';
  pool.query(sql,[u],(err,result)=>{
    if (err) throw err;
    console.log(result);
    if(result.length>0){
      res.send({code:-1,msg:'该号码已注册'});
    }else{
      //注册
      var sql = 'INSERT INTO jd_login VALUES(null,?,?)';
      pool.query(sql, [u, p], (err, result)=>{
        if (err) throw err;
        if (result.affectedRows > 0){
          res.send({ code: 1, msg: '注册成功' });
        }
      })
    }
  })
})
server.get('/carousel', (req, res) => {
  var sql = "SELECT cimg FROM jd_carousel";
  pool.query(sql, [], (err, result) => {
    //6:获取返回结果发送客户端
    if (err) throw err;
    res.send(result);
  });
})
server.get('/detail', (req, res) => {
  var lid=req.query.lid;
  var sql = "SELECT smproimg,lid,price,details,title,guige,jianping,xiangping,xiangimg,carimg FROM jd_product where lid=?";
  pool.query(sql, [lid], (err, result) => {
    //6:获取返回结果发送客户端
    if (err) throw err;
    res.send(result);
  });
})
server.get('/mrg', (req, res)=>{
  var sql = "SELECT title,details,mrgimg FROM jd_mrg";
  pool.query(sql, [], (err, result) => {
    //6:获取返回结果发送客户端
    if (err) throw err;
    res.send(result);
  });
})
server.get('/miaosha', (req, res) => {
  var sql = "SELECT mimg,nowprice,oldprice FROM jd_miaosha";
  pool.query(sql, [], (err, result) => {
    //6:获取返回结果发送客户端
    if (err) throw err;
    res.send(result);
  });
})
server.get("/product", (req, res) => {
  //2:接收客户请求数据 
  //  pno 页码   pageSize 页大小
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:如果客户没有请示数据设置默认数据
  //  pno=1     pageSize=4
  if (!pno) {
    pno = 1;
  }
  if (!ps) {
    ps = 4;
  }
  //4:创建sql语句
  var sql = "SELECT lid,title,typeimg,price,smproimg,buytype";
  sql += " FROM jd_product";
  sql += " LIMIT ?,?";
  var offset = (pno - 1) * ps;//起始记录数 ?
  ps = parseInt(ps);      //行数       ?
  //5:发送sql语句
  pool.query(sql, [offset, ps], (err, result) => {
    //6:获取返回结果发送客户端
    if (err) throw err;
    res.send({
      code: 1, msg: "查询成功",
      data: result
    });
  });
})
/*使用路由器来管理路由*/
server.use("/cart",cart);
