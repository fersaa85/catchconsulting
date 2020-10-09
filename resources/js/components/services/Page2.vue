<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Encuesta Regional de Recursos Humanos</h4>

        <slider-services
                backgorund="bg-servcices-regional"
                title="Encuesta Regional de Recursos Humanos"
                text="Es una reporte elaborado para ti, ya que podras seleccionar  la muestra por:
                                        Ubicación (Parque Industrial, Estado ó Municipio)
                                        tamaño de las compañías y proceso."
                subtext="* Contiene información principalmente a Nivel Operativo."
                buttom="Solicitar más Infomación"
                url=""
        ></slider-services>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>