<template>
    <div class="card">
        <card-shablon :data-id="cardID" :title="title"  :img="img" :price="price"></card-shablon>
    </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    data(){
        
        return {
            
            title:this.$route.params.title,
            img:this.$route.params.img,
            price:this.$route.params.price,
            cardID:this.$route.params.cardID
           
           
        }

    },
    
    name:'CardPage',
    components: {CardShablon}
   
}
       

</script>