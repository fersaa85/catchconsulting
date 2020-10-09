<template>
    <section id="testimonials" class="background-blue pt-5 pb-5">
        <div class="container-fluid">
            <div id="carouselExampleIndicators" class="carousel slide mt-5 mb-5" data-ride="carousel" data-interval="8000">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators"
                        :data-slide-to="index"
                        class=""
                        v-for="(testimonial, index) in testimonials"
                        :class="{'active': index === 0}"
                    ></li>
                </ol>

                <div class="carousel-inner text-center text-white">
                    <div class="carousel-item"
                         v-for="(testimonial, index) in testimonials"
                         :class="{'active': index === 0}">
                        <div class="mt-5 mb-5">
                            <h2 class="mb-5 font-italic">{{testimonial.testimony}}</h2>
                            <h3>{{testimonial.company }}</h3>
                            <p>{{testimonial.name }}</p>
                            <p>{{testimonial.job }}</p>
                        </div>
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
                testimonials: [
                    {
                        name: 'Verónica Ávila',
                        job: 'Generalista Sr. RRHH.',
                        company: 'Compañía: Borgwarner.',
                        testimony: '"Los asesores en todo momento están a tu disposición para aclarar dudas, son atentos y amables."',
                    },

                    {
                        name: 'Fermín Briceño.',
                        job: 'Director RRHH',
                        company: 'Compañía: Saga Tekkohsho Mexicana, S.A. de C.V.',
                        testimony: '"El servicio es muy profesional, la entrega del equipo en realizar el informe es puntual, la\n' +
                        '            explicación brindada es satisfactoria, el informe final de mucha calidad."',
                    },

                    {
                        name: 'Christian Gonzalez',
                        job: 'HR Senior Analyst',
                        company: 'Compañía: Eaton Truck Slp.',
                        testimony: '“El servicio y la información que nos otorgaron ha sido de gran ayuda para tomar decisiones y establecer estrategias en base a información confiable y vigente. !Gracias!”',
                    },

                    {
                        name: 'Teresa Lomelí',
                        job: 'Gerente de RRHH',
                        company: 'Compañía: Flexitech.',
                        testimony: '“Catch ha sido parte fundamental en nuestra organización ya que la información, análisis y\n' +
                        '            comentarios, nos ayudarán a mejorar de manera considerable.”',
                    },

                    {
                        name: 'José Castillo',
                        job: 'HR Manager.',
                        company: 'Compañía: Plastic omnium.',
                        testimony: '“Servicio y atención excepcional presentando información veraz y de gran utilidad.”',
                    },

                    {
                        name: 'José Carlos Castañeda.',
                        job: 'Especialista de compensaciones',
                        company: 'Compañía: Robert Bosch planta San Luis Potosí.',
                        testimony: '“La entrega y respuesta por parte de Catch fué en tiempo. La información proporcionada\n' +
                        'fue de gran utilidad para nuestros fines.”\n',
                    },
                ]


            }
        },
        mounted() {
        }
    }
</script>