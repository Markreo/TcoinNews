package com.tcoinnews

class Comment {
    enum Entry {
        COMMENT, POST, POST_ADMIN
    }

    Entry entry
    long entryId
    String content
    User owner

    Date dateCreated
    Date lastUpdated

    static constraints = {
        entry nullable: false
        entryId nullable: false
        content blank: false
        owner nullable: true
    }

    static transients = ['countLike']

    long getCountLike(){
//        return LikeEntry.countByEntryAndEntryId(LikeEntry.Entry.COMMENT)
        return 0
    }
}
