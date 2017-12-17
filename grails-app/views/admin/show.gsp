
<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 17-Dec-17
  Time: 9:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin ${admin.name}</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Admin account - Tài khoản Admin</h2>
        <ol class="breadcrumb">
            <li>
                <a href="${createLink(controller:'dashboard')}">Dashboard</a>
            </li>
            <li>
                <a href="${createLink(controller:'admin')}">Admin</a>
            </li>
            <li class="active">
                <strong>${admin.username}</strong>
            </li>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">


    <div class="row m-b-lg m-t-lg">
        <div class="col-md-9">

            <div class="profile-image">
                <asset:image src="defaultuser.png" class="img-circle circle-border m-b-md" alt="profile"/>
            </div>
            <div class="profile-info">
                <div class="">
                    <div>
                        <h2 class="no-margins">
                            ${admin.name}
                        </h2>
                        <h4>Admin</h4>
                        <small>
                            There are many variations of passages of Lorem Ipsum available, but the majority
                            have suffered alteration in some form Ipsum available.
                        </small>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <table class="table small m-b-xs">
                <tbody>
                <tr>
                    <td>
                        <strong>142</strong> Projects
                    </td>
                    <td>
                        <strong>22</strong> Followers
                    </td>

                </tr>
                <tr>
                    <td>
                        <strong>61</strong> Comments
                    </td>
                    <td>
                        <strong>54</strong> Articles
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>154</strong> Tags
                    </td>
                    <td>
                        <strong>32</strong> Friends
                    </td>
                </tr>
                </tbody>
            </table>
        </div>


    </div>
    <div class="row">

        <div class="col-lg-3">

            <div class="ibox">
                <div class="ibox-content">
                    <h3>About ${admin.name} (Example)</h3>

                    <p class="small">
                        There are many variations of passages of Lorem Ipsum available, but the majority have
                        suffered alteration in some form, by injected humour, or randomised words which don't.
                        <br/>
                        <br/>
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                        anything embarrassing
                    </p>

                    <p class="small font-bold">
                        <span><i class="fa fa-circle text-navy"></i> #N/A status</span>
                    </p>

                </div>
            </div>

            <div class="ibox">
                <div class="ibox-content">
                    <h3>Followers and friends (Example)</h3>
                    <p class="small">
                        If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't
                        anything embarrassing
                    </p>
                    <div class="user-friends">
                        <a href=""><img alt="image" class="img-circle" src="/assets/a3.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a1.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a2.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a4.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a5.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a6.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a7.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a8.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a2.jpg"></a>
                        <a href=""><img alt="image" class="img-circle" src="/assets/a1.jpg"></a>
                    </div>
                </div>
            </div>

            <div class="ibox">
                <div class="ibox-content">
                    <h3>Personal friends (Example)</h3>
                    <ul class="list-unstyled file-list">
                        <li><a href=""><i class="fa fa-file"></i> Project_document.docx</a></li>
                        <li><a href=""><i class="fa fa-file-picture-o"></i> Logo_zender_company.jpg</a></li>
                        <li><a href=""><i class="fa fa-stack-exchange"></i> Email_from_Alex.mln</a></li>
                        <li><a href=""><i class="fa fa-file"></i> Contract_20_11_2014.docx</a></li>
                        <li><a href=""><i class="fa fa-file-powerpoint-o"></i> Presentation.pptx</a></li>
                        <li><a href=""><i class="fa fa-file"></i> 10_08_2015.docx</a></li>
                    </ul>
                </div>
            </div>

            <div class="ibox">
                <div class="ibox-content">
                    <h3>Private message (Example)</h3>

                    <p class="small">
                        Send private message to Alex Smith
                    </p>

                    <div class="form-group">
                        <label>Subject</label>
                        <input type="email" class="form-control" placeholder="Message subject">
                    </div>
                    <div class="form-group">
                        <label>Message</label>
                        <textarea class="form-control" placeholder="Your message" rows="3"></textarea>
                    </div>
                    <button class="btn btn-primary btn-block">Send</button>

                </div>
            </div>

        </div>

        <div class="col-lg-5">
            <g:each in="${posts}" var="post">
                <g:render template="/post/admin_show" model="[post: post]"/>
            </g:each>
        </div>
        <div class="col-lg-4 m-b-lg">
            <div id="vertical-timeline" class="vertical-container light-timeline no-margins">
                <div class="vertical-timeline-block">
                    <div class="vertical-timeline-icon navy-bg">
                        <i class="fa fa-briefcase"></i>
                    </div>

                    <div class="vertical-timeline-content">
                        <h2>Meeting (Example)</h2>
                        <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products. Below please find the current status of the sale.
                        </p>
                        <a href="#" class="btn btn-sm btn-primary"> More info</a>
                        <span class="vertical-date">
                            Today <br>
                            <small>Dec 24</small>
                        </span>
                    </div>
                </div>

                <div class="vertical-timeline-block">
                    <div class="vertical-timeline-icon blue-bg">
                        <i class="fa fa-file-text"></i>
                    </div>

                    <div class="vertical-timeline-content">
                        <h2>Send documents to Mike (Example)</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since.</p>
                        <a href="#" class="btn btn-sm btn-success"> Download document </a>
                        <span class="vertical-date">
                            Today <br>
                            <small>Dec 24</small>
                        </span>
                    </div>
                </div>

                <div class="vertical-timeline-block">
                    <div class="vertical-timeline-icon lazur-bg">
                        <i class="fa fa-coffee"></i>
                    </div>

                    <div class="vertical-timeline-content">
                        <h2>Coffee Break (Example)</h2>
                        <p>Go to shop and find some products. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's. </p>
                        <a href="#" class="btn btn-sm btn-info">Read more</a>
                        <span class="vertical-date"> Yesterday <br><small>Dec 23</small></span>
                    </div>
                </div>

                <div class="vertical-timeline-block">
                    <div class="vertical-timeline-icon yellow-bg">
                        <i class="fa fa-phone"></i>
                    </div>

                    <div class="vertical-timeline-content">
                        <h2>Phone with Jeronimo (Example)</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto, optio, dolorum provident rerum aut hic quasi placeat iure tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus veritatis qui ut.</p>
                        <span class="vertical-date">Yesterday <br><small>Dec 23</small></span>
                    </div>
                </div>

                <div class="vertical-timeline-block">
                    <div class="vertical-timeline-icon navy-bg">
                        <i class="fa fa-comments"></i>
                    </div>

                    <div class="vertical-timeline-content">
                        <h2>Chat with Monica and Sandra (Example)</h2>
                        <p>Web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). </p>
                        <span class="vertical-date">Yesterday <br><small>Dec 23</small></span>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
</body>
</html>