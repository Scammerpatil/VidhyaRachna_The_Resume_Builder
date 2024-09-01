<%
	String userName="";
	String userEmail="";
%>
<nav class="sidebar locked">
    <div class="logo_items flex">
        <span class="nav_image">
            <img src="assests/logo-social.png" alt="Vidhyarachna Logo" />
        </span>
        <span class="logo_name">Vidhya<br />Rachna</span>
        <div class="sidebar-lock">
            <i class="bx bx-lock-alt" id="lock-icon" title="Unlock Sidebar"></i>
            <i class="bx bx-x" id="sidebar-close"></i>
        </div>
    </div>
    <div class="menu_container">
        <div class="menu_items">
            <ul class="menu_item">
                <div class="menu_title flex">
                    <span class="title">Dashboard</span>
                    <span class="line"></span>
                </div>
                <li class="item">
                    <a href="OverView.jsp" class="link flex">
                        <i class="bx bx-home-alt"></i>
                        <span>Overview</span>
                    </a>
                </li>
                <li class="item">
                    <a href="Profile.jsp" class="link flex">
                        <i class="bx bx-user"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <li class="item">
                    <a href="AllResumes.jsp" class="link flex">
                        <i class="bx bx-file"></i>
                        <span>My Resumes</span>
                    </a>
                </li>
            </ul>
            <ul class="menu_item">
                <div class="menu_title flex">
                    <span class="title">Resumes</span>
                    <span class="line"></span>
                </div>
                <li class="item">
                    <a href="NewResume.jsp" class="link flex">
                        <i class="bx bx-pencil"></i>
                        <span>Create New Resume</span>
                    </a>
                </li>
                <li class="item">
                    <a href="Templates.jsp" class="link flex">
                        <i class="bx bx-layout"></i>
                        <span>Resume Templates</span>
                    </a>
                </li>
                <li class="item">
                    <a href="ResumeTips.jsp" class="link flex">
                        <i class="bx bx-lightbulb"></i>
                        <span>Resume Writing Tips</span>
                    </a>
                </li>
            </ul>
            <ul class="menu_item">
                <div class="menu_title flex">
                    <span class="title">Resources</span>
                    <span class="line"></span>
                </div>
                <li class="item">
                    <a href="FAQ.jsp" class="link flex">
                        <i class="bx bx-help-circle"></i>
                        <span>FAQ</span>
                    </a>
                </li>
                <li class="item">
                    <a href="ContactUs.jsp" class="link flex">
                        <i class="bx bx-phone"></i>
                        <span>Contact Us</span>
                    </a>
                </li>
                <li class="item">
                    <a href="Support.jsp" class="link flex">
                        <i class="bx bx-support"></i>
                        <span>Support</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="sidebar_profile flex">
            <span class="nav_image">
                <img src="assests/logo-social.png" alt="User Image" />
            </span>
            <div class="data_text">
                <span class="name">
                    <%= userName %>
                </span>
                <span class="email">
                    <%= userEmail %>
                </span>
            </div>
        </div>
    </div>
</nav>