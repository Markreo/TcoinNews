<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> <span>
                    <tc:avatar className="img-circle"/>
                </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                        </span> <span class="text-muted text-xs block">Admin <b class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="mailbox.html">Mailbox</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html">Logout</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    IN+
                </div>
            </li>

            <li>
                <a href="${createLink(controller: 'dashboard')}"><i class="fa fa-home"></i> <span class="nav-label">Dashboard</span></a>
            </li>
            <li>
                <a href="${createLink(controller: 'category')}"><i class="fa fa-tags"></i> <span class="nav-label">Thể loại</span></a>
            </li>
            <li>
                <a href="${createLink(controller: 'post')}"><i class="fa fa-sticky-note"></i> <span class="nav-label">Bài viết</span></a>
            </li>
            <li>
                <a href="${createLink(controller: 'admin')}"><i class="fa fa-user"></i> <span class="nav-label">Admin</span></a>
            </li>
            <li>
                <a href="${createLink(controller: 'media')}"><i class="fa fa-camera"></i> <span class="nav-label">Media</span></a>
            </li>
            <li>
                <a href="#"><i class="fa fa-sticky-note"></i> <span class="nav-label">Ghi chú</span></a>
            </li>
            <li>
                <a href="#"><i class="fa fa-code"></i> <span class="nav-label">About</span></a>
            </li>
        </ul>

    </div>
</nav>