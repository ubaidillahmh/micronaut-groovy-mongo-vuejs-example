<template>
    <div>
        <form align="center" @submit="tabung()">
            <input type="text" v-model="nominal">
            <button>Tabung</button>
        </form>
    </div>
</template>

<script>

import axios from 'axios'

export default {
    methods:{
        tabung(){
            axios.post('/api', {
                nominal: this.nominal,
                type: "kredit"
            }).then(function (response){
                this.item = response.data
            })
        }
    },
    data: function() { return {
      item: null,
      nominal: '',
  }}
}
</script>

