<template>
dsa{{catID}}
    <div class="products">
         <div class="card-group container" id="cards">
             <div class="rings row row-cols-1 row-cols-md-3 w-100 justify-content-between">
             <div class="card"   v-for="card in filterData()" :key="card.id" >
      <card-shablon :catID=card.category_id :cardID=card.id :title=card.title :img=card.image_url :price=card.price></card-shablon>
    </div>
            
        </div>
         </div>
    </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    data(){
        return{
            catID:this.$route.catID
        }
    },
    name:"Products",
    components: {CardShablon},
    methods: {
         filterData()
    {
      
    },
    async  mounted()
 {
        try
        {
          let url = 'http://localhost:8000/api/products';
          let response = await fetch(url);
          const result = await response.json(); // читаем ответ в формате JSON
          this.database.push(...result.products);
          console.log(this.database)

        }
        catch(error)
        {
          this.errors.push(error);
        }
        
  },
    }
}
</script>