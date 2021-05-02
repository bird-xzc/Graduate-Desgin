const models = require('../db/db');
const express = require('express');
const router = express.Router();
const mysql = require('mysql');
const $sql = require('../db/sqlMap');

const conn = mysql.createConnection(models.mysql);
conn.connect();

//获取用户列表
router.get('/userInfo',(req,res) => {
    // 定义SQL语句
    const sqlStr = 'select * from user'
   conn.query(sqlStr,(err,results) => {
        
        if(err) return res.json({err_code:1,message:'获取失败',affectedRows:0})
        res.json(
         new Result({data:results})
        );
        
    })
})

//删除用户
router.post('/deleteUser',(req,res) => {
    // 定义SQL语句
	console.log(req.body)
    const sqlStr = `delete from user where uid ='${req.body.uid}'`
	console.log(sqlStr)
   conn.query(sqlStr,(err,results) => {
        if(err){
			console.log(err)
		}else{
			res.send('1') //成功删除
		}
    })
})

//获取订单列表
router.get('/orders',(req,res) => {
    // 定义SQL语句
    const sqlStr = 'select * from orders'
   conn.query(sqlStr,(err,results) => {
        
        if(err) return res.json({err_code:1,message:'获取失败',affectedRows:0})
        res.json(
         new Result({data:results})
        );
        
    })
})


//修改订单地址
router.post('/updataOrders', (req, res) => {
	const params = req.body;
	const sel_sql = `update orders set u_address='${params.adress}' where id='${params.id}'`;
	console.log(sel_sql);
	
	conn.query(sel_sql,(error, results) => {
		if(error) {
			console.log(error);
		}else {
			console.log(results)
			res.send('1')  //更改成功
		}
	});
});


//获取商品列表
router.get('/goods',(req,res) => {
    // 定义SQL语句
    const sqlStr = 'select * from product'
   conn.query(sqlStr,(err,results) => {
        
        if(err) return res.json({err_code:1,message:'获取失败',affectedRows:0})
        res.json(
         new Result({data:results})
        );
        
    })
})

//添加商品
router.post('/addgoods', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.product.select + " where pname = '" + params.name + "'";
	const add_sql = $sql.product.add;
	console.log(sel_sql);
	
	conn.query(sel_sql, params.name, (error, results) => {
		if(error) {
			console.log(error);
		}
		if (results.length != 0 && params.name == results[0].name) {
			res.send("-1");   // -1 表示商品已经存在
		} else {
			conn.query(add_sql, [params.name,params.price,params.hot,params.date,params.img], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					console.log(rst);
					res.send("0"); // 0 表示商品添加成功
				}
			});
		}
	});
});

//删除商品
router.post('/deleteGoods',(req,res) => {
    // 定义SQL语句
	console.log(req.body)
    const sqlStr = `delete from product where pid ='${req.body.pid}'`
	console.log(sqlStr)
   conn.query(sqlStr,(err,results) => {
        if(err){
			console.log(err)
		}else{
			res.send('1') //成功删除
		}
    })
})


//修改商品信息
router.post('/updataProduct', (req, res) => {
	const params = req.body;
	const sel_sql = `update product set pname='${params.name}',shop_price='${params.price}',pdate='${params.date}',is_hot='${params.hot}',img='${params.img}' where pid='${params.pid}'`;
	console.log(sel_sql);
	
	conn.query(sel_sql,(error, results) => {
		if(error) {
			console.log(error);
		}else {
			console.log(results)
			res.send('1')  //更改成功
		}
	});
});


//添加用户
router.post('/adduser', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.user.select + " where name = '" + params.name + "'";
	const add_sql = $sql.user.add;
	console.log(sel_sql);
	
	conn.query(sel_sql, params.name, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results.length != 0 && params.name == results[0].name) {
			res.send("-1");   // -1 表示用户名已经存在
		} else {
			conn.query(add_sql, [params.name,params.phone,params.address, params.password], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					console.log(rst);
					res.send("0"); // 0 表示用户创建成功
				}
			});
		}
	});
});

//修改用户
router.post('/updataUser', (req, res) => {
	const params = req.body;
	const sel_sql = `update user set name='${params.name}',password='${params.password}',address='${params.address}',phone='${params.phone}' where uid='${params.uid}'`;
	console.log(sel_sql);
	
	conn.query(sel_sql,(error, results) => {
		if(error) {
			console.log(error);
		}else {
			console.log(results)
			res.send('1')  //更改成功
		}
	});
});

// 登录接口
router.post('/login',(req,res)=>{
	const user = req.body;
	const sel_name = $sql.maneger.select + " where name = '" + user.name + "'";
	console.log(sel_name);
	conn.query(sel_name, user.name, (error, results)=>{
		if (error) {
			throw error;
		}
		console.log(results)
		if (results[0] === undefined) {
			res.send("-1");  // -1 表示查询不到，用户不存在，即邮箱填写错误
		} else{
			if (results[0].name == user.name && results[0].password == user.password) {
				res.send("0");  // 0 表示用户存在并且邮箱密码正确
			} else{
				res.send("1");  // 1 表示用户存在，但密码不正确
			}
		}
	})
});

// 注册接口
router.post('/add', (req, res) => {
	const params = req.body;
	const sel_sql = $sql.maneger.select + " where name = '" + params.name + "'";
	const add_sql = $sql.maneger.add;
	console.log(sel_sql);
	
	conn.query(sel_sql, params.name, (error, results) => {
		if(error) {
			console.log(err);
		}
		if (results.length != 0 && params.name == results[0].name) {
			res.send("-1");   // -1 表示用户名已经存在
		} else {
			conn.query(add_sql, [params.name, params.password], (err, rst) => {
				if (err) {
					console.log(err);
				} else{
					console.log(rst);
					res.send("0"); // 0 表示用户创建成功
				}
			});
		}
	});
});


function Result({code=1,msg='ok',data={}}){
    this.code=code;
    this.msg=msg;
    this.data=data;
}
module.exports = router;