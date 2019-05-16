<template>
  <div id="new-log">
    <div class="row">
      <div class="input-field col s6">
        <input type="text" id="title" class="form-control">
        <label for="title">タイトル</label>
      </div>
      <div class="input-field col s6">
        <input type="date" id="angered-at" class="form-control">
        <label for="angered-at">日付</label>
      </div>
    </div>

    <div class="input-field col s6">
      <textarea id="thought" class="materialize-textarea form-control"></textarea>
      <label for="thought">思った事</label>
    </div>

    <div class="input-field col s6">
      <input type="text" id="feeling" class="form-control">
      <label for="feeling">感情</label>
    </div>

    <div class="input-field col s12">
      <select>
        <option value="1">1</option>
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
      <label for="feeling">感情の強さ</label>
    </div>

    <div class="input-field col s12">
      <textarea id="thought" class="materialize-textarea form-control"></textarea>
      <label for="action">行動</label>
    </div>

    <div class="input-field col s12">
      <textarea id="thought" class="materialize-textarea form-control"></textarea>
      <label for="result">結果</label>
    </div>

    <div class="input-field col s12 center-align">
      <button class="btn waves-effect waves-light" type="submit" name="action">追加
        <i class="material-icons left">add</i>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    $('select').formSelect();
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
