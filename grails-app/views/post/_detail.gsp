<!-- Blog post -->
<div class="row blog-post">
    <div class="col-md-1 date-md">
        <!-- Date desktop -->
        <div class="date-wrapper"> <span class="date-m bg-primary">${post.dateCreated.format("MMM")}</span> <span class="date-d">${post.dateCreated.format("d")}</span> </div>
        <!-- Meta details desktop -->
        <p class="text-muted"><a href="#">#Tteam</a> </p>
    </div>
    <div class="col-md-11">
        <div class="tags">
            <a href="#" class="text-primary">${post.category?.name}</a>

        </div>
        <h4 class="title media-heading">
            <a href="${createLink(controller: 'post', action: 'show', id: post.url)}">${post.title}</a>
        </h4>
        <!-- Meta details mobile -->
        <ul class="list-inline meta text-muted">
            <li class="list-inline-item"><i class="fa fa-calendar"></i> <g:formatDate format="dd MMM yyyy" date="${post.dateCreated}" locale="vi"/></li>
            <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Tteam</a></li>
        </ul>
        <div class="row">
            <g:if test="${post.image}">
                <div class="col-md-4 push-md-8">
                    <div class="blog-media">
                        <a href="${createLink(controller: 'post', action: 'show', id: post.url)}">
                            <img src="${post.image}" alt="${post.title}" class="img-fluid" />
                        </a>
                    </div>
                </div>
            </g:if>

            <div class="${post.image ? 'col-md-8 pull-md-4' : 'col-md-12'}">
                <p>${post.intro}</p>
                %{--<ul class="list-inline links">
                    <li class="list-inline-item">
                        <a href="${createLink(controller: 'post', action: 'show', id: post.url)}" class="btn btn-secondary btn-sm"><i class="fa fa-arrow-circle-right"></i> Read more</a>
                    </li>
                    <li class="list-inline-item">
                        <a href="blog-post.htm#comments" class="btn btn-secondary btn-sm"><i class="fa fa-comment"></i> 87 Comments</a>
                    </li>
                </ul>--}%
            </div>
        </div>
    </div>
</div>