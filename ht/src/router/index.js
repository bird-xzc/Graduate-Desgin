import Vue from 'vue'
import VueRouter from 'vue-router'
import loginRouter from './login'
import ordersRouter from './orders'
import goodsRouter from './goods'
import userRouter from './user'
import registerRouter from './register'
Vue.config.devtools = true;
Vue.use(VueRouter)

const routes = [
  loginRouter,
  ordersRouter,
  goodsRouter,
  userRouter,
  registerRouter,
  {
    path : '/',
    redirect : "/login"
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
