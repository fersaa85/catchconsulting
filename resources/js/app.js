
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');


import { library } from '@fortawesome/fontawesome-svg-core'
import { fas } from '@fortawesome/free-solid-svg-icons'
import { fab } from '@fortawesome/free-brands-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { TableComponent, TableColumn } from 'vue-table-component';
import * as VueGoogleMaps from 'vue2-google-maps'
import axios from 'axios';
import VueResource from 'vue-resource'
import VueRouter from 'vue-router'
import VuePaginate from 'vue-paginate'
import fullCalendar from 'vue-fullcalendar'
import 'mdbvue/build/css/mdb.css';
library.add(fas, fab)


import About from './components/About.vue';
import Customer from './components/Customer.vue';
import Team from './components/Team.vue';
import Contact from './components/Contact.vue';
import Home from './components/Home.vue';
import Blog from './components/Blog.vue';
import PostDetail from './components/blog/PostDetail.vue';
import Calendar from './components/Calendar.vue';
import Press from './components/Press.vue';
import ServicesPages from './components/ServicesPages.vue';
import Page1 from './components/services/Page1.vue';
import Page2 from './components/services/Page2.vue';
import Page3 from './components/services/Page3.vue';
import Page4 from './components/services/Page4.vue';
import Page5 from './components/services/Page5.vue';
import Page6 from './components/services/Page6.vue';
import Page7 from './components/services/Page7.vue';
import Page8 from './components/services/Page8.vue';
import FormSuveryMonekey from './components/suverymonkey/FormSuveryMonekey.vue';
import ZoomComponent from './components/zoom/ZoomComponent.vue';
import Pdf from './components/Pdf.vue';



import NewCalendar from './components/FullCalendar.vue';
import Privacity from './components/privacity/Privacity.vue';
import VueAnalytics from 'vue-analytics'

import DevelopComponet from './components/DevelopComponent.vue';





Vue.component('table-component', TableComponent);
Vue.component('table-column', TableColumn);
Vue.component('font-awesome-icon', FontAwesomeIcon);
Vue.use(VueRouter);
Vue.use(VueResource);
Vue.use(VuePaginate);

import BootstrapVue from 'bootstrap-vue'

Vue.use(BootstrapVue);
Vue.component('modal', require('./components/calendar/Model.vue').default);
Vue.component('form-calendar',  require('./components/contact/FormCalendar.vue').default);

import Vue from 'vue';
import VueFriendlyIframe from 'vue-friendly-iframe';

Vue.use(VueFriendlyIframe);


var router = new VueRouter({
    routes: [

        {
            path: '/',
            name: '/',
            component: Home,
            meta: { scrollToTop: true }
        },
        {
            path: '/inicio',
            name: 'home',
            component: Home,
            meta: { scrollToTop: true }
        },
        {
            path: '/servicios',
            name: 'services',
            component: ServicesPages,
            redirect: {
                name: "polls"
            },
            meta: { scrollToTop: true },
            children: [
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'encuestas-y-monitor',
                    name: 'polls',
                    component: Page1,
                    meta: { scrollToTop: true }
                },
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'encuestas-regional',
                    name: 'regional',
                    component: Page2,
                    meta: { scrollToTop: true }
                },
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'mercado-laboral',
                    name: 'laboral',
                    component: Page3,
                    meta: { scrollToTop: true }
                },
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'buscador-talentos',
                    name: 'buscador',
                    component: Page4,
                    meta: { scrollToTop: true }
                },
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'paquetes-servicios',
                    name: 'paquetes',
                    component: Page5,
                    meta: { scrollToTop: true }
                },
                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'cursos-talleres',
                    name: 'talleres',
                    component: Page6,
                    meta: { scrollToTop: true }
                },

                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'asesoria-juridico-laboral',
                    name: 'juridico-laboral',
                    component: Page7,
                    meta: { scrollToTop: true }
                },

                {
                    // UserProfile will be rendered inside User's <router-view>
                    // when /user/:id/profile is matched
                    path: 'pad',
                    name: 'pad',
                    component: Page8,
                    meta: { scrollToTop: true }
                }
            ]
        },
        {
            path: '/nosotros',
            name: 'about',
            component: About,
            meta: { scrollToTop: true }

        },
        {
            path: '/clientes',
            name: 'customers',
            component: Customer,
            meta: { scrollToTop: true }
        },
        {
            path: '/nuestro-equipo',
            name: 'team',
            component: Team,
            meta: { scrollToTop: true }
        },
        {
            path: '/contacto',
            name: 'contact',
            component: Contact,
            meta: { scrollToTop: true }

        },
        {
            path: '/prensa',
            name: 'press',
            component: Press,
            meta: { scrollToTop: true }
        },
        {
            path: '/blog',
            name: 'blog',
            component: Blog,
            meta: { scrollToTop: true }
        },
        {
            path: '/post/:id',
            name: 'post',
            component: PostDetail,
            meta: { scrollToTop: true }
        },

        {
            path: '/calendario',
            name: 'calendar',
            component: NewCalendar,
            meta: { scrollToTop: true }
        },

        {
            path: '/aviso-privacidad',
            name: 'privacity',
            component: Privacity,
            meta: { scrollToTop: true }

        },

        {
            path: '/encuentas',
            name: 'polls',
            component: FormSuveryMonekey,
            meta: { scrollToTop: true }

        },

        {
            path: '/conferencias',
            name: 'conferences',
            component: ZoomComponent,
            meta: { scrollToTop: true }

        },

        {
            path: '/documentos',
            name: 'documents',
            component: Pdf,
            meta: { scrollToTop: true }

        },

        {
            path: '/pdf-flip-book',
            name: 'pdf-flip-book',
            component: Pdf,
            meta: { scrollToTop: true }

        },

        {
            path: '/develop',
            name: 'develop',
            component: DevelopComponet,
            meta: { scrollToTop: true }

        },
    ],
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 }
    }
})



