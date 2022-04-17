<template>
  <div class="sergi-list">
    
    <div class="card-group container" id="cards">
      <h1>Все серьги</h1>
        <Sergi />   
        <div class="sergi row row-cols-1 row-cols-md-3 w-100 justify-content-between">
            <card-shablon title="2007"  img="assets/img/sergi/7.JPG" price="9 000"></card-shablon>
            <card-shablon title="2008"  img="assets/img/sergi/8.JPG" price="9 000"></card-shablon>
            <card-shablon title="2009"  img="assets/img/sergi/9.JPG" price="9 000"></card-shablon>
            <card-shablon title="2010"  img="assets/img/sergi/10.JPG" price="9 000"></card-shablon>
        </div>
   </div>

  </div>
</template>

<script>
// @ is an alias to /src
import CardShablon from '@/components/CardShablon.vue'
import Sergi from '@/components/Sergi.vue'

export default {
  name: 'SergiList',
  components: {Sergi,CardShablon}
}

</script>