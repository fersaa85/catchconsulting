<template>
    <section class="bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center pt-5 pb-5">
                    <h3>Dos diferentes servicios, una sola metodología propia de Catch Consulting</h3>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row pt-5 pb-5" id="team">
                <div class="container">
                    <div>
                        <div class="row pt-5 pb-5">
                            <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <p><img src="images/services/servicios_encuesta_de_recursos_humanos.png" class="img-responsive"></p>
                                            <p>Herramienta semestral que te servirá para conocer la situación actual de las compañías de tu región, en materia de recursos humanos y así ser más asertivos en la toma de decisiones para la empresa.
                                            </p>
                                            <p>
                                                Incluye la difusión, seguimiento e integración de información y resultados que se presentaran dentro del reporte ejecutivo.
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p><img src="images/services/servicios_monitor_laboral.png" class="img-responsive" ></p>
                                            <p>Herramienta que te permite ver el panorama global de la región y compararse bimestralmente, con el mercado laboral de tu zona. Sobre temas como el ausentismo, rotación, negociación de contratos colectivos y atracción de talento.
                                            </p>
                                            <p>
                                                *Te proporcionamos un código para identificar la posición de tu Compañía respecto a otras.
                                            </p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 text-center mt-5 mb-5">
                                <router-link :to="{ name: 'contact' }" class="mt-5 mb-5 btn btn-border btn-border-blue ">
                                    Solicitar más información
                                </router-link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
