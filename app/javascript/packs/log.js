import Vue from 'vue/dist/vue.esm.js'
import Router from './router/router'
import Header from './components/header.vue'
import VeeValidate from 'vee-validate';
import VeeValidateLocaleJa from 'vee-validate/dist/locale/ja';
import FlashMessage from '@smartweb/vue-flash-message';

Vue.use(FlashMessage);
Vue.use(VeeValidate, {
  locale: 'ja',
  dictionary: {
    ja: VeeValidateLocaleJa
  }
});

var app = new Vue({
  router: Router,
  el: '#app',
  components: {
    'navbar': Header
  }
});
