<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <!-- <ul class=apiitems>
        <li v-for='item in items' v-bind:key='item'>
            {{ item }}
        </li>
    </ul> -->

    <table border="1" align="center">
      <tr>
        <th>Nominal</th>
        <th>Tipe</th>
      </tr>
      <tr v-for='item in items'>
        <td>{{ item.nominal }}</td>
        <td>{{ item.type }}</td>
      </tr>
    </table>
    
  </div>
</template>

<script>

import axios from 'axios'

export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  mounted: function() {
     axios.get('/api')
          .then(response => {
              console.log(response)
              this.items = response.data
          })
  },
  data: function() { return {
      items: null
  }}
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}


li {
  display: inline-block;
  margin: 0 10px;
}

ul.apiitems {
  list-style-type: auto;
}
.apiitems li {
    display: list-item;
}
a {
  color: #42b983;
}
</style>
