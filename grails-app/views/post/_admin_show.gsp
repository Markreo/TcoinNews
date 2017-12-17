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
        <div class="social-comment">
            <a href="" class="pull-left">
                <img alt="image" src="/assets/a1.jpg">
            </a>
            <div class="media-body">
                <a href="#">
                    Andrew Williams
                </a>
                Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.
                <br/>
                <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 26 Like this!</a> -
                <small class="text-muted">12.06.2014</small>
            </div>
        </div>

        <div class="social-comment">
            <a href="" class="pull-left">
                <img alt="image" src="/assets/a2.jpg">
            </a>
            <div class="media-body">
                <a href="#">
                    Andrew Williams
                </a>
                Making this the first true generator on the Internet. It uses a dictionary of.
                <br/>
                <a href="#" class="small"><i class="fa fa-thumbs-up"></i> 11 Like this!</a> -
                <small class="text-muted">10.07.2014</small>
            </div>
        </div>

        <div class="social-comment">
            <a href="" class="pull-left">
                <img alt="image" src="/assets/a3.jpg">
            </a>
            <div class="media-body">
                <textarea class="form-control" placeholder="Write comment..."></textarea>
            </div>
        </div>

    </div>

</div>