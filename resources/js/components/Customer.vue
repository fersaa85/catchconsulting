<template>
    <div>
        <customers-component></customers-component>
        <testimonials-component></testimonials-component>
    </div>
</template>
<script>
    import CustomersComponent from "./home/CustomersComponent";
    export default {
        components: {CustomersComponent},
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
