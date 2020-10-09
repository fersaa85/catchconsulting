<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Buscador de Talentos</h4>

        <slider-services
                backgorund="bg-service-buscador"
                title="Buscador de talentos"
                text="Reporte detallado con la información del candidato a contratar sobre el número y la ubicación de las empresas
                                en las que ha trabajado, fecha de alta y baja laboral, tiempo promedio y las incidencias reportadas."
                subtext="*  Pregunta por la disponibilidad en la región."
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