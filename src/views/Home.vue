<template>
  <div class="home">
    <Header />
    <Reference />    
  </div>
</template>

<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'
import Reference from '@/components/Reference.vue'
export default {
  name: 'Home',
  components: {
    Header,Reference
  }
}

</script>
