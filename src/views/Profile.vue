<template>
<div class="profile">
<div class="info p-5">
  <div class="image"></div>
    <div class="info-text">
      <p>Ваш ID: {{this.id}}</p> 
      <p>Имя: {{database[0]===undefined?"":database[0].name}}</p>
      <p>Номер: {{database[0]===undefined?"":database[0].phone}}</p>
    </div>
  </div>
</div>    
</template>
<style scoped>
main h1,main div{
    display: none;
}
.profile{
  background: #01111e;
}
.info {
  text-align: left;
  margin: 0 auto;
  max-width:1000px;
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: 200px 200px;
  gap: 20px;
  align-items: center;
  justify-content: left;
}
.image{
  background-image: url("http://localhost:8080/assets/img/user.jpg");
  height:200px;
  background-repeat: no-repeat;
}
</style>
<script>
export default {
    data(){
        return{
            database:[],
            errors:[],
            id:this.$route.params.id,
        }
    },
    name:'Profile',
    async  mounted()
 {  let url = `http://localhost:8000/api/profile/${this.id}`;
      console.log(url)
        try
        {
         
          let url = `http://localhost:8000/api/profile/${this.id}`;
          let response = await fetch(url);
          const result = await response.json(); // читаем ответ в формате JSON
          this.database.push(result.profile);
          console.log(result)

        }
        catch(error)
        {
          this.errors.push(error);
        }
        
  },
}
</script>
