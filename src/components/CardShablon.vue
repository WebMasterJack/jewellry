<template>
    <div class="card">
  <img class="card-img-top"  :src="img" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><a href="#" data-toggle="tooltip" data-placement="bottom" title='Перейти на страницу товара'>{{title}}</a></h5>
    <!-- <p class="card-text">Вес: {{text}}</p> -->
    <div class="card-bottom d-flex justify-content-between align-items-baseline ">
  
  <p >от <span style="font-size:22px;">{{price}}</span> руб.</p>
  <a href="#" class="btn btn-primary w-50">Заказать</a>
    </div>
  </div>
</div>
</template>

<script>
export default {
    name:'CardShablon',
    props: ['title','text','img','price'],
   
}
</script>


