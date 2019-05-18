<template>
  <div id="new-log">
    <div class="row">
      <div class="input-field col s6">
        <input
          type="text"
          name="title"
          id="title"
          class="form-control"
          v-model="title"
          v-validate="'required|max:255'"
          data-vv-as="タイトル">
        <label for="title">タイトル</label>
        <div class="form-control-feedback" v-show="errors.has('title')">
          <span class="alert alert-danger">{{ errors.first('title') }}</span>
        </div>
      </div>
      <div class="input-field col s6">
        <input
          type="date"
          name="angered-at"
          id="angered-at"
          class="form-control"
          v-model="angered_at"
          v-validate="'required'"
          data-vv-as="日付">
        <label for="angered-at">日付</label>
        <div class="form-control-feedback" v-show="errors.has('angered-at')">
          <span class="alert alert-danger">{{ errors.first('angered-at') }}</span>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="input-field col s12">
        <textarea
          name="thought"
          id="thought"
          class="materialize-textarea form-control"
          v-model="thought"
          v-validate="'required|max:255'"
          data-vv-as="思った事">
        </textarea>
        <label for="thought">思った事</label>
        <div class="form-control-feedback" v-show="errors.has('thought')">
          <span class="alert alert-danger">{{ errors.first('thought') }}</span>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="input-field col s12">
        <input
          name="feeling"
          type="text"
          id="feeling"
          class="form-control"
          v-model="feeling"
          v-validate="'required|max:255'"
          data-vv-as="感情">
        <label for="feeling">感情</label>
        <div class="form-control-feedback" v-show="errors.has('feeling')">
          <span class="alert alert-danger">{{ errors.first('feeling') }}</span>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="input-field col s12">
        <select v-model="anger_stage">
          <option value="1" selected="true">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
        </select>
        <label for="anger_stage">感情の強さ</label>
      </div>
    </div>

    <div class="row">
      <div class="input-field col s12">
        <textarea
          name="action"
          id="thought"
          class="materialize-textarea form-control"
          v-model="action"
          v-validate="'required|max:255'"
          data-vv-as="行動">
        </textarea>
        <label for="action">行動</label>
        <div class="form-control-feedback" v-show="errors.has('action')">
          <span class="alert alert-danger">{{ errors.first('action') }}</span>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="input-field col s12">
        <textarea
          name="result"
          id="thought"
          class="materialize-textarea form-control"
          v-model="result"
          v-validate="'required|max:255'"
          data-vv-as="結果"></textarea>
        <label for="result">結果</label>
        <div class="form-control-feedback" v-show="errors.has('result')">
          <span class="alert alert-danger">{{ errors.first('result') }}</span>
        </div>
      </div>
    </div>

    <div class="input-field col s12 center-align">
      <button v-on:click="createLog" class="btn waves-effect waves-light" type="submit" name="action">追加
        <i class="material-icons left">add</i>
      </button>
    </div>
    <FlashMessage></FlashMessage>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      title: '',
      thought: '',
      feeling: '',
      anger_stage: 0,
      action: '',
      result: '',
      angered_at: ''
    }
  },
  mounted: function () {
    $('select').formSelect();
  },
  methods: {
    createLog: function () {
      this.$validator.validateAll().then((result) => {
        if(!result) { return }

        axios.post('/api/anger_logs', {
          anger_log: {
            title: this.title,
            thought: this.thought,
            feeling: this.feeling,
            anger_stage: this.anger_stage,
            action: this.action,
            result: this.result,
            angered_at: this.angered_at
          }
        }).then((response) => {
          this.flashMessage.success({title: 'ログを追加しました', message: '新しいログを作成しました。'});
        }, (error) => {
          this.flashMessage.error({title: 'エラーが発生しました', message: '予期しないエラーが発生しました'});
          console.log(error);
        });
      });
    }
  }
}
</script>

<style scoped>
#new-log {
  margin: 15px 0;
}

.materialize-textarea {
  height: 8rem !important;
}
</style>
