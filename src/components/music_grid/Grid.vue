<template>
  <div id="grid">
    <div class="music_box">
      <div
        class="music_item"
        v-for="(item,index) in allMusic"
        :key="item.id"
        @click="play(item,index)"
      >
        <div class="music_img">
          <img v-lazy="item.music_pic" />
        </div>
        <div class="music_name">{{item.music_name}}</div>
        <div class="music_singer">
          <span>by</span>
          {{item.singer}}
        </div>
      </div>
    </div>

    <div id="aplayer"></div>
  </div>
</template>
<script>
import APlayer from "aplayer";
export default {
  name: "Grid",
  data() {
    return {
      allMusic: [],
      colMusic: {
        name: "忘记拥抱",
        artist: " A-Lin ",
        url:
          "https://786a-xjt22664411-1301825037.tcb.qcloud.la/music/A-Lin-%E5%BF%98%E8%AE%B0%E6%8B%A5%E6%8A%B1-%E3%80%8A234%E8%AF%B4%E7%88%B1%E4%BD%A0%E3%80%8B%E7%94%B5%E5%BD%B1%E4%B8%BB%E9%A2%98%E6%9B%B2.flac?sign=3c73212bb989f703fbaf39648eaabe22&t=1588140996",
        cover: "http://xjt51921.usa3v.com/img/alin/1.jpg"
      },
      ap: null,
      index: 0
    };
  },
  methods: {
    //   获取所有音乐
    async getAllMusic() {
      var result = await this.$http.get(`getallmusic`);
      this.allMusic = result.data;
      // console.log(result.data);
    },
    // 初始化音乐控制器
    colinit() {
      const ap = new APlayer({
        container: document.getElementById("aplayer"),
        loop: "none",
        audio: [this.colMusic]
      });

      this.ap = ap;
      ap.on("ended", () => {
        let index = this.index++;
        let allMusic = this.allMusic;

        if (index >= allMusic.length - 1) {
          index = 0;
          this.index = 0;
        } else {
          index++;
        }
        this.play(allMusic[index]);
      });
    },
    // 点击播放
    play(music, index) {
      this.colMusic.name = music.music_name;
      this.colMusic.artist = music.singer;
      this.colMusic.url = music.music_url;
      this.colMusic.cover = music.music_pic;
      if (index) {
        this.index = index;
      }
      this.colinit();
      this.ap.play();
    }
  },
  components: {
    APlayer
  },
  created() {
    this.getAllMusic();
  },
  mounted() {
    this.colinit();
  }
};
</script>
<style lang="less" scoped>
#grid {
  padding: 10px 10px 0 10px;
  margin-bottom: 66px;
}
.music_box {
  display: flex;
  flex-wrap: wrap; //可以换行
  .music_item {
    margin-bottom: 5px;
    width: 33.33%; //不是用flex设置宽
    .music_img img {
      width: 95%;
      vertical-align: middle;
      border-radius: 10px;
    }
    .music_name {
      font-size: 14px;
      display: inline-block;
      white-space: nowrap;
      width: 100%;
      overflow: hidden;
      text-overflow: ellipsis;
      vertical-align: bottom;
    }
    .music_singer {
      font-size: 12px;
      display: inline-block;
      white-space: nowrap;
      width: 100%;
      overflow: hidden;
      text-overflow: ellipsis;
      vertical-align: top;
      span {
        color: red;
      }
    }
  }
}
#aplayer {
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  margin: 0;
}
</style>
