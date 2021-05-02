<template>
    <div class="container">
        <Header/>
        <Tabbar @tabshow = 'tabShow'/>
        <div class="content" ref="user">
            <Input style = "width:30%;margin-bottom:20px" size = 'large' v-model="value" @on-search="search" search enter-button="搜索" placeholder="请输入搜索内容" />
           <Table style="width:1253px" border :columns="columns12" :data="pageData">
                <template slot-scope="{ row }" slot="name">
                    <strong>{{ row.name }}</strong>
                </template>
                <template slot-scope="{ index }" slot="action">
                    <Button type="primary" size="small" style="margin-right: 5px" @click="changeInfo(index)">修改</Button>
                </template>
                <Page
                    :total="data6.length"
                    :current="page"
                    :page-size="5"
                    show-total
                    @on-change="handlerPage"
                    slot="footer"
                    style="text-align: left"
                />
            </Table>
            <Drawer
            title="Create"
            v-model="value3"
            width="720"
            :mask-closable="false"
            :styles="styles"
        >
            <Form :model="formData">
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="address" label-position="top">
                            <Input v-model="formData.adress" placeholder="please enter adress" />
                        </FormItem>
                    </Col>
                </Row>  
            </Form>
            <div class="demo-drawer-footer">
                <Button style="margin-right: 8px" @click="value3 = false">Cancel</Button>
                <Button type="primary" @click="updataInfo">Submit</Button>
            </div>
        </Drawer> 
        </div>
    </div>
</template>
<script>
import Header from '@/components/header.vue'
import Tabbar from '@/components/tabbar.vue'
export default {
    components:{
        Header,
        Tabbar,
    },
    data(){
        return{
            index:'',
            value:'',
            isShow: true,
            value3:false,
            page: 1,
            pageData: [],
            styles: {
                    height: 'calc(100% - 55px)',
                    overflow: 'auto',
                    paddingBottom: '53px',
                    position: 'static'
                },
                formData: {
                    uname:'',
                    price:'',
                    pay:'',
                    send:'',
                    adress:'',
                    date:''
                },
            columns12: [
                    {
                        title: 'uname',
                        width: 200,
                        key: 'uname'
                    },
                    {
                        title: 'price',
                        width: 200,
                        key: 'price'
                    },
                    {
                        title: 'pay',
                        width: 200,
                        key: 'pay'
                    },
                    {
                        title: 'send',
                        width: 200,
                        key: 'send'
                    }, {
                        title: 'date',
                        width: 300,
                        key: 'date'
                    },
                    {
                        title: 'Action',
                        slot: 'action',
                        width: 150,
                        align: 'center'
                    }
                ],
                data6: [
                    
                ]
        }
    },
    mounted() {
        this.getOrders()
    },
    methods: {
        search(){
            let _this = this
            if(this.value==''){
                this.$router.go(0)
            }else{
                this.data6.forEach((item)=>{
                    if(this.value == item.pname){
                        _this.pageData = []
                        _this.pageData.push(item)
                    }
                })
            }
        },
        changeInfo(index){
            this.index = index
            this.value3=true;
        },
        updataInfo(){
            let data= this.formData.adress
            // data.id = this.pageData[this.index].id
            console.log(data)
            console.log(this.pageData[this.index].Id)
            let _this = this
            if(this.formData.adrss!=''){
                this.axios({
                    method:'post',
                    url: 'http://127.0.0.1:10520/api/user/updataOrders',
                    data:{
                        id:_this.pageData[this.index].Id,
                        adress:data
                    }
                }).then((res)=>{
                    if(res.data == 1){
                        alert('修改成功')
                    }
                    this.$router.go(0)
                })
            }
        },
        tabShow(){
            this.isShow = !this.isShow
            if(this.isShow == true){
                this.$refs.user.style.left = '200px'
            }else{
                this.$refs.user.style.left = '50px'
            }
        },
        addUser(){
            this.value3=true;
            console.log(111)
        },
        getOrders(){
             this.axios({
                method:'get',
				url: 'http://127.0.0.1:10520/api/user/orders',
            }).then((res)=> {
                console.log(res.data)
                this.data6 =[]
                let data = res.data.data
                data.forEach(item => {
                    if(item.pay===1){
                        item.pay='已付款'
                    }else{
                        item.pay='未付款'
                    }
                     if(item.send===1){
                        item.send='已发货'
                    }else{
                        item.send='未发货'
                    }
                    this.data6.push(item)
                });
                 this.pageData = this.data6.slice(0, 5);
                 console.log(this.pageData)
            })
        },
        handlerPage(page) {
            this.changeData(page);
            console.log(page)
        },
        changeData(page) {
            this.page = page;
            if (this.data6.length > 2) {
                this.pageData = this.data6.slice((page - 1) * 5, page * 5);
            } else {
                this.pageData = this.data6;
            }
        }
    },
}
</script>
<style lang="scss" scoped>
.container .content{
    position: absolute;
    top: 50px;
    left: 200px;
    width: 85%;
    height: 70%;
    padding: 20px;
}
.demo-drawer-footer{
        width: 100%;
        position: absolute;
        bottom: 0;
        left: 0;
        border-top: 1px solid #e8e8e8;
        padding: 10px 16px;
        text-align: right;
        background: #fff;
    }
</style>