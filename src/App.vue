<template>
  <div id="app">
    <tabbar></tabbar>
    <keep-alive exclude="Classview">
    <router-view></router-view>
    </keep-alive>
  </div>
</template>
<script>
import Tabbar from '@/components/tabbar/Tabbar'
export default {
  name:'App',
  components:{
    Tabbar
  }
}
</script>
<style lang="less">
#app{
  padding-top: 46px;
}
</style>
