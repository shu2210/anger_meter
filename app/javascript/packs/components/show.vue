<template>
  <div id="detail">
    <div class="section">
      <label for="title">出来事：</label>
      <p id="title">{{ log.title }}</p>
    </div>

    <div class="section">
      <label for="angered-at">日付：</label>
      <time id="angered-at" v-bind:datetime="log.angered_at">{{ log.angered_at | moment }}</time>
    </div>

    <div class="section">
      <label for="thought">思った事：</label>
      <p id="thought">{{ log.thought }}</p>
    </div>

    <div class="section">
      <label for="feeling">感情：</label>
      <p id="feeling">{{ log.feeling }}</p>
    </div>

    <div class="section">
      <label for="anger-stage">感情の強さ：</label>
      <p id="anger-stage">{{ log.anger_stage }}</p>
    </div>

    <div class="section">
      <label for="action">行動：</label>
      <p id="action">{{ log.action }}</p>
    </div>

    <div class="section">
      <label for="result">結果：</label>
      <p id="result">{{ log.result }}</p>
    </div>
  </div>
</template>

<script>
import formattable from '../concern/date_formattable';
import axios from 'axios';

export default {
  mixins: [ formattable ],
  data: function () {
    return {
      log: []
    }
  },
  mounted: function () {
    this.fetchLog();
  },
  methods: {
    fetchLog: function () {
      axios.get('/api/anger_logs/' + this.$route.params.id).then((response) => {
        this.log = response.data.log
      }, (error) => {
        console.log(error);
      });
    },
  }
}
</script>

<style scoped>
#detail {
  margin-top: 15px;
}

.section p {
  margin: 0;
  display: inline-block;
}

#title {
  font-weight: bold;
  font-size: 1.1em;
}
</style>
