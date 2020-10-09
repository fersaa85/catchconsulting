<template>
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-cente">
                    <h2 class="section-heading text-uppercase">
                        <img src="images/contact/home_titulos__0000_contactanos.png">
                        Agenda tu cita</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-success text-center" role="alert" v-if="isSending">
                        Se ha agendado la cita correctamente.
                    </div>
                    <form id="contactForm" novalidate @submit.prevent="post">
                        <input v-model="contact.date" type="hidden" >
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="form-control"  type="text" placeholder="Nombre *" required="required" v-model="contact.name">
                                    <p class="help-block text-danger" v-if="validName">Por favor ingrese un nombre</p>
                                </div>
                                <div class="form-group">
                                    <input class="form-control"  type="text" placeholder="Empresa *" required="required"  v-model="contact.company">
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
                                    <select class="form-control" v-model="contact.state" placeholder=" Seleciona tu estado ">
                                        <option value='' selected="selected"> Seleciona tu estado</option>
                                        <option value="Aguascalientes">Aguascalientes</option>
                                        <option value="Baja California">Baja California </option>
                                        <option value="Baja California Sur">Baja California Sur </option>
                                        <option value="Campeche">Campeche </option>
                                        <option value="Chiapas">Chiapas </option>
                                        <option value="Chihuahua">Chihuahua </option>
                                        <option value="Coahuila">Coahuila </option>
                                        <option value="Colima">Colima </option>
                                        <option value="Distrito Federal">Distrito Federal</option>
                                        <option value="Durango">Durango </option>
                                        <option value="Estado de México">Estado de México </option>
                                        <option value="Guanajuato">Guanajuato </option>
                                        <option value="Guerrero">Guerrero </option>
                                        <option value="Hidalgo">Hidalgo </option>
                                        <option value="Jalisco">Jalisco </option>
                                        <option value="Michoacán">Michoacán </option>
                                        <option value="Morelos">Morelos </option>
                                        <option value="Nayarit">Nayarit </option>
                                        <option value="Nuevo León">Nuevo León </option>
                                        <option value="Oaxaca">Oaxaca </option>
                                        <option value="Puebla">Puebla </option>
                                        <option value="Querétaro">Querétaro </option>
                                        <option value="Quintana Roo">Quintana Roo </option>
                                        <option value="San Luis Potosí">San Luis Potosí </option>
                                        <option value="Sinaloa">Sinaloa </option>
                                        <option value="Sonora">Sonora </option>
                                        <option value="Tabasco">Tabasco </option>
                                        <option value="Tamaulipas">Tamaulipas </option>
                                        <option value="Tlaxcala">Tlaxcala </option>
                                        <option value="Veracruz">Veracruz </option>
                                        <option value="Yucatán">Yucatán </option>
                                        <option value="Zacatecas">Zacatecas</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" class="form-check-input" v-model="contact.remote" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Cita vía remota</label>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select class="form-control"  placeholder="Horaio *" required data-validation-required-message="Please enter a message." v-model="contact.schedule">
                                        <option value='' selected="selected"> Seleciona un horario </option>

                                        <option value="09:00">9:00 AM</option>
                                        <option value="09:30">9:30 AM</option>
                                        <option value="10:00">10:00 AM</option>
                                        <option value="10:30">10:30 AM</option>
                                        <option value="11:00">11:00 AM</option>
                                        <option value="11:30">11:30 AM</option>
                                        <option value="12:00">12:00 AM</option>
                                        <option value="12:30">12:30 AM</option>

                                        <option value="13:00">1:00 PM</option>
                                        <option value="13:30">1:30 PM</option>
                                        <option value="14:00">2:00 PM</option>
                                        <option value="14:30">2:30 PM</option>
                                        <option value="15:00">3:00 PM</option>
                                        <option value="15:30">3:30 PM</option>
                                        <option value="16:00">4:00 PM</option>
                                        <option value="16:30">4:30 PM</option>
                                        <option value="17:00">5:00 PM</option>
                                    </select>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control"  placeholder="Cuéntanos un poco más. ¿Que esperas de nuestra reunión?, ¿cuantas personas asistirían?, etc." required data-validation-required-message="Please enter a message." v-model="contact.message"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group text-right">
                                    <a class="color-grey mr-3" @click="_close">
                                        Cambiar día
                                    </a>
                                    <button id="sendMessageButton" :disabled="isDisabled" class="btn btn-border btn-border-blue" type="submit" >Enviar</button>
                                    <span>Campos marcados con (*) obligatorios</span>
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
                    schedule: '',
                    date: '',
                    phone: '',
                    state: ''
                },

                isSending: false,
                validName: false,
                validCompany: false,
                validEmail: false
            }
        },
        props: [
            'date',
        ],
        methods: {
            post: function() {
                this.isDisabled = true;

                if(this._validate(this.contact)){
                    this.$emit('submitForm')
                    this.contact.date = this.date;
                    // Send form to server
                    this.$http.post('api/agendar-cita', this.contact)
                     .then(response => {
                        this.contact = {
                            name: '',
                            company: '',
                            email: '',
                            message: '',
                            schedule: '',
                            date: '',
                            phone: '',
                            state: ''
                        }
                        this.isSending = true
                        console.log('json', response.body);
                        //this.$emit('updateCalendar', response.body )
                        this.$root.$emit('updateCalendar', response.body)
                        setTimeout(() => this.isSending = false, 5000);
                         this.isDisabled = false;
                    }, response => {
                        // error callback
                         this.isDisabled = false;
                         this.$root.$emit('limitHours', {});
                        console.log('error callback', response.body);
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

            _close: function(){
                this.$emit('submitForm')
            }

        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
