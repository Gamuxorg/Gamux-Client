<template lang="html">
  <div class="root">
    <div class="goBack" @click="goBack()">
      &#10550;
    </div>
    <div class="container content">
      <h1>{{post.title.rendered}}</h1>
      <div class="">
      </div>
      <div v-html="post.content.rendered">
      </div>
    </div>
  </div>
</template>

<script>
const request = require('axios')
import goTop from "./goTop.vue"
export default {
  data(){
    return {
      post: {},
      id: null
    }
  },
  async created(){
    try {
      this.id = this.$route.params.id;
      let {data: post} = await this.getDetail(this.id)
      this.post = post;
      console.log(post);
    } catch (e) {
      console.log(e);
    } finally {

    }
  },
  methods:{
    async getDetail(id){
      return request.get(`https://www.linuxgame.cn/wp-json/wp/v2/posts/${id}`)
    },
    goBack(n = -1){
      n = ~~n
      n = n > 0 ? -n : n
      this.$router.go(n)
    }
  }
}
</script>

<style lang="less">
@import "../../res/less/common.less";
.goBack{
  height: 50px;
  width: 50px;
  line-height: 50px;
  text-align: center;
  font-size: 30px;
  border-radius: 50%;
  background: lighten(@gray, 50%);
}
.content{
  text-align: center
}
</style>
