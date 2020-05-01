<template>
  <div id="banner">
    <van-swipe class="my-swipe" :autoplay="2000" indicator-color="white">
      <van-swipe-item v-for="(item) in banner" :key="item.id">
        <img class="banner_img"  :src="item.banner_pic"  />
        
      </van-swipe-item>
    </van-swipe>
  </div>
</template>
<script>
export default {
  name: "Banner",
  data() {
    return {
      banner: []
    };
  },
  methods: {
    async getBanner() {
      var result = await this.$http.get(`getbanner`);
      this.banner = result.data;
      // console.log(this.banner);
    }
  },
  components: {},
  created() {
    this.getBanner();
  }
};
</script>
<style lang="less" scoped>
#banner {
  padding: 10px;
}
.banner_img{
  width: 100%;
}
.van-swipe{
  border-radius: 20px;
}

</style>
