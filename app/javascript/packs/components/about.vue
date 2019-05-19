<template>
  <div id="about">
    <span class="title">アンガーログとは</span>
    <p>
      アンガーログという言葉をご存じでしょうか。このサイトはそのアンガーログを記録しておくためのサイトです。
    </p>
     <p>
アンガーログとは、怒りを感じた出来事を後で確認するための記録です。具体的には、怒りを感じた時、思った事やその時の感情、怒りの度合いなどを記録します。
    </p>
    <p>
      ソースコードはRuby on Rails, Vue.jsなどによって書かれています。
      ソースコードは<a href="https://github.com/shu2210/anger_meter" target="_blank">こちら</a>
    </p>

    <span class="title">なぜつけるのか</span>
    <p>
      アンガーログをつけることによって、怒りを客観視できます。また、自分の認識やそれに対する行動の変化などを後から振り返ることができます。
    </p>
    <p>
      自分がどのような時に怒り、どのような認識を持っているのかをアンガーログとしてまとめておけば、それに対して対策をしやすくなります。
    </p>

    <span class="title">どうつけるのか</span>
    <p>アンガーログは例えば以下のように記録します。(以下の例は実際に経験したことではありません。)</p>

    <div>
      <label>①出来事:</label>
      <p>後輩から間違いを指摘された</p>
      <p class="description">出来事は、怒りを感じた時の事を簡潔にまとめます。</p>
    </div>

    <div>
      <label>②日付：</label>
      <p><time datetime="2019/05/01">2019/05/01</time></p>
      <p class="description">怒りを感じた日付を記載します。</p>
    </div>

    <div>
      <label>③思った事：</label>
      <p>俺より後輩で、経験もないくせに意見してくるな。</p>
      <p class="description">その時に思った事を記載します。</p>
    </div>

    <div>
      <label>④感情：</label>
      <p>怒り。後輩より下に見られた思い。</p>
      <p class="description">その時の感情を記載します。徒労感や、憤怒など簡潔に記載します。</p>
    </div>

    <div>
      <label>⑤感情の強さ：</label>
      <p>6</p>
      <p class="description">怒りの感情の強さを1～10で記載します。10に行くほど感情が強くなります。</p>
    </div>

    <div>
      <label>⑥行動：</label>
      <p>指摘を無視して不快感をあらわにした。後輩に対して悪いところを色々言ってしまった。</p>
      <p class="description">その時にとった行動を記載します。</p>
    </div>

    <div>
      <label>⑦結果：</label>
      <p>後輩が残念そうにしていた。何か言いたそうだったが、かみ殺していたように感じた。その結果、後輩は何かあってもあまり意見をしてこなくなった。</p>
      <p class="description">上で記載した行動の結果どうなったのかを記載します。</p>
    </div>
  </div>
</template>

<style scoped>
#about {
  margin: 15px 0;
}

.title {
  font-size: 1.4em;
  font-weight: bold;
}

.description {
  font-weight: bold;
  text-decoration: underline;
}
</style>
