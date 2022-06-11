<template>

     <div class="cover-container d-flex w-100  mx-auto flex-column" id="cover">
     
     <div id="masthead">
        <header class="masthead mb-auto">
        
          
          <nav class="nav nav-masthead justify-content-center">
            <a class="nav-link active" href="/">Главная</a>
            <a class="nav-link" href="/#cards">Изделия</a>
            <a class="nav-link" href="/service#service">Услуги</a>
            <a class="nav-link" href="/#company">О компании</a>
            <a class="nav-link" href="#contact">Контакты</a>
            <a href="#" class="nav-link" data-bs-toggle="modal"  data-bs-target="#modal">Войти</a>
    <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <button id="close" type="button" data-bs-dismiss="modal" style="display:none"></button>
    <div class="modal-dialog" v-if="visible">
      <div class="modal-content bg-dark">
        <div class="row p-5">
            <div class="col-12">
              
            <input type="name" class="form-control test-1-fps" placeholder="Имя" v-model="name" />
            <p v-if="visibleError"> {{errors[0].name}}</p>
            
          </div>
          <div class="col-12 mt-2">
            <input type="phone" class="form-control test-1-fpn" placeholder="Телефон" v-model="phone" />
            <p v-if="visibleError"> {{errors[0].phone}}</p>
            
          </div>
          <div class="col-12 mt-2">
            <input type="email" class="form-control test-1-fps" placeholder="Почта" v-model="email" />
            <p v-if="visibleError"> {{errors[0].email}}</p>
            
          </div>
          <div class="col-12 mt-2">
            <input type="password" class="form-control test-1-fps" placeholder="Пароль" v-model="password" />
            <p v-if="visibleError"> {{errors[0].password}}</p>
            
          </div>
            
          <div class="col-12 mt-4">
            <button class="btn btn-primary w-100 test-1-fbs" @click="register(name,phone,email,password)">Готово</button>
            <div class="text-center mt-2">Уже зарегистрированы?</div>
            <a href="#" @click="reglog">Войти</a>
           
          </div>
        </div>
      </div>
    </div>
    <div class="modal-dialog" v-else>
      <div class="modal-content bg-dark">
        <div class="row p-5">
           
          <div class="col-12 mt-2">
            <p v-if="visibleError"> {{errors[0].pp}}</p>
            <input type="phone" class="form-control test-1-fpn" placeholder="Телефон" v-model="phone"/>
             <p v-if="visibleError"> {{errors[0].phone}}</p>
          </div>
         
          <div class="col-12 mt-2">
            <input type="password" class="form-control test-1-fps" placeholder="Пароль" v-model="password"/>
            <p v-if="visibleError"> {{errors[0].password}}</p>
          </div>

          <div class="col-12 mt-4">
            <button class="btn btn-primary w-100 test-1-fbs" @click="login(phone,password)">Готово</button>
            <div class="text-center mt-2">Еще не зарегистрированы?</div>
            <a href="#" @click="reglog">Зарегистрироваться</a>
          </div>
        </div>
      </div>
    </div>
    
  </div>
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
<style>

</style>
<script>

export default {
  data(){
        return{
            errors:[],
            name: '',
            phone: '',
            email: '',
            password: '',
            visible:true,
            visibleError:false,
        }
        
    },
    name: 'Header',
   methods:{
      reglog(){this.visible= !this.visible;},
      async register() {
        this.errors.length = 0;
            let data = {
                name: this.name,
                phone: this.phone,
                email:this.email,
                password: this.password,
            };
          const response = await fetch("http://localhost:8000/api/register", {
            method: "POST",
            body:JSON.stringify(data),
            headers: {'Content-Type': 'application/json'},
          });
          if (response.ok) 
          { 
            document.querySelector("#close").click();
            let {name,phone,email,password}=this;
            this.$router.replace({name:'Profile',params:{name,phone,email,password}});
          }
          else
          {
               let json = await response.json();
              this.visibleError=!json.ok;
            
              this.errors.push(json.error.errors);
             
               console.log(this.errors);
                
              
          }
          console.log(response,this.name,this.phone,this.email,this.password);
        },
        async login() {
           this.errors.length = 0;
            let data = {
                
                phone: this.phone,
                
                password: this.password,
                
            };
          const response = await fetch("http://localhost:8000/api/login", 
          {
            method: "POST",
            body:JSON.stringify(data),
            headers: {'Content-Type': 'application/json'},
            
          });
          if (response.ok) 
          {
          document.querySelector("#close").click();
          const result = await response.json(); // читаем ответ в формате JSON
          let id=result.data.id;
          this.$router.push({name:'Profile',params:{id}});
          
          }
          else
          {
            
            let json = await response.json();
              this.visibleError=!json.ok;
            
              this.errors.push(json.error.errors);
             
               console.log(this.errors);
              console.log(123)
          }
          // console.log(this.phone,this.password);
        },
      },

}

</script>