Vue.use(VueAnalytics, {
    id: 'UA-138307054-1',
    router,
    autoTracking: {
        pageviewOnLoad: false
    }
})


import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();


var SocialSharing = require('vue-social-sharing');
Vue.use(SocialSharing);
Vue.use(VueGoogleMaps, {
    load: {
        key: 'AIzaSyCN43sNNGZwS7mHPQY_2vYDSq7eg9JvfDc',
        libraries: 'places', // This is required if you use the Autocomplete plugin
        // OR: libraries: 'places,drawing'
        // OR: libraries: 'places,drawing,visualization'
        // (as you require)

        //// If you want to set the version, you can do so:
        // v: '3.26',
    },

    //// If you intend to programmatically custom event listener code
    //// (e.g. `this.$refs.gmap.$on('zoom_changed', someFunc)`)
    //// instead of going through Vue templates (e.g. `<GmapMap @zoom_changed="someFunc">`)
    //// you might need to turn this on.
    // autobindAllEvents: false,

    //// If you want to manually install components, e.g.
    //// import {GmapMarker} from 'vue2-google-maps/src/components/marker'
    //// Vue.component('GmapMarker', GmapMarker)
    //// then disable the following:
    // installComponents: true,
})

Vue.config.productionTip = false
/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

//const files = require.context('./', true, /\.vue$/i);
//files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('nav-component', require('./components/home/NavegateComponent.vue').default);
Vue.component('slider-component', require('./components/SliderComponent.vue').default);
Vue.component('testimonials-component', require('./components/home/TestimonialsComponent.vue').default);
Vue.component('services-component', require('./components/home/ServicesComponent.vue').default);
Vue.component('pack-study-component', require('./components/home/PackStudyComponent.vue').default);
Vue.component('team-component', require('./components/home/TeamComponent.vue').default);
Vue.component('form-contact-component', require('./components/contact/FormContactComponent.vue').default);
Vue.component('maps-component', require('./components/home/MapsComponent.vue').default);
Vue.component('footer-component', require('./components/FooterComponent.vue').default);
Vue.component('customer-component', require('./components/home/CustomersComponent.vue').default);
Vue.component('two-services-component', require('./components/services/TwoServicesComponent.vue').default);
Vue.component('who-participantes', require('./components/services/WhoParticipatesComponent.vue').default);
Vue.component('map-interactive', require('./components/services/MapInteractiveComponent.vue').default);
Vue.component('company-particpantes', require('./components/services/CompaysParticipatesComponent.vue').default);
Vue.component('infomations-component', require('./components/services/InformationsComponents.vue').default);
Vue.component('take-part', require('./components/services/TakePartComponent.vue').default);
Vue.component('slider-services', require('./components/services/SlideServicesComponent.vue').default);
Vue.component('how-do-it', require('./components/services/HowDoComponent.vue').default);
Vue.component('lead-component', require('./components/services/LeadComponent.vue').default);
Vue.component('collapse-component', require('./components/services/CollapseComponent.vue').default);
Vue.component('vision-component', require('./components/about/VisionComponent.vue').default);
Vue.component('values-component', require('./components/about/ValuesComponent.vue').default);
Vue.component('blog-feed', require('./components/blog/BlogFeed.vue').default);
Vue.component('blog', require('./components/Blog.vue').default);
Vue.component('press-component', require('./components/press/PressComponent').default);
Vue.component('map-component', require('./components/about/MapComponent').default);
Vue.component('about-component', require('./components/about/AboutComponent').default);


Vue.component('develop-component', require('./components/DevelopComponent.vue').default);
Vue.component('juridic-laboral-component', require('./components/services/JuridicLaboralComponent').default);
Vue.component('pda-component', require('./components/develop/PDAComponent').default);
Vue.component('what-is-pda', require('./components/services/WhatIsPda').default);
Vue.component('pakage-component', require('./components/services/Pakages').default);
Vue.component('know-membership', require('./components/services/KnowMembership').default);



/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */



const app = new Vue({
    el: '#app',
    router: router,
    linkActiveClass: "active",
    linkExactActiveClass: "exact-active",
});
