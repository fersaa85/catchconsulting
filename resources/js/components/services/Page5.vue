<template>
    <div>
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Conoce Nuestras Membresías</h4>

       <know-membership></know-membership>
    </div>
</template>
<script>
    export default {
        mounted() {
            this.$bus.$on('hiddenData');
            if(this.$route.fullPath == 'servicios/paquetes-servicios'){

            }


        }
    }
</script>