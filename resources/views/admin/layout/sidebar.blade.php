<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route('admin_home') }}">Admin Panel</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route('admin_home') }}"></a>
        </div>

        <ul class="sidebar-menu">

            <li class="active"><a class="nav-link" href="{{ route('admin_home') }}"><i
                        class="fas fa-hand-point-right"></i> <span>Dashboard</span></a></li>


            <li class="nav-item dropdown">
                <a href="#" class="nav-link has-dropdown"><i class="far fa-newspaper"></i><span>News</span></a>
                <ul class="dropdown-menu">
                    <li class=""><a class="nav-link" href="{{ route('admin_category_show') }}"><i
                                class="fas fa-angle-right"></i>
                            Categories</a></li>
                    <li class=""><a class="nav-link" href="{{ route('admin_sub_category_show') }}"><i
                                class="fas fa-angle-right"></i>
                            Sub Categories</a></li>
                    <li class=""><a class="nav-link" href="{{ route('admin_post_show') }}"><i
                                class="fas fa-angle-right"></i> Posts</a>
                    </li>
                </ul>
            </li>

            <li class="active"><a class="nav-link" href="{{ route('admin_setting') }}"><i
                        class="fas fa-hand-point-right"></i> <span>Setting</span></a></li>



        </ul>
    </aside>
</div>
