<template>
<div class="kresti row row-cols-1 row-cols-md-3">
            <card-shablon title="5001"  img="assets/img/kresti/1.JPG" price="9 000"></card-shablon>
            <card-shablon title="5002"  img="assets/img/kresti/2.JPG" price="5 500"></card-shablon>
            <card-shablon title="5003"  img="assets/img/kresti/3.JPG" price="5 500"></card-shablon>
            <card-shablon title="5004"  img="assets/img/kresti/4.JPG" price="9 000"></card-shablon>
            <card-shablon title="5005"  img="assets/img/kresti/5.JPG" price="9 000"></card-shablon>
            <card-shablon title="5006"  img="assets/img/kresti/6.JPG" price="9 000"></card-shablon>
        </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    name: "Kresti",
    components:{CardShablon}
}
</script>