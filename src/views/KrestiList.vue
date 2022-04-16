<template>
  <div class="kresti-list">
      <Header />
    <div class="card-group container" id="cards">
      <h1>Все кресты</h1>
        <Kresti />   
        <div class="kresti row row-cols-1 row-cols-md-3 w-100 justify-content-between">
            <card-shablon title="5007"  img="assets/img/kresti/7.JPG" price="9 000"></card-shablon>
            <card-shablon title="5008"  img="assets/img/kresti/8.JPG" price="9 000"></card-shablon>
            <card-shablon title="5009"  img="assets/img/kresti/9.JPG" price="9 000"></card-shablon>
            <card-shablon title="5010"  img="assets/img/kresti/10.JPG" price="9 000"></card-shablon>
        </div>
   </div>
   <Footer />
  </div>
</template>

<script>
// @ is an alias to /src
import CardShablon from '@/components/CardShablon.vue'
import Kresti from '@/components/Kresti.vue'
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
export default {
  name: 'KrestiList',
  components: {Kresti,Header,CardShablon,Footer}
}

</script>