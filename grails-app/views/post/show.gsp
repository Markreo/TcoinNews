<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 18-Dec-17
  Time: 10:26 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${post.title} | Tcoin News</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="content">
    <div class="container">
        <div class="row">
            <!--Main Content-->
            <div class="col-md-9">
                <!-- Blog post -->
                <div class="row blog-post">
                    <div class="col-md-1 date-md">
                        <!-- Date desktop -->
                        <div class="date-wrapper">
                            <span class="date-m bg-primary">Jan</span> <span class="date-d">07</span>
                        </div>
                        <!-- Meta details desktop -->
                        <p class="text-muted"> <i class="fa fa-user"></i> <a href="#">Erin</a>
                        </p>
                    </div>
                    <div class="col-md-11">
                        <div class="media-body">
                            <div class="sections">
                                <a href="#" class="text-primary">${post.category?.url}</a>
                            </div>
                            <h3 class="title media-heading">
                                ${post.title}
                            </h3>

                            <!-- Meta details mobile -->
                            <ul class="list-inline meta text-muted">
                                <li class="list-inline-item"><i class="fa fa-calendar"></i> Mon 7th Jan 2013</li>
                                <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Erin</a></li>
                            </ul>

                            <!--Main content of post-->
                            <div class="blog-content">
                                <p class="lead">${post.intro}</p>
                                ${raw(post.content)}
                            </div>

                            <!-- Post tags -->
                            <div class="tag-cloud post-tag-cloud">
                                <h4>
                                    tags
                                </h4>
                                <g:each in="${post.tags?.split(",")}" var="tag">
                                    <a href="#" class="badge badge-secondary">${tag}</a>
                                </g:each>
                            </div>

                            %{--<div class="block bg-faded p-3 post-block">
                                <!-- About The Author -->
                                <div class="post-author">
                                    <h4>
                                        About The Author: <span class="font-weight-normal">Jim Jones</span>
                                    </h4>
                                    <p>Abico antehabeo euismod ex loquor lucidus olim pagus utinam. Aliquip decet defui facilisis incassum minim plaga pneum proprius verto. Incassum pneum quidne virtus. Abbas consectetuer pecus suscipit valetudo vicis. Causa esca metuo nunc nutus pertineo quia singularis.</p>
                                </div>

                                <!-- Share Widget -->
                                <div class="post-share social-media-branding">
                                    <h5>
                                        Share it:
                                    </h5>
                                    <!--@todo: replace with real social share links -->
                                    <a href="#" class="social-link branding-twitter"><i class="fa fa-twitter-square"></i></a>
                                    <a href="#" class="social-link branding-facebook"><i class="fa fa-facebook-square"></i></a>
                                    <a href="#" class="social-link branding-linkedin"><i class="fa fa-linkedin-square"></i></a>
                                    <a href="#" class="social-link branding-google-plus"><i class="fa fa-google-plus-square"></i></a>
                                </div>
                            </div>--}%
                        </div>
                    </div>
                </div>


                <!-- Related Content -->
                %{--<div class="post-related-content">
                    <h4>
                        Related Content
                    </h4>
                    <div class="row">
                        <div class="col-md-3 blog-post">
                            <div class="blog-media">
                                <a href="blog-post<?php echo OUTPUT_FILE_TYPE; ?>
                      ">
                                    <img src="assets/img/blog/fly.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid" />
                                </a>
                            </div>
                            <h5>
                                <a href="#">Loquor Nulla Valde Zelus</a>
                            </h5>
                        </div>
                        <div class="col-md-3 blog-post">
                            <div class="blog-media">
                                <a href="blog-post<?php echo OUTPUT_FILE_TYPE; ?>
                      ">
                                    <img src="assets/img/blog/ape.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid" />
                                </a>
                            </div>
                            <h5>
                                <a href="#">Camur Nostrud Pagus Qui</a>
                            </h5>
                        </div>
                        <div class="col-md-3 blog-post">
                            <div class="blog-media">
                                <a href="blog-post<?php echo OUTPUT_FILE_TYPE; ?>
                      ">
                                    <img src="assets/img/blog/ape.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid" />
                                </a>
                            </div>
                            <h5>
                                <a href="#">Abico Iustum Olim Ymo</a>
                            </h5>
                        </div>
                        <div class="col-md-3 blog-post">
                            <div class="blog-media">
                                <a href="blog-post<?php echo OUTPUT_FILE_TYPE; ?>
                      ">
                                    <img src="assets/img/blog/ladybird.jpg" alt="Picture of frog by Ben Fredericson" class="img-fluid" />
                                </a>
                            </div>
                            <h5>
                                <a href="#">Ad Iriure Quidne Singularis</a>
                            </h5>
                        </div>
                    </div>
                </div>--}%

                <!-- Post To Post Pager -->
                %{--<div class="post-to-post-pager"> <a href="#" class="btn btn-lg btn-primary previous">&larr; Previous Post</a> <a href="#" class="btn btn-lg btn-primary next">Next Post &rarr;</a> </div>--}%

                <!--Comments-->
                %{--<div class="comments" id="comments">
                    <h3>
                        Comments (10)
                    </h3>
                    <hr />
                    <ul class="list-unstyled">
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/jimi.jpg" alt="Picture of Dave" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Tue 15th Aug 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Erin</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.
                                </h5>
                                <p class="mb-1">Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/adele.jpg" alt="Picture of Alex" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Mon 14th Aug 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Jo</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Urna natoque in phasellus rhoncus aliquet penatibus
                                </h5>
                                <p class="mb-1">Urna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibus</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/adele.jpg" alt="Picture of Jo" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Mon 7th Aug 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Joe</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    a nec in sed hac ultrices cursus
                                </h5>
                                <p class="mb-1">a nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursusa nec in sed hac ultrices cursus</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/bono.jpg" alt="Picture of Dave" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Wed 2nd Aug 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Alex</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Enim augue elit adipiscing placerat natoque
                                </h5>
                                <p class="mb-1">Enim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoque</p>
                                <!-- Nested media object -->
                                <div class="media mt-4 mb-2 pos-relative">
                                    <a href="#">
                                        <img src="assets/img/team/obama.jpg" alt="Picture of Tom" class="d-flex mr-3 img-thumbnail img-fluid" />
                                    </a>
                                    <div class="media-body">
                                        <ul class="list-inline blog-meta text-muted">
                                            <li class="list-inline-item"><i class="fa fa-calendar"></i> Wed 2nd Aug 2017</li>
                                            <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Alex</a></li>
                                        </ul>
                                        <h5 class="mt-0 mb-2">
                                            Enim augue elit adipiscing placerat natoque
                                        </h5>
                                        <p class="mb-1">Enim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoque</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/bono.jpg" alt="Picture of Dave" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Tue 1st Aug 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Dave</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Urna natoque in phasellus rhoncus aliquet penatibus
                                </h5>
                                <p class="mb-1">Urna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibus</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/adele.jpg" alt="Picture of Tom" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Mon 31st Jul 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Dave</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Magna aliquet diam mauris tortor turpis vel porta
                                </h5>
                                <p class="mb-1">Magna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel portaMagna aliquet diam mauris tortor turpis vel porta</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/robert.jpg" alt="Picture of Alex" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Sun 30th Jul 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Alex</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Urna natoque in phasellus rhoncus aliquet penatibus
                                </h5>
                                <p class="mb-1">Urna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibusUrna natoque in phasellus rhoncus aliquet penatibus</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/obama.jpg" alt="Picture of Tom" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Sun 23rd Jul 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Joe</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Enim augue elit adipiscing placerat natoque
                                </h5>
                                <p class="mb-1">Enim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoqueEnim augue elit adipiscing placerat natoque</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/steve.jpg" alt="Picture of Joe" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Fri 21st Jul 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Dave</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.
                                </h5>
                                <p class="mb-1">Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.Nisi rhoncus nisi porttitor risus ridiculus tristique, quis.</p>
                            </div>
                        </li>
                        <li class="media mb-3 pos-relative">
                            <a href="#">
                                <img src="assets/img/team/obama.jpg" alt="Picture of Dave" class="d-flex mr-3 img-thumbnail img-fluid" />
                            </a>
                            <div class="media-body">
                                <ul class="list-inline blog-meta text-muted">
                                    <li class="list-inline-item"><i class="fa fa-calendar"></i> Mon 17th Jul 2017</li>
                                    <li class="list-inline-item"><i class="fa fa-user"></i> <a href="#">Erin</a></li>
                                </ul>
                                <h5 class="mt-0 mb-2">
                                    Odio, nunc platea mattis, mid et
                                </h5>
                                <p class="mb-1">Odio, nunc platea mattis, mid etOdio, nunc platea mattis, mid etOdio, nunc platea mattis, mid etOdio, nunc platea mattis, mid et</p>
                            </div>
                        </li>
                    </ul>
                    <form id="comment-form" class="comment-form" role="form">
                        <h3>
                            Add Comment
                        </h3>
                        <hr />
                        <div class="form-group">
                            <label class="sr-only" for="comment-name">Name</label>
                            <input type="text" class="form-control" id="comment-name" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="comment-name">Email</label>
                            <input type="email" class="form-control" id="comment-email" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="comment-comment">Comment</label>
                            <textarea rows="8" class="form-control" id="comment-comment" placeholder="Comment"></textarea>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">
                                Subscribe to updates
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>--}%
            </div>

        <!--Sidebar-->
        <g:render template="/template/rightbar"/>
    </div>
</div>





</body>
</html>