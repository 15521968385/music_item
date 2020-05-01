import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

import '@/assets/css/base.css'
import 'aplayer/dist/APlayer.min.css';


Vue.config.productionTip = false

// 使得发送axios请求为直接用this.$http
Vue.prototype.$http = axios
Vue.prototype.$http.defaults.baseURL = 'http://xjt51921.qicp.vip/'

import 'vant/lib/index.css';
import { NavBar,Icon,Tabbar,TabbarItem ,Swipe,SwipeItem,Lazyload,Image as VanImage} from 'vant';
Vue.use(NavBar);
Vue.use(Icon);
Vue.use(Tabbar);
Vue.use(TabbarItem);
Vue.use(Swipe);
Vue.use(SwipeItem);
Vue.use(Lazyload, {
  lazyComponent: true,
});
Vue.use(VanImage);



new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
