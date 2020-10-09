<template>
    <div>
        <div id="services">
            <div class="container-fluid">
                <div class="row">
                    <div class="container-fluid">
                        <div class="row background-grey hidden-sm-down">
                            <div class="container">
                                <ul class="nav nav-tabs text-center">
                                    <li class="nav-item">
                                        <router-link :to="{ name: 'polls' }" class="nav-link">
                                            Encuesta de Recursos Humanos <br />y Monitor de Mercado Laboral
                                        </router-link>
                                    </li>
                                    <li>
                                        <router-link :to="{ name: 'regional' }" class="nav-link">
                                            Encuesta Regional <br> de Recursos Humanos
                                        </router-link>
                                    </li>
                                    <li>
                                        <router-link :to="{ name: 'laboral' }" class="nav-link">
                                            Estudio de<br /> Mercado Laboral
                                        </router-link>
                                    </li>
                                    <!--
                                    <li>
                                        <router-link :to="{ name: 'buscador' }" class="nav-link">
                                            Buscador de<br /> Talentos
                                        </router-link>
                                    </li>
                                    -->
                                    <li>
                                        <router-link :to="{ name: 'juridico-laboral' }" class="nav-link">
                                            Asesoría <br />Jurídico Laboral
                                        </router-link>
                                    </li>
                                    <li>
                                        <router-link :to="{ name: 'pad' }" class="nav-link">
                                            &nbsp; &nbsp;  PAD &nbsp;&nbsp; <br /> App
                                        </router-link>
                                    </li>
                                    <li>
                                        <router-link :to="{ name: 'paquetes' }" class="nav-link">
                                            <!-- <img src="images/home/home_titulos__0004_paquetes.png" width="20%"> -->
                                            Conoce Nuestras<br />Membresías
                                        </router-link>
                                    </li>
                                    <li>
                                        <router-link :to="{ name: 'talleres' }" class="nav-link">
                                            Cursos y<br /> Talleres
                                        </router-link>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <router-view></router-view>
    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>