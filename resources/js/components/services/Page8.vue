<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">App PAD</h4>

        <what-is-pda></what-is-pda>
        <section class="background-blue">
            <div class="container text-center text-white ">
                <div class="row justify-content-center">
                    <div class="col-lg-8 mt-5">
                        <h1 class="mt-10">La cuál se sostiene en 3 Ejes principales:</h1>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-lg-4 text-center" data-aos="fade-up">
                        <p><img src="images/services/comunicacion_catch.png"></p>
                        <h5>Comunicación</h5>
                        <p>Masiva y efectiva</p>
                    </div>
                    <div class="col-lg-4 text-center" data-aos="fade-up">
                        <p><img src="images/services/recopilacion-de-datos_catch.png"></p>
                        <h5>Recopilación</h5>
                        <p>De datos e información</p>
                    </div>
                    <div class="col-lg-4 text-center" data-aos="fade-up">
                        <p><img src="images/services/canal-abrierto_catch.png"></p>
                        <h5>Canal abierto </h5>
                        <p>De confianza para los empleados</p>
                    </div>
                </div>
            </div>
        </section>

        <slider-services class="slider-pad"
                backgorund="bg-service-comunicacion-efectiva"
                title="Comunicación masiva y efectiva"
                html="
                <p>Más que una pizarra de anuncios y comunicados, PAD es una ventana multimedia para la comunicación interna de la empresa. </p>
<p>Haz llegar a los trabajadores la información más importante y/o urgente a través de secciones como: </p>
<br /><br />
<h3>•Noticias (Avisos, Calendario de eventos importantes, Fechas de aniversario).</h3>
<h3>•Tu Empresa (Misión, Visión, Reglamento, preguntas FAQ's, solicitud de vacaciones).</h3>
<h3>•Para ti (Menú de la semana, Rutas de transporte, Tienda de souvenirs, Revista Digital).</h3>
<br /><br />
<h4>PAD recopila  información de iniciativas ó inquietudes a través de formularios en la sección ''Envío''. Comunicación de dos vías, Empresa - Colaborador, Colabrador  - Empresa.
            </h4>"
        ></slider-services>

        <pakage-component class="pt-5 pb-5"></pakage-component>

    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>