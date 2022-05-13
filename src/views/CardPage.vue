<template>
    <div class="card">
        <card-shablon :title="title"  :img="img" :price="price"></card-shablon>
    </div>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    props: ['title','img','price'],
    name:'CardPage',
    components: {CardShablon}
   
}
</script>