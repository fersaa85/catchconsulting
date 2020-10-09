<template>
    <div id="team">
        <h4 class="hidden-md-up text-center text-blue pt-5 pb-5">Paquetes</h4>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="table-responsive hidden-sm-down">
                        <table class="table">
                            <thead>
                            <tr class="hidden-border-td">
                                <th scope="col" class="p-0 m-0"></th>
                                <th scope="col" class="p-0 m-0"><img src="images/services/flash.png" style="width: 250px"></th>
                                <th scope="col" class="p-0 m-0"><img src="images/services/advanced.png" style="width: 250px"></th>
                                <th scope="col" class="p-0 m-0"><img src="images/services/plus.png" style="width: 250px"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="row in tableData">
                                <td>{{row.name}}</td>
                                <template v-if="row.text">
                                    <td class="text-center">{{row.flash}}</td>
                                    <td class="text-center">{{row.avanced}}</td>
                                    <td class="text-center">{{row.plus}}</td>
                                </template>
                                <template v-if="row.image">
                                    <td class="text-center"><img src="images/services/catch_4.png" style="width: 25px"></td>
                                    <td class="text-center"><img src="images/services/catch_4.png" style="width: 25px"></td>
                                    <td class="text-center"><img src="images/services/catch_4.png" style="width: 25px"></td>
                                </template>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>

    </div>
</template>
<script>
    export default {
        data() {
            return {
                tableData: [
                    {
                        name: 'Publicaciones Internas semanales',
                        flash: 1,
                        avanced: 2,
                        plus: 3,
                        text: true,
                        image: false
                    },
                    {
                        name: 'Formularios mensuales',
                        flash: 1,
                        avanced: 2,
                        plus: 4,
                        text: true,
                        image: false
                    },
                    {
                        name: 'Mensajes Push mensuales',
                        flash: 1,
                        avanced: 2,
                        plus: 10,
                        text: true,
                        image: false
                    },
                    {
                        name: 'Menú Comedor',
                        flash: 1,
                        avanced: 2,
                        plus: 3,
                        text: false,
                        image: true
                    },
                    {
                        name: 'Archivos y Preguntas Fac',
                        flash: 1,
                        avanced: 2,
                        plus: 3,
                        text: false,
                        image: true
                    },
                    {
                        name: 'Usuarios',
                        flash: 200,
                        avanced: 500,
                        plus: "+1000",
                        text: true,
                        image: false
                    },
                    {
                        name: 'Reto Mensual',
                        flash: 1,
                        avanced: 2,
                        plus: 2,
                        text: true,
                        image: false
                    }
                ]
            }
        },
        methods: {
            formatter(value, rowProperties) {
                return (value) ? 'images/home/home_paquetes__0001_paquetes_tick-.png' : 'images/home/home_paquetes__0000_paquetes_x.png';
            },
        }
    }
</script>