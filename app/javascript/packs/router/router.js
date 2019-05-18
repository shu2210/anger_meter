import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Index from '../components/index.vue'
import New from '../components/new.vue'
import Show from '../components/show.vue'
import About from '../components/about.vue'
import Contact from '../components/contact.vue'

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/', component: Index },
    { path: '/new', component: New },
    {
      path: '/show/:id',
      name: 'show',
      component: Show
    },
    { path: '/about', component: About },
    { path: '/contact', component: Contact },
  ],
})
