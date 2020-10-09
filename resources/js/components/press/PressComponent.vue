<template>
    <section class="pt-5 pb-5">

        <div class="container">
            <div class="col-sm-12">

                <div class="col-lg-12  text-center">
                    <h2 class="section-heading text-uppercase">
                        <img src="images/blog/home_titulos__0001_blog.png" >
                        Prensa</h2>
                    <p class="pt-2 pb-2 pl-5 pr-5">Lo que dicen de nosotros.</p>
                </div>

                <paginate
                        name="press"
                        :list="data"
                        :per="10"
                        tag="tr"
                    >

                    <table class="table mt-5">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Medio</th>
                            <th>Título</th>
                            <th>Espacio web/impreso</th>
                            <th>Costo</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(article, index) in paginated('press')">
                            <td>{{++index}}</td>
                            <td>{{article.medium}}</td>
                            <td>{{article.title}}</td>
                            <td v-if="article.web_url">
                                <a :href="article.web_url" target="_blank" class="text-blue-dark">{{article.web_url}}</a>
                            </td>
                            <td v-if="article.printed_image">
                                <img :src="'uploads/'+article.printed_image" class="img-responsive">
                            </td>
                            <td>{{article.costs}}</td>
                        </tr>
                        </tbody>
                    </table>

                </paginate>

                <paginate-links
                        for="press"
                        :async="true"
                        :show-step-links="true"
                        :step-links="{
                          next: 'Siguiente',
                          prev: 'Anterior'
                        }"
                        :classes="{
                          'ul': 'pagination',
                          'ul > li': 'page-item',
                          'ul > li > a': 'page-link',
                        }"
                >
                </paginate-links>

            </div>
        </div>
    </section>
</template>

<script>
    export default {
        data() {
            return {
                data: [],
                paginate: ['press']
            }
        },

        created() {
            this.$http.get("api/prensa")
                .then(response => response.json(), error => console.log(error))
                .then(json => this.data = json, error => console.log(error));
        },

        methods: {
            formatedTxt: function(txt) {
                return txt.substring(0, 80) + '...';
            }
        }

    }
</script>