<template>
    <div>
        <slider-services
                backgorund="bg-service-asesoria-laboral"
                title="Asesoría Jurídico Laboral"
                html='* Atención de Demandas. <br />
* Atención de citatorios para pláticas Conciliatorias.  <br />
* Desvinculaciones. <br />
* Elaboración de Convenios. <br />
* Asesoría en cumplimiento Legal - Laboral. <br />
* Servicio por "iguala mensual" ó por "asunto".'
                subtext=''
                buttom="Contáctanos"
                url="contacto"
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