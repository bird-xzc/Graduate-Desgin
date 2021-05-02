<template>
  <div class="shortcut">
    <div style="width:100%">
      <ul class="fl">
        <li><a href="#">小米商城</a></li>
        <li class="space"></li>
        <li><a href="#">MIUI</a></li>
        <li class="space"></li>
        <li><a href="#">云服务</a></li>
        <li class="space"></li>
        <li><a href="#">IoT</a></li>
        <li class="space"></li>
        <li><a href="#">金融</a></li>
        <li class="space"></li>
        <li><a href="#">有品</a></li>
        <li class="space"></li>
        <li><a href="#">小爱开发平台</a></li>
        <li class="space"></li>
        <li><a href="#">企业团购</a></li>
        <li class="space"></li>
        <li><a href="#">资质证照</a></li>
        <li class="space"></li>
        <li><a href="#">协议规则</a></li>
        <li class="space"></li>
        <li><a href="#">下载app</a></li>
        <li class="space"></li>
        <li><a href="#">Select Location</a></li>
      </ul>
      <ul class="fr">
        <li><a href="#">登录</a></li>
        <li class="space"></li>
        <li><a href="#">注册</a></li>
        <li class="space"></li>
        <li><a href="#">消息通知 </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <!-- 此处偷工减料了，就直接加空白符了 -->
        </li>
        <div class="shopcar"><a href="#"><i></i>购物车(0)</a></div>
      </ul>
    </div>
  </div>
</template>
<style>
.shortcut {
  height: 40px;
  line-height: 40px;
  background-color: #333333;
  font-size: 12px;
}
ul {
  list-style: none;
}
a {
  text-decoration: none;
  color: #b0b0b0;
}
a:hover {
  color: #fff;
}
.shortcut li {
  float: left;
}
.fl {
  float: left;
}
.fr {
  float: right;
}
.space {
  /* 小竖线 */
  width: 1px;
  height: 12px;
  background-color: #424242;
  margin: 15px 7px 0; /* 上是15 左=右是12 下是0 */
}

.shopcar {
  width: 120px;
  background-color: #424242;
  float: right;
  text-align: center;
}
</style>