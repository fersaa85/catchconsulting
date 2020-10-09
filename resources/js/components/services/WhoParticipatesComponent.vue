<template>
    <section class="background-grey">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1>¿Quien participa?</h1>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-4 text-center" data-aos="fade-up" v-for="participant in participantes">
                            <p><img :src="formatter(participant.image)" ></p>
                            <p>{{participant.text}}</p>
                        </div>

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
                participantes: [
                    {
                        image: 'servicios_monitor_laboral__0002_compañias.png',
                        text: 'Más de 400 compañías.'
                    },

                    {
                        image: 'servicios_monitor_laboral__0001_empleos.png',
                        text: 'Más de 360 mil empleados representados.'
                    },

                    {
                        image: 'servicios_monitor_laboral__0000_convenios.png',
                        text: '12 Convenios de colaboración con diversas Asociaciones.'
                    }
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
