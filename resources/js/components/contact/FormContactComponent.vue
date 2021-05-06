<template>
    <section id="contact">
        <div class="container pt-5 pb-5">
            <div class="row">
                <div class="col-lg-12 text-center mt-5 mb-5">
                    <h1>
                        <img src="images/contact/home_titulos__0000_contactanos.png">
                        Contáctanos</h1>
                         <h4>Ó, aún mejor, <strong>¡Ven a visitarnos!</strong></h4>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-success text-center" role="alert" v-if="isSending">
                        Se ha enviado el mensaje exitosamente.
                    </div>
                    <form id="contactForm" novalidate="novalidate" @submit.prevent="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control"  type="text" placeholder="Nombre *" required="required" data-validation-required-message="Please enter your name."  v-model="contact.name">
                                    <p class="help-block text-danger" v-if="validName">Por favor ingrese un nombre</p>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  type="text" placeholder="Empresa *" required="required" data-validation-required-message="Please enter your email address."  v-model="contact.company">
                                    <p class="help-block text-danger" v-if="validCompany">Por favor ingrese el nombre de su empresa</p>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  type="text" placeholder="Email *" required="required" data-validation-required-message="Please enter your phone number."  v-model="contact.email">
                                    <p class="help-block text-danger" v-if="validEmail">Por favor ingrese un email valido</p>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  type="tel" placeholder="Teléfono" required="required" data-validation-required-message="Please enter your phone number."  v-model="contact.phone">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control"  placeholder="Mensaje" required="required" data-validation-required-message="Please enter a message." v-model="contact.message"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <div id="success"></div>
                                    <button id="sendMessageButton" :disabled="isDisabled" class="btn btn-border btn-border-blue text-uppercase" type="submit" >Enviar</button>
                                    <span>Campos marcados con (*) obligatorios</span>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h4 class="text-blue">Informes: <a href="tel:+524725000126" class="text-blue">(472) 500  01 26</a></h4>
                                <a href="mailto:informacion@catchconsulting.com.mx?Subject=Informes" target="_top" class="text-blue"><font-awesome-icon icon="envelope" /> informacion@catchconsulting.com.mx</a>
                                <br /><br />

                                <h4>Guanajuato</h4>
                                <p><font-awesome-icon icon="map-marker-alt" class="text-blue" /> G100 Business Disctric, Suite. 706.Puerto Interior, Silao, GTO.</p>
                                <p><a href="tel:+524725000126" class="text-blue"><font-awesome-icon icon="phone" /> (472) 500  01 26</a></p>

                                <h4>Querétaro</h4>
                                <p><font-awesome-icon icon="map-marker-alt" class="text-blue" /> Torre corporativo 2, piso 00, Central Park, QRO.</p>
                                <p><a href="tel:+524722902428" class="text-blue" ><font-awesome-icon icon="phone" /> (442) 290  24 28</a></p>

                                <h4>Monterrey</h4>
                                <p><font-awesome-icon icon="map-marker-alt" class="text-blue" /> Torre Micropolis Piso 8. Eugenio Garza Sada 3820, Monterrey N.L.</p>
                                <p><a href="tel:+528121426958" class="text-blue"><font-awesome-icon icon="phone" /> (812) 142  69 58</a></p>

                                <h4>San Luis Potosí</h4>
                                <p><font-awesome-icon icon="map-marker-alt" class="text-blue" /> Plaza Covalia, Int. 302. Av. Real de Lomas 350, San Luis Potosí, S.L.P..</p>
                                <p><a href="tel:+528121426958" class="text-blue"><font-awesome-icon icon="phone" /> (444) 476 0122</a></p>

                                <h4>Quebec</h4>
                                <p><font-awesome-icon icon="map-marker-alt" class="text-blue" /> Sherbrooke, Québec, Canadá.</p>
                                <p><a href="tel:+1(819)4461811" class="text-blue"><font-awesome-icon icon="phone" /> +1 (819) 446 1811</a></p>


                                <div class="col-md-12 follow">
                                        <h5 class="text-blue">¡Síguenos!</h5>
                                        <ul>
                                            <li><a href="https://www.facebook.com/catch.consultingto/?ref=bookmarks" target="_blank" class="text-blue"><font-awesome-icon :icon="['fab', 'facebook']" class="fa-3x" /></a></li>
                                            <li><a href="https://www.linkedin.com/company/18533142/admin/" target="_blank" class="text-blue"><font-awesome-icon :icon="['fab', 'linkedin']" class="fa-3x" /></a></li>
                                            <!--
                                            <li><a href="https://twitter.com/CConsultingmx" target="_blank" class="text-blue"><font-awesome-icon :icon="['fab', 'twitter']" class="fa-3x" /></a></li>
                                            -->
                                        </ul>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
    export default {
        created(){

        },
        data: function() {
            return {
                isDisabled: false,
                contact: {
                    name: '',
                    company: '',
                    email: '',
                    message: '',
                    phone: ''
                },


                isSending: false,
                validName: false,
                validCompany: false,
                validEmail: false
            }
        },
        methods: {
            post: function() {

                this.isDisabled = true;
                if(this._validate(this.contact)) { // POST /someUrl
                    this.$http.post('api/send-contact', this.contact).then(response => {
                        this.contact = {
                            name: '',
                            company: '',
                            email: '',
                            message: '',
                            phone: '',
                        }
                        this.isSending = true
                        setTimeout(() => this.isSending = false, 5000);
                        this.isDisabled = false;
                    }, response => {
                        // error callback
                        this.isDisabled = false;
                    });
                }
            },

            _validate: function(contact){
                this.validEmail = false;
                this.validCompany = false;
                this.validName = false;

                let error = false;
                if(!contact.name){
                    this.validName = true;
                    error = true;
                }
                if(!contact.company){
                    this.validCompany = true;
                    error = true;
                }
                if(!contact.email){
                    this.validEmail = true;
                    error = true;
                }
                if(!this._validateEmail(contact.email)){
                    this.validEmail = true;
                    error = true;
                }

                if(error){
                    return;
                }

                return true;

            },

            _validateEmail: function(email) {
                var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                return re.test(String(email).toLowerCase());
            },

        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>