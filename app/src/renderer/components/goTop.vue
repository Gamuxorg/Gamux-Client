<template lang="html">
  <div id="goTop" @click="scrollToTop()">
      &#8593;
  </div>
</template>

<script>
export default {
  created() {
  },
  methods: {
    scrollToTop() {
      window.scrollTo(0, 0)
    }
  }
}
</script>

<style lang="less">
@import "../../res/less/common.less";
#goTop {
    z-index: 1000;
    cursor: pointer;
    position: fixed;
    border-radius: 50%;
    text-align: center;
    line-height: 50px;
    bottom: 10px;
    right: 10px;
    height: 50px;
    width: 50px;
    background: @blue;
    color: #fff;
}
</style>
