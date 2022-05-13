<template>
  <div class="home">
    <p>fdsfds </p>
    <Cards />    
    <Company />dsa
   
    <button>dbbdbdbdbdbdbdbbdbdb</button>
  </div>
</template>

<script>
// @ is an alias to /src
  
import Cards from '@/components/Cards.vue'
import Company from '@/components/Company.vue'


export default {
  
 
  name: 'Home',
  // props: {
  //   ars:{
  //    required: true,
  //   default: {
  //     title: 'test'
  //   }
  //   }
  // },
  components: {
    Cards,Company
  },
  
}

</script>
