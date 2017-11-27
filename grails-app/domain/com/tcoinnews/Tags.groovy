package com.tcoinnews

class Tags {
    enum Type {
        POST(0, "Post"),
        PRODUCT(1, "Product")

        int id
        String name

        Type(id, name){this.name = name; this.id = id}
    }

    String name
    Type type = Type.POST

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: true, blank: false
        type nullable: true
    }
}
