<template>
  <section class="pt-5 pb-5">

    <template v-if="home">
        <div class="container" >
            <div class="row">
                <div class="col-sm-4 pt-5 pb-5"  data-aos="fade-in" v-for="(post, index) in posts" v-if="index < 6">
                    <div class="view overlay background-grey">
                        <div><img :src="'uploads/'+post.image" style="width: 340px;"> </div>
                        <div class="container" >
                            <div class="row">
                                <div class="col-md-12 pt-3 pb-3">
                                    <p><strong>{{ post.title }}</strong></p>
                                    {{ formatedTxt(post.description) }}
                                </div>
                            </div>
                        </div>
                        <router-link :to="'/post/' + post.id" class="mask flex-center rgba-blue-light text-center text-white">
                            <p><font-awesome-icon icon="plus" class="text-white fa-3x" /><br />Leer más...</p>
                        </router-link>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <router-link :to="{ name: 'blog' }" class="text-center text-blue-dark">
                        <h4 class="text-center">Mostrar más</h4>
                    </router-link>
                </div>
            </div>
        </div>
    </template>

    <template v-if="section">
        <div class="container">
          <div class="col-sm-12">
            <paginate
                    name="blogs"
                    :list="posts"
                    :per="10"
                    tag="div"
            >

              <section data-aos="fade-up" v-for="blog in paginated('blogs')">
                <div class="row  mb-5">
                  <div class="col-md-1 pr-0 pl-0 nopadding text-center mr-3 hidden-md-down">
                    <p class="btn mt-0 background-blue color-white">{{formatDate(blog.created_at)}}</p>
                  </div>
                    <div class="col-md-1  text-center hidden-lg-up">
                        <p class="background-blue color-white">{{formatDate(blog.created_at)}}</p>
                    </div>
                  <div class="col-md-7">
                    <h4>{{ blog.title }}</h4>

                    <div class="row">
                      <div class="col-md-3 nopadding">
                        <img :src="'uploads/'+blog.image" class="img-fluid">
                      </div>
                      <div class="col-md-9">
                          <div v-html="formatedTxt(blog.description, 200)"></div>
                        <router-link :to="'/post/' + blog.id" class=" text-blue-dark">
                          Leer mas...
                        </router-link>
                      </div>
                    </div>

                    <div class="row border-top border-bottom mt-3 pt-1 pb-1 nopadding">
                      <div class="col-md-6">
                        <!--
                        <p class="d-md-inline-block mb-0 text-blue-dark">Comentarios</p>
                        -->
                          <p class="d-md-inline-block mb-0"><b>Tags:</b> {{blog.keywords}}</p>
                      </div>
                      <div class="col-md-6 text-right">

                        <p class="d-md-inline-block mb-0">
                            <b>Compartir: </b>
                            <social-sharing :url="'https://catchconsulting.com.mx/#/post/' + blog.id"
                                            :title="blog.title"
                                            :description="formatedTxt(blog.description, 200)"
                                            :quote="blog.title"
                                            hashtags=""
                                            twitter-user=""
                                            inline-template>
                                <div class="d-md-inline-block">
                                    <network network="facebook" class="d-md-inline-block text-blue cursor-pointer">
                                        <font-awesome-icon :icon="['fab', 'facebook']" class="fa-lg ml-2 mr-2" />
                                    </network>
                                    <network network="twitter" class="d-md-inline-block text-blue cursor-pointer">
                                        <font-awesome-icon :icon="['fab', 'twitter']" class="fa-lg ml-2 mr-2" />
                                    </network>
                                </div>

                            </social-sharing>
                        </p>
                      </div>

                    </div>
                  </div>


                </div>

              </section>

            </paginate>

            <paginate-links
                    for="blogs"
                    :async="true"
                    :show-step-links="true"
                    :step-links="{
                              next: 'Next',
                              prev: 'Previous'
                            }"
                    :classes="{
                              'ul': 'pagination',
                              'ul > li': 'page-item',
                              'ul > li > a': 'page-link',
                            }"
            >
            </paginate-links>
          </div>
        </div>
    </template>

  </section>
</template>
<script>
    export default {
        data() {
            return {
                posts: [],
                paginate: ['blogs']

            }
        },

        props: [
            'home',
            'section'
        ],

        created() {
            this.$http.get("api/blog")
                .then(response => response.json(), error => console.log(error))
                .then(json => this.posts = json, error => console.log(error));
        },

        methods: {
            formatedTxt: function(txt, substr=80) {
                return txt.replace(/(<([^>]+)>)/ig,"").substring(0, substr) + '...';
            },
            formatDate: function(date){
                let tmpDate =  date.split(' ');
                let postDate = tmpDate[0].split('-');
                return `${postDate[2]}
                        ${postDate[1]}
                        ${postDate[0]}`
            }
        }

    }
</script>