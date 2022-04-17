<template>
  <Header />
  <div id="nav">
  <router-view/>
  </div>
  <Footer/>
</template>

<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
export default {
  components:{Header,Footer}
}
import './assets/js/bootstrap.bundle.js'
</script>

<style>

@import './assets/css/bootstrap.css';
@import './assets/css/style.css';

</style>
