<template>
    <div class="card-group container-fluid row row-cols-1">
       <!-- <Card 
       :title="cards[0].title"
       :text="cards[0].text"
       /> -->
    
       <div class="row row-cols-1 row-cols-md-3">
            <card-shablon title="dsa" text="ewq" img="assets/img/1.JPG"></card-shablon>
            <card-shablon title="dsa" text="ewq" img="assets/img/2.JPG"></card-shablon>
            <card-shablon title="dsa" text="ewq" img="assets/img/3.JPG"></card-shablon>
       </div>
       <div class="row row-cols-1 row-cols-md-3">
            <card-shablon title="dsa" text="ewq" img="assets/img/4.JPG"></card-shablon>
            <card-shablon title="dsa" text="ewq" img="assets/img/5.JPG"></card-shablon>
            <card-shablon title="dsa" text="ewq" img="assets/img/6.JPG"></card-shablon>
       </div>
       
    </div>
</template>

<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    name: 'Cards',
    components:{CardShablon},
    // data(){
    //     return {
    //         cards:[
    //             {
    //             title:'Кирка',
    //             text:'Киииииииииииирка',
    //             },
    //             {
    //             title:'Кирка ломающая ееееееееее',
    //             text:'Киркаавы',
    //             }
    //         ]
    //     }
    // }
}
</script>