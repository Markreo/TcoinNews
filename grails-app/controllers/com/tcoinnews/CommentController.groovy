package com.tcoinnews

class CommentController extends BaseController {

    def add() {
        def type = Comment.Entry.valueOf((params.type as String).toUpperCase())
        long entryId = params.getLong("entryId")
        def content = params.content
        Comment comment = new Comment(entry: type, entryId: entryId, content: content, owner: loggedUser)
        if(comment.hasErrors() || !comment.save(flush: true)){
            println("save comment error ${comment.errors}")
            response.sendError(404)
        }else{
            render(template: '/comment/post_admin', model: [comment:comment])
        }
    }
}
