<template>

      <div class="slider" :class="backgorund">
          <div class="vertical-center">
             <div class="container" >
                        <div class="row">
                            <div class="col-md-12 text-center" >
                                <h1 :class="colortext">{{title}}</h1>
                                <h2></h2>

                                <p :class="colortext">{{text}}</p>
                                <p :class="colortext" v-html="html"></p>
                                <span :class="colortext">{{subtext}}</span>

                                <p v-show="buttom">
                                    <router-link :to="{ name: 'contact' }" class="mt-5 mb-5 btn btn-border ">
                                        <span>{{buttom}}</span>
                                    </router-link>
                                </p>
                            </div>
                        </div>
              </div>
         </div>
      </div>

</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        props: [
            'colortext',
            'backgorund',
            'title',
            'text',
            'subtext',
            'buttom',
            'url',
            'classtext',
            'html'
        ]
    }
</script>