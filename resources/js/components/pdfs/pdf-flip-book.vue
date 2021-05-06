<template>
    <div>
        <div class="jumbotron">
            <div class="container">
                <div class="col-sm-12">
                    <section  data-aos="fade-up" v-for="pdf in pdfs">
                        <div class="row  mb-5">
                            <div class="col-md-1 pr-0 pl-0 nopadding text-center mr-3 hidden-md-down">
                                <p class="btn mt-0 background-blue color-white">{{formatDate(pdf.created_at)}}</p>
                            </div>
                            <div class="col-md-1  text-center hidden-lg-up">
                                <p class="background-blue color-white">{{formatDate(pdf.created_at)}}</p>
                            </div>
                            <div class="col-md-7">
                                <h5>{{ pdf.name }}</h5>
                            </div>
                            <div class="col-md-2">
                                <a :href="`http://catchconsulting.test/uploads/${pdf.file}`" target="_blank"><font-awesome-icon icon="plus" class="text-white fa-3x" /> Leer más...</a>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data() {
            return {
                pdfs: [],

            }
        },

        mounted() {
            this.$http.get("api/pdfs")
                .then(response => response.json(), error => console.log(error))
                .then(json => this.pdfs = json, error => console.log(error));
        },

        methods: {
            formatedTxt: function(txt, substr=80) {
                return txt.replace(/(<([^>]+)>)/ig,"").substring(0, substr) + '...';
            },
            formatDate: function(date){
                let tmpDate =  date.split(' ');
                let postDate = tmpDate[0].split('-');
                return `${postDate[2]}/${postDate[1]}/${postDate[0]}`
            }
        }

    }
</script>
