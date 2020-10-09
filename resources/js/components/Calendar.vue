<template>
    <div class="bg-white pb-5 pt-5">
        <div class="container modal-header">
            <h3 >Paso 1: Seleciona un día.</h3>
        </div>

        <div class="alert alert-primary alert-calendar text-center" role="alert" v-show="notDate">
            Fecha no disponible por, por favor selecione otra fecha
        </div>

        <full-calendar
                :events="fcEvents"
                locale="es"
                class="pt-5 pb-5"
                @eventClick="eventClick"
                @dayClick="dayClick"
                @moreClick="moreClick">

            <template slot="fc-header-left" slot-scope="p">
                <b>Agendar una cita en dos pasos.</b>
            </template>
            <template slot="fc-header-right" slot-scope="p">
                <p></p>
            </template>
            <template slot="fc-body-card" slot-scope="p">
                <p></p>
            </template>

            ></full-calendar>


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
    var demoEvents = [
        {
            title : 'Sunny Out of Office',
            start : '2019-04-29',
            end: '2019-04-29'
        }
    ]
    export default {
        data () {
            return {
                notDate: false,
                date: '',
                showModal: false,
                fcEvents : demoEvents
            }
        },
        mounted() {
            console.log('fecha de prueba date');
            console.log( new Date('2019-04-29 00:00:00') );
            console.log('fecha de prueba date');
            console.log( new Date() );
            console.log('fecha de prueba date');
            console.log( new Date(2019, 4, 29, 0, 0, 0, 0) );
            this.$root.$on('updateCalendar', (params) => {
                let [ date1, time1] = params.date.split(' ');
                let  title = params.name;
                demoEvents.push( {
                    title : 'Reservado',
                    start : date1,
                    end : date1
                });
            })


            this.$http.get("api/eventos")
                .then(response => response.json(), error => console.log(error))
                .then(json => {
                    json.forEach(function(element) {
                        demoEvents.push( {
                            title : element.title,
                            start : element.start_date,
                            end : element.end_date,
                            cssClass  : ['calendar-event', 'calendar-type-'+element.type ]
                        });
                    });

                }, error => console.log(error));


            this.$http.get("api/citas")
                .then(response => response.json(), error => console.log(error))
                .then(json => {
                    json.forEach(function(element) {
                        demoEvents.push( {
                            title : 'Reservado',
                            start : element.start_date,
                            end : element.end_date,
                            cssClass  : ['calendar-quotes',]
                        });
                    });

                }, error => console.log(error));
        },
        components : {
            'full-calendar': require('vue-fullcalendar')
        },

        methods: {
            'changeMonth' (start, end, current) {
                //console.log('changeMonth', start.format(), end.format(), current.format())
            },
            'eventClick' (event, jsEvent, pos) {
                //console.log('eventClick', event, jsEvent, pos)
            },
            'dayClick' (day, jsEvent) {
                // display modal box
                let d = new Date();
                if(day.events.length === 0 && day.monthDay >= d.getDate()){

                    console.log("values",day.monthDay, d.getDate());
                    if(day.monthDay == d.getDate()  && d.getHours() > 16){
                        this.notDate = true;
                        setTimeout(() => this.notDate = false, 5000);
                        return ;
                    }else{
                        this.showModal = true;
                        // set date
                        this.date = day.date;
                    }

                }else{
                    this.notDate = true;
                    setTimeout(() => this.notDate = false, 5000);
                }
                console.log('dayClick', day, jsEvent)
            },
            'moreClick' (day, events, jsEvent) {
                //console.log('moreCLick', day, events, jsEvent)
            },
            'updateCalendar' (){
                console.log('escucha', updateCalendar);
            }
        }
    }
</script>
