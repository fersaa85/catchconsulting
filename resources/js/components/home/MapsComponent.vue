<template>
    <GmapMap
            :center="center"
            :zoom="zoom"
            map-type-id="terrain"
            style="width: 100%; height: 500px"
    >

        <GmapMarker
                :key="index"
                v-for="(m, index) in markers"
                :position="m.position"
                :clickable="true"
                :draggable="true"
                @click="center=m.position"
                :icon="{ url: require('../../../../public/images/home/pin.png')}"
        />
    </GmapMap>
</template>
<script>
    export default {
        data() {
            return {
                center: { lat: 21.001662, lng: -101.508033 },
                markers: [],
                places: [],
                currentPlace: null,
                zoom: 17,

                markers: [{
                    position: {
                        lat: 21.001662,
                        lng: -101.508033
                    }
                }, {
                    position: {
                        lat: 11.0,
                        lng: 11.0
                    }
                }]
            };
        },

        mounted() {
            //this.geolocate();
        },

        methods: {
            // receives a place object via the autocomplete component
            setPlace(place) {
                this.currentPlace = place;
            },
            addMarker() {
                if (this.currentPlace) {
                    const marker = {
                        lat: this.currentPlace.geometry.location.lat(),
                        lng: this.currentPlace.geometry.location.lng()
                    };
                    this.markers.push({ position: marker });
                    this.places.push(this.currentPlace);
                    this.center = marker;
                    this.currentPlace = null;
                }
            },
            geolocate: function() {
                navigator.geolocation.getCurrentPosition(position => {
                    this.center = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                });
            }
        }
    }
</script>