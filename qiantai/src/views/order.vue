<template>
  <div class="container">
    <div class="header">
      <img src="../assets/logo.png"
           alt="">
      <h2>订单确认</h2><span>请认真填写收货地址</span>
      <div class="user_name">admin</div>
    </div>
    <div class="line"></div>
    <div class="adress">

    </div>
  </div>
</template>
<script>
export default {

}
</script>
<style>
.container .header {
  background-color: white;
  position: relative;
  height: 100px;
  line-height: 60px;
}
.container .header img {
  display: inline-block;
  width: 60px;
  height: 50px;
  margin: 20px 0 0 140px;
}
.container .header h2 {
  display: inline-block;
  position: absolute;
  top: 20px;
  margin-left: 100px;
  font-size: 30px;
}
.container .header span {
  display: inline-block;
  position: absolute;
  top: 20px;
  margin-left: 300px;
  color: gray;
}
.container .header .user_name {
  float: right;
  margin-right: 100px;
}
.line {
  border-top: 2px solid #ec4848;
}
</style>