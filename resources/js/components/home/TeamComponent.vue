<template>
    <section class="pt-5 pb-5" id="team">
        <div class="container">
            <div class="row">
                <div class="col-lg-12  text-center mb-5">
                    <h1>
                        <img src="images/team/home_titulos__0002_nuestro_equipo.png" >
                        Nuestro equipo</h1>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <p class="pt-3 pb-3 pl-5 pr-5">
                                <strong>Equipo multidisciplinario</strong> compuesto por colaboradores que ofrecen los conocimientos que nuestros clientes demandan desde hace <strong>6 años. Comunícate con nuestro equipo</strong>, es altamente calificado y apasionado por su trabajo.<br />
                                Acércate a cada uno de nuestros especialistas y obtén la información correcta del área que necesitas.</p>
                            <h4 class="pt-3 pb-3">¡Queremos escucharte!</h4>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 text-center mb-5"  data-aos="fade-up" v-for="(team, index) in teams">
                    <div class="team-member">
                        <p><img class="rounded-circle" :src="team.image" alt=""></p>
                        <div class="mt-5">
                            <h4>{{team.name}}</h4>
                            <p class="text-muted text-blue-dark">{{team.position}}</p>


                            <a :href="mailto(team.email)" :id="getId(index)" class="text-uppercase font-weight-bold" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Contactar</a>
                            <b-tooltip
                                    :target="getId(index)"
                                    placement="bottom"
                                    :title="team.email"
                            ></b-tooltip>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
    import Popper from 'vue-popperjs';
    import 'vue-popperjs/dist/vue-popper.css';
    export default {
        mounted() {
            console.log('Component mounted.')
        },
        components: {
            'popper': Popper
        },
        data () {
            return {
                teams: [

                    {
                        name: 'Rodrigo Arciniegas',
                        position: 'Dirección',
                        email:   'rodrigo@catchconsulting.com.mx',
                        image: 'images/team/Rodrigo_Arciniegas.jpg'
                    },
                    {
                        name: 'Alonso Gallardo',
                        position: 'Encuesta de Recursos Humanos',
                        email: 'alonso@catchconsulting.com.mx',
                        image: 'images/team/Alonso_Vallejo.jpg'
                    },
                    {
                        name: 'Rosalba Falcón',
                        position: 'Desarrollo Organizacional',
                        email: 'rosalba@catchconsulting.com.mx',
                        image: 'images/team/Rosalba_Falcon.jpg'
                    },
                    {
                        name: 'Valeria Roqueñí',
                        position: 'Administración',
                        email: 'valeria.hernandez@catchconsulting.com.mx',
                        image: 'images/team/Valeria_Roqueni.jpg'
                    },
                    {
                        name: 'Isaac Vallejo',
                        position: 'Analista de Información',
                        email: 'isaac.vallejo@catchconsulting.com.mx',
                        image: 'images/team/Isaac_Vallejo.jpg'
                    },
                    {
                        name: 'Fernanda Castañeda',
                        position: 'HR Business Partner',
                        email: 'fernanda.castaneda@catchconsulting.com.mx',
                        image: 'images/team/Fernanda_Castaneda.jpg'
                    },
                    {
                        name: 'Paola Galicia',
                        position: 'Ventas',
                        email: 'paola.galicia@catchconsulting.com.mx',
                        image: 'images/team/Paola_Galicia.jpg'
                    },

                ]


            }

        },

        methods: {
            mailto(value){
                return `mailto:${value}?Subject=Contacto asesor`;
            },

            getId(index){
                return 'tooltip-'+index;
            }
        }
    }
</script>