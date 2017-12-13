package com.tcoinnews

import grails.plugin.springsecurity.annotation.Secured

class MediaController extends BaseController {

    def index() { }

    @Secured("permitAll")
    def image(String id){//id == slug

    }

    @Secured("permitAll")
    def video(String id){//id == slug

    }

    def list(){
    }

    def data(){

    }
}
