<template lang="html">
  <div class="root">
    <div class="container">
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
    }
  }
}
</script>

<style lang="less">
</style>
