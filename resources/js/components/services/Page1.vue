<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Encuestas de Recursos Humanos y Monitor de Mercado Laboral</h4>
        <two-services-component></two-services-component>
        <who-participantes></who-participantes>
        <!--
        <map-interactive></map-interactive>
        -->
        <company-particpantes></company-particpantes>
        <infomations-component></infomations-component>
        <take-part></take-part>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>