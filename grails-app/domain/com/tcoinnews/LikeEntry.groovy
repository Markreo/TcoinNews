package com.tcoinnews

class LikeEntry {
    enum Entry {
        COMMENT, POST, POST_ADMIN
    }

    Entry entry
    long entryId
    User owner
    static constraints = {
        entry nullable: false
        entryId nullable: false
        owner nullable: true
    }

    static mapping = {
        version(false)
    }
}
