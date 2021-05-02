<template>
    <div class="container" ref="tab">
        <div class = "content">
            <div @click = "show" class = "show"> |||</div>
            <ul>
                <div class = "user" v-show = "isShow"><router-link tag = 'div' to="/user">用户管理</router-link></div>
                <div class = "goods" v-show = "isShow"><router-link tag = 'div' to="/goods">商品管理</router-link></div>
                <div class = "order" v-show = "isShow"><router-link tag = 'div' to="/orders">订单管理</router-link></div>
            </ul>
        </div>
    </div>    
</template>
<script>
export default {
    data(){
        return{
            isShow: true
        }
    },
    methods: {
        show(){
            this.$emit("tabshow")
            this.isShow = !this.isShow
            if(this.isShow === false){
                this.$refs.tab.style.width = "50px"
            }else{
                this.$refs.tab.style.width = "200px"
            }
        }
    },
}
</script>
<style lang="scss" scoped>
.container{
  position: relative;
  top: 50px;
  left: 0;
  background-color: #373d41;
  width: 200px;
  height: 680px;
}
.container .content .show{
    background-color: #4a5064;
    font-size: 10px;
    line-height: 24px;
    color: #fff;
    text-align: center;
    letter-spacing: 0.2em;
    cursor: pointer;
}
.container .content{
    background-color: #333744;
}
.container .content ul{
    list-style: none;
    margin: 0 0 0 -50px;
}
.container .content .user, .goods, .order{
    width: 100%;
    height: 60px;
    background-color:#373d41;
    border-color: #373d41;
    text-align: center;
    line-height: 60px;
    color: #fff;
}
.container .content .user:hover, .goods:hover, .order:hover{
    background-color: #333744;
    cursor: pointer;
}
</style>