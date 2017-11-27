package com.tcoinnews

class PostTags {

    Post post
    Tags tags

    static constraints = {
        post nullable: false
        tags nullable: false, unique: 'post'
    }

    static mapping = {
        version(false)
    }
}
