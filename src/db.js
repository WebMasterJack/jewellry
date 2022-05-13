const mysql = require("mysql");
  
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "mod2",
  password: "root"
});
 connection.connect(function(err){
    if (err) {
      return console.error("Ошибка: " + err.message);
    }
    else{
      console.log("Подключение к серверу MySQL успешно установлено");
    }
 });
 let query = "SELECT * FROM flights";
 connection.query(query,(err,result)=>{
   console.log(err);
   for (let index = 0; index < result.length; index++) {
    console.log(result[index]['id'] + " : " + result[index]['flight_code']);
     
   }
  
 });
