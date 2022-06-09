<template>
  <div class="home">
  
    <Cards />    
    <Company />
   
  </div>
</template>

<script>
// @ is an alias to /src
  
import Cards from '@/components/Cards.vue'
import Company from '@/components/Company.vue'


export default {
  name: 'Home',
  components: {
    Cards,Company
  },
  
}

</script>
