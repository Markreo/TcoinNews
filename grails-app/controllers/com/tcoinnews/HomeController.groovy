package com.tcoinnews

import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class HomeController extends BaseController {

    def index() {

    }
}
