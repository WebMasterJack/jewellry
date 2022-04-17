<template>
    <card-shablon :title="title"  :img="img" :price="price"></card-shablon>
</template>
<script>
import CardShablon from '@/components/CardShablon.vue'
export default {
    props: ['title','img','price'],
    name:'CardPage',
    components: {CardShablon}
   
}
</script>