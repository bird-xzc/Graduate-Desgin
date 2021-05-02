const bodyParser = require('body-parser');
const express = require('express');
const cors = require('cors')
const app = express();

const userApi = require('./api/userApi.js');

// 解析 application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));
// 解析 application/json
app.use(bodyParser.json());

app.use(cors());

//设置跨域请求
app.all('*', function (req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With , yourHeaderFeild');
	res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	res.header("X-Powered-By", ' 3.2.1')
	res.header("Content-Type", "application/json;charset=utf-8");
	next();
});

app.get('/goods',(req,res) => {
    // 定义SQL语句
    const sqlStr = 'select * from product'
    connection.query(sqlStr,(err,results) => {
        
        if(err) return res.json({err_code:1,message:'获取失败',affectedRows:0})
        res.json(
         new Result({data:results})
        );
        
    })
})
app.use("/api/user",userApi);

app.listen(10520);
console.log("success");