var sqlMap = {
    maneger: {
        add: 'insert into maneger (name, password) values (?,?)',
        select: 'select * from maneger'
    },
    user:{
        select: 'select * from user',
        add: 'insert into user (name, phone,address,password) values (?,?,?,?)',
        delete:'delete from user'
    },
    product:{
        select: 'select * from product',
        add: 'insert into product (pname, shop_price,is_hot,pdate,img) values (?,?,?,?,?)',
        delete:'delete from product'
    },
    orders:{
        select: 'select * from orders',
    }
}

module.exports = sqlMap;