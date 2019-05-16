<template>
  <div>
    <ul id="dropdown1" class="dropdown-content">
      <li><router-link to="/">Top</router-link></li>
      <li><router-link to="/about">About</router-link></li>
      <li><router-link to="/contact">Contact</router-link></li>
    </ul>
    <nav>
      <div class="nav-wrapper container">
        <router-link to="/" class="brand-logo left">Anger Meter</router-link>
        <ul class="right">
          <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">Menu</a></li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  mounted() {
    $('.dropdown-trigger').dropdown();
  }
}
</script>
