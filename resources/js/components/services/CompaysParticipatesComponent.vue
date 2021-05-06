<template>
    <section class="page-section bg-white pt-5 pb-5">
        <div class="container text-center">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <h1 class="mt-5 mb-5">Empresas participantes  2019</h1>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="table-responsive">
                <table class="table companyParticipants">
                    <thead>
                        <tr class="hidden-border-td">
                            <th class="thead text-white background-aqua text-center">Encuestas</th>
                            <th class="thead text-white text-center">Empresas Participantes</th>
                            <th class="thead text-white text-center">Empleos Representados </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="row in tableData">
                            <td class="thead text-white text-center">{{row.state}}</td>
                            <td class="bg-transparent text-center">{{row.participant}}</td>
                            <td class="bg-transparent text-center">{{row.represented.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")}}</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td class="bg-transparent"></td>
                            <td class="bg-transparent text-center"><h1>798</h1><p>Empresas</p></td>
                            <td class="bg-transparent text-center"><h1>455,365</h1><p>Empleados representados </p></td>
                        </tr>
                    </tfoot>
                </table>
                </div>
            </div>
        </div>
    </section>
</template>
<script>
    export default {
        data () {
            return {
                tableData: [
                    {
                        state: 'Guanajuato',
                        participant: 193,
                        represented: 99591,
                    },

                    {
                        state: 'Nuevo León',
                        participant: 170,
                        represented: 102191,
                    },

                    {
                        state: 'San Luis Potosí',
                        participant: 110,
                        represented: 75372,
                    },

                    {
                        state: 'Coahuila',
                        participant: 51,
                        represented: 31813,
                    },

                    {
                        state: 'Querétaro',
                        participant: 82,
                        represented: 53974,
                    },

                    {
                        state: 'Jalisco',
                        participant: 41,
                        represented: 19916,
                    },

                    {
                        state: 'Puebla',
                        participant: 28,
                        represented: 10388,
                    },

                    {
                        state: 'Estado de México',
                        participant: 26,
                        represented: 9500,
                    },

                    {
                        state: 'Aguascalientes',
                        participant: 33,
                        represented: 14141,
                    },

                    {
                        state: 'Tamaulipas',
                        participant: 3,
                        represented: 753,
                    },

                    {
                        state: 'Baja California',
                        participant: 6,
                        represented: 1922,
                    },

                    {
                        state: 'Chihuahua',
                        participant: 8,
                        represented: 5008,
                    },

                    {
                        state: 'Ciudad de México',
                        participant: 12,
                        represented: 4115,
                    },

                    {
                        state: 'Durango',
                        participant: 15,
                        represented: 7416,
                    },

                    {
                        state: 'Colima',
                        participant: 1,
                        represented: 1226,
                    },

                    {
                        state: 'Tlaxcala',
                        participant: 13,
                        represented: 5420,
                    },

                    {
                        state: 'Veracruz',
                        participant: 4,
                        represented: 5619,
                    },

                    {
                        state: 'Campeche',
                        participant: 2,
                        represented: 7000,
                    },

                ]
            }
        },
        methods: {
            formatter(value, rowProperties) {
                return ;
            },
        },
    }
</script>