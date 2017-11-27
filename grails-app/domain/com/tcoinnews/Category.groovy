package com.tcoinnews

class Category {
    String name
    Category parent

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, blank: false
        parent nullable: true
    }
}
