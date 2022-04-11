<template>
    <div class="card">
  <img class="card-img-top" :src="img" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">{{title}}</h5>
    <p class="card-text">{{text}}</p>
    <a href="#" class="btn btn-primary">Подробнее</a>
  </div>
</div>
</template>

<script>
export default {
    name:'CardShablon',
    props: ['title','text','img'],
   
}
</script>


