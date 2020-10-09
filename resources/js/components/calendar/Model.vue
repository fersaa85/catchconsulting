<template>
    <transition name="modal"  >
        <div class="modal-mask">
            <div class="modal-wrapper">
                <div class="modal-container">

                    <div class="modal-header">
                        <slot name="header">
                            default header
                        </slot>
                        <a class="color-grey mr-3" @click="$emit('close')">
                           X
                        </a>
                    </div>

                    <div class="modal-body">
                        <slot name="body">
                        </slot>
                        <form-calendar
                                :date="date"
                                @submitForm="getEvent"
                                @limitHours="limitHours"
                        ></form-calendar>
                    </div>

                    <div class="modal-footer">
                        <slot name="footer">

                            <!--<button class="btn color-grey" @click="$emit('close')">
                                Cambiar dia
                            </button>
                            -->
                        </slot>
                    </div>
                </div>
            </div>
        </div>
    </transition>
</template>
<script>
    export default {
        mounted() {
            console.log('MODAL mounted.')
        },
        props: [
            'date',
            'showModal',
        ],
        methods: {
            getEvent: function(){
                this.$emit('close');
            },
            limitHours: function(){
                console.log('modal');
                this.$emit('limitHours');
            }
        }
    }
</script>
