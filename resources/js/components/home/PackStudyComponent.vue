<template>
    <section class="page-section pt-5 pb-5">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-8 mb-5 mt-5">
                    <h1 class="mt-10"><img src="images/home/home_titulos__0004_paquetes.png"> Paquetes de Estudios de Mercado Laboral</h1>
                    <h5 class="mb-5">
                        Creamos paquetes anuales que te permiten recibir información constante sobre el mercado laboral.

                    </h5>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                 <div class="hidden-md-up">
                     <img src="images/home/thumbnail_Paquetes_VM.png" class="img-responsive">
                 </div>
                <div class="table-responsive hidden-sm-down">
                    <table class="table packstudy">
                        <thead>
                            <tr class="hidden-border-td ">
                                <th scope="col"></th>
                                <th scope="col" class="thead text-white text-uppercase"><img src="images/home/homa_paquetes__0003_comparte.png"> Comparte</th>
                                <th scope="col" class="thead text-white text-uppercase"><img src="images/home/homa_paquetes__0002_compara.png"> Compara</th>
                                <th scope="col" class="thead text-white text-uppercase"><img src="images/home/homa_paquetes__0001_evalua.png"> Evalúa</th>
                                <th scope="col" class="thead text-white text-uppercase"><img src="images/home/homa_paquetes__0000_mejora.png"> Mejora</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="row in tableData">
                                <td>{{row.name}}</td>
                                <td class="text-center"><img :src="formatter(row.share)"/></td>
                                <td class="text-center"><img :src="formatter(row.compare)"/></td>
                                <td class="text-center"><img :src="formatter(row.evaluate)"/></td>
                                <td class="text-center"><img :src="formatter(row.improvement)"/></td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr class="hidden-border-td td-buttoms">
                                <td class="bg-transparent pt-0 pb-0"></td>
                                <td colspan="4" class="bg-transparent pt-0 pb-0">
                                    <router-link :to="{ name: 'contact' }" class="mb-3 btn btn-moreinfo text-white hidden-sm-down">
                                        Más información
                                    </router-link>
                                </td>
                            </tr>
                            <tr class="hidden-border-td td-buttoms">
                                <td class="bg-transparent pt-0 pb-0"></td>
                                <td colspan="4" class="bg-transparent pt-0 pb-0">
                                    <router-link :to="{ name: 'calendar' }" class="btn btn-appointment bg-white hidden-sm-down">
                                        Da clic aquí para agendar una cita
                                    </router-link>
                                </td>
                            </tr>
                        </tfoot>

                    </table>
                </div>
                </div>

            </div>
        </div>
    </section>
</template>
<script>
    export default {
        data () {
            return {
                tableData: [
                    {
                      name: '2 Encuestas de Recursos Humanos.',
                      share: true,
                      compare: true,
                      evaluate: true,
                      improvement: true
                    },

                    {
                        name: '6 Monitores de Mercado Laboral.',
                        share: true,
                        compare: true,
                        evaluate: true,
                        improvement: true
                    },

                    {
                        name: 'Encuesta Regional de Recursos Humanos.',
                        share: false,
                        compare: true,
                        evaluate: true,
                        improvement: true
                    },

                    {
                        name: 'App Catch Consulting.',
                        share: false,
                        compare: true,
                        evaluate: true,
                        improvement: true
                    },

                    {
                        name: 'Estudio de Mercado Laboral.',
                        share: false,
                        compare: false,
                        evaluate: true,
                        improvement: true
                    },

                    {
                        name: 'Archivos Complementarios.',
                        share: false,
                        compare: false,
                        evaluate: true,
                        improvement: true
                    },

                    {
                        name: 'Buscador de Talentos.',
                        share: false,
                        compare: false,
                        evaluate: false,
                        improvement: true
                    }
                ]
            }
        },
        methods: {
            formatter(value, rowProperties) {
                return (value)? 'images/home/home_paquetes__0001_paquetes_tick-.png' : 'images/home/home_paquetes__0000_paquetes_x.png';
            },
        },
    }
</script>