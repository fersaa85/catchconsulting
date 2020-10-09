<template>
    <div class="container-fluid">
        <div class="row background-blue">
            <div class="container header">
                <div class="row">
                    <div class="col-md-11 offset-md-1">
                        <p class="color-white hidden-sm-down">Comunícate con nosotros: </p>
                        <a href="tel:+524725000126" class="color-white"><font-awesome-icon icon="phone" /> (472) 500 01 26</a>
                        <ul class="pl-0 hidden-md-up-inline-block hidden-md-up">
                            <li><a href="https://www.facebook.com/catch.consultingto/?ref=bookmarks" target="_blank" class="color-white"><font-awesome-icon :icon="['fab', 'facebook']" class="fa-lg" /></a></li>
                            <li><a href="https://www.linkedin.com/company/18533142/admin/" target="_blank" class="color-white"><font-awesome-icon :icon="['fab', 'linkedin']" class="fa-lg" /></a></li>
                            <li><a href="https://twitter.com/CConsultingmx" target="_blank" class="color-white"><font-awesome-icon :icon="['fab', 'twitter']" class="fa-lg" /></a></li>
                        </ul>
                        <a href="mailto:informacion@catchconsulting.com.mx?Subject=Informes" target="_top" class="color-white"><font-awesome-icon icon="envelope" /> informacion@catchconsulting.com.mx</a>
                        <ul class="pl-0 hidden-sm-down mt-0">
                            <li><a href="https://www.facebook.com/catch.consultingto/?ref=bookmarks" target="_blank" class="color-white"><font-awesome-icon :icon="['fab', 'facebook']" class="fa-lg" /></a></li>
                            <li><a href="https://www.linkedin.com/company/18533142/admin/" target="_blank" class="color-white"><font-awesome-icon :icon="['fab', 'linkedin']" class="fa-lg" /></a></li>
                            <!--
                            <li><a href="https://twitter.com/CConsultingmx" target="_blank" class="color-white "><font-awesome-icon :icon="['fab', 'twitter']" class="fa-lg" /></a></li>
                            -->
                        </ul>
                        <a href="https://www.catch-consulting.com/" target="_blank" class="btn color-white background-aqua mt-0 mb-0 access-clients">Acceso a clientes</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row bg-white">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light hidden-sm-down">
                    <button class="navbar-toggler" type="button" @click="toggleBodyOverflow" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" ref="buttomBurguer">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item hidden-sm-down">
                                <router-link :to="{ name: '/' }" class="nav-link text-center">
                                    <img src="images/home/Catch_Consulting_Oficial.png">
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'home' }" class="nav-link text-center">
                                    Inicio
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'services' }" class="nav-link hidden-sm-down">
                                    Servicios
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'about' }" class="nav-link">
                                    Nosotros
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'customers' }" class="nav-link">
                                    Clientes
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'team' }" class="nav-link">
                                    Nuestro Equipo
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'blog' }" class="nav-link">
                                    Blog
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'press' }" class="nav-link">
                                    Prensa
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'contact' }" class="nav-link">
                                    Contacto
                                </router-link>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>


            <div>
                <b-navbar toggleable type="light" variant="white" class="hidden-md-up">
                    <b-navbar-toggle target="nav-text-collapse"></b-navbar-toggle>

                    <b-collapse id="nav-text-collapse" is-nav>
                        <router-link :to="{ name: 'home' }" class="nav-link dropdown-item">
                            <p>Inicio</p>
                        </router-link>
                        <b-navbar-toggle  target="nav-text-services" >
                            <p class="custom-text">Servicios  <font-awesome-icon :icon="['fas', 'sort-down']" class="fa-sm" /></p>
                        </b-navbar-toggle>

                        <b-collapse id="nav-text-services" is-nav>
                            <router-link :to="{ name: 'polls' }" class="nav-link dropdown-item">
                                <p>Encuestas de Recursos Humanos y Monitor de Mercado Laboral</p>
                            </router-link>
                            <div class="dropdown-divider"></div>
                            <router-link :to="{ name: 'regional' }" class="nav-link dropdown-item">
                                <p>Encuesta Regional de Recursos Humanos</p>
                            </router-link>
                            <div class="dropdown-divider"></div>
                            <router-link :to="{ name: 'laboral' }" class="nav-link dropdown-item">
                                <p>Estudio de Mercado Laboral</p>
                            </router-link>
                            <div class="dropdown-divider"></div>
                            <!--
                            <router-link :to="{ name: 'buscador' }" class="nav-link dropdown-item">
                                <p>Buscador de Talentos</p>
                            </router-link>
                            -->
                            <div class="dropdown-divider"></div>
                            <router-link :to="{ name: 'juridico-laboral' }" class="nav-link dropdown-item">
                                <p>Asesoría Jurídico Laboral</p>
                            </router-link>
                            <div class="dropdown-divider"></div>
                            <router-link :to="{ name: 'pad' }" class="nav-link dropdown-item">
                                <p>PAD App</p>
                            </router-link>
                            <div class="dropdown-divider"></div>
                            <router-link :to="{ name: 'paquetes' }" class="nav-link dropdown-item">
                                <p>Conoce Nuestras Membresías</p>
                            </router-link>
                            <router-link :to="{ name: 'talleres' }" class="nav-link dropdown-item">
                                <p>Cursos y Talleres</p>
                            </router-link>
                        </b-collapse>

                        <router-link :to="{ name: 'about' }" class="nav-link dropdown-item">
                            <p>Nosotros</p>
                        </router-link>
                        <router-link :to="{ name: 'customers' }" class="nav-link dropdown-item">
                            <p>Clientes</p>
                        </router-link>
                        <router-link :to="{ name: 'team' }" class="nav-link dropdown-item">
                            <p>Nuestro Equipo</p>
                        </router-link>
                        <router-link :to="{ name: 'blog' }" class="nav-link dropdown-item">
                            <p>Blog</p>
                        </router-link>
                        <router-link :to="{ name: 'press' }" class="nav-link dropdown-item">
                            <p>Prensa</p>
                        </router-link>
                        <router-link :to="{ name: 'contact' }" class="nav-link dropdown-item">
                            <p>Contacto</p>
                        </router-link>
                    </b-collapse>
                </b-navbar>
            </div>

        </div>



    </div>
</template>

<script>
    export default {
        data(){
          return {
              active: 'active',
              overflow: true
          }
        },
        methods: {
            toggleBodyOverflow: function(){
                /**
                var element = document.getElementById("body");

                if(this.overflow){
                    element.classList.add("overflow-hidden");
                }else{
                    element.classList.remove("overflow-hidden");
                }
                this.overflow = !this.overflow;
*/
            }

        },
        mounted() {
            console.log('Component mounted.')
        },
        beforeRouteUpdate (to, from, next){
            //this.overflow = true;
            //this.$refs.buttomBurguer.click();
            var element = document.getElementById("body");
            element.classList.remove("overflow-hidden");
        }
    }
</script>