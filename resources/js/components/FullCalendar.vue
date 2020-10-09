<template>
    <div class="bg-white pb-5 pt-5">
        <div class="container modal-header mb-5">
            <h3 >Paso 1: Seleciona un día.</h3>
        </div>

        <div class="alert alert-primary alert-calendar text-center" role="alert" v-show="notDate">
            Fecha no disponible por, por favor selecione otra fecha.
        </div>

        <div class="alert alert-primary alert-calendar text-center" role="alert" v-show="notHours">
            El horario ya no se encuetra disponible por favor selecione otro horario.
        </div>


        <div class="container">
            <full-calendar
                    :events="fcEvents"
                    defaultView="month"
                    :header="headerConfig"
                    :config="config"
            @day-click="dayClick">

            </full-calendar>
        </div>
        <!-- use the modal component, pass in the prop -->
        <modal v-if="showModal"
               :date="date"
               :showModal="showModal"
               @close="showModal = false"
               @submitForm="showModal = false"
               @updateCalendar="updateCalendar">
            <!--
              you can use custom content here to overwrite
              default content
            -->
            <h3 slot="header">Paso 2: Completa el formulario</h3>
        </modal>

    </div>
</template>

<script>
    var events = []
    import { FullCalendar } from 'vue-full-calendar'
    import 'fullcalendar/dist/fullcalendar.css'
    import 'fullcalendar/dist/locale/es'
    export default {
        components: {
            FullCalendar,
        },
        mounted: function() {
            if(events.length){
                events = [];
            }


            this.$root.$on('limitHours', () => {
                console.log('notHours');
                this.notHours = true;
                setTimeout(() => this.notHours = false, 4000);
            })

            this.$root.$on('updateCalendar', (params) => {
                console.log(params);
                let [ date1, time1] = params.date.split(' ');
                let  title = params.name;
                events.push( {
                    title : 'Reservado',
                    start : date1,
                    end : date1,
                    color: '#31bede',
                    textColor: 'white'
                });
            })


            this.$http.get("api/eventos")
                .then(response => response.json(), error => console.log(error))
                .then(json => {
                    json.forEach(function(element) {

                        switch(element.type) {
                            case 'evento':
                                events.push( {
                                    title : element.title,
                                    start : element.start_date,
                                    end : element.end_date,
                                    classNames  : ['calendar-event', 'calendar-type-'+element.type ],
                                    color: 'green',
                                    textColor: 'white'
                                });
                                break;
                            case 'curso':
                                events.push( {
                                    title : element.title,
                                    start : element.start_date,
                                    end : element.end_date,
                                    classNames  : ['calendar-event', 'calendar-type-'+element.type ],
                                    color: 'orange',
                                    textColor: 'white'
                                });
                                break;
                            case 'taller':
                                events.push( {
                                    title : element.title,
                                    start : element.start_date,
                                    end : element.end_date,
                                    classNames  : ['calendar-event', 'calendar-type-'+element.type ],
                                    color: 'purple',
                                    textColor: 'white'
                                });
                                break;
                            default:
                                events.push( {
                                    title : element.title,
                                    start : element.start_date,
                                    end : element.end_date,
                                    classNames  : ['calendar-event', 'calendar-type-'+element.type ],
                                    textColor: 'white'
                                });
                        }


                    });

                }, error => console.log(error));


            this.$http.get("api/citas")
                .then(response => response.json(), error => console.log(error))
                .then(json => {
                    json.forEach(function(element) {
                        events.push( {
                            title : 'Reservado',
                            start : element.start_date,
                            end : element.end_date,
                            classNames  : ['calendar-quotes',],
                            color: '#31bede',
                            textColor: 'white'
                        });
                    });

                }, error => console.log(error));

        },

        data() {
            return {
                notHours: false,
                notDate: false,
                date: '',
                showModal: false,
                headerConfig: {
                    left:   'prev,next today',
                    center: 'title',
                    right:  'month'
                },
                config: {
                    locale: 'es',
                },
                fcEvents: events,

            }


        },

        methods: {
            'dayClick' (date, jsEvent, view) {

                let d = new Date();
                if(date.date() >= d.getDate()){
                    if(date.date() == d.getDate()  && d.getHours() > 16){
                        this.notDate = true;
                        setTimeout(() => this.notDate = false, 5000);
                        return ;
                    }else{
                         // display modal box
                        this.showModal = true;
                        // set date
                        this.date = date.format('YYYY-MM-DD');
                    }

                }else{
                    this.notDate = true;
                    setTimeout(() => this.notDate = false, 4000);
                }
                console.log('dayClick', date, jsEvent, view)
            },

            'updateCalendar' (){
                console.log('escucha', updateCalendar);
            },


        },

        watch: {

        }
    }

</script>