<template>
  <div>
    <div class="row create-field">
      <router-link to="/new">
        <div class="btn-floating waves-effect waves-light red">
          <i class="material-icons">add</i>
        </div>
      </router-link>
    </div>
    <div>
      <ul id="collection-id" class="collection">
        <li id="row_log_1" class="collection-item">
          <a href="#" class="secondary-content">
            <i class="material-icons">delete</i>
          </a>
          <router-link to="/show" class="title">メモを取ってなくて怒られた</router-link>
          <p class="angered-at"><time datetime="">2019-09-01</time></p>
        </li>
        <li id="row_log_1" class="collection-item">
          <a href="#" class="secondary-content">
            <i class="material-icons">delete</i>
          </a>
          <router-link to="/show" class="title">メモを取ってなくて怒られた</router-link>
          <p class="angered-at"><time datetime="">2019-09-01</time></p>
        </li>
        <li id="row_log_1" class="collection-item">
          <a href="#" class="secondary-content">
            <i class="material-icons">delete</i>
          </a>
          <router-link to="/show" class="title">メモを取ってなくて怒られた</router-link>
          <p class="angered-at"><time datetime="">2019-09-01</time></p>
        </li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
.create-field {
  margin: 15px 0;
}

.angered-at {
  font-size: 0.8em;
  color: #757575;
  margin: 5px 0;
}
</style>
