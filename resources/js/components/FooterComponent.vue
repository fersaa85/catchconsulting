<template>
    <div class="container-fluid background-blue pt-5 pb-5">
        <div class="fixed-bottom" v-if="isVidible">
            <router-link :to="{ name: 'calendar' }" class="btn btn-primary background-aqua nav-link text-center">
                <h5>Agenda tu cita
                    <!--<font-awesome-icon icon="calendar-check" class="fa-lg" /> ó
                    <font-awesome-icon icon="map-marker-alt" class="fa-lg" />
                    -->
                </h5>
            </router-link>
        </div>
        <div class="row">
            <div class="container footer pb-3">
                <div class="row">
                    <div class="col-md-12">
                        <p class="color-white text-left">Copyright © Grupo Catch. All Rights Reserved </p>

                        <router-link :to="{ name: 'privacity' }" class="color-white pull-right">
                            Aviso de privacidad
                        </router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
          return {
              isVidible: true
          }
        },
        mounted() {
           console.log(this.$route.fullPath);
            console.info('App currentRoute:', this.$router.currentRoute)

        }
    }
</script>