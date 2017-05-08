<template lang="html">
  <section class="catecory flex">
    <div class="logo">
    </div>
    <div v-for="c in catecory">
      <div class="">
        <a href="#" style="color:#fff" @click.prevent="getCatecory(c.id)">{{c.name}}</a>
      </div>
    </div>
  </section>
</template>

<script>
export default {
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
