<template>
  <div class="home ">
    <Header />
    <Cards />    
    
  </div>
  <Company />
    <Footer/>

</template>

<script>
// @ is an alias to /src
import Header from '@/components/Header.vue'
import Cards from '@/components/Cards.vue'
import Company from '@/components/Company.vue'
import Footer from '@/components/Footer.vue'
export default {
  name: 'Home',
  components: {
    Header,Cards,Company,Footer
  }
}

</script>
