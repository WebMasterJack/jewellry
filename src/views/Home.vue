<template>
  <div class="home ">
    <Header />
    <Cards />    
  </div>
</template>

<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'

import Cards from '@/components/Cards.vue'
export default {
  name: 'Home',
  components: {
    Header,Cards
  }
}

</script>
