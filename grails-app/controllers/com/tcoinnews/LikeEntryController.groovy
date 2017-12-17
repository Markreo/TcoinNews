package com.tcoinnews

class LikeEntryController extends BaseController{

    def index() { }

    def likeEntry(){
        def type = Comment.Entry.valueOf((params.type as String).toUpperCase())
        long entryId = params.getLong("entryId")
        LikeEntry likeEntry = LikeEntry.findOrCreateWhere(owner: loggedUser, entry: type, entryId: entryId)
        if(likeEntry.hasErrors() || !likeEntry.save(flush: true)){
            response.sendError(404)
        } else{
            def count = LikeEntry.findAllByEntryAndEntryId(likeEntry.entry, likeEntry.entryId)
            render(template: '/likeEntry/like', model: [entry: likeEntry.entry, entryId: likeEntry.entryId, count: count, liked: true])
        }
    }
}
