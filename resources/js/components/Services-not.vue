<template>
    <div id="services">
        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="row background-grey n">
                        <div class="container">
                            <ul class="nav nav-tabs text-center">
                                <li class="active background-blue">
                                    <a data-toggle="tab" href="#home">Encuesta de Recursos Humanos <br />y Monitor de Mercado Laboral</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#menu1">Encuesta Regional <br> de Recursos Humanos</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#menu2">Estudio de<br /> Mercado Laboral</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#menu3">Buscador de<br /> Talentos</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#menu4" class="text-blue">
                                        <img class="d-md-inline-block" src="images/home/home_titulos__0004_paquetes.png" width="20%">
                                        <span class="d-md-inline-block">Paquetes de Servicios</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#menu5">Cursos y<br /> Talleres</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tab-content">
                        <div id="home" class="tab-pane active">
                            <two-services-component></two-services-component>
                            <who-participantes></who-participantes>
                            <!--
                            <map-interactive></map-interactive>
                            -->
                            <company-particpantes></company-particpantes>
                            <infomations-component></infomations-component>
                            <take-part></take-part>
                        </div>
                        <div id="menu1" class="tab-pane fade">
                            <slider-services
                                    backgorund="bg-servcices-regional"
                                    colortext="color-white"
                                    title="Encuenta Regional de Recursos Humanos"
                                    text="Es una reporte elaborado para ti, ya que podras selecionar la muestra por:
                                        Ubicacion (Parque Industrial, Estado o Municpio)
                                        Tamaño de las compañias, Tipo de proceso."
                                    subtext="* Contiene informacion principalmente a Nivel Operativo"
                                    buttom="Solicitar mas Infomacion"
                                    url=""
                            ></slider-services>
                        </div>
                        <div id="menu2" class="tab-pane fade">
                            <slider-services
                                    backgorund="bg-service-estudio"
                                    title="Estudio de Mercado Laboral"
                                    text="Analizamos tus puestos administativos y operativos
                                        es un resporte especializado y funcional,
                                        permite analizar sus indices de competitividad dentro del mercado."
                                    subtext=""
                                    buttom="Solicitar mas Infomacion"
                                    url=""
                            ></slider-services>
                            <how-do-it></how-do-it>
                            <slider-services
                                    backgorund="background-grey"
                                    colortext="color-grey"
                                    title="Disponible en cuanto el cliete lo requiera"
                                    text="Se toma en cuenta la ultima actulizacion de la ERH
                                            Tiempo de entrega: 4 - 6 semanas"
                                    subtext="* Toda informacion disponible tiene vigencia no mayor a  6 meses"
                                    buttom=""
                                    url=""
                            ></slider-services>
                        </div>

                    <div id="menu3" class="tab-pane fade">
                        <slider-services
                                backgorund="bg-service-buscador"
                                title="Buscador de talentos"
                                text="Reporte detallado con la informacion del candidato a contratar sobre el numero y la ubicacion de las empresas
                                en las que ha trabajado fecha de alta y baja laboral, tiempo promedio y las incidencias reportadas
                                       "
                                subtext="*  pregunta por la dispoibilidad en la region"
                                buttom="Solicitar mas Infomacion"
                                url=""
                        ></slider-services>
                    </div>

                    <div id="menu4" class="tab-pane fade">
                        <pack-study-component></pack-study-component>
                    </div>
                    <div id="menu5" class="tab-pane fade">
                        <lead-component></lead-component>
                        <collapse-component></collapse-component>
                    </div>
                </div>

            </div>
        </div>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        methods: {
            setActive: function (event) {
                console.log('setActive');
            }
        },
    }
</script>
