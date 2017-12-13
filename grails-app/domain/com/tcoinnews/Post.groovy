package com.tcoinnews

class Post {
    String title
    String intro
    String image
    User owner
    String content
    boolean enable = true
    Date postDate
    String url

    Category category
    String tags

    Date dateCreated
    Date lastUpdated

    static constraints = {
        title nullable: false, blank: false
        intro nullable: false
        image nullable: true
        owner nullable: false
        content nullable: false
        enable nullable: true
        postDate nullable: true
        category nullable: true
        tags nullable: true
        url nullable: false, blank: false, unique: true
    }

    static mapping = {
        intro type: 'text'
        content type: 'text'
    }
}
