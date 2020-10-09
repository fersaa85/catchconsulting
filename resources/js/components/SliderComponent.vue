<template>
    <hooper :infiniteScroll="true" :autoPlay="true" :playSpeed="8000">
        <slide>
            <div class="slider slider-home">
                <div class="vertical-center">
                    <div class="container" >
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h1 class="text-title text-black mb-4"><strong>Consultoría de Recursos Humanos</strong></h1>
                                <h2 class="text-blue-dark">Analizamos, entendemos y mejoramos tu negocio.</h2>

                                <h3>Ofrecemos soluciones para mejorar las condiciones de trabajo y <br />
                                    desarrollar al máximo a tu Capital Humano.</h3>

                                <router-link :to="{ name: 'services' }" class="mt-5 mb-5 btn background-aqua ">
                                    <h4 class="color-white">Conócenos</h4>
                                </router-link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </slide>
        <slide>
            <div class="slider slider-home-two">
                <div class="vertical-center">
                    <div class="container" >
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h1 class="text-title text-black mb-4"><strong>Tiempo de entrega</strong></h1>


                                <h3>Trabajamos de manera dinámica para ofrecer a nuestros clientes información actualizada, mejorando el tiempo de entrega convencional, de 12 a 6 meses.
                                </h3>

                                <p class="text-black mt-4">*Solicita más información sobre los servicios con reportes semestrales.</p>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </slide>

        <slide>
            <div class="slider slider-home-tree">
                <div class="vertical-center">
                    <div class="container" >
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h1 class="text-title text-black mb-4"><strong>Paquetes de servicios</strong></h1>

                                <h3>Revisa nuestros paquetes de servicios. Contamos con asesores que te informarán, no solo del servicio que buscas, si no el que mejor resolverá tus necesidades.
                                </h3>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </slide>

        <slide>
            <div class="slider slider-home-four">
                <div class="vertical-center">
                    <div class="container" >
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h1 class="text-title text-black mb-4"><strong>Cursos y Talleres</strong></h1>


                                <h3 class="hidden-sm-down">
                                    Nuestros cursos y talleres no están enfocados a ser una clase teórica de conocimientos, para eso, nuestros clientes ya cuentan con sus especialistas de Recursos Humanos; más bien buscan contextualizar la situación actual del país, y trasladar ciertas situaciones al interior de cada compañía, revisando en conjunto los mejores caminos en la toma de decisiones.
                                </h3>
                                    <h3 class="hidden-md-up">No son una clase teórica, nuestros clientes
                                    ya cuentan con sus especialistas de
                                    recursos humanos. Buscamos ejemplos
                                    actuales del país y el mercado para
                                    aplicarlos a cada compañía, descubriendo
                                    juntos, las mejores decisiones</h3>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </slide>

        <hooper-navigation slot="hooper-addons"></hooper-navigation>
    </hooper>
</template>

<script>
import { Hooper, Slide, Navigation as HooperNavigation } from 'hooper';
import 'hooper/dist/hooper.css';
export default {
    components: {
        Hooper,
        Slide,
        HooperNavigation
    },
    mounted() {
        console.log('Component mounted.')
    }
}
</script>