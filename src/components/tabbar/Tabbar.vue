<template>
  <div id="tabbar">
    <van-nav-bar left-arrow>
      <template #left>
        <van-icon name="service" size="20" color="#fff" />
      </template>
      <template #title>
        <div class="tabbar_box">
          <div :class="$route.path.indexOf(item.path)!=-1?'alive_tab':''" v-for="(item,index) in tabbar" :key="index" :path="item.path" @click="tiaozhuan(item.path)">{{item.text}}</div>
          
        </div>
      </template>
      <template #right>
        <van-icon name="search" size="20" color="#fff" />
      </template>
    </van-nav-bar>

    
  </div>
</template>
<script>
export default {
  name: "Tabbar",
  data() {
    return {
      tabbar:[
        {
          path:'/my',
          text:'我的'
        },
        {
          path:'/faxian',
          text:'发现'
        },
        {
          path:'/yuncun',
          text:'云村'
        },
        {
          path:'/mv',
          text:'mv'
        },
      ]
    };
  },
  methods: {
    async getAllMusic() {
      var result = await this.$http.get(`queryallmusic`);
      console.log(result);
    },
    tiaozhuan(path){
      this.$router.push(path)
    }
  },
  components: {}
};
</script>
<style lang="less" scoped>
#tabbar{
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 999;
}
.van-nav-bar {
  background-color: #d43c33;
}

.tabbar_box{
  color: #fff;
  display: flex;
  div{
    flex: 1;
  }
}

.alive_tab{
  color: #000;
  
}

</style>
