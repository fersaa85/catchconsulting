<template>
    <div>
        <slider-component></slider-component>
        <services-component></services-component>
        <customer-component></customer-component>
        <testimonials-component></testimonials-component>
        <team-component></team-component>
        <section class="pt-5 pb-5" id="blogFeed">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12  text-center">
                        <h1>
                            <img src="images/blog/home_titulos__0001_blog.png" >
                            Blog</h1>
                        <p class="pt-2 pb-2 pl-5 pr-5">Temas sobre la industria para mejorar las condiciones de trabajo y competitividad de las compañías.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <blog-feed home="true" section=""></blog-feed>
                    </div>
                </div>
            </div>
        </section>
        <form-contact-component></form-contact-component>
        <maps-component></maps-component>

    </div>
</template>
<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>