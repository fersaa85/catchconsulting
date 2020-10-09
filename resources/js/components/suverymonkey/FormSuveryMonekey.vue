<template>

    <section class="pt-5 pb-5">
        <div class="vld-parent">
            <loading
               :active.sync="isLoading"
               :is-full-page="isLoading"
            ></loading>
        </div>
        <div class="container">
            <div class="col-sm-12">

                <div class="col-lg-12  text-center">
                    <h2 class="section-heading text-uppercase">
                        <img src="images/blog/home_titulos__0001_blog.png" >
                        Encuestas</h2>
                    <p class="pt-2 pb-2 pl-5 pr-5"></p>
                </div>


                <div id="FormSuveryMonkey" class="col-lg-12  text-center">
                    <template v-if="polls">
                        <vue-friendly-iframe
                                className="iframe"
                                :src="polls"
                                @iframe-load="onLoadIframe">
                        </vue-friendly-iframe>
                    </template>
                    <template v-if="isNotPolls">
                        <div class="not-iframe">
                            <h5>No hay encuesta activas en este momento</h5>
                        </div>
                    </template>
                </div>
            </div>
        </div>
    </section>

</template>

<script>
    // Import component
    import Loading from 'vue-loading-overlay';
    // Import stylesheet
    import 'vue-loading-overlay/dist/vue-loading.css';

    export default {

        data() {
            return {
                polls: '',
                isLoading: false,
                isNotPolls: false
            }
        },
        created() {
            this.$http.get("api/suverymonkey")
                .then(function (response){
                    let data = response.body;
                    if(Object.keys(data).length !== 0){
                        this.polls = data.iframe;
                    }else{
                        this.isNotPolls = true;
                        this.isLoading = false;
                    }
                })
                .catch(error => console.log(error));
        },
        components: {
            Loading
        },
        methods: {
            onLoadIframe(){
                this.isLoading = false;
            }
        }
    }
</script>