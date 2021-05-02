<template>
    <div class="container">
      <img src="../assets/Logo.png" alt="">
      <h2>商城管理系统</h2>  
      <button @click="quite">退出</button>
    </div>  
</template>
<script>
export default {
  methods: {
    quite(){
      this.$router.push("/login")
    }
  },
}
</script>
<style lang="scss" scoped>
.container{
  position: fixed;
  top: 0;
  left: 0;
  background-color: #373d41;
  width: 100%;
  height: 50px;
  z-index: 2;
}
.container img{
  display: inline-block;
  width:50px;
  height: 50px;
}
.container h2{
  display: inline-block;
  margin: 0px;
  position: absolute;
  top:10px;
  left: 50px;
  color: white;
}
.container button {
  width: 80px;
  height: 40px;
  background-color:#909399;
  border-color: #909399;
  color: white;
  position: absolute;
  top: 5px;
  right: 0;
  border-radius: 5px;
}
.container button:hover{
  background-color: #909380;
  cursor: pointer;
}
</style>