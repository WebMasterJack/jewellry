<template>
  <div class="rings-list">
     
    <div class="card-group container" id="cards">
     <h1>Все кольца</h1>
        <Rings />   
        <div class="rings row row-cols-1 row-cols-md-3 w-100 justify-content-between">
            <card-shablon title="1007"  img="assets/img/rings/7.JPG" price="9 000"></card-shablon>
            <card-shablon title="1008"  img="assets/img/rings/8.JPG" price="9 000"></card-shablon>
            <card-shablon title="1009"  img="assets/img/rings/9.JPG" price="9 000"></card-shablon>
            <card-shablon title="1010"  img="assets/img/rings/10.JPG" price="9 000"></card-shablon>
            <card-shablon title="1011"  img="assets/img/rings/11.JPG" price="9 000"></card-shablon>
            <card-shablon title="1012"  img="assets/img/rings/12.JPG" price="9 000"></card-shablon>
        </div>
   </div>

  </div>
</template>

<script>
// @ is an alias to /src
import CardShablon from '@/components/CardShablon.vue'
import Rings from '@/components/Rings.vue'
export default {
  name: 'RingsList',
  components: {Rings,CardShablon},
  
}

</script>