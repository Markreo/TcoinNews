package com.tcoinnews

class Category {
    String name
    Category parent
    String url

    Date dateCreated
    Date lastUpdated

    User owner

    static constraints = {
        name nullable: false, blank: false
        parent nullable: true
        owner nullable: true
        url nullable: false
    }
}
