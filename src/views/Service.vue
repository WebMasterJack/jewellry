<template>
  <div class="card-group container" id="service">
    <h1 class="text-center w-100">Услуги</h1>
      <div class="rings row row-cols-1 row-cols-md-3 w-100 justify-content-between" >
         <div class="card"   v-for="card in database" :key="card.id" >
      <card-shablon :cardID=card.id :title=card.title :img=card.image_url :price=card.price></card-shablon>
    </div>
    </div>
  </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    data()
    {
        return{
            database:[],
            errors:[]
            }
    },
    name:'Service',
    components:{CardShablon},
     async  mounted()
 {
        try
        {
          let url = 'http://localhost:8000/api/service';
          let response = await fetch(url);
          const result = await response.json(); // читаем ответ в формате JSON
          this.database.push(...result.service);
          console.log(this.database)

        }
        catch(error)
        {
          this.errors.push(error);
        }
        
  },
}
</script>