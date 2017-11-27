package com.tcoinnews

class Post {
    String title
    String intro
    String image
    User owner
    String content
    boolean enable = true
    Date postDate

    Category category

    Date dateCreated
    Date lastUpdated

    static constraints = {
        title nullable: false, blank: false
        intro nullable: false
        image nullable: true
        owner nullable: false
        content nullable: true
        enable nullable: true
        postDate nullable: true
        category nullable: true
    }

    static mapping = {
        intro type: 'text'
        content type: 'text'
    }
}
