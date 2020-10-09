<template>
    <div>
        <div class="jumbotron  pt-5 pb-5">
            <div class="container text-center">
                <h1 class=" pt-5 pb-5">Nuestros valores</h1>
                <div class="row pb-5">
                    <div class="col-md-1" ></div>
                    <div class="col-md-2" data-aos="fade-up" v-for="value in values">
                        <img :src="format(value.image)" width="100%" />
                    </div>
                    <div class="col-md-1" ></div>
                </div>

            </div>
        </div>

    </div>
</template>
<script>
    export default {
        data(){
          return {
              values:[
                  {
                      image: 'valores__0004_pasión_catch.png'
                  },
                  {
                      image: 'valores__0003_responsabilidad_catch.png'
                  },
                  {
                      image: 'valores__0002_creatividad_catch.png'
                  },
                  {
                      image: 'valores__0001_espontaneidad_catch.png'
                  },
                  {
                      image: 'valores__0000_versatilidad_catch.png'
                  }
              ]
          }
        },
        methods:{
            format(image){
                return `images/about/${image}`;
            }
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
