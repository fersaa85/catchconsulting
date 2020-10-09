<template>
    <section class="background-grey">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-lg-12 text-center pt-5 pb-5">
                    <h1>¿Qué información Obtendrás?</h1>
                    <h4>Más de 100 indicadores clave para las estrategias de Capital Humano.</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="text-center  pt-3 pb-3 col-md-3" data-aos="fade-up" v-if="index <= 3"  v-for="(indicator, index) in indicators">
                            <p><img :src="formatter(indicator.image)" ></p>
                            <h5>{{indicator.text}}</h5>
                        </div>
                        <div class="col-md-1" ></div>
                        <div class="text-center  pt-3 pb-3 col-md-2" data-aos="fade-up" v-if="index > 3"  v-for="(indicator, index) in indicators">
                            <p><img :src="formatter(indicator.image)" ></p>
                            <h5>{{indicator.text}}</h5>
                        </div>
                        <div class="col-md-1" ></div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</template>
<script>
    export default {
        data(){
            return {
                indicators: [
                    {
                        image: 'servicis_info__0008_salarios.png',
                        text: 'Salarios y beneficios'
                    },

                    {
                        image: 'servicis_info__0007_incrementos.png',
                        text: 'Incrementos salariales'
                    },

                    {
                        image: 'servicis_info__0006_necesidad.png',
                        text: 'Necesidad de mano de obra'
                    },

                    {
                        image: 'servicis_info__0005_inversiones.png',
                        text: 'Nuevas inversiones'
                    },

                    {
                        image: 'servicis_info__0004_buenaspracticas.png',
                        text: 'Buenas prácticas'
                    },

                    {
                        image: 'servicis_info__0003_ausentismo.png',
                        text: 'Ausentismo y rotación'
                    },

                    {
                        image: 'servicis_info__0002_negociacion.png',
                        text: 'Negociación de contrato colectivo'
                    },

                    {
                        image: 'servicis_info__0001_prestaciones.png',
                        text: 'Prestaciones'
                    },

                    {
                        image: 'servicis_info__0000_talento.png',
                        text: 'Atracción de talento'
                    },
                ]
            }
        },
        methods:{
            formatter(value){
                return `images/services/${value}`;
            }
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
