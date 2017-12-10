package com.tcoinnews

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_ADMIN"])
class BaseController {
    def springSecurityService

    User getLoggedUser(){
        return springSecurityService.currentUser ?: null
    }
}
