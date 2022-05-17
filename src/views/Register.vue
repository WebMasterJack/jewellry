<template>
      <div class="container py-5 text-center">
    <button
      type="button"
      class="btn btn-primary"
      data-bs-toggle="modal"
      data-bs-target="#modal"
    >
      Открыть модальное окно
    </button>
    
  </div>
<!-- Modal --- Криво работает,кнопка прогружается после запроса -->
  <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <input type="phone" class="form-control test-1-fpn" placeholder="Телефон" v-model="phone"/>
          </div>
         
          <div class="col-12 mt-2">
            <input type="password" class="form-control test-1-fps" placeholder="Пароль" v-model="password"/>
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
<!-- Modal --- end -->



</template>





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
    
  name: "Register",
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
            // если HTTP-статус в диапазоне 200-299
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
             // если HTTP-статус в диапазоне 200-299
            let {phone,password}=this;
            this.$router.replace({name:'Profile',params:{phone,password}});
          }
          else
          {
              console.log(123)
          }
          console.log(this.phone,this.password);
        },
      },
  }
</script>