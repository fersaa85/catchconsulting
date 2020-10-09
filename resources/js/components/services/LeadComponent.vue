<template>
    <section class="">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="pb-5">¿Desarrollo de Lideres?</h1>
                    <h4>Nuestro objetivo es llevar a tu equipo a un nuevo nivel de conciencia para que hagan lo que mejor saben hacer.</h4>
                </div>
            </div>
            <div class="row pt-5 pb-5">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-3 text-center" data-aos="fade-up" v-for="participant in participantes">
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
                        image: 'servicios_cursos_herramientas_catch_0002_skill.png',
                        text: 'Aprendizaje con sentido, participación activa.'
                    },

                    {
                        image: 'servicios_cursos_y_talleres_catch_0002_skill.png',
                        text: 'Aplicar en su trabajo, habilidades y destrezas\n' +
                        'coherentes con el autodesarrollo y la comunicación\n' +
                        'grupal e individual.'
                    },

                    {
                        image: 'servicios_cursos_y_talleres_catch_0001_networking.png',
                        text: 'Desarrollar e implementar estrategias personales para\n' +
                        'contribuir a la mejora del clima laboral y del estrés\n' +
                        'interpersonal.'
                    },

                    {
                        image: 'servicios_cursos_y_talleres_catch_0000_participacion.png',
                        text: 'Desarrollar herramientas corporales y emocionales\n' +
                        'para el manejo del estrés laboral.'
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
