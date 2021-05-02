<template>
    <div id='body'>
        <div id="bigBox">
                <h1>LOGIN</h1>
                <div class="inputBox">
                    <div class="inputText">
                        <span class="iconfont icon-nickname"></span>
                        <input type="text" placeholder="Username"  v-model="form.username"/>
                    </div>
                    <div class="inputText">
                        <span class="iconfont icon-visible"></span>
                        <input type="password" placeholder="Password" v-model="form.userpwd"/>
                    </div>
                </div>
                <input class="loginButton" type="button" value="Login" @click="login"/>
                <input class="loginButton" type="button" value="Register" @click="handleclick"/>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            isLogin:false,
				emailError: false,
				passwordError: false,
				existed: false,
				form:{
					username:'',
					useremail:'',
					userpwd:''
				}
        }
    },
    methods: {
        handleclick(){
            this.$router.push('/register')
        },
        login() {
				const self = this;
				if (self.form.username != "" && self.form.userpwd != "") {
					self.axios({
						method:'post',
						url: 'http://127.0.0.1:10520/api/user/login',
						data: {
							name: self.form.username,
							password: self.form.userpwd
						}
					})
					.then( res => {
                        console.log(res)
						switch(res.data){
							case 0: 
								alert("登陆成功！");
                                self.$router.push('/user')
								break;
							case -1:
								alert("请检查用户名或者密码");
								this.emailError = true;
								break;
							case 1:
								alert("请检查用户名或者密码");
								this.passwordError = true;
								break;
						}
					})
					.catch( err => {
						console.log(err);
					})
				} else{
					alert("填写不能为空！");
				}
			},
			
    },
}
</script>
<style lang="scss" scoped>
#body{
    width: 100%;
    height: 50rem;
    position: relative;
    overflow: hidden;
}
#body::before
{
    content: '';
	margin: 0;
	padding: 0;
	background-image: url(../../../public/Login/img/bgimg.jpg);	/* 背景图片 */
	background-repeat: no-repeat;	/* 背景图片不重复 */
    background-size: cover;
    height: 100%;
    width: 100%;
    position: absolute;
    z-index: -1;
    filter: blur(7px);
}
#bigBox
{
	margin: 0 auto;	/* login框剧中 */
	margin-top: 200px; /* login框与顶部的距离 */
	padding: 20px 50px;	/* login框内部的距离(内部与输入框和按钮的距离) */
	background-color: #00000090;	/* login框背景颜色和透明度 */
	width: 400px;
	height: 300px;
	border-radius: 10px;	/* 圆角边 */
	text-align: center;	/* 框内所有内容剧中 */
}

#bigBox h1
{
	color: white;	/* LOGIN字体颜色 */
}

#bigBox .inputBox
{
	margin-top: 50px;	/* 输入框顶部与LOGIN标题的间距 */
}

#bigBox .inputBox .inputText
{
	margin-top: 20px;	/* 输入框之间的距离 */
}

#bigBox .inputBox .inputText span
{
	color: white;	/* icon颜色 */
}

#bigBox .inputBox .inputText input
{
	border: 0;	/* 删除输入框边框 */
	padding: 10px 10px;	/* 输入框内的间距 */
	border-bottom: 1px solid white;	/* 输入框白色下划线 */
	background-color: #00000000;	/* 输入框透明 */
	color: white;	/* 输入字体的颜色 */
}

#bigBox .loginButton
{
	margin-top: 30px;	/* 按钮顶部与输入框的距离 */
    margin-left: 10px;
	width: 100px;
	height: 25px;
	color: white;	/* 按钮字体颜色 */
	border: 0; /* 删除按钮边框 */
	border-radius: 20px;	/* 按钮圆角边 */
	background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%, #b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);	/* 按钮颜色 */
}
</style>