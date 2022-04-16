<template>
<div class="sergi row row-cols-1 row-cols-md-3">
            <card-shablon title="1001"  img="assets/img/sergi/1.JPG" price="9 000"></card-shablon>
            <card-shablon title="2002"  img="assets/img/sergi/2.JPG" price="5 500"></card-shablon>
            <card-shablon title="2003"  img="assets/img/sergi/3.JPG" price="5 500"></card-shablon>
            <card-shablon title="2004"  img="assets/img/sergi/4.JPG" price="9 000"></card-shablon>
            <card-shablon title="2005"  img="assets/img/sergi/5.JPG" price="9 000"></card-shablon>
            <card-shablon title="2006"  img="assets/img/sergi/6.JPG" price="9 000"></card-shablon>
        </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    name: "Sergi",
    components:{CardShablon}
}
</script>