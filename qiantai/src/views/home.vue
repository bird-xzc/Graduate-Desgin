<template>
  <div class="sitebar">
    <Header />
    <div class="logo">
      <a href="#"><img src="../assets/logo.png"
             alt=""></a>
    </div>
    <!-- 小导航栏部分 -->
    <div class="navbar">
      <ul>
        <li><a href="#">手机</a></li>
        <li><a href="#">配件</a></li>
        <li><a href="#">电视</a></li>
        <li><a href="#">笔记本</a></li>
      </ul>
    </div>

    <!-- 搜索栏部分 -->
    <div class="form">
      <input type="text"
             placeholder="小米9 Pro Redmi Note 8">
      <button><i></i></button>
    </div>
    <div class="center base">
      <!-- 左侧分类区域 -->
      <div class="navleft">
        <ul>
          <li @mouseenter="mouseenter"
              @mouseleave="mouseleave"><a href="#">手机 电话卡<span>></span></a>
            <div class="children"
                 ref="children">
              <ul>
                <li><a href=""><img src="../assets/item-box-1.png"
                         alt="">小米CC9</a></li>
                <li><a href=""><img src="../assets/item-box-2.png"
                         alt="">小米8 青春版</a></li>
                <li><a href=""><img src="../assets/item-box-3.jpg"
                         alt="">Redmi K20 Pro</a></li>
                <li><a href=""><img src="../assets/item-box-4.jpg"
                         alt="">移动4G+专区</a></li>
              </ul>
            </div>
          </li>
          <li><a href="#">电视 盒子<span>></span></a></li>
          <li><a href="#">笔记本 显示器 平板<span>></span></a></li>
          <li><a href="#">家电 插线板<span>></span></a></li>
          <li><a href="#">出行 穿戴<span>></span></a></li>
          <li><a href="#">智能插 路由器<span>></span></a></li>
          <li><a href="#">电源 配件<span>></span></a></li>
          <li><a href="#">健康 儿童<span>></span></a></li>
          <li><a href="#">耳机 音箱<span>></span></a></li>
          <li><a href="#">生活 箱包<span>></span></a></li>
        </ul>
      </div>
      <!-- 轮播图 -->
      <div class="sliding">
      </div>
    </div>
    <div class="content-box base">
      <h2>手机</h2>
      <div class="picture">
        <div class="p_left"></div>
        <div class="p_right">
          <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
        </div>
      </div>
    </div>
    <ServiceBar />
    <Footer />
  </div>
</template>
<script>
import Header from '@/components/header.vue'
import ServiceBar from '@/components/serviceBar.vue'
import Footer from '@/components/footer.vue'
export default {
  components: {
    Header,
    ServiceBar,
    Footer
  },
  methods: {
    mouseenter () {
      this.$refs.children.style.display = 'block'
    },
    mouseleave () {
      this.$refs.children.style.display = 'none'
    }
  }
}
</script>
<style lang='scss'>
.base {
  width: 1227px;
  margin: 0 auto;
}
.sitebar {
  height: 100px;
}
.logo {
  width: 55px;
  height: 55px;
  padding: 22px 0;
}
.logo img {
  display: block;
  position: absolute;
  left: 143px;
  width: 55px;
  height: 55px;
}
.logo a {
  display: block;
  width: 55px;
  height: 55px;
}

.navbar {
  width: 620px;
  height: 50px;
  position: absolute;
  top: 60px;
  left: 565px;
  line-height: 50px;
}
.navbar li {
  float: left;
  font-size: 16px;
  margin-left: 20px;
}
.navbar li a {
  color: #000;
}
.navbar li a:hover {
  color: #ff0000;
}

.form {
  width: 300px;
  height: 48px;
  position: absolute;
  border: 1px solid #e0e0e0;
  top: 60px;
  right: 250px;
}
.form input {
  width: 190px;
  height: 48px;
  border: none;
  float: left;
  font-size: 12px;
  padding-left: 60px;
}
.form button {
  width: 50px;
  height: 48px;
  cursor: pointer; /*鼠标经过的时候变成小手*/
  background-color: #fff;
  border-left: 1px solid #e0e0e0;
  border-right: none;
  border-top: none;
  border-bottom: none;
}
.center {
  height: 460px;
  position: relative;
}
.navleft {
  width: 235px;
  height: 420px;
  background-color: rgba(0, 0, 0, 0.2);
  position: absolute;
  float: left;
  padding: 20px 0;
}
.navleft .children {
  display: none;
  position: absolute;
  width: 1000px;
  height: 460px;
  background-color: white;
  left: 235px;
  top: 0;
}
.navleft .children li {
  float: left;
  width: 250px;
  height: 70px;
  line-height: 70px;
}
.navleft .children li img {
  display: inline-block;
  width: 40px;
  height: 50px;
}
.navleft .children a {
  height: 70px;
  line-height: 70px;
  color: black;
}
.navleft a {
  width: 100%;
  height: 42px;
  line-height: 42px;
  color: #fff;
  float: left;
  font-size: 14px;
  padding: 0 0 0 30px;
  box-sizing: border-box;
}
.navleft a:hover {
  background-color: #ff6700;
}
.navleft .children li a:hover {
  background-color: white;
  color: red;
}
.navleft span {
  font-size: 16px;
  font-weight: bold;
  float: right;
  padding: 0 20px;
}
/* 轮播图 */
.sliding {
  width: 1226px;
  height: 460px;
  cursor: pointer;
  /*鼠标经过的时候变成小手*/
  animation-name: move;
  animation-duration: 20s;
  animation-iteration-count: infinite;
}
@keyframes move {
  0% {
    background-image: url(../assets/slide-1.jpg);
    background-size: cover;
  }

  20% {
    background-image: url(../assets/slide-2.jpg);
    background-size: cover;
  }

  40% {
    background-image: url(../assets/slide-3.jpg);
    background-size: cover;
  }

  60% {
    background-image: url(../assets/slide-4.jpg);
    background-size: cover;
  }

  80% {
    background-image: url(../assets/slide-5.jpg);
    background-size: cover;
  }

  100% {
    background-image: url(../assets/slide-1.jpg);
    background-size: cover;
  }
}

.content-box {
  margin-top: 40px;
  width: 1227px;
  height: 600px;
  background-color: #f5f5f5;
  position: relative;
  padding-bottom: 60px;
}
.picture {
  margin-top: 30px;
  // background-color: blue;
  height: 540px;
}
.picture .p_left {
  width: 240px;
  margin-top: 10px;
  background-color: yellow;
  height: 100%;
}
.picture .p_left:hover {
  box-shadow: 0 0 20px gray;
}
.picture .p_right {
  position: absolute;
  right: 0;
  top: 63px;
  width: 983px;
  height: 540x;
}
.picture .p_right li {
  display: inline-block;
  width: 300px;
  height: 260px;
  margin: 0 10px 0 10px;
  background-color: violet;
}
.picture .p_right li:hover {
  box-shadow: 0 0 20px gray;
}
</style>