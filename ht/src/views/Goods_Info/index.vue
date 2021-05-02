<template>
    <div class="container">
        <Header/>
        <Tabbar @tabshow = 'tabShow'/>
        <div class="content" ref="user">
            <Input style = "width:30%;margin-bottom:20px" size = 'large' v-model="value" @on-search="search" search enter-button="搜索" placeholder="请输入搜索内容" />
            <Button style = "position:absolute;top:20px;left:550px;width: 150px;height:40px" @click="addUser" :size="buttonSize" type="primary">添加商品</Button>
           <Table style="width:1253px" border :columns="columns12" :data="pageData">
                <template slot-scope="{ row }" slot="name">
                    <strong>{{ row.name }}</strong>
                </template>
                <template slot-scope="{ index }" slot="action">
                    <Button type="primary" size="small" style="margin-right: 5px" @click="changeInfo(index)">修改</Button>
                    <Button type="error" size="small" @click="remove(index)">删除</Button>
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
            title="添加商品"
            v-model="value3"
            width="720"
            :mask-closable="false"
            :styles="styles"
        >
            <Form :model="formData">
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="Name" label-position="top">
                            <Input v-model="formData.name" placeholder="please enter goods name" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="price" label-position="top">
                            <Input v-model="formData.price" placeholder="please enter goods price" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="isHot" label-position="top">
                            <Input v-model="formData.hot" placeholder="please enter '0' is hot  '1' is not" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="isHot" label-position="top">
                            <Input v-model="formData.date" placeholder="please enter date like '2001-01-01'" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="img adress" label-position="top">
                            <Input v-model="formData.img" placeholder="please enter img net adress" />
                        </FormItem>
                    </Col>
                </Row>
            </Form>
            <div class="demo-drawer-footer">
                <Button style="margin-right: 8px" @click="value3 = false">Cancel</Button>
                <Button type="primary" @click="submit_add">Submit</Button>
            </div>
        </Drawer> 
        <Drawer
            title="修改商品信息"
            v-model="value4"
            width="720"
            :mask-closable="false"
            :styles="styles"
        >
            <Form :model="formData">
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="Name" label-position="top">
                            <Input v-model="formData.name" placeholder="please enter  name" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="price" label-position="top">
                            <Input v-model="formData.price" placeholder="please enter  price" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="isHot" label-position="top">
                            <Input v-model="formData.date" placeholder="please enter date like '2001-01-01'" />
                        </FormItem>
                    </Col>
                </Row>
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="isHot" label-position="top">
                            <Input v-model="formData.hot"  placeholder="please enter '0' is hot  '1' is not" />
                        </FormItem>
                    </Col>
                </Row>  
                <Row :gutter="32">
                    <Col span="24">
                        <FormItem label="img adress" label-position="top">
                            <Input v-model="formData.img"  placeholder="please enter img net adress" />
                        </FormItem>
                    </Col>
                </Row>
            </Form>
            <div class="demo-drawer-footer">
                <Button style="margin-right: 8px" @click="value4 = false">Cancel</Button>
                <Button type="primary" @click="updataInfo">Submit</Button>
            </div>
        </Drawer> 
        </div>
    </div>
</template>
<script>
import Header from '@/components/header.vue'
import Tabbar from '@/components/tabbar.vue'
import {formatTime} from '../../tools/format.js'
export default {
    components:{
        Header,
        Tabbar,
    },
    data(){
        return{
            value:'',
            isShow: true,
            value3:false,
            value4:false,
            index:'',
            page: 1,
            pageData: [],
            styles: {
                    height: 'calc(100% - 55px)',
                    overflow: 'auto',
                    paddingBottom: '53px',
                    position: 'static'
                },
                formData: {
                    name: '',
                    price: '',
                    hot: '',
                    date:'',
                    img:''
                },
            columns12: [
                    {
                        title: 'Name',
                        width: 200,
                        key: 'pname'
                    },
                    {
                        title: 'price',
                        width: 300,
                        key: 'shop_price'
                    },
                    {
                        title: 'date',
                        width: 300,
                        key: 'pdate'
                    },
                    {
                        title: 'hot',
                        width: 300,
                        key: 'is_hot'
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
        this.getGoods()
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
        remove(index){
            let r = confirm('确定删除吗？')
            if(r == true){
                this.axios({
                    method:'post',
                    url:'http://127.0.0.1:10520/api/user/deleteGoods',
                    data:{uid: this.pageData[index].pid}
                }).then((res)=>{
                    // console.log(res)
                    alert('成功删除')
                    this.$router.go(0)
                })
            }else{}
        },
        submit_add(){
            this.axios({
                method:'post',
                url: 'http://127.0.0.1:10520/api/user/addgoods',
                data:this.formData
            }).then((res)=>{
                console.log(res.data)
                if(res.data == 0){
                    alert('添加成功')
                    this.getUser()
                }
                if(res.data == -1){
                    alert('商品已存在')
                }
            })
        },
        changeInfo(index){
            this.index = index
            this.value4=true;
            this.formData={ name: '',
                    price: '',
                    hot: '',
                    date:'',
                    img:''}
        },
        updataInfo(){
            let data= this.formData
            data.pid = this.pageData[this.index].pid
            if(this.formData.pname !=''&&this.formData.price !=''&&this.formData.hot !=''&&this.formData.img !=''&&this.formData.date !=''){
                this.axios({
                    method:'post',
                    url: 'http://127.0.0.1:10520/api/user/updataProduct',
                    data:data
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
        getGoods(){
             this.axios({
                method:'get',
				url: 'http://127.0.0.1:10520/api/user/goods',
            }).then((res)=> {
                console.log(res.data)
                this.data6 =[]
                let data = res.data.data
                data.forEach(item => {
                    item.pdate=formatTime(item.pdate)
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