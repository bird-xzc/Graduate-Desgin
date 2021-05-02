import Vue from 'vue'
import VueRouter from 'vue-router'
import homeRouter from './home'
import cartRouter from './cart'
import orderRouter from './order'
Vue.config.devtools = true;
Vue.use(VueRouter)

const routes = [
  homeRouter,
  cartRouter,
  orderRouter,
  {
    path: '/',
    redirect: "/home"
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
