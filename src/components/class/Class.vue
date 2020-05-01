<template>
  <div id="class">
    <div class="class_box">
      <div class="class_item" v-for="item in classdata" :key="item.id" @click="getClassMusic(item)">
        <div class="class_img">
          <img v-lazy="item.class_pic"/>
        </div>
        <div class="class_text">{{item.class_name}}</div>
      </div>
      
    </div>
  </div>
</template>
<script>
export default {
  name: "Class",
  data() {
    return {
        classdata:[]
    };
  },
  methods: {
      async getclass(){
           var result = await this.$http.get(`getclass`);
            this.classdata = result.data;
            // console.log(this.banner);
      },
      getClassMusic(classMusic){
        // console.log(classMusic)
        this.$router.push(`/faxian/${classMusic.id}`)
      }
  },
  components: {},
  created() {
      this.getclass();
  },
};
</script>
<style lang="less" scoped>
#class {
  padding: 0 10px;
}
.class_box {
  display: flex;
  .class_item {
    flex: 1;
    
    text-align: center;
    .class_img img {
      width: 80%;
      border-radius: 50%;
    }
    .class_text{
        font-size: 12px;
        
    }
  }
}
</style>
