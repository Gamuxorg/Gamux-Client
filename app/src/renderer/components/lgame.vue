<template lang="html">
  <div class="root">
    <section class="catecory flex">
      <div class="logo">
      </div>
      <div v-for="c in catecory">
        <div class="">
          <a href="#" style="color:#fff" @click.prevent="getCatecory(c.id)">{{c.name}}</a>
        </div>
      </div>
    </section>
    <section class="post-list container">
      <div v-for="item in posts" class="post-row" @click="goDetail(item.id)">
        <img src="" alt="">
        <div>
          <p>{{item.title.rendered}}</p>
        </div>
      </div>
    </section>
    <go-top></go-top>
  </div>

</template>

<script>
const request = require('axios')
import goTop from "./goTop.vue"
export default {
  components:{
    goTop
  },
  data() {
    return {
      catecory: [],
      posts: []
    }
  },
  async created() {
    try {
      let {
        data: catecory
      } = await this.getCatecory()
      let {
        data: posts
      } = await this.getPosts()
      this.catecory = catecory
      this.posts = posts
    } catch (e) {
      console.log(e);
    } finally {
      console.log(this.catecory, this.posts);
    }
  },
  methods: {
    async getCatecory(categories) {
      return request.get(`https://www.linuxgame.cn/wp-json/wp/v2/categories?orderby=count`)
    },
    async getPosts(categories,pageIndex=0,perpage=10) {
      let params = {
        categories_exclude:2,
      }
      categories? params.categories = categories : null
      return request.get('https://www.linuxgame.cn/wp-json/wp/v2/posts',{
        params:params
      })
    },
    goDetail(id){
      this.$router.push({ name: 'detail', params: { id: id }})
    }
  }
}
</script>

<style lang="less">
@import "../../res/less/common.less";
.catecory {
    border-radius: 3px;
    background: @blue;
    color: #fff;
    padding: 5px;
    font-size: @font-catecory;
    @media screen and (min-device-width: 660px) {}
}
.post-list{
  .post-row{
    cursor: pointer;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    height: 100px;
    margin: 0 1px;
    >img{
      border: none;
      background: @gray;
      height: 85px;
      width: 85px;
      margin-right: 5px;
    }
    &:hover{
      border: 1px solid @blue;
      height: 98px;
      margin: 0;
    }
  }
}
</style>
