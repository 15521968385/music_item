<template>
  <div id="classview">
    <div id="aplayer"></div>
  </div>
</template>
<script>
import APlayer from "aplayer";
export default {
  name: "Classview",
  data() {
    return {
      colMusic: [
      ],
      ap: null
    };
  },
  methods: {
    colinit() {
      const ap = new APlayer({
        container: document.getElementById("aplayer"),
        theme:'#d43c33',
        listMaxHeight:'100%',
        audio: this.colMusic
      });
      this.ap = ap;
    },
    async getClassMusic() {
      let result = await this.$http.get(
        `getclassmusic/${this.$route.path.charAt(this.$route.path.length - 1)}`
      );
      let data = result.data;
      console.log(data);
      for (let i in data) {
        let mobj = {
          name:data[i].music_name,
          artist:data[i].singer,
          url:data[i].music_url,
          cover:data[i].music_pic,
        };
        this.colMusic.push(mobj)
      }
      this.colinit();
    }
  },
  components: {
    APlayer
  },
  created() {
    this.getClassMusic();
    
  },
  mounted() {
    this.colinit();
    
  },
  updated() {}
};
</script>
<style lang="less" scoped>
</style>
