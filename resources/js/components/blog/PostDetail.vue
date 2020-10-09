<template>

  <section id="blogFeed" class="container">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><router-link :to="'/'">Inicio</router-link></li>
        <li class="breadcrumb-item active" aria-current="page">{{ post.title }}</li>
      </ol>
    </nav>

    <div class="pt-5 pb-5">
      <div class="row">
        <div class="col-lg-12  text-center">
          <h2 class="section-heading text-uppercase">
            <img src="images/blog/home_titulos__0001_blog.png" >
            Blog</h2>
            <p class="pt-2 pb-2 pl-5 pr-5">Temas sobre la industria para mejorar las condiciones de trabajo y competitividad de las compañías.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">


          <article class="postDetail ">


              <div class="row">
                <div class="col-sm-12 pt-5 pb-5">
                  <h1 class="mt-5 mb-3">{{ post.title  }}</h1>
                  <p class="text-center"><img :src="'uploads/'+post.image" width="100%"></p>
                  <div class="mt-5 text-justify">
                    <div v-html="post.description"></div>
                  </div>

                  <!--
                  <h4 class="mt-5">Comentarios</h4>
                  <button @click="showComments" v-if="!showCommentBox" class="btn btn-primary">Ver comentarios</button>

                  <ul class="list-group mt-5" v-if="showCommentBox">
                    <li v-for="comment in comments" class="list-group-item">
                      <strong>{{ comment.email }}</strong> <em>Comentario:</em> {{ comment.body }}
                    </li>
                  </ul>
                  -->
                    <div class="row border-top border-bottom mt-3 pt-1 pb-1 nopadding">
                        <div class="col-md-6">
                            <p class="d-md-inline-block mb-0"><b>Tags:</b> {{post.keywords}}</p>
                      </div>
                      <div class="col-md-6 text-right">
                          <b>Compartir: </b>
                          <div class="d-md-inline-block">
                              <social-sharing :url="'https://catchconsulting.com.mx/#/post/' + post.id"
                                              :title="post.title"
                                              :description="post.description"
                                              :quote="post.title"
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
                          </div>

                      </div>
                    </div>




                    </div>
                  </div>

              </article>


            </div>
          </div>
        </div>
      </section>


    </template>

    <script>
        export default {
            data() {
                return {
                    post: {},
                    comments: [],
                    showCommentBox: false,
                }
            },
            created() {
                this.$http.get("api/blog/"+ this.$route.params.id)
                    .then(response => response.json(), error => console.log(error))
                    .then(json => this.post = json, error => console.log(error));
            },
            methods: {

            }
        }
    </script>