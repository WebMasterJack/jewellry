<template>

  <img class="card-img-top"  :src="img" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><a href="#" @click="showCard" :data-id="cardID" :data-cat-id="catID" data-toggle="tooltip" data-placement="bottom" title='Перейти на страницу товара'>АРТ {{title}}</a></h5>
    <!-- <p class="card-text">Вес: {{text}}</p> -->
    <div class="card-bottom d-flex justify-content-between align-items-baseline ">
  
  <p >от <span style="font-size:22px;">{{price}}</span> руб.</p>
  <a  @click="showCard"  class="btn btn-primary w-50">Заказать</a>
    </div>
  </div>

</template>

<script>
export default {

    name:'CardShablon',
    props: ['title','img','price','cardID','catID'],
   methods:{
     showCard(){
       let {title,img,price,cardID,catID} = this;
      this.$router.push({name:'CardPage',params:{title,img,price,cardID,catID}});
      
     }
   }
}
</script>


