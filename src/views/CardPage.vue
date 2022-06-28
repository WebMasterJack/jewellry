<template>
    
    <section id="custom-card">
       <div class="custom-card row row-cols-1 row-cols-md-2 container-fluid">
        <img :src=img alt="">
        <div class="info">
            <div class="title display-5 bg-primary">{{art}} {{title}}</div>
            <div class="description">{{text}} Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo tempora qui quibusdam esse praesentium adipisci deleniti nam eligendi animi illo dicta numquam commodi illum corporis deserunt, unde in? Aliquid, beatae?</div>
            <div class="bottom-info d-flex justify-content-evenly align-items-center">
                <div class="price">от {{price}}₽</div>
             <a  @click="contact" href="#contact" class="btn btn-primary w-25">Написать</a>
            </div>
        </div>    
</div>
</section> 
<!-- <div class="card row row-cols-1 row-cols-md-2">
        <card-shablon :descStatus="descStatus" :text="text" :data-id="cardID" :title="title" :art="art"  :img="img" :price="price"></card-shablon>
    </div> -->
    
</template>
<style scoped>



#custom-card{
background:#01111e;

}


.custom-card,.custom-card img{
    padding: 0px;  
}
.custom-card{
    display: flex;
    margin: 0 auto;
    max-width: 1000px;
    width: 95%;
    background: black;

}

.info{
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    padding: 0;
}


.description{
        text-align: left;
    padding: 10px;
}
.bottom-info{
    font-size: 28px;
    padding-bottom: 10px;
}
</style>
<script>
// import CardShablon from '@/components/CardShablon.vue'
export default {
    data(){
        
        return {
            
            title:this.$route.params.title,
            img:this.$route.params.img,
            price:this.$route.params.price,
            cardID:this.$route.params.cardID,
            art:this.$route.params.art,
            descStatus:this.$route.params.descStatus,
            text:this.$route.params.text,
        }

    },
    
    name:'CardPage',
    methods:{
        contact(){
      document.querySelector(".telegram").style="animation: contactAnimated 3s 1";
      
     }
    }
    // components: {CardShablon}
   
}
       

</script>