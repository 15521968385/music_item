import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

const My = () => import('@/views/my/My');
const Faxian = () => import('@/views/faxian/Faxian');
const Yuncun = () => import('@/views/yuncun/Yuncun');
const Mv = () => import('@/views/mv/Mv');
const ClassView = () => import('@/views/classview/ClassView')
const routes = [
  {
    path:'',
    redirect:'/faxian'
  },
  {
    path:'/my',
    component:My,
  },
  {
    path:'/faxian',
    component:Faxian,
    
  },
  {
    path:'/yuncun',
    component:Yuncun,
  },
  {
    path:'/mv',
    component:Mv,
  },
  {
    path:'/faxian/:classid',
    component:ClassView
  }

]

const router = new VueRouter({
  mode: 'history',
  routes
})

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location, onResolve, onReject) {
  if (onResolve || onReject) return originalPush.call(this, location, onResolve, onReject)
  return originalPush.call(this, location).catch(err => err)

}

export default router
