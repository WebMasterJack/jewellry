<template>
<div class="profile">
ID: {{this.id}} <br>
Имя: {{database[0]===undefined?"":database[0].name}}<br> 
Номер: {{database[0]===undefined?"":database[0].phone}}
</div>    
</template>
<style scoped>
main h1,main div{
    display: none;
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
