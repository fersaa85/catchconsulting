<template>
    <section class="pt-5 pb-5">

        <div class="jumbotron">
            <div class="container">
                <div class="col-sm-12">
                    <section  data-aos="fade-up" v-for="pdf in pdfs">
                        <div class="row  mb-5">
                            <div class="col-md-2 pr-0 pl-0 nopadding text-center mr-3 hidden-md-down">
                                <p class="background-blue color-white">{{formatDate(pdf.created_at)}}</p>
                            </div>
                            <div class="col-md-6">
                                <p>{{ pdf.name }}</p>
                            </div>
                            <div class="col-md-3">
                                <a :href="`https://catchconsulting.com.mx/uploads/${pdf.file}`" target="_blank">Leer más...</a>
                            </div>
                        </div>
                    </section>


                    <section v-if="!pdfs.length">
                        <p>No hay documentos cargados</p>
                    </section>
                </div>
            </div>
        </div>

    </section>
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
