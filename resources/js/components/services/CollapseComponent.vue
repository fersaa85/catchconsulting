<template>
    <section class="pt-5 pb-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-5">
                    <h5 class="text-uppercase text-center background-black color-white pt-3 pb-3 mb-0">Cursos y talleres</h5>
                    <div class="panel-group" id="accordion">

                        <div class="panel panel-default" v-for="(coursesWorkshop, index) in coursesWorkshops">
                            <div class="panel-heading">
                                <p class="panel-title color-grey" :class="">
                                    <a @click="setBorderActive($event)" class="color-grey" data-toggle="collapse" data-parent="#accordion" :href="formatHref(index)">{{coursesWorkshop.title}} <font-awesome-icon icon="plus" class="text-blue float-right" /></a>
                                    <div class="clearfix"></div>
                                </p>
                            </div>
                            <div :id="formatID(index)" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p v-html="coursesWorkshop.text"></p>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="col-lg-5">
                    <div class="panel-group">
                        <h5 class="text-uppercase text-center background-black color-white pt-3 pb-3 mb-0">Asesoría en materia laboral</h5>

                        <div class="panel panel-default" v-for="(employmentAdvice, index) in employmentAdvices">
                            <div class="panel-heading">
                                <p class="panel-title">
                                    <span class="color-grey" >{{employmentAdvice.title}}</span>
                                </p>
                            </div>
                            <div>
                                <div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="col-lg-1"></div>
            </div>
        </div>
    </section>
</template>
<script>
    export default {
        data(){
            return {

                coursesWorkshops: [
                    {
                        title: 'Desarrollo de Líderes y Supervisores',
                        text: 'Mediante un diagnóstico organizacional, se identifica el estado actual\n' +
                        'de la organización, cómo se desarrollan sus individuos y grupos, qué\n' +
                        '\n' +
                        'potencialidades pueden ser explotadas, así como cuales son las dificultades' +
                        ' que enfrenta el sistema organizacional.\n' +
                        '\n' +
                        'Una vez identificadas las características actuales, mediante los equipos' +
                        '                                     de trabajo y su relación entre cada individuo, se puede realizar\n' +
                        '\n' +
                        '                                    un plan de acción que alinee las expectativas y tareas del equipo de\n' +
                        '                                    trabajo con un objetivo común que vaya acorde con las expectativas\n' +
                        '\n' +
                        '                                    de la alta dirección.'
                    },

                    {
                        title: 'Relaciones Laborales',
                        text: `Al finalizar el curso, el participante dominará los aspectos legales generales que rigen las relaciones laborales en su centro de trabajo, al tiempo

                        que desarrollará habilidades que le permitan no solo administrar de
                        manera adecuada a sus equipos de trabajo, sino implementar estrategias
                        que coadyuven al buen ambiente de trabajo y cultura organizacional.`
                    },

                    {
                        title: 'Clima Laboral modo Focus Group',
                        text: `Mediante un diagnóstico de Clima Organizacional, basado en una
                                    metodología de Focus Group, se puede indicar cuál es el estado de
                                    la organización, cómo se desarrollan los individuos y los grupos,
                                    y qué potencialidades pueden ser explotadas, así como cuales son las

                                    dificultades que enfrenta el sistema organizacional.`
                    },

                    {
                        title: 'Liderazgo y Coaching',
                        text: `Identificar su tipo de liderazgo y obtendrá propuesta de mejoras para

                        un mejor desempeño en su Círculo de Desarrollo.`
                    },

                    {
                        title: 'Asesoría en RRHH',
                        text: `Revisar el cumplimiento legal y la implementación de buenas prácticas en Recursos Humanos dentro de la empresa, con

                                acompañamiento mensual, para llegar a un cumplimiento del
                                100% en materia de Recursos Humanos.`
                    },

                    {
                        title: 'Excel Básico para RRHH',
                        text: `<p><b>Temario:</b><br>
                                - Pantalla inicial<br>
                                - Filas y columnas<br>
                                - Tipos de datos<br>
                                - Fórmulas<br>
                                - Ordenar<br>
                                - Formato condicional<br>
                                - Buscar<br>
                                - Función<br>
                                - Bloqueo de celdas<br>
                                - Correspondencias y Formularios Word/Excel</p>`
                    },

                    {
                        title: 'Core Tools',
                        text: `Conocerás herramientas clave para la gestión de la calidad en la industria
automotriz, el tipo de requisitos normativos y del cliente.`
                    },

                    {
                        title: 'Norma Automotriz IATF 16949:2016',
                        text: `Conocimiento para la gestión de la Norma IATF 1694-2016.
                                Gestión de riesgos y de cambios así como los roles necesarios para
                                el diseño, desarrollo e implementación del SGC en su empresa.`
                    },

                    {
                        title: 'Planeación Estratégica',
                        text: `Desarrollar el pensamiento estratégico y reconocer la planeación
                                como fundamento de la administración de los sistemas y como una

                                herramienta para poder contar con metas y objetivos organizacionales inteligentemente definidos.`
                    },

                    {
                        title: 'Aspectos Legales de la Capacitación',
                        text: `Proporcionar al participante los conocimientos básicos de Ley sobre

                                la obligación de proporcionar a todos los trabajadores, y éstos a recibir la capacitación o el adiestramiento en su trabajo, que le permita

                                elevar su nivel de vida, su competencia laboral y su productividad,
                                conforme a los planes y programas formulados, de común acuerdo,
                                por el patrón y el sindicato o la mayoría de sus trabajadores.`
                    },

                    {
                        title: 'Manejo de Relaciones Sindicales\n' +
                        'para Compañías Globales con operaciones\n' +
                        'en México',
                        text: `Al finalizar el taller, el participante dominará los antecedentes,
                                instrucciones, metodologías y recomendaciones básicas necesarias
                                para llevar un adecuado manejo y entendimiento de las relaciones

                                colectivas de trabajo (sindicatos).`
                    }
                ],

                employmentAdvices: [
                    {
                        title: 'Normalización y cumplimiento de la ley federal del trabajo'
                    },
                    {
                        title: 'Reglamentos internos de trabajo'
                    },
                    {
                        title: 'Contratos colectivos'
                    },
                    {
                        title: 'Evaluación de desempeño'
                    },
                    {
                        title: 'Desarrollo organizacional'
                    },
                    {
                        title: 'Nóminas'
                    }
                ]
            }
        },

        methods:{

            setBorderActive(event){
                //console.log(event.target.parentElement);
            },
            formatHref(index){
                return `#collapse${index}`;
            },
            formatID(index){
                return `collapse${index}`;
            }
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
