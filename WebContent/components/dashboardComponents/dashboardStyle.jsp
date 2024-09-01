<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@100;200;300&family=Poppins:wght@100;200;300;500;700&family=Roboto:wght@300;400&family=Tektur&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        min-height: 100vh;
        background-image: url(assests/Background.jpg);
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .img {
        width: auto;
        padding: 0;
        border-radius: 50%;
        cursor: pointer;
        margin: 0px 30px;
        border: none;
        background: inherit;
    }

    .navigation {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        left: 1;
        top: 10px;
        position: absolute;
        align-items: center;
        gap: 40px;
        height: 10vh;
        width: 100%;

        .logo {
            margin-left: 100px;
            position: relative;
            font-size: 2em;
            color: #fff;
            -webkit-user-select: none;
            user-select: none;
            font-family: 'Tektur', cursive;
        }

        .nav {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 40px;
        }
    }

    .sub-menu-wrap {
        position: absolute;
        top: 70%;
        right: 7px;
        width: 320px;
        max-height: 0px;
        overflow: hidden;
        transition: max-height 0.5s;
    }

    .sub-menu-wrap.open-menu {
        max-height: 400px;
    }

    .sub-menu {
        -webkit-backdrop-filter: blur(20px);
        backdrop-filter: blur(20px);
        box-shadow: 0 0 3px rgba(0, 0, 0, 0.5);
        padding: 20px;
        margin-top: 10px;
        right: 0;
    }

    .sub-menu hr {
        border: 0;
        height: 1px;
        width: 100%;
        background-color: #fff;
        margin: 15px 0 10px;
    }

    .sub-menu-link {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: #fff;
        margin: 12px 0;
    }

    .sub-menu-link p {
        width: 100%;
        font-weight: normal;
    }

    .sub-menu-link p:hover {
        font-weight: 500;
    }

    .sub-menu-link ion-icon {
        width: 40px;
        border-radius: 50%;
        padding: 8px;
        margin-right: 15px;
    }

    .sub-menu-link span {
        font-style: 22px;
        transition: .5s;
    }

    .sub-menu-link span:hover {
        transform: translateX(5px);
    }

    .user-info {
        display: flex;
        align-items: center;
    }

    .user-info h3 {
        font-weight: 500;
    }

    .user-info img {
        width: 60px;
        border-radius: 50%;
        margin-right: 15px;
    }

    .navigation .anchor {
        position: relative;
        font-size: 1.1em;
        color: #fff;
        text-decoration: none;
        font-weight: 500;
    }

    .navigation .anchor::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 3px;
        background-color: #fff;
        border-radius: 5px;
        left: 0;
        bottom: -6px;
        transform: scaleX(0);
        transform-origin: right;
        transition: transform .5s;
    }

    .navigation .anchor:hover::after {
        transform-origin: left;
        transform: scaleX(1);
    }

    .user-pic {
        width: 40px;
        border-radius: 50%;
        cursor: pointer;
    }

    /* Pre css */
    .flex {
        display: flex;
        align-items: center;
    }

    .nav_image {
        display: flex;
        min-width: 55px;
        justify-content: center;
    }

    .nav_image img {
        height: 35px;
        width: 35px;
        border-radius: 50%;
        object-fit: cover;
    }

    /* Sidebar */
    .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 270px;
        -webkit-backdrop-filter: blur(20px);
        backdrop-filter: blur(20px);
        box-shadow: 0 0 30px rgba(0, 0, 0, 0.5);
        padding: 15px 10px 20px 10px;
        transition: all 0.4s ease;
    }

    .sidebar.close {
        width: calc(55px + 20px);
    }

    .logo_items {
        gap: 8px;
    }

    .logo_name {
        font-size: 22px;
        color: #fff;
        font-weight: 500px;
        transition: all 0.3s ease;
    }

    .sidebar.close .logo_name,
    .sidebar.close #lock-icon,
    .sidebar.close #sidebar-close {
        opacity: 0;
        pointer-events: none;
    }

    #lock-icon,
    #sidebar-close {
        padding: 10px;
        color: #162938;
        font-size: 25px;
        cursor: pointer;
        margin-left: -4px;
        transition: all 0.3s ease;
    }

    #sidebar-close {
        display: none;
        color: #fff;
    }

    .menu_container {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        margin-top: 40px;
        overflow-y: auto;
        height: calc(100% - 82px);
    }

    .menu_container::-webkit-scrollbar {
        display: none;
    }

    .menu_title {
        position: relative;
        height: 50px;
        width: 55px;
    }

    .menu_title .title {
        margin-left: 15px;
        transition: all 0.3s ease;
    }

    .sidebar.close .title {
        opacity: 0;
    }

    .menu_title .line {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        height: 3px;
        width: 20px;
        border-radius: 25px;
        background: #fff;
        transition: all 0.3s ease;
    }

    .menu_title .line {
        opacity: 0;
    }

    .sidebar.close .line {
        opacity: 1;
    }

    .item {
        list-style: none;
    }

    .link {
        text-decoration: none;
        border-radius: 8px;
        margin-bottom: 8px;
        color: #162938;
    }

    .link:hover {
        color: #fff;
        background-color: #4070f4;
    }

    .link span {
        white-space: nowrap;
    }

    .link i {
        height: 50px;
        min-width: 55px;
        display: flex;
        font-size: 22px;
        align-items: center;
        justify-content: center;
        border-radius: 4px;
        color: #fff;
    }

    .sidebar_profile {
        padding-top: 15px;
        margin-top: 15px;
        gap: 15px;
        border-top: 2px solid rgba(0, 0, 0, 0.1);
    }

    .sidebar_profile .name {
        font-size: 18px;
        color: #fff;
    }

    .sidebar_profile .email {
        font-size: 15px;
        color: #fff;
    }

    /* Navbar */
    .navbar {
        max-width: 500px;
        width: 100%;
        position: fixed;
        top: 0;
        left: 60%;
        transform: translateX(-50%);
        background: #fff;
        padding: 10px 20px;
        border-radius: 0 0 8px 8px;
        justify-content: space-between;
    }

    #sidebar-open {
        font-size: 30px;
        color: #333;
        cursor: pointer;
        margin-right: 20px;
        display: none;
    }

    .search_box {
        height: 46px;
        max-width: 500px;
        width: 100%;
        border: 1px solid #aaa;
        outline: none;
        border-radius: 8px;
        padding: 0 15px;
        font-size: 18px;
        color: #333;
    }

    .navbar img {
        height: 40px;
        width: 40px;
        margin-left: 20px;
    }

    /* Responsive */
    @media screen and (max-width: 1100px) {
        .navbar {
            left: 65%;
        }
    }

    @media screen and (max-width: 800px) {
        .sidebar {
            left: 0;
            z-index: 1000;
        }

        .sidebar.close {
            left: -100%;
        }

        #sidebar-close {
            display: block;
        }

        #lock-icon {
            display: none;
        }

        .navbar {
            left: 0;
            max-width: 100%;
            transform: translateX(0%);
        }

        #sidebar-open {
            display: block;
        }
    }
    .sidebar-lock{
    	margin-left:50px;
    }
</style>