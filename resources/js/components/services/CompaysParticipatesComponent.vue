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
                            <td class="bg-transparent text-center"><h1>401</h1><p>Empresas</p></td>
                            <td class="bg-transparent text-center"><h1>360,123</h1><p>Empleados representados </p></td>
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
                        participant: 141,
                        represented: 75940,
                    },

                    {
                        state: 'Nuevo León',
                        participant: 88,
                        represented: 167300,
                    },

                    {
                        state: 'San Luis Potosí',
                        participant: 41,
                        represented: 33173,
                    },

                    {
                        state: 'Coahuila',
                        participant: 28,
                        represented: 35582,
                    },

                    {
                        state: 'Querétaro',
                        participant: 25,
                        represented: 18054,
                    },

                    {
                        state: 'Jalisco',
                        participant: 19,
                        represented: 6124,
                    },

                    {
                        state: 'Puebla',
                        participant: 17,
                        represented: 12054,
                    },

                    {
                        state: 'Estado de México',
                        participant: 12,
                        represented: 6403,
                    },

                    {
                        state: 'Aguascalientes',
                        participant: 10,
                        represented: 1269,
                    },

                    {
                        state: 'Tlaxcala',
                        participant: 8,
                        represented: 2778,
                    },

                    {
                        state: 'Sonora',
                        participant: 1,
                        represented: 1191,
                    },

                    {
                        state: 'Sinaloa',
                        participant: 1,
                        represented: 255,
                    }
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