<template>
  <div>
    <div class="row create-field">
      <router-link to="/new">
        <div class="btn-floating waves-effect waves-light red">
          <i class="material-icons">add</i>
        </div>
      </router-link>
    </div>
    <ul id="collection-id" class="collection">
      <paginate name="logs" :list="logs" :per="5">
        <li v-for="log in paginated('logs')" v-bind:id="'anger_log_' + log.id" class="collection-item">
          <a class="secondary-content delete-log" v-on:click="deleteLog(log.id)">
            <i class="material-icons">delete</i>
          </a>
          <router-link :to="{ name: 'show', params: { id: log.id }}" class="title">{{ log.title }}</router-link>
          <p class="angered-at"><time datetime="">{{ log.angered_at | moment }}</time></p>
        </li>
      </paginate>
    </ul>
    <paginate-links for="logs" class="pagination" :show-step-links="true"></paginate-links>
    <FlashMessage></FlashMessage>
  </div>
</template>

<script>
import formattable from '../concern/date_formattable';
import axios from 'axios';

export default {
  mixins: [ formattable ],
  data: function () {
    return {
      paginate: ['logs'],
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
        for(var i = 0; i < response.data.length; i++) {
          this.logs.push(response.data[i]);
        }
      }, (error) => {
        console.log(error);
      });
    },
    deleteLog: function (id) {
      axios.delete('/api/anger_logs/' + id).then((response) => {
        this.flashMessage.success({title: '削除しました', message: 'ログの削除に成功しました'});
        $('#anger_log_' + id).fadeOut();
      }, (error) => {
        this.flashMessage.error({title: 'エラーが発生しました', message: '予期しないエラーが発生しました'});
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

.delete-log {
  cursor: pointer;
}
</style>
