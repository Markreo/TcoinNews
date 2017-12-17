<div class="social-feed-box">

    <div class="pull-right social-action dropdown">
        <button data-toggle="dropdown" class="dropdown-toggle btn-white">
            <i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu m-t-xs">
            <li><a href="#">Config</a></li>
        </ul>
    </div>
    <div class="social-avatar">
        <a href="" class="pull-left">
            <asset:image src="defaultuser.png" alt="${post.owner.name}"/>
        </a>
        <div class="media-body">
            <a href="#">
                ${post.owner.name}
            </a>
            <small class="text-muted">${post.dateCreated.format("hh:mm aa - dd.mm.yyyy")}</small>
        </div>
    </div>
    <div class="social-body">
        <div>
            ${raw(post.content)}
        </div>
        <br>

        <div class="btn-group">
            <button class="btn btn-white btn-xs"><i class="fa fa-thumbs-up"></i> Like this!</button>
            <button class="btn btn-white btn-xs"><i class="fa fa-comments"></i> Comment</button>
            <button class="btn btn-white btn-xs"><i class="fa fa-share"></i> Share</button>
        </div>
    </div>
    <div class="social-footer">
        <g:each in="${com.tcoinnews.Comment.findAllByEntryAndEntryId(com.tcoinnews.Comment.Entry.POST_ADMIN, post.id, [max: 10, sort: 'lastUpdated', order: 'desc'])}" var="comment">
            <g:render template="/comment/post_admin" model="[comment: comment]"/>
        </g:each>
        <g:render template="/comment/add_post_admin" model="[post: post]"/>
    </div>

</div>