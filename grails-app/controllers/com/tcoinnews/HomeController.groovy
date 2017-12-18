package com.tcoinnews

import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")
class HomeController extends BaseController {

    def index() {
        List<Post> posts = Post.createCriteria().list([max: 15, offset: params.int("start") ?: 0, sort: 'lastUpdated', order: 'desc']) {
            eq("enable", true)
        }
        render(view: 'index', model: [posts: posts])
    }
}
