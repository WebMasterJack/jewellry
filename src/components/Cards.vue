<template>
    <div class="card-group container-fluid justify-content-evenly">
       <!-- <Card 
       :title="cards[0].title"
       :text="cards[0].text"
       /> -->
    
       <card-shablon title="dsa" text="ewq" img="/img/1.JPG"></card-shablon>
       <card-shablon title="dsfdsa" text="rqwrwqrwqwq"></card-shablon>
       <card-shablon title="dsfdsa" text="rqwrwqrwqwq"></card-shablon>
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