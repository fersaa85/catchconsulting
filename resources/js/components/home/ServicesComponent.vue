<template>
    <section class="page-section services pt-5 pb-5">
        <div class="container text-center text-white">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <h1 class="mt-10">Servicios</h1>
                    <h5 class="mb-5">
                        Porque no todos los clientes son iguales y sus necesidades son distintas, <strong>ofrecemos paquetes <br />
                    que se ajustan a </strong>cada uno de nuestros socios comerciales.</h5>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-lg-4 text-center" data-aos="fade-up">
                    <p><img src="images/home/home_servicios__0000_mide.png"></p>
                    <h5>MIDE</h5>
                    <p>Realizamos  cálculos estadísticos para grantizar la exactitud de más <strong>de 100 indicadores de Recursos Humanos.</strong></p>
                </div>
                <div class="col-lg-4 text-center" data-aos="fade-up">
                    <p><img src="images/home/home_servicios__0001_analiza.png"></p>
                    <h5>ANALIZA</h5>
                    <p>Asesoría en <strong>requerimientos legales</strong> para la industria.</p>
                </div>
                <div class="col-lg-4 text-center" data-aos="fade-up">
                    <p><img src="images/home/home_servicios__0002_mejora.png"></p>
                    <h5>MEJORA</h5>
                    <p>A través de cursos y talleres desarrollamos a tu equipo de trabajo.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 mt-5 mb-5">
                    <router-link :to="{ name: 'services' }" class="btn btn-border text-white">
                        Más Información
                    </router-link>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>