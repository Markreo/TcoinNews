<div class="social-comment">
    <a href="" class="pull-left">
        <img alt="image" src="${comment.owner.avatar ?: '/assets/defaultuser.png'}">
    </a>
    <div class="media-body">
        <a href="${createLink(controller: 'admin', action: 'show', id: comment.owner.id)}">
            ${comment.owner.name}
        </a>
        ${comment.content}
        <br>
        <g:render template="/likeEntry/like" model="[comment.countLike]"/>
        <a href="#" class="small"><i class="fa fa-reply"></i> Reply</a> -
        <small class="text-muted">${comment.lastUpdated.format("hh:mm aa - dd.MM.yyyy")}</small>
    </div>
</div>