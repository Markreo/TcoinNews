package com.tcoinnews

class Media {

    enum Type{
        PHOTO, VIDEO
    }

    String name
    String slug
    String path
    Type type = Type.PHOTO

    Date dateCreated
    Date lastUpdated

    User owner

    static constraints = {
        name nullable: false, blank: false
        slug nullable: false, unique: true
        path nullable: false
        owner nullable: false
    }
}
