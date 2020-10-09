<template>
    <div>
        <div class="bg-about-nosotros pt-5">
            <div class="container text-center">
                <div class="row">
                    <div class="col-md-5">
                        <h2 class="mt-5 mb-5">Nosotros</h2>
                        <h5>Somos el apoyo a nivel Nacional preferido de más de 400 compañías multinacionales al brindarles soluciones desde hace más de 6 años.</h5>

                        <h5>Nuestro Equipo se encuentra altamente calificado en calidad y satisfacción del cliente, logrando alianzas estratégicas a nivel Nacional.</h5>
                        <p class="text-center mb-0"><img src="images/about/nosotros_catch_1.png" width="100%"></p>
                    </div>
                    <div class="col-md-7">
                        <map-component></map-component>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
