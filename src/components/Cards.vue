<template>
    <div class="card-group container" id="cards">
       <!-- <Card 
       :title="cards[0].title"
       :text="cards[0].text"
       /> -->
       
    
       <ul class="nav nav-pills mb-3 w-100" id="pills-tab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="pills-rings-tab" data-bs-toggle="pill" data-bs-target="#pills-rings" type="button" role="tab" aria-controls="pills-rings" aria-selected="true">Кольца</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-sergi-tab" data-bs-toggle="pill" data-bs-target="#pills-sergi" type="button" role="tab" aria-controls="pills-sergi" aria-selected="false">Серьги</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-cepochki-tab" data-bs-toggle="pill" data-bs-target="#pills-cepochki" type="button" role="tab" aria-controls="pills-cepochki" aria-selected="false">Цепочки</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-braslet-tab" data-bs-toggle="pill" data-bs-target="#pills-braslet" type="button" role="tab" aria-controls="pills-braslet" aria-selected="false">Браслеты</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-krest-tab" data-bs-toggle="pill" data-bs-target="#pills-krest" type="button" role="tab" aria-controls="pills-krest" aria-selected="false">Кресты</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-kylon-tab" data-bs-toggle="pill" data-bs-target="#pills-kylon" type="button" role="tab" aria-controls="pills-kylon" aria-selected="false">Кулоны</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-podveski-tab" data-bs-toggle="pill" data-bs-target="#pills-podveski" type="button" role="tab" aria-controls="pills-podveski" aria-selected="false">Подвески</button>
  </li>
</ul>
<div class="tab-content w-100" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-rings" role="tabpanel" aria-labelledby="pills-rings-tab">
<div class="rings row row-cols-1 row-cols-md-3">
            <card-shablon title="АРТ 1001"  img="assets/img/rings/1.JPG" price="9 000"></card-shablon>
            <card-shablon title="АРТ 1002"  img="assets/img/rings/2.JPG" price="5 500"></card-shablon>
            <card-shablon title="АРТ 1003"  img="assets/img/rings/3.JPG" price="5 500"></card-shablon>
            
       </div>
        <div class="rings row row-cols-1 row-cols-md-3">
            <card-shablon title="АРТ 1004"  img="assets/img/rings/4.JPG" price="9 000"></card-shablon>
            <card-shablon title="АРТ 1005"  img="assets/img/rings/5.JPG" price="9 000"></card-shablon>
            <card-shablon title="АРТ 1006"  img="assets/img/rings/6.JPG" price="9 000"></card-shablon>
        </div>
        
  </div>
  <div class="tab-pane fade" id="pills-sergi" role="tabpanel" aria-labelledby="pills-sergi-tab">sergi epta</div>
  <div class="tab-pane fade" id="pills-cepochki" role="tabpanel" aria-labelledby="pills-cepochki-tab">cepochki epta</div>
  <div class="tab-pane fade" id="pills-braslet" role="tabpanel" aria-labelledby="pills-braslet-tab">braslet epta</div>
  <div class="tab-pane fade" id="pills-krest" role="tabpanel" aria-labelledby="pills-krest-tab">krest epta</div>
  <div class="tab-pane fade" id="pills-kylon" role="tabpanel" aria-labelledby="pills-kylon-tab">kylon epta</div>
  <div class="tab-pane fade" id="pills-podveski" role="tabpanel" aria-labelledby="pills-podveski-tab">podveski epta</div>
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