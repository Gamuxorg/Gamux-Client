<template lang="html">
  <section class="catecory flex">
    <div class="logo">
    </div>
    <div v-for="c in data">
      <div class="">
        <a href="#" style="color:#fff" @click.prevent="clickCallBack(c.id)">{{c.name}}</a>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name:'nav-category',
  props:{
    clickCallBack:{
      type: Function,
      required: true,
      default: function () {
      }
    },
    data:{
      type: Array,
      default: []
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
</style>
