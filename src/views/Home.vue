<template>
  <div class="home">
    <Header />
    <Reference />
    <Cards />    
  </div>
</template>

<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'
import Reference from '@/components/Reference.vue'
import Cards from '@/components/Cards.vue'
export default {
  name: 'Home',
  components: {
    Header,Reference,Cards
  }
}

</script>
