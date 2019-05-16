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
        <li v-for="log in logs" class="collection-item">
          <a href="#" class="secondary-content">
            <i class="material-icons">delete</i>
          </a>
          <router-link to="/show" class="title">{{ log.title }}</router-link>
          <p class="angered-at"><time datetime="">{{ log.angered_at }}</time></p>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      logs: [],
      newLog: ''
    }
  },
  mounted: function () {
    this.fetchLogs();
  },
  methods: {
    fetchLogs: function () {
      axios.get('/api/anger_logs').then((response) => {
        for(var i = 0; i < response.data.logs.length; i++) {
          this.logs.push(response.data.logs[i]);
        }
      }, (error) => {
        console.log(error);
      });
    },
  }
}
</script>

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
