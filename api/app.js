const express = require('express');
const mysql = require('mysql');

const app = express();

//跨域处理
app.all('*', function(req, res, next) {
    // console.log(req.method);
    res.header("Access-Control-Allow-Origin", "*");
    res.header('Access-Control-Allow-Headers', 'Content-type');
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS,PATCH");
    res.header('Access-Control-Max-Age',1728000);//预请求缓存20天
    next();  
});

//数据库配置
const db = mysql.createConnection({
    host:'localhost',
    port:'3306',
    user:'root',
    password:'root',
    database:'music'
})

//连接数据库
db.connect(err=>{
    if(err) throw err;
    console.log('mysql connected');
})

//  查询所有音乐
app.get('/getallmusic',(req,res)=>{
    let sql = `select * from music`;
    db.query(sql,(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send(result)
    })
 })

//  获取轮播图
app.get('/getbanner',(req,res)=>{
    let sql = `select * from banner`;
    db.query(sql,(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send(result)
    })
 })

//  获取分类导航数据
app.get('/getclass',(req,res)=>{
    let sql = `select * from class`;
    db.query(sql,(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send(result)
    })
 })

//  根据分类获取音乐
app.get('/getclassmusic/:classid',(req,res)=>{
    let sql = `select * from music where class_id = ${req.params.classid}`;
    db.query(sql,(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send(result)
    })
 })

//监听
app.listen('2000',()=>{
    console.log('server started on port 2000')
})