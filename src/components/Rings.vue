<template>
<div class="rings row row-cols-1 row-cols-md-3 w-100 justify-content-between">
            <card-shablon title="1001" img="assets/img/rings/1.JPG" price="9 000"></card-shablon>
            <card-shablon title="1002"  img="assets/img/rings/2.JPG" price="5 500"></card-shablon>
            <card-shablon title="1003"  img="assets/img/rings/3.JPG" price="5 500"></card-shablon>
            <card-shablon title="1004"  img="assets/img/rings/4.JPG" price="9 000"></card-shablon>
            <card-shablon title="1005"  img="assets/img/rings/5.JPG" price="9 000"></card-shablon>
            <card-shablon title="1006"  img="assets/img/rings/6.JPG" price="9 000"></card-shablon>
</div>



</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    name: "Rings",
    components:{CardShablon},
    props: ['title','img','price'],
  
}
</script>