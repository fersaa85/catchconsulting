<template>
    <div id="app">
        <top :show="show" v-if="show.header"></top>
        <main>
            <router-view></router-view>
        </main>
        <bottom v-if="show.footer"></bottom>
    </div>
</template>

<script>
    export default {
        mounted: function() {
            if(window.location.hash == "#/" || window.location.hash.indexOf('route')) {
                vm.show.header = true
                vm.show.footer = true
                vm.show.slideNav = true
            }
        },


        watch: {
            $route: function() {
                // Control the Nav when the route changes
                if(window.location.hash == "#/" || window.location.hash.indexOf('route')) {
                    vm.show.header = true
                    vm.show.footer = true
                    vm.show.slideNav = true
                }
            }
        }
    }
</script>