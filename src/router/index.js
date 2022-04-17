import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import RingsList from '../views/RingsList.vue'
import SergiList from '../views/SergiList.vue'
import KrestiList from '../views/KrestiList.vue'
import CardPage from '../views/CardPage.vue'
const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/rings',
    name: 'RingsList',
    component: RingsList
  },
  {
    path: '/sergi',
    name: 'SergiList',
    component: SergiList
  },
  {
    path: '/kresti',
    name: 'KrestiList',
    component: KrestiList
  },
  {
    path: '/card-page',
    name: 'CardPage',
    component: CardPage
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
