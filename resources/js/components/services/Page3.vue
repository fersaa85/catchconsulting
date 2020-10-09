<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Estudio de Mercado Laboral</h4>

        <slider-services
                backgorund="bg-service-estudio"
                title="Estudio de Mercado Laboral"
                text="Analizamos tus puestos administrativos y operativos
                                        es un reporte especializado y funcional,
                                        permite analizar sus índices de competitividad dentro del mercado."
                subtext=""
                buttom="Solicitar más Infomación"
                url=""
        ></slider-services>
        <how-do-it></how-do-it>
        <slider-services
                backgorund="background-grey"
                colortext="color-grey"
                title="Disponible cuando el cliente lo requiera"
                text="Se toma en cuenta la última actualización de la ERH.
                                            Tiempo de entrega: 4 - 6 semanas."
                subtext="* Toda información disponible tiene vigencia no mayor a  6 meses."
                buttom=""
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