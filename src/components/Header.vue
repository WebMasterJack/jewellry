<template>
   <div class="cover-container d-flex w-100  mx-auto flex-column" id="cover">
     
     <div id="masthead">
        <header class="masthead mb-auto">
        
          
          <nav class="nav nav-masthead justify-content-center">
            <a class="nav-link active" href="#">Главная</a>
            <a class="nav-link" href="#cards">Изделия</a>
            <a class="nav-link" href="#">Услуги</a>
            <a class="nav-link" href="#company">О компании</a>
            <a class="nav-link" href="#contact">Контакты</a>
          </nav>
        
      </header>

      <main role="main" class="inner cover">
        <h1 class="cover-heading">Для справки</h1>
        <div class="reference container">
        <h3 style="text-align:justify;">Вес, размер камней может отличаться от написанного, всё индивидуально и зависит от личных предпочтений к изделию. Каталог представлен не в полном объёме, для подбора изделия на свой вкус связь во вкладке «контакты». Всегда на связи!</h3>
    </div>
      </main>
     </div>
      
    </div>
    
</template>
<script>
// import Reference from '@/components/Reference.vue'
export default {
    name: 'Header',
    // components: Reference

}
</script>
<style>
#cover{
    background-image: url(/img/file.d020642d.gif);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
header{
  display: flex;
  justify-content: center;
  height:10vh;
}
main{
height:90vh;
display: flex;
    flex-direction: column;
    place-content: end;
    padding-bottom: 40px;
}
</style>