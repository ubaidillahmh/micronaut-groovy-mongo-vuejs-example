<template>
    <div>
        <form align="center" @submit="ambil()">
            <input type="text" v-model="nominal">
            <button>Ambil</button>
        </form>
        <br>
        <pre>
            Anda telah menabung {{ item.nominal }}
        </pre>
    </div>

</template>

<script>

import axios from 'axios'

export default {
    methods:{
        ambil(){
            axios.post('/api', {
                nominal: this.nominal,
                type: "debet"
            }).then(function (response){
                this.item = response.data
            })
        }
    },
    data: function() { return {
      item: '',
      nominal: '',
  }}
}
</script>

