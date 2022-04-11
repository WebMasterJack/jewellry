import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
var normalizedPath = require("./assets/img")

// .join(__dirname, "assets/img");

require("./").readdirSync(normalizedPath).forEach(function(file) {

require("./img/" + file);

});
createApp(App).use(router).mount('#app')
